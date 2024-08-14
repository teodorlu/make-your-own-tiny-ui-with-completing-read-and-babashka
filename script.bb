#!/usr/bin/env bb

(ns script
  (:require
   [clojure.string :as str]))

(def colors ["red" "crimson" "midnight"])
(def adjectives ["tall" "swift" "obnoxious"])
(def names ["Falco" "Sophie" "Teodor"])

(defn pick [n]
  (repeatedly n
              #(str (rand-nth colors)
                    "-"
                    (rand-nth adjectives)
                    "-"
                    (rand-nth names))))

#_(pick 3)

(when (= *file* (System/getProperty "babashka.file"))
  (println (str/join "\n" (pick 10))))
