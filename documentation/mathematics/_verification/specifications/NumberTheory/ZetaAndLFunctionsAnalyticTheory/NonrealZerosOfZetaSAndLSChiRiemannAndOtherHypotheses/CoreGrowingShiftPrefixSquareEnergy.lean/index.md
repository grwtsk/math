# Verification target: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftPrefixSquareEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f45803f1a1068b8817771de233c80a7f0846283d",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftPrefixSquareEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f45803f1a1068b8817771de233c80a7f0846283d`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftPrefixSquareEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreGrowingShiftPrefixSquareEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreGrowingShiftUniformTwoPoint`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftUniformTwoPoint.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coreGrowingShiftFirstDifferenceWeight](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/coregrowingshiftfirstdifferenceweight.md) | 23 | `declaration-track:ff3bb2f40f16154fa318924862321a47ed6144613c0d25148b1d1d025d05a960` |
| 2 | `def` | [coreGrowingShiftWeightedPrefixDepth](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/coregrowingshiftweightedprefixdepth.md) | 32 | `declaration-track:ac1fe6c083c5ce0d885de2cb412de149892f26a959cb4e9ee1dd6ff18d2f8288` |
| 3 | `theorem` | [coreGrowingShiftWeightedPrefix_low_eq_anchor](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/coregrowingshiftweightedprefix-low-eq-anchor.md) | 41 | `result-track:dd77bb7df6f6298cca4ec3b13a0646d9edc38b3588835b6203e1d0e5a48bfe5c` |
| 4 | `theorem` | [coreGrowingShiftWeightedPrefix_high_eq_tail](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/coregrowingshiftweightedprefix-high-eq-tail.md) | 95 | `result-track:8e112aab90f687c6767b1239621bf210e2b32f0b618b4ead7bc5c9b9fabf29cd` |
| 5 | `theorem` | [coreGrowingShiftWeightedPrefixDepth_eq_anchor_add_tail](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/coregrowingshiftweightedprefixdepth-eq-anchor-add-tail.md) | 112 | `result-track:df15e57cc6f3d1cb2436c6282b04a7f410a653e9ccc4337307cafbd0e1947ebb` |
| 6 | `theorem` | [coreGrowingShiftFirstDifferenceDepth_eq_weightedPrefix](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/coregrowingshiftfirstdifferencedepth-eq-weightedprefix.md) | 132 | `result-track:16b7c29f6dbf13c3c2b103502e3d231a4b31cf9d9cf26778536ea6f671d47d9e` |
| 7 | `def` | [coreGrowingShiftBinaryPrefixSquareDepth](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/coregrowingshiftbinaryprefixsquaredepth.md) | 141 | `declaration-track:6cd4d85f0018ef3a69ef53da2acb8d3e7ab0f1903bcca853d7f14b7f3a32a7f0` |
| 8 | `def` | [coreGrowingShiftFirstDifferenceWeightSquareDepth](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/coregrowingshiftfirstdifferenceweightsquaredepth.md) | 148 | `declaration-track:956f31e66e156db28e6d732dff5d0a9a539d4048849e214968bb63434df19285` |
| 9 | `def` | [coreGrowingShiftBinaryPrefixSquareEnergy](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/coregrowingshiftbinaryprefixsquareenergy.md) | 154 | `declaration-track:41823e309bb5cbe7a86169776e653619c110e695bcb4f944683d78a7cde7bac9` |
| 10 | `def` | [coreGrowingShiftWeightedPrefixSquareEnergy](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/coregrowingshiftweightedprefixsquareenergy.md) | 160 | `declaration-track:628ae3c60db58698673334c12dc853e90ad07ad855d8c3f8e359fc62e3d97118` |
| 11 | `theorem` | [coreGrowingShiftFirstDifferenceWeight_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/coregrowingshiftfirstdifferenceweight-nonneg.md) | 166 | `result-track:5060da545c92bab1e4fa3d247a734b4d82128655f9617254ef4abde03cdbc7cf` |
| 12 | `theorem` | [coreGrowingShiftFirstDifferenceWeight_le_leftScale_inv_sq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/coregrowingshiftfirstdifferenceweight-le-leftscale-inv-sq.md) | 175 | `result-track:f93ab2e32ccfa7774f028805c9bc0bda4f6e1176894b2f54e637e77cee4c53bb` |
| 13 | `theorem` | [coreGrowingShiftFirstDifferenceWeightSquareDepth_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/coregrowingshiftfirstdifferenceweightsquaredepth-le.md) | 184 | `result-track:7ecf220b6d701278a5d784a7320ee9101cfd79478a1b8737207599a2f4a661de` |
| 14 | `theorem` | [coreGrowingShiftFirstDifferenceWeightSquareDepth_le_leftScale](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/coregrowingshiftfirstdifferenceweightsquaredepth-le-leftscale.md) | 210 | `result-track:ba7c4341f219ad09c740b0683be09ff297951ce860d06bcf9d742e2cbc5507ff` |
| 15 | `theorem` | [coreGrowingShiftWeightedPrefixDepth_sq_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/coregrowingshiftweightedprefixdepth-sq-le.md) | 227 | `result-track:937e32edf20ec0b0563094b5bdeedd43a62f4115f7412950544b4552701df60d` |
| 16 | `theorem` | [coreGrowingShiftWeightedPrefixSquareEnergy_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/coregrowingshiftweightedprefixsquareenergy-le.md) | 245 | `result-track:2b8a93b4ea4a0f7fb4f98830c0baca5680923a4bbd20aeada08363a40f515b29` |
| 17 | `def` | [coreGrowingShiftWeightedPrefixPacket](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/coregrowingshiftweightedprefixpacket.md) | 286 | `declaration-track:22ebaebcc903033bd43a35ad6daf5825abaa0050bdffee65a9904c9cad49654f` |
| 18 | `theorem` | [coreGrowingShiftFirstDifferencePacket_eq_two_mul_weightedPrefix](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/coregrowingshiftfirstdifferencepacket-eq-two-mul-weightedprefix.md) | 292 | `result-track:8471e9036aa164f4d160d5a63298cc6ba1b91ccc47e769fe492d1a74926d48f0` |
| 19 | `theorem` | [coreGrowingShiftWeightedPrefixPacket_sq_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/coregrowingshiftweightedprefixpacket-sq-le.md) | 311 | `result-track:52c60449968f840b398a75408ddaf0fb53254d27afb20ce8413ed5290e8b9820` |
| 20 | `theorem` | [coreGrowingShiftFirstDifferencePacket_sq_le_prefixEnergy](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/coregrowingshiftfirstdifferencepacket-sq-le-prefixenergy.md) | 326 | `result-track:fad8ef298b481e0ca8721fb10f5e55b9d24bac046e8493915795e7c671cacd2a` |
| 21 | `def` | [SubpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/subpolynomialcoregrowingshiftbinaryprefixsquareenergy.md) | 377 | `declaration-track:7910497f274b4e82402b762d927cc532d093bb1a90055a42fc5ee14b4106f5ec` |
| 22 | `theorem` | [subpolynomialCoreGrowingShiftFirstDifferencePacket_of_prefixSquareEnergy](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/subpolynomialcoregrowingshiftfirstdifferencepacket-of-prefixsquareenergy.md) | 386 | `result-track:8398aa8f699bf4427383d7ca89f691acdae9a46518f3dd166a995ec353224d1b` |
| 23 | `theorem` | [coreGrowingShiftBinaryPrefixSquareEnergy_le_of_envelope](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/coregrowingshiftbinaryprefixsquareenergy-le-of-envelope.md) | 430 | `result-track:7e9c6c1c859f2ad91479f844faaba1c2268de9e33fc021857fba6bf7207eb9eb` |
| 24 | `theorem` | [subpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy_of_uniform](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/subpolynomialcoregrowingshiftbinaryprefixsquareenergy-of-uniform.md) | 472 | `result-track:def84a11eb66af7fe076c23a471c44a09f347fb0a3b36daf1c3db89b75e398c8` |
| 25 | `def` | [coreGrowingShiftPrefixSquareEnergySource](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/coregrowingshiftprefixsquareenergysource.md) | 508 | `declaration-track:e38f6e2c346666f873cc8330f96c01f583ec57a0eb9a2ea84e5f24a329155a9b` |
| 26 | `def` | [coreGrowingShiftPrefixSquareEnergyAdapter](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/coregrowingshiftprefixsquareenergyadapter.md) | 520 | `declaration-track:ca3250bdee915bbb2fb23cc052d913790a5ae7aa2088877705f7bf3a5cd7c448` |
| 27 | `theorem` | [riemannHypothesis_of_coreGrowingShiftPrefixSquareEnergy](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/riemannhypothesis-of-coregrowingshiftprefixsquareenergy.md) | 531 | `result-track:1ee16517229432521633ef91fc3882c3035924a614acce8b888d456c70a87fe4` |
| 28 | `theorem` | [growingShiftPrefixSquareEnergy_hostileWitness](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftPrefixSquareEnergy.lean/declarations/growingshiftprefixsquareenergy-hostilewitness.md) | 541 | `result-track:eb062e18e0f3b3a2c9390ef4aa3279234d4f626e2e9e3e27fc40aaaea81fcdba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e0bea555dfd489c8343e4fb4350d744f11b0ae61611521fc343a64eff2ca2b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/CoreGrowingShiftPrefixSquareEnergy.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/CoreGrowingShiftPrefixSquareEnergy.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
