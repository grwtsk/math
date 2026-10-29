# Verification target: Exact Source Join For The Kapitza Corrector Task Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87addcea2051e9a0c0ff4c43a287fc8ba8ebeec2",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87addcea2051e9a0c0ff4c43a287fc8ba8ebeec2`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean.json)

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
| 1 | `def` | [normalizedPsiError](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/normalizedpsierror.md) | 33 | `declaration-track:272e3549aefe6723f618e79ee43c74d8f08deba8da48a1e98b79203cd1d504d7` |
| 2 | `def` | [kapitzaKernel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/kapitzakernel.md) | 37 | `declaration-track:7650af3d7de48f7c4c9a2cc36a11b98c37a78abe4cfb7b820cae635327cbc7d9` |
| 3 | `def` | [kapitzaWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/kapitzaweight.md) | 42 | `declaration-track:dd20ca8b4e785789ae7c7c64c7d5c92013cc658f2b72c3d06d935666f8da0729` |
| 4 | `def` | [endpointValue](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/endpointvalue.md) | 45 | `declaration-track:c9712cbc69cecf98047c3a04787d629eec68b00596c5e114f5fca4b918f2f74b` |
| 5 | `def` | [endpointSlope](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/endpointslope.md) | 48 | `declaration-track:630bc2fd060e8396befdb419711e9bc4b7d46c1a94b88934e759e30cd5521e4f` |
| 6 | `def` | [affineTrend](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/affinetrend.md) | 52 | `declaration-track:3e3445ac145b6973bb08bc246748034a6769d758b8e50be06bd0eb4e032d724d` |
| 7 | `def` | [nonaffineDiscrepancy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/nonaffinediscrepancy.md) | 55 | `declaration-track:ab446f610f2b14fb2d0656b74271d86c5470632ac91ee9f203cc2e25b34ae913` |
| 8 | `def` | [kernelMomentZero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/kernelmomentzero.md) | 58 | `declaration-track:f6e1bf983061a7d245d43ef7094bed2184f009dc7aa34be531fb9285b1f7b8f5` |
| 9 | `def` | [kernelMomentOne](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/kernelmomentone.md) | 61 | `declaration-track:baec805011e93bbd0488ac77e06187c8af142b58ac6c9a29065c649ec6c15ac8` |
| 10 | `def` | [trendValue](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/trendvalue.md) | 64 | `declaration-track:2882d99f67d89a70d5dce2249d8901fa8667965763d2a6744a91d5e7e83949ea` |
| 11 | `def` | [nonaffineWork](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/nonaffinework.md) | 68 | `declaration-track:eb216db24aa236b58853b72a27e3cae8114cf46144c10f03de241ac6a8263b2e` |
| 12 | `def` | [continuousDefect](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/continuousdefect.md) | 72 | `declaration-track:496ba96f69768b4f5a478a007a5b950da57ad8bde21d8dad650732a3bb15dcbe` |
| 13 | `theorem` | [normalizedPsiError_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/normalizedpsierror-zero.md) | 75 | `result-track:c68ecb49323a83621b714d5837137ce355c6542d4f6cf570cd77667ec6b46644` |
| 14 | `theorem` | [nonaffineDiscrepancy_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/nonaffinediscrepancy-upper.md) | 78 | `result-track:0f84776799fae5c565fafbbb1c30cf4bfd5d6688581813c5d6747fd610c2186c` |
| 15 | `theorem` | [normalizedPsiError_eq_prefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/normalizedpsierror-eq-prefix.md) | 81 | `result-track:32e897e75baf020fa8043006b87cdcaac7d7f87e884e8408245055c35b3e06ee` |
| 16 | `theorem` | [chebyshev_mul_continuous_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/chebyshev-mul-continuous-intervalintegrable.md) | 87 | `result-track:536748c26fd211da921879647e63be90a8f8842f2e87110d76d9f218e266926c` |
| 17 | `theorem` | [normalizedPsiError_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/normalizedpsierror-intervalintegrable.md) | 108 | `result-track:2f3382dcdacf36fa8932fb6b688bec2e179017fd1ccf02876e5daf0a1179f8fb` |
| 18 | `theorem` | [kapitzaWeight_continuous](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/kapitzaweight-continuous.md) | 118 | `result-track:58e41869787b686abb9fe7e2e895f44776b5eb888c44cfaede32f4d0a3738e39` |
| 19 | `theorem` | [weightedPsiError_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/weightedpsierror-intervalintegrable.md) | 123 | `result-track:59b7c1e637abcf0274cf621247c409e29d7f9eb6373918d706d3ff48cb4c781c` |
| 20 | `theorem` | [kernelMomentZero_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/kernelmomentzero-eq.md) | 130 | `result-track:73ffc957815a5cff7e61a4ddbb61fde3dd54fad09773568a287a02b58938b601` |
| 21 | `theorem` | [mertensResidual_eq_weightedPsi](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/mertensresidual-eq-weightedpsi.md) | 149 | `result-track:bf3aae7bd80c78a03df6b17c32ff6aaf17cf0f8911c14ba67412ec341cc25a7c` |
| 22 | `theorem` | [mertensResidual_eq_affine_nonaffine](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/mertensresidual-eq-affine-nonaffine.md) | 206 | `result-track:46c24bae860bde913982bfd47cc42302a813705bc07e858742284d86518fe937` |
| 23 | `theorem` | [one_add_continuous_eq_defect](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/one-add-continuous-eq-defect.md) | 247 | `result-track:f5a75ee0e8aa698e43dd400cb4a92d888cc45b3d08e0997123b45c80ee845504` |
| 24 | `theorem` | [mertensResidual_eq_defect_trend_nonaffine](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/mertensresidual-eq-defect-trend-nonaffine.md) | 256 | `result-track:c6d09665b47bcdcb7954790d61a14a08e5bdc31dc723881c8be94820d60feea0` |
| 25 | `def` | [negativeFirstMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/negativefirstmoment.md) | 263 | `declaration-track:c4fa0e6d14d11a437a66784b481670ddfb04ea44d11a743a170cb7e87fc1f2a4` |
| 26 | `theorem` | [positiveFirstMoment_eq_negative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/positivefirstmoment-eq-negative.md) | 267 | `result-track:04e74f4974bce868bc37884070a89e9e85e25864399d6125d2177357877f6c8a` |
| 27 | `theorem` | [kernelMomentOne_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/kernelmomentone-eq.md) | 315 | `result-track:ceac7eb2451a1fc53ea0a7606fb62e95f192638fc76b9d1f60b4c9c445cc3fa7` |
| 28 | `theorem` | [negativeFirstMoment_abs_le_four](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/negativefirstmoment-abs-le-four.md) | 358 | `result-track:305c9f75072bff20c464c13b1d0be37f074e18c43a3d3bb3918757bcb53bb685` |
| 29 | `theorem` | [kernelMomentZero_abs_le_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/kernelmomentzero-abs-le-one.md) | 387 | `result-track:e7e7e46adb771e59d5276d2a44a8443dcc4cd7eaa2099d04bfe8c4d2d84bd22f` |
| 30 | `theorem` | [kernelMomentOne_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/kernelmomentone-abs-le.md) | 393 | `result-track:6fa5c69b19dc3bb6906eaa60726df212680c7894083e6d4b62a174ea2eb3bf29` |
| 31 | `theorem` | [trendValue_abs_le_of_samples](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/trendvalue-abs-le-of-samples.md) | 410 | `result-track:89420c9917df35d7a78957598720cf6296b7b3f656f763330bd8ba65d4798c38` |
| 32 | `theorem` | [continuousDefect_antitone](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/continuousdefect-antitone.md) | 437 | `result-track:f1657741766485b4e89e76d7f912d70b19aa1e69457de1ff99a53b7526820d75` |
| 33 | `def` | [originalPrefixFloor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/originalprefixfloor.md) | 451 | `declaration-track:8e88564571110c6263991fc304ea4ac64a5a047cd10804ae485c459ab25355e2` |
| 34 | `theorem` | [originalPrefixFloor_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/originalprefixfloor-le.md) | 455 | `result-track:bdc53773a4c707cde4c5dbda563b1d7d18fbba055733de1486f8e76275abec2b` |
| 35 | `theorem` | [residual_le_of_nonaffine_cap](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/residual-le-of-nonaffine-cap.md) | 463 | `result-track:464d04a530ea2ad4b5bee6e4079aca4c5f0c433d0be8e91236353b54ce131fda` |
| 36 | `theorem` | [original_lower_of_nonaffine_cap](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/original-lower-of-nonaffine-cap.md) | 473 | `result-track:6203440654e82d029a74ccc77163c72c3a3959380f14a9cd6455b37417dd628b` |
| 37 | `theorem` | [estimate_of_nonaffine_cap](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/estimate-of-nonaffine-cap.md) | 495 | `result-track:1ff04f676c2213cc809530662584d617051bb834df01fd82f71dd831aa7af640` |
| 38 | `def` | [consumerRadius](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/consumerradius.md) | 502 | `declaration-track:bd13f080f957200886f7b8624b7675778f61758570cc3e4050b44bcf8e163596` |
| 39 | `theorem` | [original_lower_of_separate_nonaffine_caps](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition2.lean/declarations/original-lower-of-separate-nonaffine-caps.md) | 505 | `result-track:162dcac4538837d7050be2404d495f4fb3c87dce77253e610c0f255eccd347d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa19c0a9c91ecf918b45defa007c8f79cfdf69619a91317780a387caef1a889a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant48e633663d51ae6105deace68dd129482b3d1c79a800fddcf3490a76c1a47e3c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
