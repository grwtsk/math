# Verification target: Short Complex Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6849d09668ed7c0c0d89c34b7bf6fa5989440aba",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8553da7d4eadee9ad2d53f189e517a56fea0536f1966f656659537458252768c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6849d09668ed7c0c0d89c34b7bf6fa5989440aba`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8553da7d4eadee9ad2d53f189e517a56fea0536f1966f656659537458252768c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8553da7d4eadee9ad2d53f189e517a56fea0536f1966f656659537458252768c.lean.json)

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
| 1 | `structure` | [ShortComplex](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/shortcomplex.md) | 42 | `declaration-track:49a5a1e0aecb25a2759cc2cc1e54a500af8a7505d3937af5964a52ab8d4b5a3c` |
| 2 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/hom.md) | 62 | `declaration-track:31b3a1667e362d3e725384c89ce15ff426609ae99f1dd515de1a30b8d4e489f4` |
| 3 | `def` | [Hom.id](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/hom-id.md) | 81 | `declaration-track:fbb182a9cc1d1f97fed0fca9a223210b8fc1718a9354ce94fd8907d4582eaaeb` |
| 4 | `def` | [Hom.comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/hom-comp.md) | 88 | `declaration-track:c61f7c8af00029dbb7e0008f88d0149f4a7f398d0329d4ae219858e0aed5752d` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/instance.md) | 93 | `declaration-track:104339e226a7fce006c465127a83f8dbf96a8b6165ccedcd10c527c9573ebf91` |
| 6 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/hom-ext.md) | 99 | `result-track:cc30f8e9c8944260e632467eb39042c66586f632a6c44b036121eab5ec3e485b` |
| 7 | `def` | [homMk](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/hommk.md) | 105 | `declaration-track:beb2368017a60f98ede38532f4eef42816ff61caaf60405cd26262233e6a009c` |
| 8 | `lemma` | [id_τ₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/id-source-edition-2.md) | 109 | `result-track:6973606b5284255bb082f41535bdbcfdb6eb91de9997615003674456a47022c9` |
| 9 | `lemma` | [id_τ₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/id.md) | 110 | `result-track:67b115a6b7cffbd2a1e345c8e7c7fc2ee6807189849e8d856b1fa30c20ed75ac` |
| 10 | `lemma` | [id_τ₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/id-source-edition-3.md) | 111 | `result-track:eb2535d060bd51608ba56e6e8252346a63f62e4fcce10b310ebb9cb8f4fcba3e` |
| 11 | `lemma` | [comp_τ₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/comp-source-edition-3.md) | 112 | `result-track:8166dbfa202abac5c17be660758343545f0e8736aadeae4d6f57fa06a904c6e3` |
| 12 | `lemma` | [comp_τ₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/comp.md) | 114 | `result-track:2a208f75974821ac07bad9074e0d8c6599b9f28f51e8241035b0cfcbb6dd618c` |
| 13 | `lemma` | [comp_τ₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/comp-source-edition-2.md) | 116 | `result-track:37f586d23440472dfa674c9576b2f1b2d8050d6a7be422cb99fcdcb781f48eb7` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 121 | `declaration-track:a37eb359d88153723ea5ffd88bf0f05b7cb2d0cb86e9b297fe7efd8c9a0e4728` |
| 15 | `lemma` | [zero_τ₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/zero.md) | 125 | `result-track:a370d1419cc26a6cedf6ec4cd3c9b43ed8dc0dc29741c5f0aa1992473eb0ae93` |
| 16 | `lemma` | [zero_τ₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/zero-source-edition-3.md) | 126 | `result-track:f7062bd3cc9ffef9b7cb73236238b67ebbe34c6f250885dd187511674743407f` |
| 17 | `lemma` | [zero_τ₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/zero-source-edition-2.md) | 127 | `result-track:b4afb400aec2c0b1664146a29e0a3e0e94313f09f271bed905e88ca3e5b26f7d` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 131 | `declaration-track:3f193545a9259af7dd464ac1e85671af3f16223f793c5e35986296c4fe708cce` |
| 19 | `def` | [π₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/anonymous-source-edition-2.md) | 135 | `declaration-track:8451178bd171ddba7bdc30113a8aa0ba72fa135ad1c2e9f6a583fd6516a439a3` |
| 20 | `def` | [π₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/anonymous-source-edition-3.md) | 141 | `declaration-track:8d170b64bec02643b6eba0334cc3f7efb9a2d3bdfe285491075458400e65582f` |
| 21 | `def` | [π₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/anonymous.md) | 147 | `declaration-track:81c8448450d2b8f4cdb13a69fb45d69f08a4f8d62c612606752f2ede4cdb5e1c` |
| 22 | `instance` | [preservesZeroMorphisms_π₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/preserveszeromorphisms.md) | 151 | `declaration-track:a407482cf73403c9f46fbfa549576a8e0b965990e4649b3268db68bdcda8e166` |
| 23 | `instance` | [preservesZeroMorphisms_π₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/preserveszeromorphisms-source-edition-3.md) | 152 | `declaration-track:ba289834b2cb990fead886adedba6bde1ebf75c9297e5f53216cf6d70a733be5` |
| 24 | `instance` | [preservesZeroMorphisms_π₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/preserveszeromorphisms-source-edition-2.md) | 153 | `declaration-track:ad5180844c950be3e3a47fb04d1317508311fc6d5be67e4352f0b435eb66a4d2` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 155 | `declaration-track:f96627a263d1a717fb7a8a9769a46a2f02415c877c696ec5dbebdb4e58e156e9` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 156 | `declaration-track:2d506f76e2040a6711ead44935e3cf63abcedaa4622500cebb131d6cbdd9d069` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 157 | `declaration-track:1838d0bfca12936ee19a7f6428d8fd0d07270b5b23b2dfe87854a07957bc5fc9` |
| 28 | `def` | [π₁Toπ₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/to-source-edition-2.md) | 161 | `declaration-track:e4b2fe610739b72b940d3be38b52cdb9c337506c67eaa9b4a64b8f7e797c3a6e` |
| 29 | `def` | [π₂Toπ₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/to.md) | 166 | `declaration-track:16980056904166686a1cbf8002b397f88ce4c2f4b88c96527d8f587e75f191fc` |
| 30 | `lemma` | [π₁Toπ₂_comp_π₂Toπ₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/to-comp-to.md) | 171 | `result-track:a374c54ff6e255c16db12ec97418fb981c2f2c38879a58664ec40e43866fc95f` |
| 31 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/map.md) | 176 | `declaration-track:c7f1f62f87369674f373e2f1c8a9ec884e07063fe104b61293bc9ba1f811623d` |
| 32 | `lemma` | [map_id](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/map-id.md) | 179 | `result-track:7af4694e55b93b3bfecb0d24dc0c5ba1e6008e10a86ceda85ae7bb195058081f` |
| 33 | `lemma` | [map_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/map-comp.md) | 181 | `result-track:e8345e377ef3873f2afea13f503f8187fc09213303c33758af6310e27d4d9ade` |
| 34 | `def` | [mapNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/mapnattrans.md) | 188 | `declaration-track:3f06268f43e90dab9c564dd4c4896121412427686fe343b5b214b4ba12229f7c` |
| 35 | `def` | [mapNatIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/mapnatiso.md) | 197 | `declaration-track:58bdd3a2cf531a7a1b239a3a6d802c566901242a88ab89381ba53f55b8e28e60` |
| 36 | `def` | [Short Complex Basic Namespaced Public](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-shortcomplex.md) | 205 | `declaration-track:5fef96faf4961a014d755ce065ec69f8a8a7765b6bee2278257af68023c95bd7` |
| 37 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/isomk.md) | 221 | `declaration-track:025f045778405270b1d1303baaaaebe89d5f07fd6a37c9109afead42b2223d80` |
| 38 | `lemma` | [isIso_of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/isiso-of-isiso.md) | 232 | `result-track:81dbf072361f2b394cb0783554b4167e763d26206fa68d0b851beb3ade40e476` |
| 39 | `lemma` | [isIso_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/isiso-iff.md) | 235 | `result-track:3548d3c0b906b72b849ce3a8ca9b95ad814f8ac4e18e12e42dcf4c399af7fd00` |
| 40 | `def` | [fFunctor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/ffunctor.md) | 242 | `declaration-track:982e02bd0994df7b1cb1025c3444d1cc40ffa5301ccda5cf7590e1658021b7f9` |
| 41 | `def` | [gFunctor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/gfunctor.md) | 247 | `declaration-track:fbc693910c04dff3070bba67ca0a0bba56eba98ffa0f235035e6ea29d73b84b9` |
| 42 | `def` | [op](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/op.md) | 253 | `declaration-track:405ca0aaad5a6e2339eab25f6f23a5a03915049e3dc977fc3363a2de58b54031` |
| 43 | `def` | [opMap](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/opmap.md) | 259 | `declaration-track:9d30ec14f5fc7d538aba2eaaa7591824c9eae6e8de85c09a71041987b0ae11a2` |
| 44 | `lemma` | [opMap_id](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/opmap-id.md) | 271 | `result-track:2b2e99d5c27a0e958504080e8ba32f6db1308c3d63be8c554cc13e64de2fccfd` |
| 45 | `def` | [unop](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/unop.md) | 275 | `declaration-track:2e229467e5b4967b85a91bbeae54814a74ec80bfa6de386f361c9f8d1a5ab9fd` |
| 46 | `def` | [unopMap](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/unopmap.md) | 281 | `declaration-track:05d2d2a37b5d8ecbfd233405f7f7c270b169027dc4b4bd9ff22876874a97c112` |
| 47 | `lemma` | [unopMap_id](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/unopmap-id.md) | 293 | `result-track:83aa92abf2893386b5af1eda99e839ed20f8ceb671594def170360aa33b9932f` |
| 48 | `def` | [opFunctor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/opfunctor.md) | 299 | `declaration-track:3e927312777b6b83c2c00af9a7a95a4bf3bb590144215e704283f2189992be3c` |
| 49 | `def` | [unopFunctor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/unopfunctor.md) | 305 | `declaration-track:ff8b26d2c01cfd7aecdcffe96e47fd70c3693df13c552f494277d89f731f83cb` |
| 50 | `def` | [opEquiv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/opequiv.md) | 313 | `declaration-track:c617d2413c828858b614205e75c43812e8ab65f8fc4d966bf4d6250b3ca4c72c` |
| 51 | `abbrev` | [unopOp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/unopop.md) | 322 | `declaration-track:68364f817d5c30c3a6f774430f87e912e633243cbcea5f9fc59545f292fffcfc` |
| 52 | `abbrev` | [opUnop](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicNamespacedPublic.lean/declarations/opunop.md) | 325 | `declaration-track:abb7fe7f5f4f857e2845d24f514f8044cdc9703662e65a89cc018886402794e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c9b40d4c3683e20cc5feea549bc1bd99ca52adcb72823a0a451be40348472e6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8553da7d4eadee9ad2d53f189e517a56fea0536f1966f656659537458252768c.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8553da7d4eadee9ad2d53f189e517a56fea0536f1966f656659537458252768c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
