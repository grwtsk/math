import GRWTSK.LinearAlgebra.OrderedTransfer
open GRWTSK.LinearAlgebra.OrderedTransfer GRWTSK.Algebra

example : (![(1 : ℚ), 0] : Fin 2 → ℚ) =
    (orderedProduct (fun _ => (1 : Matrix (Fin 2) (Fin 2) ℚ)) 0 1).mulVec ![0, 0] := by
  norm_num [orderedProduct, funext_iff, Fin.forall_fin_two]
