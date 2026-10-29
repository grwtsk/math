# Verification target: Presheaf Monoidal Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d69ac8129651ad1fcc82876c96d1c17cca455a6",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Monoidal/Variant103a4fe08b01e66270325f890f4c7f109d559c070c8a3e990e3d00acc552663f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafMonoidalNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafMonoidalNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d69ac8129651ad1fcc82876c96d1c17cca455a6`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Monoidal/Variant103a4fe08b01e66270325f890f4c7f109d559c070c8a3e990e3d00acc552663f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Monoidal/Variant103a4fe08b01e66270325f890f4c7f109d559c070c8a3e990e3d00acc552663f.lean.json)

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
| 1 | `def` | [tensorObjMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafMonoidalNamespacedPublic.lean/declarations/tensorobjmap.md) | 50 | `declaration-track:dcf6bcebfc505532cfcbeffafca3e8f95eca2c00cba13afaf261c756ce63d806` |
| 2 | `def` | [tensorObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafMonoidalNamespacedPublic.lean/declarations/tensorobj.md) | 67 | `declaration-track:838147558924dcf3be359cb0254fa698bb3acf9927304fdab244b445b4049640` |
| 3 | `lemma` | [tensorObj_map_tmul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafMonoidalNamespacedPublic.lean/declarations/tensorobj-map-tmul.md) | 82 | `result-track:b1b72f4427d9d090981c223cba377325ff5dad5d7c44c1810b6e29a56c1ddee6` |
| 4 | `def` | [tensorHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafMonoidalNamespacedPublic.lean/declarations/tensorhom.md) | 92 | `declaration-track:8ccf789569b7448c9dd5f2e303a339567fb39833c569d9914cd3555b7861ae39` |
| 5 | `instance` | [monoidalCategoryStruct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafMonoidalNamespacedPublic.lean/declarations/monoidalcategorystruct.md) | 104 | `declaration-track:83166ac40eb60c231435dbe803d3f6854a5c838e65f292397477103b18eaa4b9` |
| 6 | `instance` | [monoidalCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafMonoidalNamespacedPublic.lean/declarations/monoidalcategory.md) | 126 | `declaration-track:7a91461e0343caf8ac6153ced64a5a934494b5809392ed697ee01d230388d569` |
| 7 | `instance` | [symmetricCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafMonoidalNamespacedPublic.lean/declarations/symmetriccategory.md) | 145 | `declaration-track:56a1d7e3486a36e04c04e048591454c7169267fe64e6ced3dc8a6955ee2955c9` |
| 8 | `lemma` | [tensorObj_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafMonoidalNamespacedPublic.lean/declarations/tensorobj-obj.md) | 170 | `result-track:a0bb55fc69193919ee75af68c229d3c4892ba23c7aefe8db38a8b1ba3b8818e2` |
| 9 | `lemma` | [whiskerLeft_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafMonoidalNamespacedPublic.lean/declarations/whiskerleft-app.md) | 177 | `result-track:a321ceafd319535383dd080e67ea7301275c52f60f878a96d98e54a5469ede5d` |
| 10 | `lemma` | [whiskerRight_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafMonoidalNamespacedPublic.lean/declarations/whiskerright-app.md) | 182 | `result-track:4ce17936d66c9d7fb591c7e0226268a90373cc186823bd9ebfeeb4500378b7ec` |
| 11 | `lemma` | [tensorHom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafMonoidalNamespacedPublic.lean/declarations/tensorhom-app.md) | 188 | `result-track:07ad0a815ace800645d0b950024134bed2c151ef49869977fd9db9394b03f597` |
| 12 | `lemma` | [leftUnitor_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafMonoidalNamespacedPublic.lean/declarations/leftunitor-hom-app.md) | 193 | `result-track:98411400865d9f0a793a174fb29f46f19d559160d6f423fbd528b1882d363fa6` |
| 13 | `lemma` | [leftUnitor_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafMonoidalNamespacedPublic.lean/declarations/leftunitor-inv-app.md) | 198 | `result-track:711aa33e9ab196aabf525cf9836b7d7aa72e2c44cedb8a459c0e4dddc0de2dbf` |
| 14 | `lemma` | [rightUnitor_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafMonoidalNamespacedPublic.lean/declarations/rightunitor-hom-app.md) | 203 | `result-track:db0867f9000f72c501679fec73b9866f4176c26e2fac60e3acc11e371b9485b0` |
| 15 | `lemma` | [rightUnitor_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafMonoidalNamespacedPublic.lean/declarations/rightunitor-inv-app.md) | 208 | `result-track:389a3f3e764b6dbcb98172bb845c9e21df4c53475e0c7fe362ab827bf201f16d` |
| 16 | `lemma` | [associator_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafMonoidalNamespacedPublic.lean/declarations/associator-hom-app.md) | 213 | `result-track:8c448ec3c008546c5c42d2f89cd311450f54d044f0fe4f7972cf545e84765fe1` |
| 17 | `lemma` | [associator_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafMonoidalNamespacedPublic.lean/declarations/associator-inv-app.md) | 219 | `result-track:00b865b986058b678b6cd8bea584de386e94fee3bc37713d88d0c0126f749159` |
| 18 | `lemma` | [braiding_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafMonoidalNamespacedPublic.lean/declarations/braiding-hom-app.md) | 225 | `result-track:e34e3feb1ccadfe4caa7d111255a0eeb5d64c4a30ecb8f867a3a8fcbb1ce2eff` |
| 19 | `lemma` | [braiding_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafMonoidalNamespacedPublic.lean/declarations/braiding-inv-app.md) | 231 | `result-track:70ccfd75fc747c89ccbd7d94d04e0437862896fc5322f021e6c41b4c31e75ad8` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafMonoidalNamespacedPublic.lean/declarations/instance.md) | 237 | `declaration-track:3fb231ffb2b28d06f06e74d402c6c973c49b6504c2478b795d30230bcce305f7` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafMonoidalNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 243 | `declaration-track:99aac51c1739db9a6117b829d5bf1eb8e281c68a120f7a5e79cb3c240a38205b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb2dd74f7a1c88eb047f2971a0b247d6181d0f50dd31dec73c0002696adc720c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Monoidal/Variant103a4fe08b01e66270325f890f4c7f109d559c070c8a3e990e3d00acc552663f.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Monoidal/Variant103a4fe08b01e66270325f890f4c7f109d559c070c8a3e990e3d00acc552663f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
