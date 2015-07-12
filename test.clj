(defn vrels [xrel {:keys [f v]
                :or {f (constantly true)}}]
  (->> xrel
     (filter (comp (partial = v) :k))
     (remove f)))

(map inc [1 2 3]) ; map inc

(not= 1 2)     ; not=
(not (and true false)) ; not and true false

(sqrt 9) ; math/sqrt

(for [x (range 3 7)] (/ x x)) ; for /

(contains? {:a 1} :a) ; contains?

(project cows [:name]) ; project
(union #{1 2})       ; union

