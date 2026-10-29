import GRWTSK.LinearAlgebra.CocycleProduct
open GRWTSK.LinearAlgebra.CocycleProduct GRWTSK.Algebra GRWTSK.LinearAlgebra.SchrodingerTransfer
example : cocycleProduct Nat.succ (fun i => i + 2) 2 0 =
    cocycleProduct Nat.succ (fun i => i + 2) 1 0 * cocycleProduct Nat.succ (fun i => i + 2) 1 0 := by
  norm_num [cocycleProduct, Function.iterate_succ_apply']
