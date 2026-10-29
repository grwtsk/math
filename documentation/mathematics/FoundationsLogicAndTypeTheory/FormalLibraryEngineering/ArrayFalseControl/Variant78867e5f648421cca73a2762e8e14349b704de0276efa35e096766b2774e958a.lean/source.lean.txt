import formal.c2.ArrayControls
open C2

/- Expected failure: deleting the count premise cannot permit 257 elements. -/
example : parseValue 2
    (emit (.array (List.replicate 257 (.bool true))) ++ ['!', 't']) =
    some (.array (List.replicate 257 (.bool true)), ['!', 't']) := by
  rw [array_boundary_257]
  rfl
