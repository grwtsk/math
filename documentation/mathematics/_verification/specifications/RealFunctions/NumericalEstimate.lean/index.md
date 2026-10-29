# Verification target: Numerical Estimate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22d6abb8119e099c4a409f3905fa1b966a538981",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/NumericalEstimate/Variantba80e3528287d69d0a6829266591a502c8b348b24c4155fc9d89acf99aeb2e33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/NumericalEstimate.lean/index.md) · [Full source](../../../../RealFunctions/NumericalEstimate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22d6abb8119e099c4a409f3905fa1b966a538981`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/NumericalEstimate/Variantba80e3528287d69d0a6829266591a502c8b348b24c4155fc9d89acf99aeb2e33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/NumericalEstimate/Variantba80e3528287d69d0a6829266591a502c8b348b24c4155fc9d89acf99aeb2e33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Number.Payload` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [NumericalEstimateKind](../../../../RealFunctions/NumericalEstimate.lean/declarations/numericalestimatekind.md) | 27 | `declaration-track:165d0be2c0e5254b9fd1a92282ae0a905af037e68fe22a9bd0c33fad48282e1b` |
| 2 | `inductive` | [DifferentialProblemKind](../../../../RealFunctions/NumericalEstimate.lean/declarations/differentialproblemkind.md) | 40 | `declaration-track:31fdf66e1d925696a2d581c391974ae3dbf23b9eccf7a9ced303efc8ae29903f` |
| 3 | `structure` | [FiniteDomain](../../../../RealFunctions/NumericalEstimate.lean/declarations/finitedomain.md) | 47 | `declaration-track:4a9df47e8b7d4795257be47e0bb07d2c17f7167b866499c56a375d3455625347` |
| 4 | `structure` | [PrecisionSpec](../../../../RealFunctions/NumericalEstimate.lean/declarations/precisionspec.md) | 55 | `declaration-track:281b557404c18b8b52c7b81a7c94087061e8010ae4e2ff55977e96dffe8d524f` |
| 5 | `structure` | [AlgorithmSpec](../../../../RealFunctions/NumericalEstimate.lean/declarations/algorithmspec.md) | 65 | `declaration-track:1063c0bf798f6bde1daf69082c0fd8962afdf5e372b5d90143324c0a3a26d028` |
| 6 | `structure` | [ErrorModel](../../../../RealFunctions/NumericalEstimate.lean/declarations/errormodel.md) | 74 | `declaration-track:67b504c9aa59af6d81d241847bbdb42f8ca15a46931b96ffdb1351b82ebe002d` |
| 7 | `structure` | [RationalIntervalEndpoint](../../../../RealFunctions/NumericalEstimate.lean/declarations/rationalintervalendpoint.md) | 86 | `declaration-track:deeaceab59fdb1e9363afe4991e318319270ba7e21422dc207fe2252abf9186d` |
| 8 | `structure` | [RationalInterval](../../../../RealFunctions/NumericalEstimate.lean/declarations/rationalinterval.md) | 93 | `declaration-track:78b4aa7115efd3513d27c3085b5efab728c0ac3a2679989b83dba9cd0bb636a0` |
| 9 | `structure` | [IntervalArithmeticPayload](../../../../RealFunctions/NumericalEstimate.lean/declarations/intervalarithmeticpayload.md) | 101 | `declaration-track:afa67a0f9500af0f88229f6e19a0e904d24e684a18b3093b5031a6d8130dd6cb` |
| 10 | `structure` | [TailBoundPayload](../../../../RealFunctions/NumericalEstimate.lean/declarations/tailboundpayload.md) | 110 | `declaration-track:2f2752a2e9ab823d608c2eacda401d571ddbf1c7692ce1de83e2dc203067ba02` |
| 11 | `structure` | [ContourIntegralPayload](../../../../RealFunctions/NumericalEstimate.lean/declarations/contourintegralpayload.md) | 120 | `declaration-track:9c1bd1688af7f885c35601d204d8f6b1f1bcd03e99f5aa1db4cf050f0092688d` |
| 12 | `structure` | [ArgumentPrincipleCountPayload](../../../../RealFunctions/NumericalEstimate.lean/declarations/argumentprinciplecountpayload.md) | 131 | `declaration-track:225133fba5b2f675882fa7e9f87b6788dd4f4058b3538044cc64296cebe662fc` |
| 13 | `structure` | [ValidatedIntegrationPayload](../../../../RealFunctions/NumericalEstimate.lean/declarations/validatedintegrationpayload.md) | 144 | `declaration-track:2d53e69db9f41db163dd6a179f5d503a0dc6138b457fe7fe0ba84600492cffab` |
| 14 | `structure` | [SpectralEnclosurePayload](../../../../RealFunctions/NumericalEstimate.lean/declarations/spectralenclosurepayload.md) | 158 | `declaration-track:f8d7fa00a164be720d8c0908a5910ccd001c2db64e96aa9ecf0aa000d4883a66` |
| 15 | `structure` | [OperatorNormBoundPayload](../../../../RealFunctions/NumericalEstimate.lean/declarations/operatornormboundpayload.md) | 169 | `declaration-track:e748b167aec6aee66b59b2c2a63997cc07df3ad1da00bb858e2f2911fb37e677` |
| 16 | `structure` | [RigorousQuadraturePayload](../../../../RealFunctions/NumericalEstimate.lean/declarations/rigorousquadraturepayload.md) | 180 | `declaration-track:fcda5ab5317b12152bca9abbeae26b895118d6c3e29331586c6b67fa8e8c100a` |
| 17 | `structure` | [FiniteNumericalEstimatePayload](../../../../RealFunctions/NumericalEstimate.lean/declarations/finitenumericalestimatepayload.md) | 192 | `declaration-track:21a201e9e830acc4e2a2a437cae313e26c9ffce457ba395f06bd22c670949482` |
| 18 | `theorem` | [finite_domain_sound](../../../../RealFunctions/NumericalEstimate.lean/declarations/finite-domain-sound.md) | 212 | `result-track:4cda1b67b76aab2fc13d33167ede415565f85639bbe30cd1a7acf389f6d00da4` |
| 19 | `theorem` | [precision_spec_sound](../../../../RealFunctions/NumericalEstimate.lean/declarations/precision-spec-sound.md) | 217 | `result-track:6e42e737b8e2f4cda2c4dc50523eab8b54b21c75e83b1cf2d4b5fbca090462ee` |
| 20 | `theorem` | [algorithm_spec_sound](../../../../RealFunctions/NumericalEstimate.lean/declarations/algorithm-spec-sound.md) | 222 | `result-track:3cbe9d293c97a9d8e7c091d850a8390792e8211f8311ce755471866f0e07995f` |
| 21 | `theorem` | [error_model_sound](../../../../RealFunctions/NumericalEstimate.lean/declarations/error-model-sound.md) | 227 | `result-track:2d3854b402675b410d3c1b3024b2dd7424215a7f6a2c4b5a8645629a6342ebdc` |
| 22 | `theorem` | [rational_interval_sound](../../../../RealFunctions/NumericalEstimate.lean/declarations/rational-interval-sound.md) | 232 | `result-track:05987be0de30480da8283af5d57c221ffea256513e19d173483ba305cf4d7bff` |
| 23 | `theorem` | [interval_arithmetic_payload_sound](../../../../RealFunctions/NumericalEstimate.lean/declarations/interval-arithmetic-payload-sound.md) | 237 | `result-track:43d8ad29689fc8e07f1e85990002f62d215264a16e5007e6241764601fc5ad71` |
| 24 | `theorem` | [tail_bound_payload_sound](../../../../RealFunctions/NumericalEstimate.lean/declarations/tail-bound-payload-sound.md) | 242 | `result-track:7bdafb38a5f59effdf124dea4432b3a6a7a1a1d4dd32dccb63181740154b9001` |
| 25 | `theorem` | [contour_integral_payload_sound](../../../../RealFunctions/NumericalEstimate.lean/declarations/contour-integral-payload-sound.md) | 247 | `result-track:8f7db7ec82f5b871b24b0170538fe525ef4b171f53b549552ab4337ad2454963` |
| 26 | `theorem` | [argument_principle_count_payload_sound](../../../../RealFunctions/NumericalEstimate.lean/declarations/argument-principle-count-payload-sound.md) | 252 | `result-track:7359fb0e0cc152e43362406d74bad9f548ac08e033100c1559025c7280291e9e` |
| 27 | `theorem` | [validated_integration_payload_sound](../../../../RealFunctions/NumericalEstimate.lean/declarations/validated-integration-payload-sound.md) | 257 | `result-track:53a8088ab31c648374800b062079178b8c9fb9dbe7aea6ac325402c747e6e31e` |
| 28 | `theorem` | [spectral_enclosure_payload_sound](../../../../RealFunctions/NumericalEstimate.lean/declarations/spectral-enclosure-payload-sound.md) | 262 | `result-track:d9233f900f289daac4f08c5c0a15a3b7f7f71c05750fe45223b5c9e2b46f9d36` |
| 29 | `theorem` | [operator_norm_bound_payload_sound](../../../../RealFunctions/NumericalEstimate.lean/declarations/operator-norm-bound-payload-sound.md) | 267 | `result-track:5158811fc60ae5e080580df1acf9e5091d709d020e38ddc97ade4eded9dbb692` |
| 30 | `theorem` | [rigorous_quadrature_payload_sound](../../../../RealFunctions/NumericalEstimate.lean/declarations/rigorous-quadrature-payload-sound.md) | 272 | `result-track:5dafc47b13da14c6b923494b73d4a8878c2f7f206ea81de3875377805c9f7033` |
| 31 | `theorem` | [finite_numerical_estimate_payload_sound](../../../../RealFunctions/NumericalEstimate.lean/declarations/finite-numerical-estimate-payload-sound.md) | 277 | `result-track:8eeabbbf67572d9adcb95c6015e13ab1a17ac263e07e841bab879540ab16963e` |
| 32 | `def` | [FinitePayloadOwnsIntervalArithmeticTheorem](../../../../RealFunctions/NumericalEstimate.lean/declarations/finitepayloadownsintervalarithmetictheorem.md) | 283 | `declaration-track:da1a44d091f96aa04c9aed35472154c03fef3c26d548d1652ff4b072e1028242` |
| 33 | `def` | [FinitePayloadOwnsTailBoundTheorem](../../../../RealFunctions/NumericalEstimate.lean/declarations/finitepayloadownstailboundtheorem.md) | 288 | `declaration-track:3e3c56abf4d1ae3fd6bc7fb3d5ac0b03e7027fb6280dfb5f67f343e9e31cb04a` |
| 34 | `def` | [FinitePayloadOwnsContourIntegralTheorem](../../../../RealFunctions/NumericalEstimate.lean/declarations/finitepayloadownscontourintegraltheorem.md) | 293 | `declaration-track:fabe4f690a0a097c76e1b6b8c2f99e403360b05e593266009d2cae3df906bcc1` |
| 35 | `def` | [FinitePayloadOwnsArgumentPrincipleCountTheorem](../../../../RealFunctions/NumericalEstimate.lean/declarations/finitepayloadownsargumentprinciplecounttheorem.md) | 298 | `declaration-track:4a4ad4ef04c4513f3e608756a3e5732efc7b2b05261af47122d81cdf2c8a1063` |
| 36 | `def` | [FinitePayloadOwnsValidatedIntegrationTheorem](../../../../RealFunctions/NumericalEstimate.lean/declarations/finitepayloadownsvalidatedintegrationtheorem.md) | 303 | `declaration-track:d233ff6130215533ed691815204613b971a53c6f3c752d108e72740f3fcab9d0` |
| 37 | `def` | [FinitePayloadOwnsSpectralEnclosureTheorem](../../../../RealFunctions/NumericalEstimate.lean/declarations/finitepayloadownsspectralenclosuretheorem.md) | 308 | `declaration-track:ab1755d3f225c1945fef78c7ee01986ccc591101494a3848a773089f870ee5e9` |
| 38 | `def` | [FinitePayloadOwnsOperatorNormBoundTheorem](../../../../RealFunctions/NumericalEstimate.lean/declarations/finitepayloadownsoperatornormboundtheorem.md) | 313 | `declaration-track:ec11bb44e204e701a5d76825043e636c71cd003b8c595f2169cced3f15b62539` |
| 39 | `def` | [FinitePayloadOwnsRigorousQuadratureTheorem](../../../../RealFunctions/NumericalEstimate.lean/declarations/finitepayloadownsrigorousquadraturetheorem.md) | 318 | `declaration-track:de9f055f0c35e6a9acee0cf427cb8c3c0646540056c927e8b2e92d718c9c3533` |
| 40 | `def` | [FinitePayloadOwnsTheoremLevelInterpretation](../../../../RealFunctions/NumericalEstimate.lean/declarations/finitepayloadownstheoremlevelinterpretation.md) | 323 | `declaration-track:21e53f4c52cb0699f127271567a1ab4d78cc4bc893c26715070023e075643237` |
| 41 | `theorem` | [finite_payload_not_interval_arithmetic_theorem](../../../../RealFunctions/NumericalEstimate.lean/declarations/finite-payload-not-interval-arithmetic-theorem.md) | 327 | `result-track:e5d575dd11eabb917ce937235b3dbe0f43fd9f14a653c2d92c4182315eb2a8c0` |
| 42 | `theorem` | [finite_payload_not_tail_bound_theorem](../../../../RealFunctions/NumericalEstimate.lean/declarations/finite-payload-not-tail-bound-theorem.md) | 333 | `result-track:6d417cd8b788c6baef423e39d3997b76f94297a7ea6ab63f8a7bad9aa55c0aae` |
| 43 | `theorem` | [finite_payload_not_contour_integral_theorem](../../../../RealFunctions/NumericalEstimate.lean/declarations/finite-payload-not-contour-integral-theorem.md) | 339 | `result-track:7c7da026398993b667ace227a66fb852ea6cb783f126612e2d559ab2d89e5e00` |
| 44 | `theorem` | [finite_payload_not_argument_principle_count_theorem](../../../../RealFunctions/NumericalEstimate.lean/declarations/finite-payload-not-argument-principle-count-theorem.md) | 345 | `result-track:51340aaa717a61a9b290de74a06ffd5b0ac4c8b5d126c0b65fcb5b6075da5a93` |
| 45 | `theorem` | [finite_payload_not_validated_integration_theorem](../../../../RealFunctions/NumericalEstimate.lean/declarations/finite-payload-not-validated-integration-theorem.md) | 351 | `result-track:4a429f11553efe1283aa03927fac4957a36a2641eca20e4bb938996b643594ae` |
| 46 | `theorem` | [finite_payload_not_spectral_enclosure_theorem](../../../../RealFunctions/NumericalEstimate.lean/declarations/finite-payload-not-spectral-enclosure-theorem.md) | 357 | `result-track:3db9b44d5c54f9772122674a08cb869a68b09f9a6a48160c71e08f8314f62c2a` |
| 47 | `theorem` | [finite_payload_not_operator_norm_bound_theorem](../../../../RealFunctions/NumericalEstimate.lean/declarations/finite-payload-not-operator-norm-bound-theorem.md) | 363 | `result-track:636cbcc7fe412f58b8a1cb8613c8c58eeaa9835364617b22ceb3dad21725a60a` |
| 48 | `theorem` | [finite_payload_not_rigorous_quadrature_theorem](../../../../RealFunctions/NumericalEstimate.lean/declarations/finite-payload-not-rigorous-quadrature-theorem.md) | 369 | `result-track:a6b8d7dc85018ecbf1756d808dfbadff88aef3b53ae3975dd64f395b9e621526` |
| 49 | `theorem` | [finite_payload_not_theorem_level_interpretation](../../../../RealFunctions/NumericalEstimate.lean/declarations/finite-payload-not-theorem-level-interpretation.md) | 375 | `result-track:0eb600b794a0a40d8b23a8e699f43894f45468b350654993748372d829d37a86` |
| 50 | `theorem` | [finite_numerical_estimate_payload_boundary_summary](../../../../RealFunctions/NumericalEstimate.lean/declarations/finite-numerical-estimate-payload-boundary-summary.md) | 387 | `result-track:5e8211a5554f620f2c79b2d5051d10d97e9e50b426b4285a949a09ba192a0bee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=beef8500fbce91a8227de0f9d47b10e34f2d0e841e6e0af03cbf79d992415f0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/NumericalEstimate/Variantba80e3528287d69d0a6829266591a502c8b348b24c4155fc9d89acf99aeb2e33.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/NumericalEstimate/Variantba80e3528287d69d0a6829266591a502c8b348b24c4155fc9d89acf99aeb2e33.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
