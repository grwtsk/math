# Dirichlet Series Finite — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `703f8a1910f0c908c567f29678d129827b616af7` · SHA-256 `52d34d99924e36c35dae3f7128d424dfb6792f88813305b2da70d9768c0e9b2f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.NumberTheory.DirichletConvolution
import Mathlib.Analysis.SpecialFunctions.Pow.Complex

/-!
# Folder.Rebuild.AnalyticNumberTheory.DirichletSeriesFinite

Finite Dirichlet sums and linear finite identities.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

noncomputable def finiteDirichletSum
    (a : Nat → ℂ)
    (s : ℂ)
    (N : Nat) : ℂ :=
  ∑ n ∈ Finset.Icc 1 N, a n / (n : ℂ) ^ s

theorem finiteDirichletSum_add
    (a b : Nat → ℂ)
    (s : ℂ)
    (N : Nat) :
    finiteDirichletSum (fun n => a n + b n) s N =
      finiteDirichletSum a s N + finiteDirichletSum b s N := by
  simp [finiteDirichletSum, add_div, Finset.sum_add_distrib]

theorem finiteDirichletSum_zero
    (s : ℂ)
    (N : Nat) :
    finiteDirichletSum (fun _ => 0) s N = 0 := by
  simp [finiteDirichletSum]

end AnalyticNumberTheory
end Rebuild
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f939883269573d918bcb39fa31e2d933177925afdc6c48fcfae5926d26e4c824 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/DirichletSeriesFinite/Variant52d34d99924e36c35dae3f7128d424dfb6792f88813305b2da70d9768c0e9b2f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
