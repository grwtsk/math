# Reject Harmonicity Without Kernel Theorem Positive — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f02d05bed81681e94adf8e85800c5126e44c43f5` · SHA-256 `44760b7b0a1d5dffd27eb8524b98373ae88b7f8c44d1083d73e01798d8233461`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge.DegreeZeroCohomology
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
example : RationalHodgeHZeroAdapter pointCycleClass edgeHodge :=
  EdgeFixture.pointHZeroAdapter
example (x : ℚ × ℚ) : edgeHodge.IsHarmonic0 x ↔ edgeHodge.delta x = 0 :=
  EdgeFixture.edgeKernelExact.harmonic_iff_cocycle x
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e44380a69ec89b05d44249efbe0703728e23b4502a8032125632f5608844df2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectHarmonicityWithoutKernelTheoremPositive/Variant44760b7b0a1d5dffd27eb8524b98373ae88b7f8c44d1083d73e01798d8233461.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
