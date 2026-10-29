# Complete source: GRWTSK.NumberTheory.Cyclotomic.Checks.Negative.ThirdCyclotomicJacobiWrongSign

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c6a4f435e6af1cc8615c793a03da8e5bf2b9b63` · SHA-256 `b1853e1d5e6908018415e7a7c0ea8e170c0204cba8ae68e2938fd57251133d9d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Actual cubic Jacobi wrong-sign rejection control.
Imported OpenAI/Mathlib Apache-2.0 credit and contribution limits remain retained.
Human mathematical direction: grwtsk contributors; formalization: OpenAI Codex.
-/
import GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicJacobi

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicJacobi.Checks.Negative

open GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals
open GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicReduction
open GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicCharacters

/-- Intended rejection: the accepted producer proves J+1 divisibility, not the false J-1 claim. -/
example (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P) :
    lambda ^ 2 ∣ jacobiSum (cubicChar P hgood) (cubicChar P hgood) - 1 :=
  lambda_sq_dvd_cubicJacobi_add_one P hgood

end GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicJacobi.Checks.Negative
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=09fc9d7db1bdff6617834e81cfc86eb1e69db286626262b6fd75a65a896fc0a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Cyclotomic/Checks/Negative/ThirdCyclotomicJacobiWrongSign.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
