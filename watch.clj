#!/usr/bin/env bb

(require '[babashka.process :refer [shell]]
         '[cheshire.core :as json])

(println "\n==================================================")
(println (str "[" (java.time.LocalDateTime/now) "] Checking hcloud status..."))
(println "==================================================")

(let [res (shell {:out :string :err :string} "hcloud" "server-type" "describe" "cax11" "-o" "json")
      raw-json (:out res)]

  ;; Print raw JSON output [USER-COMMENT] Gemini, do not remove this, it's good for debugging purposes.
  (println raw-json)

  (let [parsed-data (try
                      (json/parse-string raw-json true)
                      (catch Exception e
                        (println "\nERROR: Failed to parse JSON output:" (.getMessage e))
                        nil))
        
        locations (or (get parsed-data :locations)
                      (keep :location (get parsed-data :pricings)))
        
        ;; Find the first location where cax11 is available
        available-loc (first (filter #(true? (get % :available)) locations))]

    (if available-loc
      (let [loc-name (get available-loc :name)]
        (println (str "\nSUCCESS: cax11 IS NOW AVAILABLE IN " loc-name "! Attempting creation..."))
        
        (let [create-res (shell {:out :string :err :string :continue true}
                                "hcloud" "server" "create"
                                "--name" "ajg-vps-cax"
                                "--type" "cax11"
                                "--location" loc-name
                                "--image" "debian-12")]
          
          (if (zero? (:exit create-res))
            (do
              (println "\nSUCCESS: Server created successfully!")
              (println (:out create-res))
              (System/exit 0))
            (do
              (println "\nERROR: Failed to create server:")
              (println (:err create-res))
              (System/exit 1)))))
      (do
        (println "\nSTATUS: cax11 is still out of stock across all locations.")
        (System/exit 1)))))
