#!/usr/bin/env bb

(require '[babashka.process :refer [shell]]
         '[cheshire.core :as json])

(println "\n==================================================")
(println (str "[" (java.time.LocalDateTime/now) "] Checking hcloud status..."))
(println "==================================================")

(let [res (shell {:out :string :err :string} "hcloud server-type describe cax11 -o json")
      raw-json (:out res)]

  (println raw-json)

  (let [parsed-data (try
                      (json/parse-string raw-json true)
                      (catch Exception e
                        (println "\nERROR: Failed to parse JSON output:" (.getMessage e))
                        nil))
        locations (get parsed-data :locations [])
        hel1-loc (first (filter #(= (get-in % [:location :name]) "hel1") locations))
        available? (get hel1-loc :available false)]

    (if available?
      (do
        (println "\nSUCCESS: cax11 IS NOW AVAILABLE IN hel1!")
        ;; Exit with code 0 so the zsh loop knows to stop
        (System/exit 0))
      (do
        (println "\nSTATUS: cax11 is still out of stock in hel1.")
        ;; Exit with code 1 so the zsh loop continues
        (System/exit 1)))))
