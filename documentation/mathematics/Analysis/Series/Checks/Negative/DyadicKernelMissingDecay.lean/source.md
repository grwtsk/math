# Complete source: GRWTSK.Analysis.Series.Checks.Negative.DyadicKernelMissingDecay

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a741c8512610df59a1dd00608de1274297503d8` · SHA-256 `937880bf27578df2b4d5de6292bdb684b4a7a05dc9c04d4cb07972061f43ca1a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intentional missing strict decay control. Apache-2.0. -/
import GRWTSK.Analysis.Series.Checks.Positive.DyadicKernel
open GRWTSK.Analysis.Series.DyadicKernel
-- Intended rejection: equal exponents cannot supply the strict decay gap.
example : Summable (kernelTerm 1 1 1) :=
  kernel_summable 1 1 1 (by norm_num) (by norm_num) (le_refl (1:ℝ))
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5002cf8cc932c4477c61b17ab01dc47d8a83dc99d6ffae1cf4fd3e5696ca1306 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Series/Checks/Negative/DyadicKernelMissingDecay.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
