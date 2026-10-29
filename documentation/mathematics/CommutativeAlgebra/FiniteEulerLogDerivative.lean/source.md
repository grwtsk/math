# Finite Euler Log Derivative — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8981ab09fddbee7e0113223d1bbc1e32af3e423c` · SHA-256 `a6c22019319444d17093391b207f2f1b6addd20193ffdef4c4773f12b3fbb282`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.NumberTheory.FiniteEulerProduct
import Mathlib.Algebra.Ring.GeomSum

/-!
# Folder.Rebuild.NumberTheory.FiniteEulerLogDerivative

Finite algebraic shadows of Euler-factor inverse identities.
-/

namespace Folder
namespace Rebuild
namespace NumberTheory

open scoped BigOperators

/--
Finite algebraic shadow of the Euler-product inverse factor.

This is the finite identity `(1-x)(1+x+...+x^N)=1-x^(N+1)`.
It is the algebraic precursor to Euler products, not an analytic convergence theorem.
-/
theorem finite_geometric_euler_factor_mul
    [Ring R]
    (x : R)
    (N : Nat) :
    (1 - x) * (∑ k ∈ Finset.range (N + 1), x ^ k)
      = 1 - x ^ (N + 1) := by
  simpa using mul_neg_geom_sum x (N + 1)

theorem finite_euler_factor_inverse_truncation_identity
    [CommRing R]
    (x : R)
    (N : Nat) :
    (1 - x) * (∑ k ∈ Finset.range (N + 1), x ^ k)
      = 1 - x ^ (N + 1) := by
  exact finite_geometric_euler_factor_mul x N

end NumberTheory
end Rebuild
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0140552caebe2045a06761a1b06faac4e40bf1996be019f876a60c345acba741 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FiniteEulerLogDerivative/Varianta6c22019319444d17093391b207f2f1b6addd20193ffdef4c4773f12b3fbb282.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
