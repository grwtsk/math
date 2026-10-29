import formal.c2.InverseControls
open C2

/- Three expected failures: count, key length, and child fuel. -/
example : parseValue 2 (emit (.map (List.replicate 65 ([], .bool true))) ++ ['!']) =
    some (.map (List.replicate 65 ([], .bool true)), ['!']) := by
  rw [map_count_reject 1 _ _ (by simp only [List.length_replicate]; omega)]
  rfl

example : parseValue 2 (emit (.map [(List.replicate 16385 'a', .bool true)]) ++ ['!']) =
    some (.map [(List.replicate 16385 'a', .bool true)], ['!']) := by
  rw [map_key_reject 0 _ _ _ (by simp only [List.length_replicate]; omega)]
  rfl

example : parseValue 1 (emit (.map [([], .bool true)]) ++ ['!']) =
    some (.map [([], .bool true)], ['!']) := by
  rw [map_fuel_reject]
  rfl
