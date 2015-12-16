(ns colors)

(defn hex-str [n]
  (-> (format "%2s" (Integer/toString n 16))
     (clojure.string/replace " " "0") ))

;;; Public -----------------------------

(defn hex->rgb
  "Ex: convert #ff0000 to (255 0 0)"
  [[_ & rgb]]
  (map #(->> % (apply str "0x") (Long/decode))
     (partition 2 rgb) ))

(defn rgb->hex [color]
  (apply str "#" (map hex-str color)) )

;;; Other/Demo -------------------------

(defn area [r] (-> r (Math/pow 2) (* Math/PI)))

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
