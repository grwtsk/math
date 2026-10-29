import GRWTSK.LinearAlgebra.JacobiTransfer
open GRWTSK.LinearAlgebra.JacobiTransfer
example {K : Type*} [Field K] (E b a p : K) : (rawJacobiTransfer E b a p).det = a / p := det_rawJacobiTransfer E b a p
