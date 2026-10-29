# Verification target: Graded Object Monoidal Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a00bb81d325d9a3653af746097f859e01e6472c0",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4c3803621682da1807eec38f4ef9c4c65051e30c0ed766e3f9926f3490e6cd67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a00bb81d325d9a3653af746097f859e01e6472c0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4c3803621682da1807eec38f4ef9c4c65051e30c0ed766e3f9926f3490e6cd67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4c3803621682da1807eec38f4ef9c4c65051e30c0ed766e3f9926f3490e6cd67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasTensor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/hastensor.md) | 42 | `declaration-track:df1a91492ace498557d334451a5c635c2cd1282fc99bab5339cbbd572d2e6833` |
| 2 | `lemma` | [hasTensor_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/hastensor-of-iso.md) | 45 | `result-track:5ce63504e5b19c371e1927c4af1b532dea04482ae4287aee24c90333b0f090b8` |
| 3 | `abbrev` | [tensorObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensorobj.md) | 56 | `declaration-track:4cddd9c46722fec3b660dba1f8b56ec00fc7cfc23279cde2d724c36d572f1f04` |
| 4 | `def` | [ιTensorObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensorobj-source-edition-3.md) | 65 | `declaration-track:be3173b784db02d756c72864216b56f4ebb5df421b38606ac767d5022f1523ca` |
| 5 | `lemma` | [tensorObj_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensorobj-ext.md) | 72 | `result-track:768ca998dd88f7c9474832fd71ffe0b65099607b75b7ce53e76858282edbe596` |
| 6 | `def` | [tensorObjDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensorobjdesc-source-edition-2.md) | 80 | `declaration-track:c75518229548379bd639adcfbc0a6af54628b0e4f54cb59c08d00984d3844bd2` |
| 7 | `lemma` | [ι_tensorObjDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensorobjdesc.md) | 85 | `result-track:5d49028c2681ea4df8da9a504141d96227f6c42b8ce23b04c0f96a3265d195ee` |
| 8 | `def` | [tensorHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensorhom-source-edition-2.md) | 94 | `declaration-track:8dc7a76993c3407e2f005cb5b89eb52560e6429398b2e484a04ce42edcaaa11b` |
| 9 | `lemma` | [ι_tensorHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensorhom.md) | 100 | `result-track:06a25d530982fdd72cc4470e6f210dc5d1e48b2841325b0556d982d7e20c8941` |
| 10 | `abbrev` | [whiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/whiskerleft.md) | 109 | `declaration-track:a70c70fb808b0815f5564f715c0d9097a96371d799a616ff53d4d04083c79f2d` |
| 11 | `abbrev` | [whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/whiskerright.md) | 115 | `declaration-track:46b9e0c4ca0d58e7714db92c15a9e0d855a5acff0cfafc7f2ef0ba774128d1d2` |
| 12 | `lemma` | [id_tensorHom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/id-tensorhom-id.md) | 120 | `result-track:1cdeea0bd293dfc7580b3ead65f76aef6e59aedea8843948d6dcbd5351787be3` |
| 13 | `lemma` | [tensorHom_comp_tensorHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensorhom-comp-tensorhom.md) | 127 | `result-track:b7660f6b60fb91b91f59368e72984ebc0c0fe5de033cb41bde633545f180a56f` |
| 14 | `def` | [tensorIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensoriso.md) | 136 | `declaration-track:c23aaf8d7e2d36847d059ef39421f1d4cf4c86164455db322a261bce752f92c5` |
| 15 | `lemma` | [tensorHom_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensorhom-def.md) | 144 | `result-track:8ef8b0ee48624e1e89d8afa955130d1991ae56ca4b7c166fef6528b7253dceb7` |
| 16 | `def` | [r₁₂₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/r.md) | 150 | `declaration-track:18678e126781f4f11e2f5b7704375338468714151c2e998de6783d4c22da4692` |
| 17 | `def` | [ρ₁₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/anonymous-source-edition-2.md) | 153 | `declaration-track:d0227df89d61409a7ad8a0946b18b45ff52aed82d584c3e1aab65662f4fa226e` |
| 18 | `def` | [ρ₂₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/anonymous.md) | 160 | `declaration-track:67844ff7672591a706b8c128c67f6762d783f9797f9d0a926a113afd0221bcf5` |
| 19 | `def` | [triangleIndexData](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/triangleindexdata.md) | 169 | `declaration-track:fcbcb29054edc7821c8ac146d61754a6aa26fba15c46a14b24a83145c3fe2650` |
| 20 | `abbrev` | [_root_.CategoryTheory.GradedObject.HasGoodTensor₁₂Tensor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/root-categorytheory-gradedobject-hasgoodtensor-tensor.md) | 180 | `declaration-track:b32e3ea22776bd0ed642f07719a2243f543f2a87cfd30c7a69f4bbe31260e9a5` |
| 21 | `abbrev` | [_root_.CategoryTheory.GradedObject.HasGoodTensorTensor₂₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/root-categorytheory-gradedobject-hasgoodtensortensor.md) | 186 | `declaration-track:c1f1cb1c5ab91fa3ae8d5dba20da5ecc1a654bf96093515eb88c5edba193ad7a` |
| 22 | `def` | [ιTensorObj₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensorobj-source-edition-2.md) | 200 | `declaration-track:aa143fc5b11e7854a7eacecf69c84aa3f8f32d536ccae90cf35ac28091baa8cc` |
| 23 | `lemma` | [ιTensorObj₃_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensorobj-eq.md) | 206 | `result-track:5949ba046faa025f59dddabf4401f9df2ff67403f6a736806f762577782d2448` |
| 24 | `lemma` | [ιTensorObj₃_tensorHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensorobj-tensorhom-source-edition-2.md) | 216 | `result-track:a30f0cfeb11fa36ae880b0172b3e664ed29ea5e505d498b035af9786628b1b10` |
| 25 | `lemma` | [tensorObj₃_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensorobj-ext-source-edition-2.md) | 226 | `result-track:7f03f86ade7adb74a94ad8980a0956f2d030a6bdc6035a67cb1ab101dbb86474` |
| 26 | `def` | [ιTensorObj₃'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensorobj-source-edition-4.md) | 243 | `declaration-track:db913a89ea3e4f7689955b1dc0ca14c2972954fefe752d9047b383e121d65f10` |
| 27 | `lemma` | [ιTensorObj₃'_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensorobj-eq-source-edition-2.md) | 249 | `result-track:8deee434d7746e214a7fe4b59606c6db52a98fafeb614ec6bcf309a30ffe9fce` |
| 28 | `lemma` | [ιTensorObj₃'_tensorHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensorobj-tensorhom.md) | 260 | `result-track:0f717b750c3a7dcc8cca028b6bf557a6597fcbb793b6481e7db1a70d32ac6674` |
| 29 | `lemma` | [tensorObj₃'_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensorobj-ext-source-edition-3.md) | 270 | `result-track:d8c48431a603f60f5d299fed7049f71f1791b65a37b794fe0235ff47d8ae0bc6` |
| 30 | `def` | [associator](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/associator.md) | 286 | `declaration-track:40dc33ecfcb8c76195a7c0ce1df721d08faa48d4f254cb979c6eb819b62d3ac2` |
| 31 | `lemma` | [ιTensorObj₃'_associator_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensorobj-associator-hom.md) | 291 | `result-track:70902894be094ce3936677aecec90f007b2e791efe1d29cc394e3f94865a3430` |
| 32 | `lemma` | [ιTensorObj₃_associator_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensorobj-associator-inv.md) | 300 | `result-track:3120632ac2861630cfe292d6fda129cb8aff7d91d70ab04b09528c80c59aa344` |
| 33 | `lemma` | [associator_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/associator-naturality.md) | 312 | `result-track:744d4feb2202558bed3f2c447b158235ad91e287c2d3f450828ae9dd8340398c` |
| 34 | `abbrev` | [_root_.CategoryTheory.GradedObject.HasLeftTensor₃ObjExt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/root-categorytheory-gradedobject-haslefttensor-objext.md) | 325 | `declaration-track:902e8e7deaacfdfeeb2bf679f30ac8970b883caa85f0095bd91d8e136392f3ec` |
| 35 | `lemma` | [left_tensor_tensorObj₃_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/left-tensor-tensorobj-ext.md) | 335 | `result-track:37a74312f572130de6c9d15e8db2c0249d7d55a465f43551650589af21bf467a` |
| 36 | `def` | [ιTensorObj₄](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensorobj-source-edition-5.md) | 358 | `declaration-track:e3da077a6b9c508598fb4bf8db02ae19c427b940b357c54dd4282d6c6e7317e8` |
| 37 | `lemma` | [ιTensorObj₄_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensorobj-eq-source-edition-3.md) | 364 | `result-track:aca604f849287549b2f34f4f9188b6c039f53597c347576ea186e3600e5eba31` |
| 38 | `abbrev` | [_root_.CategoryTheory.GradedObject.HasTensor₄ObjExt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/root-categorytheory-gradedobject-hastensor-objext.md) | 376 | `declaration-track:0ffa638335a7e06f177434c53515679cad0499a7bbd3dea110ffffe92501400c` |
| 39 | `lemma` | [tensorObj₄_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensorobj-ext-source-edition-4.md) | 382 | `result-track:f5bee694fb0a040ac0b66031b7fd982910802e58c9d5a73f5a08f752bbe823ce` |
| 40 | `lemma` | [pentagon_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/pentagon-inv.md) | 419 | `result-track:72b4d967f65706659f603c951b5e92233b925a982c77f6a7a1fc5c476899500a` |
| 41 | `lemma` | [pentagon](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/pentagon.md) | 455 | `result-track:1762f5b43c785a742888c1948018ed38b8d1d03aa5103fa5baee938a60d7b07d` |
| 42 | `def` | [tensorUnit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensorunit-source-edition-2.md) | 470 | `declaration-track:4863af74ac6e1210f504d57f8bdbc822cd3ccd6ed3a21c3c52cc5ba2814bd233` |
| 43 | `def` | [tensorUnit₀](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/tensorunit.md) | 473 | `declaration-track:283a668922b1701535bd340627062c1c09fb3226711e12decfc5a29daeda7b5b` |
| 44 | `def` | [isInitialTensorUnitApply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/isinitialtensorunitapply.md) | 477 | `declaration-track:7f11dc49825612883803307e73ceb0e14e430be92eaa53e87f9b2e84dc63e6be` |
| 45 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/instance-source-edition-6.md) | 489 | `declaration-track:f22baacbc3097718414a8ee9ad2f2dd8d269da4dbdffa3671a9d4115be5b03ae` |
| 46 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/instance-source-edition-3.md) | 492 | `declaration-track:8d1e4d71e21506fcf3484c9e23e3cb757f9aa9056cfd24f3409dce2473135049` |
| 47 | `def` | [leftUnitor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/leftunitor.md) | 497 | `declaration-track:74189557af2d5636eaa187731da3719b1af3a0f46653f3084284b328e7cc8ab3` |
| 48 | `lemma` | [leftUnitor_inv_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/leftunitor-inv-apply.md) | 501 | `result-track:b6c4d1969e666c8e9208bbf7edd54e036be766248ebb84043489d87bcaa0db1e` |
| 49 | `lemma` | [leftUnitor_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/leftunitor-naturality.md) | 508 | `result-track:de2c14f353d1ceecf11affa9af02d37cc0a54b6d237f91dd02b423940876f905` |
| 50 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/instance-source-edition-4.md) | 521 | `declaration-track:a89bcd4f06f29a3053cbf7f15d58aeee806d4cbb451cb298dbec8361cb8f2fb3` |
| 51 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/instance.md) | 525 | `declaration-track:0ffd7caf4f07cefe2dc32d33099cd61d1a17389b63797278b1f8a745a980f79a` |
| 52 | `def` | [rightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/rightunitor.md) | 530 | `declaration-track:bc35623df3ed6643264b40e8a49b6ec14c9e628dcd2d9d960fd9c2444a142099` |
| 53 | `lemma` | [rightUnitor_inv_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/rightunitor-inv-apply.md) | 534 | `result-track:733177baef2e98d056602c454477c5fd904929cc0df7f096df4569351df993ef` |
| 54 | `lemma` | [rightUnitor_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/rightunitor-naturality.md) | 541 | `result-track:efe309a387474cdf705f70f16863716f61aa1317eb8415ef11c3dbfb9ac87775` |
| 55 | `lemma` | [triangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/triangle.md) | 559 | `result-track:06fb216be767c5ac7658e8f65bbec31dae8b98d39d4532473112171140eb32f5` |
| 56 | `instance` | [monoidalCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/monoidalcategory.md) | 582 | `declaration-track:1976a7f2a26326616cc6f1b684e31ae4079e17204f4f4fe9c8226a3ebcc935af` |
| 57 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/instance-source-edition-2.md) | 603 | `declaration-track:1e230384a96de3e556dd2f0721fe1ddf5036b7b20fde0b5b7740767eeab27a65` |
| 58 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalPublic.lean/declarations/instance-source-edition-5.md) | 609 | `declaration-track:b70ac80e413af44bdacd9296d20189484f62dba39313d096bd50bf45e9c89d86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2c0b2f28aae0685e3e1846b7ab9fa53f1f27f07b348c27e8c328524e518b3d51 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4c3803621682da1807eec38f4ef9c4c65051e30c0ed766e3f9926f3490e6cd67.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4c3803621682da1807eec38f4ef9c4c65051e30c0ed766e3f9926f3490e6cd67.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
