# Verification target: Exact Source Join For The Kapitza Corrector Task Edition5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f1ee3508d66942141d062fe874b58d26fab20d2",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variantf1c18818ac672f1d3fec25e6bdc6c74e9fd9055dedada2cec232c278e8f158af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f1ee3508d66942141d062fe874b58d26fab20d2`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variantf1c18818ac672f1d3fec25e6bdc6c74e9fd9055dedada2cec232c278e8f158af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variantf1c18818ac672f1d3fec25e6bdc6c74e9fd9055dedada2cec232c278e8f158af.lean.json)

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
| 1 | `def` | [normalizedPsiError](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/normalizedpsierror.md) | 33 | `declaration-track:d38c046d82370aca3015d2b5a36b10549c441ba091c9a562ed23d8556a71556d` |
| 2 | `def` | [kapitzaKernel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/kapitzakernel.md) | 37 | `declaration-track:06c8bc8040f4d8a0a9d865b80c61bc145bc8296a3dea77a12eabb3b13c0d6d95` |
| 3 | `def` | [kapitzaWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/kapitzaweight.md) | 42 | `declaration-track:4c7daff6e04eaed7934686c9687404a86ae9e70e0b4683ac04b2ea448fd79385` |
| 4 | `def` | [endpointValue](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/endpointvalue.md) | 45 | `declaration-track:8c429503e00ddc0fdc13c1c66d54932fa7d04ce8d317dd90c913659a607cfc8d` |
| 5 | `def` | [endpointSlope](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/endpointslope.md) | 47 | `declaration-track:bc3507ee64f272cecce346c2e63d9e7c97ad1d64c8c798d7672bd8900d493df4` |
| 6 | `def` | [affineTrend](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/affinetrend.md) | 50 | `declaration-track:f882d0ec27b9625f87d4e81de164485602d40ebb0b0f7442ca1a23d66d067691` |
| 7 | `def` | [nonaffineDiscrepancy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/nonaffinediscrepancy.md) | 53 | `declaration-track:a902c073862d786e618703cc800f63d0c0a621cc34361213b396db5b12466691` |
| 8 | `def` | [kernelMomentZero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/kernelmomentzero.md) | 55 | `declaration-track:66b994036a1d6170e4e1f74bda8c87ac26a9cce27530c4e2543bc366c8e3b471` |
| 9 | `def` | [kernelMomentOne](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/kernelmomentone.md) | 57 | `declaration-track:2d2de6e2efa64808ebbbb80b162756c9629b82871a913e5923e05f4c72daac48` |
| 10 | `def` | [trendValue](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/trendvalue.md) | 59 | `declaration-track:bc946268db3b67d9c58ad973065b13bd9077c18ad062dc5e96faecbb3a4f6395` |
| 11 | `def` | [nonaffineWork](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/nonaffinework.md) | 63 | `declaration-track:1ca6c68c9dcf0d4401c490858e78f7d746b18fdd8a69157c7a638057a823542b` |
| 12 | `def` | [continuousDefect](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/continuousdefect.md) | 66 | `declaration-track:5b4ec3b3a1080934b9b7def97a67f0968d3b7fa75dc0592e4a0f6f030652eb04` |
| 13 | `theorem` | [normalizedPsiError_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/normalizedpsierror-zero.md) | 69 | `result-track:eef69a71be181eb23bfd5f8446d5873243a3e63e57ec8c98842ed4af553c0f72` |
| 14 | `theorem` | [nonaffineDiscrepancy_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/nonaffinediscrepancy-upper.md) | 72 | `result-track:47d5a1ee1fe13d1e4a74a4303ff1844c52c96b64f8ecd76c846348d9c444e091` |
| 15 | `theorem` | [normalizedPsiError_eq_prefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/normalizedpsierror-eq-prefix.md) | 75 | `result-track:4c23ed2756437de70fe3c176e3e4582f87faf987482c5208796963cba26d5524` |
| 16 | `theorem` | [chebyshev_mul_continuous_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/chebyshev-mul-continuous-intervalintegrable.md) | 81 | `result-track:cb19b34239fd84a5b0e0c737bd640da89455a5cf10fa177945f7bf52aadf5146` |
| 17 | `theorem` | [normalizedPsiError_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/normalizedpsierror-intervalintegrable.md) | 102 | `result-track:15c07f36c41e39dc1ee8c0bb06ab1b2a407bfe1f694728489014175fb8dfbb9c` |
| 18 | `theorem` | [kapitzaWeight_continuous](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/kapitzaweight-continuous.md) | 112 | `result-track:7ccac3b780cb44059657f0642e7f06cbe1052b9d6ee71ca943079376cc438c10` |
| 19 | `theorem` | [weightedPsiError_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/weightedpsierror-intervalintegrable.md) | 117 | `result-track:ede0994a6420c90d7f7c9258db29490fd608c0e29c5c930c08cb5c07ebf8b902` |
| 20 | `theorem` | [kernelMomentZero_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/kernelmomentzero-eq.md) | 124 | `result-track:9d81daddc45b1e57966a1a7cb36bc8335752f37bd73ff2d5bd0d2a0da7ea698e` |
| 21 | `theorem` | [mertensResidual_eq_weightedPsi](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/mertensresidual-eq-weightedpsi.md) | 143 | `result-track:2ddc1c561d9b34a2943c2329bff9c2f9a9097bd6ff3273efee12992b76e6aa12` |
| 22 | `theorem` | [mertensResidual_eq_affine_nonaffine](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/mertensresidual-eq-affine-nonaffine.md) | 200 | `result-track:1b870719600d73d261300f4d5cad7480b27f353c0ea7d5a25ff054d2138c351b` |
| 23 | `theorem` | [one_add_continuous_eq_defect](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/one-add-continuous-eq-defect.md) | 241 | `result-track:5aa3a8c427e91a21e114bf2db0fb3270e35f909051c4a37f085a4041d8bd691b` |
| 24 | `theorem` | [mertensResidual_eq_defect_trend_nonaffine](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/mertensresidual-eq-defect-trend-nonaffine.md) | 250 | `result-track:e94b6537c490b0d9cfc0ef6fa62c9d70f3ef3a11a40e382399d7577131a1df87` |
| 25 | `def` | [negativeFirstMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/negativefirstmoment.md) | 257 | `declaration-track:b418dd45b274386ecc73fcec8eb3934c461b6d89c833e21715a9c25bd4c70295` |
| 26 | `theorem` | [positiveFirstMoment_eq_negative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/positivefirstmoment-eq-negative.md) | 261 | `result-track:f5e8ca2e4853cedea87a5cd928a7e6fd2794b46fb36ff76eae5c0b9f3daa3dfb` |
| 27 | `theorem` | [kernelMomentOne_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/kernelmomentone-eq.md) | 308 | `result-track:bd07bb71660c73e5552449627fa37f9938c3b61a52315b5dc572d9f65ad08e49` |
| 28 | `theorem` | [negativeFirstMoment_abs_le_four](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/negativefirstmoment-abs-le-four.md) | 351 | `result-track:3d7420a7d58ac6c1ebefa99cc9778d09d30062735eb63194ee34fd8de2bc8485` |
| 29 | `theorem` | [kernelMomentZero_abs_le_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/kernelmomentzero-abs-le-one.md) | 380 | `result-track:8e1e58665b4113ccdf559e3d5b8ed31135129667beab05898f7f04b30933b566` |
| 30 | `theorem` | [kernelMomentOne_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/kernelmomentone-abs-le.md) | 386 | `result-track:dfb9ca760511e7e52cfcdb0d736faa7264c675fabb06f87a07acfab7fbf5e6b8` |
| 31 | `theorem` | [trendValue_abs_le_of_samples](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/trendvalue-abs-le-of-samples.md) | 403 | `result-track:b9b5ddc0fb9ca52a174884a474f04dc86e44781b6d199c48dfb05a45f937b8ec` |
| 32 | `theorem` | [continuousDefect_antitone](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/continuousdefect-antitone.md) | 430 | `result-track:57cb6f63c703b9d92608e8470341031f2b5df650d02f00dbb0a8f571d76ff46c` |
| 33 | `def` | [originalPrefixFloor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/originalprefixfloor.md) | 444 | `declaration-track:5d9db7adf246d644cab38469de2db4c7491734ac346fef8e1c89017fb3070f8f` |
| 34 | `theorem` | [originalPrefixFloor_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/originalprefixfloor-le.md) | 448 | `result-track:f07ba32571bbcd0f51c53649e61c415f25bb3e7b0364cf24bf50c0b1ed0662c6` |
| 35 | `theorem` | [residual_le_of_nonaffine_cap](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/residual-le-of-nonaffine-cap.md) | 456 | `result-track:6bc324971b70975e1beafe080c6bb27507c3808514e40794f1b48f780904198a` |
| 36 | `theorem` | [original_lower_of_nonaffine_cap](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/original-lower-of-nonaffine-cap.md) | 466 | `result-track:5ddfc64e0642f7195f3d80a75c4a8462365904c70b3c3e4f5ce8855301f43812` |
| 37 | `theorem` | [estimate_of_nonaffine_cap](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/estimate-of-nonaffine-cap.md) | 488 | `result-track:bd820933948fbce197fc3f9bc4a0d24368604ed4750858f784a8f03656d00ef3` |
| 38 | `def` | [consumerRadius](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/consumerradius.md) | 495 | `declaration-track:8a05fd83ec73a351c3018ddacb09f6566f1c44ac40d73c7a55a34fe1be423db9` |
| 39 | `theorem` | [original_lower_of_separate_nonaffine_caps](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/declarations/original-lower-of-separate-nonaffine-caps.md) | 498 | `result-track:1d8c398f9f834a0f440e9d2b136bd0a48a8e5f83b91d550cfcaa692d712bb375` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57330d470c225cc81367fced68df473b39cfd1753e1b0fa60bb65d13b8b70b1d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variantf1c18818ac672f1d3fec25e6bdc6c74e9fd9055dedada2cec232c278e8f158af.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variantf1c18818ac672f1d3fec25e6bdc6c74e9fd9055dedada2cec232c278e8f158af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
