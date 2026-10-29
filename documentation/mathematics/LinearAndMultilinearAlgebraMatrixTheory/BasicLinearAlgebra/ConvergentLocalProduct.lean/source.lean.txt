import GRWTSK.LinearAlgebra.Matrix.FiniteLocalProduct
import Mathlib.Topology.Algebra.InfiniteSum.Field

/-! Conditional infinite-product transport for E4 (both exceptional-group versions).
HasProd is a supplied convergence premise. No analytic continuation, normal
convergence, bad-place factors or arithmetic intertwiners are constructed. -/
namespace GRWTSK.LinearAlgebra.Matrix

/-- Pointwise intertwiners transport an actually convergent product, retaining its value.
The inverse is totalized: interpreting it as an analytic factor needs nonvanishing. -/
theorem hasProd_inverse_local_factors {K n v : Type*} [Field K] [TopologicalSpace K]
    [Fintype n] [DecidableEq n]
    (A B U V : v → Matrix n n K) (t : v → K) (L : K)
    (uv : ∀ p, U p * V p = 1) (vu : ∀ p, V p * U p = 1)
    (intertwines : ∀ p, A p * U p = U p * B p)
    (hprod : HasProd (fun p => (Matrix.det (1 - t p • A p))⁻¹) L) :
    HasProd (fun p => (Matrix.det (1 - t p • B p))⁻¹) L := by
  have heq : (fun p => (Matrix.det (1 - t p • A p))⁻¹) =
      (fun p => (Matrix.det (1 - t p • B p))⁻¹) := by
    funext p
    rw [det_pencil_eq (A p) (B p) (U p) (V p) (uv p) (vu p) (intertwines p)]
  rw [← heq]
  exact hprod

/-- If two supplied products converge in a Hausdorff field, their values agree. -/
theorem local_product_limits_eq {K n v : Type*} [Field K] [TopologicalSpace K]
    [T2Space K] [Fintype n] [DecidableEq n]
    (A B U V : v → Matrix n n K) (t : v → K) (L M : K)
    (uv : ∀ p, U p * V p = 1) (vu : ∀ p, V p * U p = 1)
    (intertwines : ∀ p, A p * U p = U p * B p)
    (hA : HasProd (fun p => (Matrix.det (1 - t p • A p))⁻¹) L)
    (hB : HasProd (fun p => (Matrix.det (1 - t p • B p))⁻¹) M) : L = M := by
  exact (hasProd_inverse_local_factors A B U V t L uv vu intertwines hA).unique hB
end GRWTSK.LinearAlgebra.Matrix
