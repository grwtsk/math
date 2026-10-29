# Verification target: Exact Source Join For The Kapitza Corrector Task Edition4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e2ae0b277d61568fa2776fd82e90cc1ce95ccfb",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variantd6cf9249c1b01d6f84809bc16d501ee6c8c9316fdb0bbd0df65b30b8335745d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e2ae0b277d61568fa2776fd82e90cc1ce95ccfb`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variantd6cf9249c1b01d6f84809bc16d501ee6c8c9316fdb0bbd0df65b30b8335745d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variantd6cf9249c1b01d6f84809bc16d501ee6c8c9316fdb0bbd0df65b30b8335745d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateKernelMoments` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedPsiError](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/normalizedpsierror.md) | 33 | `declaration-track:c3da29927e5be5ac5ef712046157bb393bbe65d0ac5e906081754b26af340997` |
| 2 | `def` | [kapitzaKernel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/kapitzakernel.md) | 37 | `declaration-track:ea0a75fa509107cd47d878c0c6558cb4b0c274d95917cebd1f1056086cade724` |
| 3 | `def` | [kapitzaWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/kapitzaweight.md) | 42 | `declaration-track:88a671ce58494fb1846fe3896184998c791f617477ea7a2e98d611824191a22f` |
| 4 | `def` | [endpointValue](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/endpointvalue.md) | 45 | `declaration-track:039f25ff1ad8c700bf43fc1673954585d43ee4129f9c81e80d9caa8152ef801f` |
| 5 | `def` | [endpointSlope](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/endpointslope.md) | 47 | `declaration-track:4e05f91488261e487da4fa0d5768be0602fc5df2137bfc468f87c6fdbc0d1457` |
| 6 | `def` | [affineTrend](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/affinetrend.md) | 50 | `declaration-track:de48b8d36c6a869b513f170470523eb1e92f3884e7e6fb18d87bc84300448420` |
| 7 | `def` | [nonaffineDiscrepancy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/nonaffinediscrepancy.md) | 53 | `declaration-track:b2b8a22a36a6a87c68895f0fcfaa5cd7b3d550118d0d6cce478a71de34e5d7ac` |
| 8 | `def` | [kernelMomentZero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/kernelmomentzero.md) | 55 | `declaration-track:60007e13300d875b3f52e423f8e2fbcf7e43ced6aad470b84fdf40fbe5889bd7` |
| 9 | `def` | [kernelMomentOne](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/kernelmomentone.md) | 57 | `declaration-track:c03e6be0af07dc5bf750f349ec1359ffd3e538f54b5067e8c8922d576cc43e43` |
| 10 | `def` | [trendValue](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/trendvalue.md) | 59 | `declaration-track:9b5e6be8ae40e058e0efb89dea35a7e5251d4c3362b47d5cca907f03c1cde6bb` |
| 11 | `def` | [nonaffineWork](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/nonaffinework.md) | 63 | `declaration-track:a63278ab7130f548a976fe78dd20a349049bd1c8c0fd62fef2b1a1fb8b9688f5` |
| 12 | `def` | [continuousDefect](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/continuousdefect.md) | 66 | `declaration-track:c0e7b09147615f274b8586728b29b3b8976efce7303f2c731ffba1eb1f4872a9` |
| 13 | `theorem` | [normalizedPsiError_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/normalizedpsierror-zero.md) | 69 | `result-track:5aa0ab42f2d070dcc77cc501e923372e9c40f9286313b37decfee70b266f23b1` |
| 14 | `theorem` | [nonaffineDiscrepancy_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/nonaffinediscrepancy-upper.md) | 72 | `result-track:44c608d84090d90851c89b009d84abc636458771b7f9c45813ca2ebe981574da` |
| 15 | `theorem` | [normalizedPsiError_eq_prefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/normalizedpsierror-eq-prefix.md) | 75 | `result-track:219f0010fa0512f75020ac4793d4b171d147c76c2321a367a8d8048d2a6520db` |
| 16 | `theorem` | [chebyshev_mul_continuous_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/chebyshev-mul-continuous-intervalintegrable.md) | 81 | `result-track:fb73a288d224f67e78e16943054bc23a35fdc3dffcbf9b9d504559454cebd6b3` |
| 17 | `theorem` | [normalizedPsiError_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/normalizedpsierror-intervalintegrable.md) | 102 | `result-track:79d92b182e8a0aac3df927683bb54a3329228f13f2f3a6cfb93e0558bc8b7f62` |
| 18 | `theorem` | [kapitzaWeight_continuous](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/kapitzaweight-continuous.md) | 112 | `result-track:f4f2daaae7f3c5a276bac0c096ec0616eb6cb44c7d1e04b83f6b528a957d8fda` |
| 19 | `theorem` | [weightedPsiError_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/weightedpsierror-intervalintegrable.md) | 117 | `result-track:5dc05394dc688a90ba6d339c99c79396628f4033fea69b4a8c55e11f9a8c002d` |
| 20 | `theorem` | [kernelMomentZero_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/kernelmomentzero-eq.md) | 124 | `result-track:6ebf9bb5309953bd4b8958abec226a7fce478a16d9920697ffb300e00d248fa2` |
| 21 | `theorem` | [mertensResidual_eq_weightedPsi](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/mertensresidual-eq-weightedpsi.md) | 143 | `result-track:ef0ac71ccaeb35c351f201e04752320c0dc31acb45d5da0f07cdcfd23d76683a` |
| 22 | `theorem` | [mertensResidual_eq_affine_nonaffine](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/mertensresidual-eq-affine-nonaffine.md) | 200 | `result-track:1138bfeae5fdeb965d8e85db993b735fb6204ded6f48583b55bc50ed33df5d21` |
| 23 | `theorem` | [one_add_continuous_eq_defect](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/one-add-continuous-eq-defect.md) | 241 | `result-track:93329b628315fa95a86df092c46f7c79c8d60d20afc5894ed4f8c4e7b3e91409` |
| 24 | `theorem` | [mertensResidual_eq_defect_trend_nonaffine](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/mertensresidual-eq-defect-trend-nonaffine.md) | 250 | `result-track:f9205e9854aabab43b0a59d74525ac821535bd43382394b39c29ef2e3d7f0388` |
| 25 | `def` | [negativeFirstMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/negativefirstmoment.md) | 257 | `declaration-track:a4b46fe63264e2f95864d7757a55d1b9b51db0acb151065e872a9bae169c46cb` |
| 26 | `theorem` | [positiveFirstMoment_eq_negative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/positivefirstmoment-eq-negative.md) | 261 | `result-track:c2d9f68873d9d24725f56a8f11cbd7e94b6b067df3959181ab864694a2c561c9` |
| 27 | `theorem` | [kernelMomentOne_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/kernelmomentone-eq.md) | 309 | `result-track:da2171765f55d59c3837803a1331e72b980bf27498673865c1549c5fd7c88717` |
| 28 | `theorem` | [negativeFirstMoment_abs_le_four](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/negativefirstmoment-abs-le-four.md) | 352 | `result-track:51936e4d8859af7a6414bd380096e8e56df25587454081f0c4a4fd4e3e45f620` |
| 29 | `theorem` | [kernelMomentZero_abs_le_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/kernelmomentzero-abs-le-one.md) | 381 | `result-track:c1fb0150adb19cb9305e8771286daa1e9b66302b2081a4bd03320cddbde828dc` |
| 30 | `theorem` | [kernelMomentOne_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/kernelmomentone-abs-le.md) | 387 | `result-track:68bb71dadd1ed7807e40a0ed9976d9cb2e1a0c90493220e65f24de29439e1a62` |
| 31 | `theorem` | [trendValue_abs_le_of_samples](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/trendvalue-abs-le-of-samples.md) | 404 | `result-track:1a13040cc133a0a9186c8e4f6ac74eea255ee5b079f9c02dd8b9b877e08ea026` |
| 32 | `theorem` | [continuousDefect_antitone](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/continuousdefect-antitone.md) | 431 | `result-track:b6693fb726108199f2d8e4c9410a4cf273350a465a581e3a28c486798b625b0a` |
| 33 | `def` | [originalPrefixFloor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/originalprefixfloor.md) | 445 | `declaration-track:2ffe75ae03f349a256d0d6548beac8292410f8ae4faace111dabd1082eb14403` |
| 34 | `theorem` | [originalPrefixFloor_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/originalprefixfloor-le.md) | 449 | `result-track:e99cf7e5cee42c8a05fc3c4d90c1850f1cd853380f93e782260a2e6bc555e463` |
| 35 | `theorem` | [residual_le_of_nonaffine_cap](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/residual-le-of-nonaffine-cap.md) | 457 | `result-track:d7f1925dd94086af9bcf4a5d6d0b446f8e5b121374186818b9cb4a897cf3f4d3` |
| 36 | `theorem` | [original_lower_of_nonaffine_cap](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/original-lower-of-nonaffine-cap.md) | 467 | `result-track:3f66e5bcb15dec14bff6a8f8c4a53e0cd34f474575b9560e03769799b0858ce5` |
| 37 | `theorem` | [estimate_of_nonaffine_cap](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/estimate-of-nonaffine-cap.md) | 489 | `result-track:29f653237b009f71c7d89d0f22d1b18e898423b4acf670a97fd39ec86c5ea83e` |
| 38 | `def` | [consumerRadius](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/consumerradius.md) | 496 | `declaration-track:7c184abc1392031eac79b42d4b9f581031cb996c98d859b45da26cb24d275595` |
| 39 | `theorem` | [original_lower_of_separate_nonaffine_caps](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition4.lean/declarations/original-lower-of-separate-nonaffine-caps.md) | 499 | `result-track:9f16b5f54fa5ebf3af819206625a8dbe381e3cf9bcee66727108157b40bc147d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=645b64445511a7d3a9abb4f18bf1c1fb45aacea5a7ded0f7c88bb9b887ea1a0b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variantd6cf9249c1b01d6f84809bc16d501ee6c8c9316fdb0bbd0df65b30b8335745d5.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variantd6cf9249c1b01d6f84809bc16d501ee6c8c9316fdb0bbd0df65b30b8335745d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
