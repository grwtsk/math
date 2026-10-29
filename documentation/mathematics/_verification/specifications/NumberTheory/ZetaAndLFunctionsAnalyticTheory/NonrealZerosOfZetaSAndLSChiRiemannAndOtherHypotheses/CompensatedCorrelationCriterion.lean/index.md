# Verification target: GRWTSK.NumberTheory.Moebius.CompensatedCorrelationCriterion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f35ac15351db8dacec75d9ff45b4f3e9359ce652",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f35ac15351db8dacec75d9ff45b4f3e9359ce652`.

Source path: `GRWTSK/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.LogarithmicPickupSeries`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CriticalWeightedMertensSquare.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Analysis.PSeries` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sampleWeightedDiagonal](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/sampleweighteddiagonal.md) | 45 | `declaration-track:660603df9d307f15e1e52cfb06b26be35344982e6c4e59e8f351e8863c2d122d` |
| 2 | `def` | [sampleCompensatedCorrelation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/samplecompensatedcorrelation.md) | 51 | `declaration-track:0f23969b27d4b8afa8ac8d44ffab149096d34e34aedfd97668166e932e9a168d` |
| 3 | `def` | [sampleDiagonalMajorant](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/samplediagonalmajorant.md) | 60 | `declaration-track:4b8a7851161e53239e1e6f2eb4006b0ac22aaf81fc34fd78b08b0296721fbb41` |
| 4 | `def` | [sampleDiagonalBudget](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/samplediagonalbudget.md) | 65 | `declaration-track:dab2b9fc08e0ae6cffcb4e59acaf344edbe4c7cfa6267b6f8fd3f4682ab2cf9e` |
| 5 | `def` | [CompensatedCorrelationBound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/compensatedcorrelationbound.md) | 69 | `declaration-track:60da1dd17b7268f58f2c8b215839a3aa617a86bebd9c141106dfb9bea85c7745` |
| 6 | `def` | [ReciprocalCompensatedCorrelation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/reciprocalcompensatedcorrelation.md) | 74 | `declaration-track:9f1b06f3363af75caf37d181b911c48ba4ca8373968d45d01d6babdf81e458fd` |
| 7 | `theorem` | [sampleWeightedDiagonal_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/sampleweighteddiagonal-nonneg.md) | 79 | `result-track:8e88fb8938404c923063910ee63706570fea7991f7d6ee429756c86f26471fa8` |
| 8 | `theorem` | [sampleDiagonalMajorant_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/samplediagonalmajorant-nonneg.md) | 85 | `result-track:64c9752971d1bac3163186a1a8b04654f862bdc90bf15ffc2e5b2eecd13fc91b` |
| 9 | `theorem` | [sampleDiagonalMajorant_eq_rpow](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/samplediagonalmajorant-eq-rpow.md) | 90 | `result-track:d2807cc359259e4b59191aa830d2ba27bc482f67ee3e20a0518038192b124014` |
| 10 | `theorem` | [summable_sampleDiagonalMajorant](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/summable-samplediagonalmajorant.md) | 104 | `result-track:8af72542afb20951e689d1e777978cd14ea228479bd2ac9a3968841751f69075` |
| 11 | `theorem` | [sampleDiagonalBudget_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/samplediagonalbudget-nonneg.md) | 119 | `result-track:1ae7213d2bda7fdb32c69df82fc9b7771bc763f7488c5dbb35401becb306d645` |
| 12 | `theorem` | [sampleWeightedDiagonal_le_budget](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/sampleweighteddiagonal-le-budget.md) | 125 | `result-track:6e12becd83d9cbdad22b61d8b679c07873d06a637773776e3f947ddf7ae5e81a` |
| 13 | `theorem` | [sampleCellMass_partial_sum_eq_compensated_add_diagonal](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/samplecellmass-partial-sum-eq-compensated-add-diagonal.md) | 140 | `result-track:cb7f837912c0451b860a7ddbb8f212fa5eacd77e87a3b7f306681871d00bf418` |
| 14 | `theorem` | [summable_cellMass_iff_compensatedCorrelationBound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/summable-cellmass-iff-compensatedcorrelationbound.md) | 168 | `result-track:b940e4bfa194eee59e307ef5c907c3bb1ae91912e9ab9fb57dc2556808874e94` |
| 15 | `theorem` | [sampleCellMass_tsum_le_of_compensatedCorrelation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/samplecellmass-tsum-le-of-compensatedcorrelation.md) | 218 | `result-track:bf2942baa498945f604deb83157ff4b869028576ee295cf3f6f23f1d0c0a5d12` |
| 16 | `theorem` | [actual_energy_le_of_compensatedCorrelation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/actual-energy-le-of-compensatedcorrelation.md) | 234 | `result-track:a8fbc1798974a7b504b7e4a9df83ce139bc4fa326c251e4da1f26dcb0f2317fa` |
| 17 | `theorem` | [abscissa_zero_iff_reciprocal_compensatedCorrelation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/abscissa-zero-iff-reciprocal-compensatedcorrelation.md) | 261 | `result-track:43185aad2b17f62a869765057006dd0d4aa583c3e68de966907ff662f8c0aa39` |
| 18 | `theorem` | [riemannHypothesis_of_reciprocal_compensatedCorrelation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/riemannhypothesis-of-reciprocal-compensatedcorrelation.md) | 275 | `result-track:c1c0987849f7c0de9db56bb5460f93f4dee090f815902e28f8e5bcd93d567f1b` |
| 19 | `theorem` | [sampleResidue_eq_criticalEndpointDefect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/sampleresidue-eq-criticalendpointdefect.md) | 284 | `result-track:c1d5236a594e80cc46271db13140fb0da829b18ebf1a405af159a02e177291ff` |
| 20 | `theorem` | [sampleCellMass_one_eq_endpointDefectEnergy](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/samplecellmass-one-eq-endpointdefectenergy.md) | 291 | `result-track:91952add6796bd05caac9c9ddc4694c07069c2644192be3f5d228917190794db` |
| 21 | `theorem` | [summable_sampleCellMass_one_iff_endpointDefectSummable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/summable-samplecellmass-one-iff-endpointdefectsummable.md) | 299 | `result-track:56c17597c35d571ffb30acd023c9344cea9e6b36d534dfc0ec938202c6717f4c` |
| 22 | `theorem` | [compensatedCorrelationBound_one_iff_criticalBoundary](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/compensatedcorrelationbound-one-iff-criticalboundary.md) | 326 | `result-track:dfcdf296a5bf4ac26e298bbb1dcacaeb9cf38b7e4f90eb851877f86db2ff897f` |
| 23 | `theorem` | [compensatedCorrelationBound_one_iff_mertensTransformSummable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/compensatedcorrelationbound-one-iff-mertenstransformsummable.md) | 336 | `result-track:aec696a6ecf98ecca04db4f2bcf1549781c70e1d4ffa3cd1bdea37f6c1c65ec5` |
| 24 | `theorem` | [compensatedCorrelationBound_one_of_incrementMeanSquare](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/compensatedcorrelationbound-one-of-incrementmeansquare.md) | 344 | `result-track:5594bd55a165d03e624fd65c8243ef90702a883dad2b78352a462f400ee1712d` |
| 25 | `theorem` | [compensatedCorrelationBound_one_of_weightedMertensSquare](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompensatedCorrelationCriterion.lean/declarations/compensatedcorrelationbound-one-of-weightedmertenssquare.md) | 353 | `result-track:b81e2a4a8fda447b046f937fd563a0e32b41950890c77fa55ae1987e8bd1c12b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=54eadf84301c3b93d25ca39554ac5149f945fa05a0c3f77432ba70054b962b63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
