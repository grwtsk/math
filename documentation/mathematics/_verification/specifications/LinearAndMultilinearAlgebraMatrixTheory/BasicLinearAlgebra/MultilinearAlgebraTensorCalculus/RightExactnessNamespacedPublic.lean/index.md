# Verification target: Right Exactness Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1dc5533a78a54da60f8f336052f02e6c1a67f6a",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RightExactness/Variant53f7844a2c726a21385b358df8c1cec3f628266f5b190b6d4e7e65a0cb870629.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1dc5533a78a54da60f8f336052f02e6c1a67f6a`.

Source path: `GRWTSK/Algebra/RightExactness/Variant53f7844a2c726a21385b358df8c1cec3f628266f5b190b6d4e7e65a0cb870629.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RightExactness/Variant53f7844a2c726a21385b358df8c1cec3f628266f5b190b6d4e7e65a0cb870629.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [le_comap_range_lTensor](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/le-comap-range-ltensor.md) | 111 | `result-track:a2043549c977d8d0cd56e2f214a566ee81346afff70ff6c4ae0e6544e70e99d1` |
| 2 | `lemma` | [le_comap_range_rTensor](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/le-comap-range-rtensor.md) | 116 | `result-track:a3fcb1985fb011edd8a824afaf71bee3685847d2c2b83d4a530869f2f341a0c7` |
| 3 | `theorem` | [LinearMap.lTensor_surjective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/linearmap-ltensor-surjective.md) | 125 | `result-track:312cce971e694b5c89c4b8fe0b4b2fa559747f4201403aacc4fb03f07ca4941b` |
| 4 | `theorem` | [LinearMap.lTensor_range](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/linearmap-ltensor-range.md) | 137 | `result-track:8bcb73cc30e0d45b3d07921fa5dfc2dcbed92f06a5653b0b40d108b9e15707a2` |
| 5 | `theorem` | [LinearMap.baseChange_surjective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/linearmap-basechange-surjective.md) | 149 | `result-track:130a80980a066db9067203edc0e5cd111a2ba67172a7e087f66b6fc8f409a4e5` |
| 6 | `theorem` | [LinearMap.rTensor_surjective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/linearmap-rtensor-surjective.md) | 155 | `result-track:ddfac4aef634d37fdf2197d95388ddaaf9970b9d9ea7f498a4349accd25df4ea` |
| 7 | `theorem` | [LinearMap.rTensor_range](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/linearmap-rtensor-range.md) | 167 | `result-track:6737661361a566e738c95711aa2cc72c3de77f1a29297ff6c40a82f72c2ba938` |
| 8 | `lemma` | [LinearMap.rTensor_exact_iff_lTensor_exact](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/linearmap-rtensor-exact-iff-ltensor-exact.md) | 178 | `result-track:fac8ff15d400f9e7f6bb7716380f06a4f2a1d7b86a55262aee1ad2c1834c1209` |
| 9 | `theorem` | [TensorProduct.map_surjective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/tensorproduct-map-surjective.md) | 190 | `result-track:20eeb832bf49f279f34b66ed02964fac80fa7001f2b0994c7a03ddd2961744aa` |
| 10 | `def` | [lTensor.toFun](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/ltensor-tofun.md) | 207 | `declaration-track:fec1ee12c29007959013289f5079b279ca5ab79bf9cc604e00d4ee465be7acea` |
| 11 | `def` | [lTensor.inverse_of_rightInverse](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/ltensor-inverse-of-rightinverse.md) | 214 | `declaration-track:69bc604f6659d90af95afc00fcaf67a4ff8c1d44e6a1c8f76ea197e7056cc02e` |
| 12 | `lemma` | [lTensor.inverse_of_rightInverse_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/ltensor-inverse-of-rightinverse-apply.md) | 232 | `result-track:2f4e7fa09f1dae3703ab1f41284562170634e441ccca1e1d628f388183c0828c` |
| 13 | `lemma` | [lTensor.inverse_of_rightInverse_comp_lTensor](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/ltensor-inverse-of-rightinverse-comp-ltensor.md) | 247 | `result-track:1ea55d7115c487f3716ad62dfe1dd57651a84d7dac2c818733067beba91d6dbb` |
| 14 | `def` | [lTensor.inverse](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/ltensor-inverse.md) | 258 | `declaration-track:87f26f8d733479d38762ddd29c929145bcf878d5dbbb0fb061a3e78bf47723f5` |
| 15 | `lemma` | [lTensor.inverse_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/ltensor-inverse-apply.md) | 262 | `result-track:111be53770099878f1e4863fdfc2fd459673df97dd182b624aa666155ac26744` |
| 16 | `lemma` | [lTensor.inverse_comp_lTensor](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/ltensor-inverse-comp-ltensor.md) | 267 | `result-track:934610d5a2adb5bc8e9ffecc1532425e3395bb49ee77aac85724354ce6dd4ac3` |
| 17 | `def` | [lTensor.linearEquiv_of_rightInverse](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/ltensor-linearequiv-of-rightinverse.md) | 277 | `declaration-track:b0cd5313858c05bfb8797bc65ceaf22bc76c4fa07735b2bb932a5f9a3a7c0ed1` |
| 18 | `def` | [lTensor.equiv](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/ltensor-equiv.md) | 293 | `declaration-track:0fd5d1dece4283ff0a46722756ab8d0d09c8217756406e7ba1313cb3704a46d4` |
| 19 | `theorem` | [lTensor_exact](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/ltensor-exact.md) | 299 | `result-track:9171e1ece7ba441002777162beef16d020ace4e165c1d1ec1ae6d952de09b472` |
| 20 | `lemma` | [lTensor_mkQ](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/ltensor-mkq.md) | 308 | `result-track:09a3f9a884db99c03199d81b244310211448c5cbc19d58dae571a36f306b2193` |
| 21 | `def` | [rTensor.toFun](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/rtensor-tofun.md) | 314 | `declaration-track:5c81ccfd79f7e74598ccd380522df50eaa99e8a583fd98ad66abcf6317b33d3a` |
| 22 | `def` | [rTensor.inverse_of_rightInverse](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/rtensor-inverse-of-rightinverse.md) | 321 | `declaration-track:59d49286d81c6f977f77e920d8019a3b53e76a6df120d6ef850221f2c7833b56` |
| 23 | `lemma` | [rTensor.inverse_of_rightInverse_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/rtensor-inverse-of-rightinverse-apply.md) | 339 | `result-track:d16336d0cd2c2ff2fbebf17c1911e84aea31373975ea15b664eb753ac903d97d` |
| 24 | `lemma` | [rTensor.inverse_of_rightInverse_comp_rTensor](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/rtensor-inverse-of-rightinverse-comp-rtensor.md) | 353 | `result-track:488b99f4664565c9593b738223802b0a07ae76751105aecd057c13e6ae2fbe47` |
| 25 | `def` | [rTensor.inverse](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/rtensor-inverse.md) | 364 | `declaration-track:a66ccbc2fd18aacdbf681ed0e3327216a22f28d06b103d3c48ae9cc78d6828c4` |
| 26 | `lemma` | [rTensor.inverse_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/rtensor-inverse-apply.md) | 368 | `result-track:1c28cf13e259ff3bb75ee41677ab0cd8699a977aeead02d2f0ad3568d2cf1c01` |
| 27 | `lemma` | [rTensor.inverse_comp_rTensor](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/rtensor-inverse-comp-rtensor.md) | 373 | `result-track:9ea3b3bb1a30ac15cd635f04b7e5d5f311c9d98c2e5834d11a435919dd9c108e` |
| 28 | `def` | [rTensor.linearEquiv_of_rightInverse](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/rtensor-linearequiv-of-rightinverse.md) | 383 | `declaration-track:12f79635da5f049b53ae69e343cc3e926a2d12a7acc5eff9928b2c92f3d45d12` |
| 29 | `def` | [rTensor.equiv](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/rtensor-equiv.md) | 399 | `declaration-track:ab981e0499dc34fbc28c7abdcc225642ee420d2fffba4400ea00a3316d3a59d8` |
| 30 | `theorem` | [rTensor_exact](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/rtensor-exact.md) | 405 | `result-track:5884a9a6cefeb54d4abc3acfa34e0d8044016880859aca28f645bbd2d992fbb2` |
| 31 | `lemma` | [rTensor_mkQ](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/rtensor-mkq.md) | 410 | `result-track:a4056a9ab1aab7f08d12d09fcbc1a55fc8577dfc6483ab17fa505347ea2bb7a2` |
| 32 | `lemma` | [LinearMap.ker_tensorProductMk](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/linearmap-ker-tensorproductmk.md) | 416 | `result-track:9dbe3eb1ad542b46008dd376e90d7e8bfa251a17155be27fe521c4f5ecb043e7` |
| 33 | `theorem` | [TensorProduct.map_ker](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/tensorproduct-map-ker.md) | 432 | `result-track:210a6f455d97e165e683cd7fc9ebb29b34f6d4abac05903281ddb7cd256084bc` |
| 34 | `lemma` | [Ideal.map_includeLeft_eq](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/ideal-map-includeleft-eq.md) | 459 | `result-track:9d4200f95d4d922b378606f7868751e7ebd93e909a4791ad38bc1db21df8915b` |
| 35 | `lemma` | [Ideal.map_includeRight_eq](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/ideal-map-includeright-eq.md) | 514 | `result-track:020451b93373b85f9a3603f1610f6edfcea69353404ae6840912c55d03214dc5` |
| 36 | `lemma` | [TensorProduct.AlgebraTensorModule.range_lTensor_idealMap](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/tensorproduct-algebratensormodule-range-ltensor-idealmap.md) | 569 | `result-track:c4068df3e08e3e3f27970522ee6451b3c9048f1eaacb1b49efe88375925a143a` |
| 37 | `lemma` | [Algebra.TensorProduct.lTensor_ker](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/algebra-tensorproduct-ltensor-ker.md) | 586 | `result-track:2be9c37a4b7b0b0654d405c56b062a1508309020fefca45582f2d1bdf02032a8` |
| 38 | `lemma` | [Algebra.TensorProduct.rTensor_ker](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/algebra-tensorproduct-rtensor-ker.md) | 597 | `result-track:538419822e368209bf824857a1ff73a9b67503a057dcbceb281cf4edec45a716` |
| 39 | `theorem` | [Algebra.TensorProduct.map_surjective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/algebra-tensorproduct-map-surjective.md) | 607 | `result-track:d27fb7136481233d44136d29f967611ced16fa111379bca67b3e0c4bea961539` |
| 40 | `theorem` | [Algebra.TensorProduct.map_ker](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/declarations/algebra-tensorproduct-map-ker.md) | 614 | `result-track:804b920d43c7dbe906a7528f5d1c05318c1fee4464db59a1d347f0a90e1226ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6af9549db7357315ffcb754cc892c39df417e529739f927d0a889c706b66a217 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RightExactness/Variant53f7844a2c726a21385b358df8c1cec3f628266f5b190b6d4e7e65a0cb870629.lean","GRWTSK/_verification/specifications/Algebra/RightExactness/Variant53f7844a2c726a21385b358df8c1cec3f628266f5b190b6d4e7e65a0cb870629.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
