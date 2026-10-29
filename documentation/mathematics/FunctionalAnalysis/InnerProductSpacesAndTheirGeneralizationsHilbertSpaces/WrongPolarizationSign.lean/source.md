# Complete source: GRWTSK.Analysis.InnerProductSpace.Polarization.Checks.Negative.WrongPolarizationSign

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `331299f2984839cbaa92c743515e94d403acdc0a` · SHA-256 `4c4d9c71f4d39e82628847dc10541999e8e9757b5dfa33e2dde2363610ee8e74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Polarization
open GRWTSK.Analysis.Polarization
open scoped InnerProductSpace
example {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E] (x y : E) : ⟪x, y⟫_ℝ = (‖x + y‖ ^ 2 + ‖x - y‖ ^ 2) / 4 := real_inner_eq_signed_norm_square x y
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ac7ba1a43719bf18c9d3ac1bed61121dd040f45871411253491e2140ab05fd1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/InnerProductSpace/Polarization/Checks/Negative/WrongPolarizationSign.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
