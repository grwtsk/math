# Verification target: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticCompensation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3518dbff04192d80d5d1cbf70d56011fab2cb8e5",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticCompensation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3518dbff04192d80d5d1cbf70d56011fab2cb8e5`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticCompensation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreGrowingShiftQuarticCompensation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuadraticEnvelope`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuadraticEnvelope.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mertensTwoPointQuarticCell](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/mertenstwopointquarticcell.md) | 20 | `declaration-track:8c5326d10268815e1670fa07689fcb441c68c6e877b76778648b62db16e9de6f` |
| 2 | `def` | [mertensTwoPointQuarticRectangle](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/mertenstwopointquarticrectangle.md) | 26 | `declaration-track:1ed33591c01d9bdca0242c70329d0efbf95f0b47001a7dd9ca4d33ac8d5b231a` |
| 3 | `def` | [mertensTwoPointQuarticDiagonal](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/mertenstwopointquarticdiagonal.md) | 33 | `declaration-track:106d66ac8679edaa7e385b70b69e8f1250a6f7cc76db08d60932cf89ff943b31` |
| 4 | `def` | [mertensTwoPointQuarticOffDiagonal](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/mertenstwopointquarticoffdiagonal.md) | 39 | `declaration-track:e614c5de359142eaac2894a45d73ab330dd84c372678dc28007ffdbdc01f0c78` |
| 5 | `theorem` | [mertensTwoPointPrefix_sq_eq_quarticRectangle](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/mertenstwopointprefix-sq-eq-quarticrectangle.md) | 45 | `result-track:a6fdda7faf3fb2ccb51f0a86cd90fce66b8281805e8958bcb685fa075245fc0d` |
| 6 | `theorem` | [mertensTwoPointQuarticCell_diagonal_eq_sq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/mertenstwopointquarticcell-diagonal-eq-sq.md) | 61 | `result-track:e27d1ddf96c96b3169437d1b11141e93f748db0078db7c56e95f4198766ca97e` |
| 7 | `theorem` | [mertensTwoPointQuarticCell_diagonal_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/mertenstwopointquarticcell-diagonal-nonneg.md) | 70 | `result-track:9a1a5fa4619ef94b75c8272a3e38550ce2b48c1e0ffbc4dac64bddd5e59bdb32` |
| 8 | `theorem` | [mertensTwoPointQuarticCell_diagonal_le_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/mertenstwopointquarticcell-diagonal-le-one.md) | 77 | `result-track:27dd5e702f58d7ee0d9dfb7a3fcb1395a55eb0f4f32187fb9f849e0712fff4e3` |
| 9 | `theorem` | [mertensTwoPointQuarticDiagonal_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/mertenstwopointquarticdiagonal-nonneg.md) | 96 | `result-track:1717f4bc44bf8ede114fea8b479855b78d66b9d96d935f73e4394e9ef467f364` |
| 10 | `theorem` | [mertensTwoPointQuarticDiagonal_le_length](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/mertenstwopointquarticdiagonal-le-length.md) | 104 | `result-track:ba4b799671400b05bb67d62da9994efa724c8fa56db9ae003160042d98ccc726` |
| 11 | `theorem` | [mertensTwoPointQuarticRectangle_eq_diagonal_add_offDiagonal](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/mertenstwopointquarticrectangle-eq-diagonal-add-offdiagonal.md) | 118 | `result-track:f4cde80c8f4fccb593ef42cf1d6d0813a8bb203856381e8908b28395176438c0` |
| 12 | `def` | [coreGrowingShiftQuarticRectangleEnergy](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/coregrowingshiftquarticrectangleenergy.md) | 127 | `declaration-track:485847d58b6d3c9842d5b6f09b042f14a27d88330d5ba6fd56cdf07c9704f145` |
| 13 | `def` | [coreGrowingShiftQuarticDiagonalEnergy](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/coregrowingshiftquarticdiagonalenergy.md) | 135 | `declaration-track:07366ddf1dcd20df0553516a1470ec8ade263bc40bc37c2272dc5bfabb0db17c` |
| 14 | `def` | [coreGrowingShiftQuarticOffDiagonalEnergy](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/coregrowingshiftquarticoffdiagonalenergy.md) | 143 | `declaration-track:84b2801f8d5378f187a89f6095344a104b10b01e37549fe3e85923e62ee05fd8` |
| 15 | `theorem` | [coreGrowingShiftBinaryPrefixSquareEnergy_eq_quarticRectangle](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/coregrowingshiftbinaryprefixsquareenergy-eq-quarticrectangle.md) | 152 | `result-track:73bd893970eb97de15bd10ceca20053c55653af5cf68bea91e14a59e1524210f` |
| 16 | `theorem` | [coreGrowingShiftBinaryPrefixSquareEnergy_eq_diagonal_add_offDiagonal](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/coregrowingshiftbinaryprefixsquareenergy-eq-diagonal-add-offdiagonal.md) | 167 | `result-track:10e7f82da91e80fa298dd90daced9cc23f77e7ca1e9ca15df3752d6b86529b7d` |
| 17 | `theorem` | [coreGrowingShiftQuarticDiagonalEnergy_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/coregrowingshiftquarticdiagonalenergy-nonneg.md) | 215 | `result-track:24ef9add601ceaa823c441f844c335b3937a5bf257dadf1113677696c2266a2f` |
| 18 | `theorem` | [coreGrowingShiftQuarticDiagonalDepth_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/coregrowingshiftquarticdiagonaldepth-le.md) | 228 | `result-track:b256739ad7198a244ecbb103a6d976b9e67f2d0b8405011ab77aaedb90694c13` |
| 19 | `theorem` | [coreGrowingShiftQuarticDiagonalEnergy_le_four_cube](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/coregrowingshiftquarticdiagonalenergy-le-four-cube.md) | 249 | `result-track:ac1b6f99eb55a6a9ac6c3c9733456a92cbb6da48f058839f6ffd71663a6e9760` |
| 20 | `def` | [SubpolynomialCoreGrowingShiftQuarticOffDiagonalCompensation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/subpolynomialcoregrowingshiftquarticoffdiagonalcompensation.md) | 303 | `declaration-track:b2f469d2de3e199d62c76336f7b4e8b8e52a167a7dd0e65a71db46f0ae45dfd9` |
| 21 | `theorem` | [subpolynomialCoreGrowingShiftQuarticOffDiagonalCompensation_iff_prefixSquareEnergy](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/subpolynomialcoregrowingshiftquarticoffdiagonalcompensation-iff-prefixsq.md) | 313 | `result-track:51df5f3120c145bfdde82c53c4f88ad542eb4c809550d156dfbf9c1b32d1689c` |
| 22 | `theorem` | [subpolynomialCoreGrowingShiftFirstDifferencePacket_of_quarticCompensation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/subpolynomialcoregrowingshiftfirstdifferencepacket-of-quarticcompensatio.md) | 334 | `result-track:fa9d6c083db4db30c0c92512adf40f4814415769b7f3dade2404a1966002ce3b` |
| 23 | `theorem` | [riemannHypothesis_of_coreGrowingShiftQuarticCompensation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/riemannhypothesis-of-coregrowingshiftquarticcompensation.md) | 344 | `result-track:a9596a804dbb14ff5886cb1a89c02cca14713eccc7ad2aa6df81fa413f2b8bd0` |
| 24 | `structure` | [GrowingShiftFourPointMobiusSource](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/growingshiftfourpointmobiussource.md) | 354 | `declaration-track:45b381319ac75b9fbb32fcaf432e9a3d1a84205253a62dd5aa106af4611d74a8` |
| 25 | `structure` | [ToCoreGrowingShiftQuarticCompensationAdapter](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/tocoregrowingshiftquarticcompensationadapter.md) | 364 | `declaration-track:b5acd882eb86c9b494eebe4b7f20736709f4ea1ae6a84ba1ba4dd31fb6fe8935` |
| 26 | `theorem` | [riemannHypothesis_of_growingShiftFourPointAdapter](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/riemannhypothesis-of-growingshiftfourpointadapter.md) | 377 | `result-track:17acb929d7ab27017a21b65e54491b5bb9e6f34b147f6ff80792d4b69ef4bf84` |
| 27 | `theorem` | [quarticOffDiagonalCompensation_hostileWitness](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/declarations/quarticoffdiagonalcompensation-hostilewitness.md) | 392 | `result-track:2caa68841f944c6be18d96b0693662d4f828565477dbf02767091bad6d5cdf46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9baf41bbcef499c4f1a5c56815c1adfeba84360f462c6c52fbd5688371c49ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticCompensation.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/CoreGrowingShiftQuarticCompensation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
