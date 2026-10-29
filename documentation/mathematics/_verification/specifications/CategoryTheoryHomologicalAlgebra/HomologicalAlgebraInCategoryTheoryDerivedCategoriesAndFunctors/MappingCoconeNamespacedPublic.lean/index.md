# Verification target: Mapping Cocone Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "580904a1dece81420304cd3135b1dde125c650f7",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MappingCocone/Variant773acc18961912e2bc847ecb51fd3c55e5b7205ef6987c75e3a8efa40406ef1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `580904a1dece81420304cd3135b1dde125c650f7`.

Source path: `GRWTSK/Algebra/MappingCocone/Variant773acc18961912e2bc847ecb51fd3c55e5b7205ef6987c75e3a8efa40406ef1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MappingCocone/Variant773acc18961912e2bc847ecb51fd3c55e5b7205ef6987c75e3a8efa40406ef1e.lean.json)

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
| 1 | `def` | [mappingCocone](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/mappingcocone.md) | 41 | `declaration-track:264204e8a05795cded66802f341275a520d12648961dc24eb0bdb7e1aa43c1b1` |
| 2 | `def` | [fst](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/fst.md) | 51 | `declaration-track:e2b8b96f213793be39b3aeb09fb7a8632a6a0de094305581e3288723ae312d65` |
| 3 | `def` | [snd](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/snd.md) | 55 | `declaration-track:5aac7a0e01ffcbcbb1265f9a9c4a204228843a6e6920aaebb9a3960abd5bdbf6` |
| 4 | `def` | [inl](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/inl.md) | 59 | `declaration-track:8cf44e23abb760e26efed4b0abbd17d03d18d4db79e3399b7a7d18327058b08a` |
| 5 | `def` | [inr](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/inr.md) | 63 | `declaration-track:2a89747a089df30463db8bb7ddf798040b68cefd75783125cb81bd645dea16a6` |
| 6 | `lemma` | [inl_v_fst_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/inl-v-fst-f.md) | 69 | `result-track:a9eb6f17a5612fc8f3081c0db923a933089e9a2155ebed6d478009783d34f1fa` |
| 7 | `lemma` | [inl_v_snd_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/inl-v-snd-v.md) | 77 | `result-track:253718f71b27bb573be23b389367511acd81347579cd635809e720144e9c82d4` |
| 8 | `lemma` | [inr_v_fst_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/inr-v-fst-f.md) | 85 | `result-track:c2eff5fd42bc603b60749409d9f0d0ec1161aa3e67edee27d158b2dba610c2b6` |
| 9 | `lemma` | [inr_v_snd_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/inr-v-snd-v.md) | 92 | `result-track:a72ddc6cfa234d204c831fbb6d98353d662d2186c771a228bca3e9e6f5244050` |
| 10 | `lemma` | [id_X](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/id-x.md) | 99 | `result-track:e540b5a2e7347c1e0382861e8d1872f9631874bb14be05159df1e031c93abd36` |
| 11 | `def` | [descCochain](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/desccochain-source-edition-2.md) | 117 | `declaration-track:ea6154e522a72d5769e99e2cfd4c348251e371c509175a60e58ec3958a061172` |
| 12 | `lemma` | [inl_v_descCochain_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/inl-v-desccochain-v.md) | 122 | `result-track:8c131a54b9a5fb3e088996301f79b871dd61790f0f79fa05334ac61a85cf4422` |
| 13 | `lemma` | [inr_v_descCochain_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/inr-v-desccochain-v.md) | 130 | `result-track:f3d5e4ea9a2fdab44a726e71f02f48a05abd9fa75e5a3c6321b4d637e26077c1` |
| 14 | `lemma` | [inl_comp_descCochain](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/inl-comp-desccochain.md) | 138 | `result-track:5876a340a1dadc6902fd92499959d5bd7db6eb425a3bc11a39340e74498fd8f1` |
| 15 | `lemma` | [inr_comp_descCochain](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/inr-comp-desccochain.md) | 143 | `result-track:fcd18fac18bddee4c0a95a1002a4fb3205520c571244593c070bc599dd2641dd` |
| 16 | `lemma` | [δ_descCochain](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/desccochain.md) | 150 | `result-track:e7867ea05708e99ae80f7abcee9520e3efab0897905ff96fd62e4a1cd04bcaef` |
| 17 | `def` | [descCocycle](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/desccocycle.md) | 177 | `declaration-track:16cdc0da6ef3b726f0a0b20445b0249f96a44ac5c821c2f41e0dc79e74fbeb60` |
| 18 | `def` | [desc](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/desc.md) | 190 | `declaration-track:a4f806ab801cf997edf8cf0ea5254cce0d18c3218e373cac33ccb6c500f7526f` |
| 19 | `lemma` | [ofHom_desc](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/ofhom-desc.md) | 194 | `result-track:36168b4e15b98a4185b5162097f7c7e4320a604b0682b0eeba3f642239be43e6` |
| 20 | `lemma` | [inl_v_desc_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/inl-v-desc-f.md) | 199 | `result-track:9f39dbb205337c17d8c0ec7de8b51d1753dabb6c71a7760ac3c4c2521cfca975` |
| 21 | `lemma` | [inr_v_desc_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/inr-v-desc-f.md) | 204 | `result-track:dd6631e6bb99dd04d14a47cdffb6ddbae1353919e1cd7ed540aaeddd7378e5ea` |
| 22 | `def` | [liftCochain](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/liftcochain-source-edition-2.md) | 216 | `declaration-track:53ac538fc03777d0dd1e3f3665c05891dbc9f56f73145dd9f43b156a85e72d53` |
| 23 | `lemma` | [liftCochain_v_fst_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/liftcochain-v-fst-f.md) | 221 | `result-track:722104043c76294c68d4c743cb0ac85cfd9965bf05b73520e32b3e29f0352ad2` |
| 24 | `lemma` | [liftCochain_v_snd_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/liftcochain-v-snd-v.md) | 229 | `result-track:81bc0bc741973dd3135a82c49893ca98285a95a36cf831427947d81af19da7b6` |
| 25 | `lemma` | [liftCochain_comp_fst](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/liftcochain-comp-fst.md) | 238 | `result-track:339317af14d25a656759be3bd038fe1534d0e8d25c3ae3f271f89c803bdd79ad` |
| 26 | `lemma` | [liftCochain_comp_snd](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/liftcochain-comp-snd.md) | 243 | `result-track:003a53894684b344db714d5456ddc2cdff2f054c5dd848f69a50f24652bd9c22` |
| 27 | `lemma` | [δ_liftCochain](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/liftcochain.md) | 250 | `result-track:395436a671caa55909e0d92b76166de5993cfe28f06fe0836c53c305b6d6ff5c` |
| 28 | `def` | [liftCocycle](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/liftcocycle.md) | 273 | `declaration-track:cc39a775a1a638939a2f23f9e8a7fe07ecc9f2559b26918c297c91b0489ea84e` |
| 29 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/lift.md) | 286 | `declaration-track:4a36346348e165cca7c5fae3302bcdf0bf618beedb26c53712fa9b439029575f` |
| 30 | `lemma` | [ofHom_lift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/ofhom-lift.md) | 290 | `result-track:61092ff64f16dfff6ba6ffec21716b0c40b5bf30828ef71557193c5eb7c66a97` |
| 31 | `lemma` | [lift_f_fst_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/lift-f-fst-f.md) | 295 | `result-track:257c5e6e3cdd57545d14121ebdebbeb19ae8dfdc4750986e4b0b015fe5de0a79` |
| 32 | `lemma` | [lift_fst](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/lift-fst.md) | 300 | `result-track:a92a49c8a339b46d13b7a83acbdb549cf7292f78edd11d78f636c77a2aa9a698` |
| 33 | `lemma` | [lift_f_snd_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/lift-f-snd-v.md) | 305 | `result-track:c48711ea664934aacfce46f928d2910341e87c5b9953dace58e2063895dfbcad` |
| 34 | `def` | [triangle](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/triangle.md) | 320 | `declaration-track:13c82942c6f5a8446edbb07b6c459ec54bef5d4a562e37982db806875c300083` |
| 35 | `def` | [rotateTriangleIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/MappingCoconeNamespacedPublic.lean/declarations/rotatetriangleiso.md) | 328 | `declaration-track:0b433d5c75b3d2bea8c362eb7c56f5a97c4b72712edf304c904fdfe60c27068c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c58cd79090e913f73727658fc01de80603bc2795d95946659beb5b4ac5e04ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/MappingCocone/Variant773acc18961912e2bc847ecb51fd3c55e5b7205ef6987c75e3a8efa40406ef1e.lean","GRWTSK/_verification/specifications/Algebra/MappingCocone/Variant773acc18961912e2bc847ecb51fd3c55e5b7205ef6987c75e3a8efa40406ef1e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
