# Verification target: Graded Object Monoidal Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83231dacb37e729a413e0cdb764525675abe1418",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteb6e46ad6a2b52b197977327866a86028273033e594b5191c2722e59d89be622.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83231dacb37e729a413e0cdb764525675abe1418`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteb6e46ad6a2b52b197977327866a86028273033e594b5191c2722e59d89be622.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteb6e46ad6a2b52b197977327866a86028273033e594b5191c2722e59d89be622.lean.json)

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
| 1 | `abbrev` | [HasTensor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/hastensor.md) | 50 | `declaration-track:301260c27f27193aa32f4ee49d827232200c2e3cd1d82bfcfd8bb3cf85688915` |
| 2 | `lemma` | [hasTensor_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/hastensor-of-iso.md) | 53 | `result-track:5e887f6b7a3fc2bef7dc7985fc3748292b9d1ee35c23a3df61114ae950b1cc5e` |
| 3 | `abbrev` | [tensorObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensorobj-source-edition-3.md) | 64 | `declaration-track:dac9d2a13da1f022155cacfad2bdb591edb7dd495ef90f6c0b78969ce5f5e6e1` |
| 4 | `def` | [ιTensorObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensorobj-source-edition-2.md) | 73 | `declaration-track:9ab281aebac0df3080c31687496f5e927946f0eed997c345b99799dffe57a7e2` |
| 5 | `lemma` | [tensorObj_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensorobj-ext-source-edition-2.md) | 80 | `result-track:8f62026cc3eae8cbf2bc6399ceac97f17a8e34f31542ebd845b1419a8db19df2` |
| 6 | `def` | [tensorObjDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensorobjdesc.md) | 88 | `declaration-track:4d855a93c21bd54e0af23c3aee16757bf5ae7dbf9175f4348a82794da6efa730` |
| 7 | `lemma` | [ι_tensorObjDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensorobjdesc-source-edition-2.md) | 93 | `result-track:f607bf4fa75755fef1fde2b9466f339b65182025bcd82e21f29b73bf17c450a6` |
| 8 | `def` | [tensorHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensorhom-source-edition-2.md) | 102 | `declaration-track:d83e7dbfeb72e91d63973814538a2f5bf1f3e825270599f11aa07ae413bd651d` |
| 9 | `lemma` | [ι_tensorHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensorhom.md) | 108 | `result-track:66c54114666cfb3c51cda5664a30f7326e650c0a916bc035fe2bd28c70db0f00` |
| 10 | `abbrev` | [whiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/whiskerleft.md) | 117 | `declaration-track:408f172b2bbed64851ba3574eae9017dd1b2a24c90df133887ab1d87875cc81a` |
| 11 | `abbrev` | [whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/whiskerright.md) | 123 | `declaration-track:59cea458f9776b033d188a0a2ef1055c2312525877874f275f435d3e551c0293` |
| 12 | `lemma` | [id_tensorHom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/id-tensorhom-id.md) | 128 | `result-track:beb3450a40024f548259b8fd67d141a46549bf8c01e56d936bcf69f15645e1ef` |
| 13 | `lemma` | [tensorHom_comp_tensorHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensorhom-comp-tensorhom.md) | 135 | `result-track:79b014056d972d695113f7384402dc67b78f9fdfffb7f8964e77180eb51cbec8` |
| 14 | `def` | [tensorIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensoriso.md) | 144 | `declaration-track:1752dde0dd62b27ccd49539aa2f4b7e786131edde07e260f2973c4e3af3f885c` |
| 15 | `lemma` | [tensorHom_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensorhom-def.md) | 152 | `result-track:284edee25879b4ad153c5ca0057e8b5e4c5cf5dc477b24a46abd6cfc3d470cda` |
| 16 | `def` | [r₁₂₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/r.md) | 158 | `declaration-track:ccd0aaa3a804d2c22c63e6dc20fa408950f3162c0de63e7bd5990006daff36b0` |
| 17 | `def` | [ρ₁₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/anonymous-source-edition-2.md) | 161 | `declaration-track:87bc87638700082d07677231cf76ee2d83c09e071dbfe317c6c6cb97ada0565b` |
| 18 | `def` | [ρ₂₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/anonymous.md) | 168 | `declaration-track:4211fa041e57d17ca533bd8393128714ad4f67736afea6b3c3f0233fccf3f2cd` |
| 19 | `def` | [triangleIndexData](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/triangleindexdata.md) | 177 | `declaration-track:8b1a83429d5e4668a4122c7fa35a8a3b81cd9269f4ad0abb52909ff1a54151e0` |
| 20 | `abbrev` | [Graded Object Monoidal Namespaced Public](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-hastensor-var-source-edition-3.md) | 188 | `declaration-track:b1c8496be5191a80ee8bfc6f89b946b79e4360b13356a5bf8038367ecc744df5` |
| 21 | `abbrev` | [Graded Object Monoidal Namespaced Public](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-hastensor-var-source-edition-4.md) | 194 | `declaration-track:e42eb04cd96e7f8b50c03c19d54938803d3c406b85542a2704826c1198bcdac9` |
| 22 | `def` | [ιTensorObj₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensorobj-source-edition-4.md) | 208 | `declaration-track:e18b06ca062fc9cdf433e978790e1ed4050165dc4d1766fa5755e9aff16ef944` |
| 23 | `lemma` | [ιTensorObj₃_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensorobj-eq-source-edition-2.md) | 214 | `result-track:4de1b07c533896083a24df45902fe8b39adc6ff983b3c80144744a81944934ca` |
| 24 | `lemma` | [ιTensorObj₃_tensorHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensorobj-tensorhom.md) | 224 | `result-track:3b57e47ab57a29f7f0cd39830c5cd45345cef88ce74dbb4fd0cf65e47a0c74cb` |
| 25 | `lemma` | [tensorObj₃_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensorobj-ext-source-edition-3.md) | 234 | `result-track:b73dd36351d6ec93ea4eca746fbc83aa506275a5435fdfe907b074588b202896` |
| 26 | `def` | [ιTensorObj₃'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensorobj-source-edition-5.md) | 251 | `declaration-track:eaaabba283e565423ec6a326ae10328282df898e18654f5d7e656823ae84a24f` |
| 27 | `lemma` | [ιTensorObj₃'_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensorobj-eq.md) | 257 | `result-track:1470ea0eced833bb31a6f2e6fffcd0007851076eb4f083e360cff14f3d8ec490` |
| 28 | `lemma` | [ιTensorObj₃'_tensorHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensorobj-tensorhom-source-edition-2.md) | 268 | `result-track:d710000ca0f25bbff675f8422bb2bf37618e8ee2474dde96044b9319d8479dc4` |
| 29 | `lemma` | [tensorObj₃'_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensorobj-ext.md) | 278 | `result-track:29fc6cd70b6a5ac51c54fe2870b2c76a74b1c261ac4a26e7aa577dfcd602b6dd` |
| 30 | `def` | [associator](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/associator.md) | 294 | `declaration-track:18dff36f45189710786b34ee6f9e824ae74a7af068f0c11e1bb2ebed47040c33` |
| 31 | `lemma` | [ιTensorObj₃'_associator_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensorobj-associator-hom.md) | 299 | `result-track:bcda293f11da989e7578ae7ee11ab41a621f407d496364946a1f727b1abc6889` |
| 32 | `lemma` | [ιTensorObj₃_associator_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensorobj-associator-inv.md) | 308 | `result-track:c4ea255dcd0cdd3d4a97cae1cb0080dd9814d74840c8506e93a5d75308392fde` |
| 33 | `lemma` | [associator_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/associator-naturality.md) | 320 | `result-track:769dbbe0744e8c9865dc09a1d4aba68d194af3c9850b897e1723fec643d5e659` |
| 34 | `abbrev` | [Graded Object Monoidal Namespaced Public](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-hastensor-var-source-edition-2.md) | 333 | `declaration-track:80e0840a331869b53ecf96cef1e2b2d6c7bc83f87776d4aa7d4b0631a9931763` |
| 35 | `lemma` | [left_tensor_tensorObj₃_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/left-tensor-tensorobj-ext.md) | 343 | `result-track:efae49917f193bafa8161424bca4099b51666d8cf1248e7093734fd27d610816` |
| 36 | `def` | [ιTensorObj₄](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensorobj.md) | 366 | `declaration-track:354538a6a30dec3ed48891d4eb21d95b56ff3201e6d2bc9242d3e0f0fafa8b16` |
| 37 | `lemma` | [ιTensorObj₄_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensorobj-eq-source-edition-3.md) | 372 | `result-track:a050ddd654e8614d1a5bce20848a6bce7312a06a54f5480a868ea234c015093a` |
| 38 | `abbrev` | [Graded Object Monoidal Namespaced Public](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-hastensor-var.md) | 384 | `declaration-track:30a7a39f4b6f8cfd0f1c94ea7203bec56e59bc81b8500f6cf2e5e7586c26d05e` |
| 39 | `lemma` | [tensorObj₄_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensorobj-ext-source-edition-4.md) | 390 | `result-track:cf69dec51dc04d0fd20635a942b7d30a2e10949505a5a6a11edc735f14970108` |
| 40 | `lemma` | [pentagon_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/pentagon-inv.md) | 427 | `result-track:f9a7cda9bc528b4a3234a251b9f42857a05b80dc3f91e204af81859a2158edf5` |
| 41 | `lemma` | [pentagon](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/pentagon.md) | 463 | `result-track:bcda6ad1863660408d0bb84343b85aaa34ebaa2da7a63dbb35d71649f1f33326` |
| 42 | `def` | [tensorUnit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensorunit-source-edition-2.md) | 478 | `declaration-track:a64d9bdb6cf96787602ac662d2bde18932dcb071d99ded36f1ff410dd92b7269` |
| 43 | `def` | [tensorUnit₀](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/tensorunit.md) | 481 | `declaration-track:1425aa05fece60cd293024e93606dfc555f31c50328e6b1caf276cb69c0a2279` |
| 44 | `def` | [isInitialTensorUnitApply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/isinitialtensorunitapply.md) | 485 | `declaration-track:5b8199678c1c85d10ededd7036dfd36121792f56a15abd465e311d364d0c5105` |
| 45 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/instance.md) | 497 | `declaration-track:90b950a2a0c5dbae34a91af8a561424cf2ab82c01f3b7210db50e5e76ffe3175` |
| 46 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 500 | `declaration-track:c2eec9be02008925d8ed8f21d6d7ceb29720e4f5932647c4ca0e1ff507d75aa1` |
| 47 | `def` | [leftUnitor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/leftunitor.md) | 505 | `declaration-track:4e810a99cb939d917097b0be9cb0b2cd910dc72f6c2dd77c5d63e40df9e487f9` |
| 48 | `lemma` | [leftUnitor_inv_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/leftunitor-inv-apply.md) | 509 | `result-track:d6ed68f03fbf23a108b33d66c14dcabe841ace2355cb5380e4533e0fc9b4bd9f` |
| 49 | `lemma` | [leftUnitor_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/leftunitor-naturality.md) | 516 | `result-track:615a0b797b727845c4e38bc72588670b62db9879a3974212fda65c827d74eaa3` |
| 50 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 529 | `declaration-track:da2cd8fd06fa532c88ba6d602da60287784662f02a9eb90631b30208b98361f4` |
| 51 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 533 | `declaration-track:e7853e39289205993c58930e03680b24f044b807fe5412c9c7e0873f2a590faf` |
| 52 | `def` | [rightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/rightunitor.md) | 538 | `declaration-track:626e38c7ae79cc5da92e4206236bbd37a2a5d75aafc94608b1e2222371feb88f` |
| 53 | `lemma` | [rightUnitor_inv_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/rightunitor-inv-apply.md) | 542 | `result-track:ba9b2492bd1baac51ca8053f37e637e024aaa021e5a728ce78aafcb6709b8d98` |
| 54 | `lemma` | [rightUnitor_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/rightunitor-naturality.md) | 549 | `result-track:279b9930a91f54c3edcf8f3f23b8a72562f997d045c5bb990793ea21651f52fe` |
| 55 | `lemma` | [triangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/triangle.md) | 567 | `result-track:80bedbbc3883b20f876847036fe5c89c7e6fe0b025c6821d2b4a474aca99b600` |
| 56 | `instance` | [monoidalCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/monoidalcategory.md) | 590 | `declaration-track:dc275e33648a9cf5aa1f8597567dbe0bf482ee570f6edb714d244e116fa6f752` |
| 57 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 611 | `declaration-track:d8f6c74b779885b9d33c289e3cf5b33219d0fa7bcdafb70984786ed36b20a558` |
| 58 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidalNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 617 | `declaration-track:9118d4e69a6257a7b2d9f5f7f57a8c60a7a9c7d13117e68a68c7e5f02df60c0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2a599b30996f95489c9e1b970711daaeebfa9d46c4e721ef3c75dcdc29b5269 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteb6e46ad6a2b52b197977327866a86028273033e594b5191c2722e59d89be622.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteb6e46ad6a2b52b197977327866a86028273033e594b5191c2722e59d89be622.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
