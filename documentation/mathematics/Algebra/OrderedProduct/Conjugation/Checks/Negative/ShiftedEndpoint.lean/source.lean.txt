import GRWTSK.Algebra.OrderedProductGauge
open GRWTSK.Algebra GRWTSK.Algebra.OrderedProductGauge
universe u v
set_option autoImplicit false
example {G : Type u} [Group G] (A H : ℕ → G) (n k : ℕ) : orderedProduct (forwardGauge A H) n k = H (n + k + 1) * orderedProduct A n k * (H n)⁻¹ := orderedProduct_forwardGauge A H n k
