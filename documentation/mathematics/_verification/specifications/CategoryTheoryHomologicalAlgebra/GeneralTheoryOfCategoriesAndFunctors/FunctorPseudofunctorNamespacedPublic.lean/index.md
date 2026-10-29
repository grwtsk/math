# Verification target: Functor Pseudofunctor Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8847e6c501db108721bc84e04e7fee68c77b3d9a",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant0c1ddf7322b88b7a78f59d8785077a4af87942ccd4e8155f6ada7fc48d2243e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8847e6c501db108721bc84e04e7fee68c77b3d9a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant0c1ddf7322b88b7a78f59d8785077a4af87942ccd4e8155f6ada7fc48d2243e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant0c1ddf7322b88b7a78f59d8785077a4af87942ccd4e8155f6ada7fc48d2243e7.lean.json)

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
| 1 | `structure` | [Pseudofunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/pseudofunctor.md) | 66 | `declaration-track:e43d12a9d0bcb4819f9d45a55f6cdf49989c9ba6b4fcb1bd2b4ffcb0f608caee` |
| 2 | `def` | [toOplax](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/tooplax.md) | 127 | `declaration-track:968a2bd529f21e57c16a12bab3c96eb20b1e3f4d262184c26f3515dfa11acbd4` |
| 3 | `instance` | [hasCoeToOplax](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/hascoetooplax.md) | 132 | `declaration-track:f4efb89453cf5d68d2a9a5c0479ec01caa8c7e92c6b36c66d1953dfabdb1d718` |
| 4 | `def` | [toLax](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/tolax.md) | 137 | `declaration-track:006a82c7fd852babcb199e50d627c7f5bfb356e5ef349f6681c14907d90aee19` |
| 5 | `instance` | [hasCoeToLax](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/hascoetolax.md) | 148 | `declaration-track:0bf3d51c039816f2a757951e8829369d76ec47ee69abfd33118ba47193ca352a` |
| 6 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/id.md) | 155 | `declaration-track:07d74e1d16a208bbd83190d7d0ed60815178cef2f0057e5bfa945ff9c27ac725` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/instance.md) | 160 | `declaration-track:0e85abdd84fbadd27d7916c9e8425c0db8cad69cd8e2922a067b419dc9616d9e` |
| 8 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/comp.md) | 167 | `declaration-track:a18622271933080a627103dbf0a2f7e782b3504d8acb1aec705afe0218b1db6a` |
| 9 | `lemma` | [mapComp_assoc_right_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/mapcomp-assoc-right-hom.md) | 177 | `result-track:8925b4b44a6ba768a556bd1aab1f2eb16c6d87a55f4d1e308cb20667b3aca397` |
| 10 | `lemma` | [mapComp_assoc_left_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/mapcomp-assoc-left-hom.md) | 184 | `result-track:664e7d8bcaa86c4f540ab4b0fade101beed22e8c47ecf4284f8c09c7ad03457a` |
| 11 | `lemma` | [mapComp_assoc_right_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/mapcomp-assoc-right-inv.md) | 191 | `result-track:b75f37c12faa0e18f00f786d6f3f1735df6dbde96f2cc150f8a3d2977fe1d253` |
| 12 | `lemma` | [mapComp_assoc_left_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/mapcomp-assoc-left-inv.md) | 198 | `result-track:698a3f795d690b452043ba8701b6615f10afa134929bb64644b1d6361aff6350` |
| 13 | `lemma` | [mapComp_id_left_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/mapcomp-id-left-hom.md) | 208 | `result-track:f9dbeb408c9132dbad75c7bde91388bffd4841b34b69995cb35dd75f732fa1db` |
| 14 | `lemma` | [mapComp_id_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/mapcomp-id-left.md) | 212 | `result-track:7bfe565f02f8072c2bbba62962e124a8adcac594edc7400f2eb578143ac1dd29` |
| 15 | `lemma` | [mapComp_id_left_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/mapcomp-id-left-inv.md) | 220 | `result-track:9410bf6fa9642e72bb1e228d58d6b6bd30e776bc6b446a3f94a1f6dc675dd87d` |
| 16 | `lemma` | [whiskerRightIso_mapId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/whiskerrightiso-mapid.md) | 224 | `result-track:8c6c0f9a2f814e2c541007c538d09172f995035f8f6bbbc36ecfbdea7519b283` |
| 17 | `lemma` | [whiskerRight_mapId_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/whiskerright-mapid-hom.md) | 232 | `result-track:1c2b10f372a1f26a06adaf4233aceb595199766214847d99bf70fb11677ae635` |
| 18 | `lemma` | [whiskerRight_mapId_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/whiskerright-mapid-inv.md) | 240 | `result-track:09006709bc941eeb6f88a7085b53dec2b1a7ea7035659b0b0215a12726768421` |
| 19 | `lemma` | [mapComp_id_right_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/mapcomp-id-right-hom.md) | 248 | `result-track:d2a3d004b06261e9e69ac79d7a1602166e90d69041e01ab6b61d32119503daa4` |
| 20 | `lemma` | [mapComp_id_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/mapcomp-id-right.md) | 252 | `result-track:132c324da86492ebe4e4a09cc2a886c222138033c13850ce240e7492eb110dbc` |
| 21 | `lemma` | [mapComp_id_right_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/mapcomp-id-right-inv.md) | 260 | `result-track:7c047241312f84bbd7251ae07b5c5ba518b12b6d56b69d77c34ba51cb366a683` |
| 22 | `lemma` | [whiskerLeftIso_mapId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/whiskerleftiso-mapid.md) | 264 | `result-track:feb9fb86a98f6f6510b1a8c16d2bd2949041fd25c3cd7af98079dee5411eac07` |
| 23 | `lemma` | [whiskerLeft_mapId_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/whiskerleft-mapid-hom.md) | 272 | `result-track:11107eca58f2775daf93a33cf3a656e6fe6e2427c0de5ade41889aea3282c270` |
| 24 | `lemma` | [whiskerLeft_mapId_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/whiskerleft-mapid-inv.md) | 280 | `result-track:edbd3148a7608c7f34b930106f7dc9e08e7982ab2e46e3639ea779bc9f1fde7d` |
| 25 | `def` | [mapId'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/mapid.md) | 286 | `declaration-track:30f410c179f1c7b80b2e0ce0d73c6d4ed371d39e9171861d689147268ab44e44` |
| 26 | `lemma` | [mapId'_eq_mapId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/mapid-eq-mapid.md) | 291 | `result-track:dbd2ff326449d6f091525e9296d1b753411fdf2cf0135b2bad986dde2f0f10f4` |
| 27 | `lemma` | [toLax_mapId'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/tolax-mapid.md) | 296 | `result-track:9dcec960059ea54a8d352852a07425d4dee784ec9c23d0ca01cca9accb17e9f4` |
| 28 | `lemma` | [toOplax_mapId'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/tooplax-mapid.md) | 301 | `result-track:96d5abfe4d41274b9503a1c3e5b31ee70b4b8adb5081b3d2f37ce4c3951056ee` |
| 29 | `def` | [mapComp'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/mapcomp.md) | 307 | `declaration-track:2d7926a03115e7a174914c53f709c11e81a161d680c39152d75d17644ddd5fad` |
| 30 | `lemma` | [mapComp'_eq_mapComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/mapcomp-eq-mapcomp.md) | 313 | `result-track:a3544bae4e5dc1f8136f274c9c181bcdfd4c065e2afe824db25e8d5d89415e08` |
| 31 | `lemma` | [toLax_mapComp'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/tolax-mapcomp.md) | 318 | `result-track:020560ad18590de68691984e558cdb787645eadf8e42a46650a8b11e414e5f49` |
| 32 | `lemma` | [toOplax_mapComp'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/tooplax-mapcomp.md) | 324 | `result-track:9e33548986c933bde03341448972632afc3cf93524821175326f976cb60b0b3b` |
| 33 | `def` | [mkOfOplax](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/mkofoplax.md) | 333 | `declaration-track:08efc5b5ff3304d9c6ae02a00f009ec42a8b267de09503e9bc9f89f602dee678` |
| 34 | `def` | [mkOfOplax'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/mkofoplax-source-edition-2.md) | 350 | `declaration-track:cbca0989753bdbcb87fb95026535a9a87719e59de87edfc130bcdaa238744929` |
| 35 | `def` | [mkOfLax](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/mkoflax.md) | 369 | `declaration-track:1dd1d6b46d17091be0bec9c7f4defe78a601999679893b3c67a7d11274474bdd` |
| 36 | `def` | [mkOfLax'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/declarations/mkoflax-source-edition-2.md) | 387 | `declaration-track:83f250f9a50e19892295c16f2b93df83f843f562a1acdef2bd7fd11f4042b387` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=302c1cc4998c4f69a83023dcc60bd5fdb74a2bab8cec8b7d412159a67a32f7e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant0c1ddf7322b88b7a78f59d8785077a4af87942ccd4e8155f6ada7fc48d2243e7.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant0c1ddf7322b88b7a78f59d8785077a4af87942ccd4e8155f6ada7fc48d2243e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
