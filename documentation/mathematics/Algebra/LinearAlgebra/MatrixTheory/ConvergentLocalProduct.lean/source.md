# Complete source: GRWTSK.LinearAlgebra.Matrix.ConvergentLocalProduct

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `acb378a8503fdc98b60105c247e8f6d252e69c54` · SHA-256 `9ce90ab7b6958961abc838210019731a48a506e918643510159f528fcb917c25`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb6462e5c3f2ecb3eb0aabd9bfcb191aa6d53b8f26b5bdeac19d5791d99e77b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MatrixTheory/ConvergentLocalProduct.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
