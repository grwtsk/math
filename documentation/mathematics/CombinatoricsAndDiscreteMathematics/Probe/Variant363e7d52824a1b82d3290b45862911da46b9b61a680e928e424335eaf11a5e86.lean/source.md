# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Probe.Variant363e7d52824a1b82d3290b45862911da46b9b61a680e928e424335eaf11a5e86

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e2db7477ca12e97d50b21d07ae43932e73e8a02` · SHA-256 `363e7d52824a1b82d3290b45862911da46b9b61a680e928e424335eaf11a5e86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceAdaptiveSignedCoefficientRows
set_option autoImplicit false
open ArithmeticFunction
open RH16AdaptiveSignedCoefficients

example : truncatedConvolution 4 13 5 = vonMangoldt 5 := by
  norm_num [truncatedConvolution, Finset.sum_Icc_succ_top]

example : truncatedConvolution 4 13 7 = vonMangoldt 7 := by
  norm_num [truncatedConvolution, Finset.sum_Icc_succ_top]

example : truncatedConvolution 4 13 35 = 0 := by
  norm_num [truncatedConvolution, Finset.sum_Icc_succ_top]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=84f73d36542470a304ada7c7311b145dd142d6128c443b8dd7f0ff3b6ff280a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Probe/Variant363e7d52824a1b82d3290b45862911da46b9b61a680e928e424335eaf11a5e86.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
