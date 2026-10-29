import Genesis

-- Independently specified bad grant: the compiler must reject this assertion.
example : GRWTSK.Genesis.MayAct False True (fun (_ : Unit) => True) () := by
  decide
