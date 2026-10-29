# Import — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65d3589e4d95aac84037a9d1dfac1860d207a985` · SHA-256 `f09a86c986a19d263d123279dca82010f06c0bf37ce515a0e76e1abfeefaf890`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Zeta23.WeilEF.Main

/-!
# The pinned external explicit formula

Only the dependency closure of the literature-form explicit formula is imported.
The theorem concerns Mathlib's actual zeta function and carries no mathematical
premise. Source specialization and occurrence transport are separate lemmas.
The external Apache-2.0 source remains a pinned dependency, not relicensed MIT code.
-/

namespace FormalResearch.RiemannHypothesis.WeilSource

/-- The unconditional external formula, before specializing its test function. -/
theorem explicit_formula : Zeta23.EF.EF_lit Zeta23.zetaZeroConfig :=
  Zeta23.WeilEF.EF_lit_zetaZeroConfig

end FormalResearch.RiemannHypothesis.WeilSource
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28f0dd59734608c69bee78773a715e75c25414819c21f8e38387dea319a54532 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Import/Variantf09a86c986a19d263d123279dca82010f06c0bf37ce515a0e76e1abfeefaf890.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
