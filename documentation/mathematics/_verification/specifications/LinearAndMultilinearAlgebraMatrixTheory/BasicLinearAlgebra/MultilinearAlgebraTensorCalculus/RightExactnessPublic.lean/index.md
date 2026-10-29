# Verification target: Right Exactness Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae212e71cf37d916051d32dfb64acce667287ba8",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RightExactness/Variant00b11bfc5d034a6e1735f9d90b2a4e3dfa1ca3d1149183c3f3f9340f765f2629.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae212e71cf37d916051d32dfb64acce667287ba8`.

Source path: `GRWTSK/Algebra/RightExactness/Variant00b11bfc5d034a6e1735f9d90b2a4e3dfa1ca3d1149183c3f3f9340f765f2629.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RightExactness/Variant00b11bfc5d034a6e1735f9d90b2a4e3dfa1ca3d1149183c3f3f9340f765f2629.lean.json)

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
| 1 | `lemma` | [le_comap_range_lTensor](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/le-comap-range-ltensor.md) | 103 | `result-track:3241a3cb07bf262dd456d06dc4e23f6cdb85972983d2e107b4025c29f3b47e77` |
| 2 | `lemma` | [le_comap_range_rTensor](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/le-comap-range-rtensor.md) | 108 | `result-track:00fd4191cc71acd2494840d058709f3789091514f37d64d3895c85c5eb765be8` |
| 3 | `theorem` | [LinearMap.lTensor_surjective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/linearmap-ltensor-surjective.md) | 117 | `result-track:a2de1781faf86d0930a539a2eb900fbbb99b9a362a9193223ad7d9eee48212e1` |
| 4 | `theorem` | [LinearMap.lTensor_range](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/linearmap-ltensor-range.md) | 129 | `result-track:023e63828d3fb20e89272dc0a30e81194ef867476c6a2313581547a17b433db9` |
| 5 | `theorem` | [LinearMap.baseChange_surjective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/linearmap-basechange-surjective.md) | 141 | `result-track:8a2f4bc9df70f7851e73938861844061ed0c91d9ce234b9f4a5c5d7248548eba` |
| 6 | `theorem` | [LinearMap.rTensor_surjective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/linearmap-rtensor-surjective.md) | 147 | `result-track:4b074a14226b7a93c0d27233d6f739844ba087a8dfdc8381855d0df6dc6e4370` |
| 7 | `theorem` | [LinearMap.rTensor_range](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/linearmap-rtensor-range.md) | 159 | `result-track:a095506aa6b647f14c0ebcaa87451ccfab6cd9b4b3a2feaa63d27edb7df3eeb4` |
| 8 | `lemma` | [LinearMap.rTensor_exact_iff_lTensor_exact](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/linearmap-rtensor-exact-iff-ltensor-exact.md) | 170 | `result-track:440957dc1d5e86d5d973fc42f435e62a22f7fb813203f09c091d49fe6b408fe7` |
| 9 | `theorem` | [TensorProduct.map_surjective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/tensorproduct-map-surjective.md) | 182 | `result-track:048444a355a15eaa4cbe67fbe688f04f2ae7de9eec3aef7aff3b7acde89cae1a` |
| 10 | `def` | [lTensor.toFun](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/ltensor-tofun.md) | 199 | `declaration-track:7655df1454cabf5e17739a6747e3c084f83df05f575a9ecabefe3901c94dc084` |
| 11 | `def` | [lTensor.inverse_of_rightInverse](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/ltensor-inverse-of-rightinverse.md) | 206 | `declaration-track:b95671dd26231311130be450b717c3ccdc7013366cee0bb8d9a6adcf6d026a71` |
| 12 | `lemma` | [lTensor.inverse_of_rightInverse_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/ltensor-inverse-of-rightinverse-apply.md) | 224 | `result-track:22346ccd757a44e02358d35d5cdcb6a51839892db2fb543e5c9083bd6df1ffbe` |
| 13 | `lemma` | [lTensor.inverse_of_rightInverse_comp_lTensor](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/ltensor-inverse-of-rightinverse-comp-ltensor.md) | 239 | `result-track:8cfeda90d054a3531b4140a0cebc535799b03d9f768097e1e71d8ce30ba625ec` |
| 14 | `def` | [lTensor.inverse](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/ltensor-inverse.md) | 250 | `declaration-track:4b92f33e5860a6d2780bdc3a7b91fea83c5f1068184dea5e71de45c5ae43aa03` |
| 15 | `lemma` | [lTensor.inverse_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/ltensor-inverse-apply.md) | 254 | `result-track:1b79ce82857502a02ffe0b40b2200933801f992172d039e8b9e2a64428ba9786` |
| 16 | `lemma` | [lTensor.inverse_comp_lTensor](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/ltensor-inverse-comp-ltensor.md) | 259 | `result-track:51724ae0628e3a128cf84709ed0cd8e15c79f4b517f9ef663841f790780d9297` |
| 17 | `def` | [lTensor.linearEquiv_of_rightInverse](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/ltensor-linearequiv-of-rightinverse.md) | 269 | `declaration-track:72a0d24130d060dc55000f20cceb74af5bec5844f97a083c194193b59de7abfe` |
| 18 | `def` | [lTensor.equiv](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/ltensor-equiv.md) | 285 | `declaration-track:dfa7d85afaf184205c9eb5ac21b714084d05274f47adcee0c7ad70645afc9e56` |
| 19 | `theorem` | [lTensor_exact](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/ltensor-exact.md) | 291 | `result-track:a7576aa4395fb0812d62640d7958e16087291562ed547f7552ee2af269a5e0a6` |
| 20 | `lemma` | [lTensor_mkQ](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/ltensor-mkq.md) | 300 | `result-track:1f9be5e65dc9b442fb155f4584aa779aeb2e271ea9ed8c16e92462f0e7ba762c` |
| 21 | `def` | [rTensor.toFun](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/rtensor-tofun.md) | 306 | `declaration-track:84669c17e862a27cb19eeab33cae60a82c5af21bd3bf2c1a4c548e2d4dbd1fe1` |
| 22 | `def` | [rTensor.inverse_of_rightInverse](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/rtensor-inverse-of-rightinverse.md) | 313 | `declaration-track:b2de9fd7a02780515ad9092495609aec187d518e65c693c696553e9da9ef64dd` |
| 23 | `lemma` | [rTensor.inverse_of_rightInverse_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/rtensor-inverse-of-rightinverse-apply.md) | 331 | `result-track:65f6696200fb38e8668d3de974ba21083fde553d876ce0aa0257a42993cbb346` |
| 24 | `lemma` | [rTensor.inverse_of_rightInverse_comp_rTensor](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/rtensor-inverse-of-rightinverse-comp-rtensor.md) | 345 | `result-track:a0b008ff299a014df6b21b7703639c1da75712a732b4eb7228d7118cb4ede4ba` |
| 25 | `def` | [rTensor.inverse](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/rtensor-inverse.md) | 356 | `declaration-track:4061a982c936df6f228804b0e90a3910a14d49cb292e0f1848cb002f91291ea8` |
| 26 | `lemma` | [rTensor.inverse_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/rtensor-inverse-apply.md) | 360 | `result-track:70ecc48a3ac13567b63418e1beff34bea569baab4b52a8373b2fd9fa12ac7a94` |
| 27 | `lemma` | [rTensor.inverse_comp_rTensor](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/rtensor-inverse-comp-rtensor.md) | 365 | `result-track:ac36b08051d381c6ae3f5c9f0f97a070350eb7cede400efb9b8cddba956f9bf2` |
| 28 | `def` | [rTensor.linearEquiv_of_rightInverse](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/rtensor-linearequiv-of-rightinverse.md) | 375 | `declaration-track:28d39d5f0a25043dd02c44e1a5c67bef344f935894d199858c01daeb973a0a1e` |
| 29 | `def` | [rTensor.equiv](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/rtensor-equiv.md) | 391 | `declaration-track:c966bf6a24484fd33139b8f98831c2c1b4450ed9f3371d017643908679fe4af9` |
| 30 | `theorem` | [rTensor_exact](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/rtensor-exact.md) | 397 | `result-track:461e514491c5a53da2a7acb9929cf6227df8bfa1b696e3c60fdbf3b7658041c8` |
| 31 | `lemma` | [rTensor_mkQ](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/rtensor-mkq.md) | 402 | `result-track:f17d627d9fb3ade48678608e1212123267df29422d4c8e862e528f39efa885c9` |
| 32 | `lemma` | [LinearMap.ker_tensorProductMk](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/linearmap-ker-tensorproductmk.md) | 408 | `result-track:e87f7eafd4ce98c3b6a17ad01f457e19b3e104a464c280ad3f1c92a3424f34f2` |
| 33 | `theorem` | [TensorProduct.map_ker](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/tensorproduct-map-ker.md) | 424 | `result-track:80288eda0dfecdff4c5a79665aa555b7132fc6ce459806a2e0020e7db82cbf23` |
| 34 | `lemma` | [Ideal.map_includeLeft_eq](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/ideal-map-includeleft-eq.md) | 451 | `result-track:880d5d1e96434cb6faf0ef0c2f557def3fcf56bb1d51e86115ae1977ebf8edf8` |
| 35 | `lemma` | [Ideal.map_includeRight_eq](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/ideal-map-includeright-eq.md) | 506 | `result-track:595e3fd3916e6f7f494002982d03450ba25bb14fd9d33f2d6f57633cf6f80796` |
| 36 | `lemma` | [TensorProduct.AlgebraTensorModule.range_lTensor_idealMap](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/tensorproduct-algebratensormodule-range-ltensor-idealmap.md) | 561 | `result-track:2351a46eb7fb7318c4144a47068a48ea1bddbc8900578f1b9056ba346e218cab` |
| 37 | `lemma` | [Algebra.TensorProduct.lTensor_ker](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/algebra-tensorproduct-ltensor-ker.md) | 578 | `result-track:710d21bff16fac77ed06373c515be393dbfb95627fcbd5a9fd64569db7dce26f` |
| 38 | `lemma` | [Algebra.TensorProduct.rTensor_ker](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/algebra-tensorproduct-rtensor-ker.md) | 589 | `result-track:fb5873dbef6e49a8453b2c58dc9627846aee5d0bca886c024fb60743b05d0061` |
| 39 | `theorem` | [Algebra.TensorProduct.map_surjective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/algebra-tensorproduct-map-surjective.md) | 599 | `result-track:6ffd163526f0ae63f7b06b25a5322870d27862141147225b924dee0ba494bbec` |
| 40 | `theorem` | [Algebra.TensorProduct.map_ker](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/declarations/algebra-tensorproduct-map-ker.md) | 606 | `result-track:9933aa13452e12e6cf0ff141bb8971ad5f1c109a1883df42add6207ae1a0bfdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5455418c364b63167da67e604c3fb30bdcc64dae16ecf61598cc73fae0b5357 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RightExactness/Variant00b11bfc5d034a6e1735f9d90b2a4e3dfa1ca3d1149183c3f3f9340f765f2629.lean","GRWTSK/_verification/specifications/Algebra/RightExactness/Variant00b11bfc5d034a6e1735f9d90b2a4e3dfa1ca3d1149183c3f3f9340f765f2629.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
