# Verification target: GRWTSK.NumberTheory.Moebius.IntegerSampleGrowth

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c8a93db12ec865d297703ba36ef37743e1ef4f1",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/IntegerSampleGrowth.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerSampleGrowthHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerSampleGrowthHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c8a93db12ec865d297703ba36ef37743e1ef4f1`.

Source path: `GRWTSK/NumberTheory/Moebius/IntegerSampleGrowth.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/IntegerSampleGrowth.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.EnergyAbscissa`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissaHistoricalSourceEdition2.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Determinant.RankOneQuadraticForm`](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankOneQuadraticForm.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NatSubexponentialUpper](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerSampleGrowthHistoricalSourceEdition2.lean/declarations/natsubexponentialupper.md) | 19 | `declaration-track:4b59481f9a5880dddd709b861670432cfb6d2f191c1cfb48c2cdb5b9b9cbb7a0` |
| 2 | `def` | [PickupCrossNatSubexp](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerSampleGrowthHistoricalSourceEdition2.lean/declarations/pickupcrossnatsubexp.md) | 23 | `declaration-track:0dc904d8bf4c19a74010d14a1cb59855d87b1e168d56f1e1c562ea08f4f68fd2` |
| 3 | `def` | [PickupCrossNatPoly](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerSampleGrowthHistoricalSourceEdition2.lean/declarations/pickupcrossnatpoly.md) | 25 | `declaration-track:18fb43672627e0eee6d0ce1123e8aec01dee7e754fea9b9dc00613a70943964b` |
| 4 | `theorem` | [pickupEnergy_le_of_nat_exponential](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerSampleGrowthHistoricalSourceEdition2.lean/declarations/pickupenergy-le-of-nat-exponential.md) | 30 | `result-track:df58fc0f4293cf07dad4771aeda474359dd2fc4a98967ffb9ff91ed73c32be99` |
| 5 | `theorem` | [pickupEnergySubexp_iff_nat](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerSampleGrowthHistoricalSourceEdition2.lean/declarations/pickupenergysubexp-iff-nat.md) | 43 | `result-track:08fdee29931cea921b18d2c9b59bc04289109c32144931658761499bfe8dbf2d` |
| 6 | `theorem` | [pickupCross_le_next_sample](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerSampleGrowthHistoricalSourceEdition2.lean/declarations/pickupcross-le-next-sample.md) | 55 | `result-track:27c7218127cb518f6449314d195abea27e2b0ec27481bf1142b45d1052333ede` |
| 7 | `theorem` | [pickupCross_poly_of_nat_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerSampleGrowthHistoricalSourceEdition2.lean/declarations/pickupcross-poly-of-nat-bound.md) | 67 | `result-track:9a454b49c33f5563fa632da03c4b97ab8af7b49a1ec6e643bc2555c452fbb7de` |
| 8 | `theorem` | [pickupCrossNatPoly_iff_crossPoly](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerSampleGrowthHistoricalSourceEdition2.lean/declarations/pickupcrossnatpoly-iff-crosspoly.md) | 94 | `result-track:92d05c71c01d1017e0349bc18f6f0e8d1cd3cce118706386abc474d5f4229093` |
| 9 | `theorem` | [pickupCrossNatSubexp_iff_crossSubexp](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerSampleGrowthHistoricalSourceEdition2.lean/declarations/pickupcrossnatsubexp-iff-crosssubexp.md) | 103 | `result-track:811787a55652a075971efee2fe3309a31c026a2c58f85d04659a7fc8f5b6756e` |
| 10 | `theorem` | [riemannHypothesis_of_pickupCrossNatPoly](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerSampleGrowthHistoricalSourceEdition2.lean/declarations/riemannhypothesis-of-pickupcrossnatpoly.md) | 126 | `result-track:64d3476b4834ec6bef716776016bf0910ede4b9ec9af11e18dcc9be15e13f9ff` |
| 11 | `theorem` | [riemannHypothesis_of_pickupCrossNatSubexp](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerSampleGrowthHistoricalSourceEdition2.lean/declarations/riemannhypothesis-of-pickupcrossnatsubexp.md) | 130 | `result-track:c700bd5aa5566d46a81ea967df14dab81a18bd74e956a8192b80a125fff95155` |
| 12 | `theorem` | [pickupDeterminant_subexp_iff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerSampleGrowthHistoricalSourceEdition2.lean/declarations/pickupdeterminant-subexp-iff.md) | 135 | `result-track:78d71ffbea590e2a0a8ada8e6a585a3ceaf775c7b86abc7fbedd245cd35d3f10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf1049181e1039bffe85ddaf69ab0482491237aec70d5390102acabb496f09a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/IntegerSampleGrowth.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/IntegerSampleGrowth.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
