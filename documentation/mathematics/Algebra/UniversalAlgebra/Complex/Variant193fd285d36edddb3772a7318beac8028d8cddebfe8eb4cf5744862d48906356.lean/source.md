# Complete source: GRWTSK.Algebra.UniversalAlgebra.Complex.Variant193fd285d36edddb3772a7318beac8028d8cddebfe8eb4cf5744862d48906356

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64a91efe574f87704c1e0c4707ff2d63932f5656` · SHA-256 `193fd285d36edddb3772a7318beac8028d8cddebfe8eb4cf5744862d48906356`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.DualNumber
import Mathlib.Basic.Complex.Basic

open DualNumber

/--
info: Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/) + Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/)*I
-/
#guard_msgs in
#eval (0 : ℂ)

/--
info: Real.ofCauchy (sorry /- 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, ... -/) + Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/)*I
-/
#guard_msgs in
#eval (1 : ℂ)

/--
info: Real.ofCauchy (sorry /- 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, ... -/) + Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/)*I
-/
#guard_msgs in
#eval (4 : ℂ)

/--
info: Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/) + Real.ofCauchy (sorry /- 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, ... -/)*I
-/
#guard_msgs in
#eval (Complex.I : ℂ)

/--
info: Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/) + Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/)*I + (Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/) + Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/)*I)*ε
-/
#guard_msgs in
#eval (0 : ℂ[ε])
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=359c4ce1a2adfda5c4264890b056d50ac85a4e4b93951d1b8bbd7b992cd1692d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Complex/Variant193fd285d36edddb3772a7318beac8028d8cddebfe8eb4cf5744862d48906356.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
