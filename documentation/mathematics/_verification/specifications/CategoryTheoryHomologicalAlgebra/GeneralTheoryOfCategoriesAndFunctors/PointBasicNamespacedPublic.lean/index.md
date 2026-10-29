# Verification target: Point Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8779ecc425a08aafddbb26e9b9c238de2476061c",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9753036c22d2468c001a22056ef697d51587e97423c57d8238d67ebc36d4f768.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8779ecc425a08aafddbb26e9b9c238de2476061c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9753036c22d2468c001a22056ef697d51587e97423c57d8238d67ebc36d4f768.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9753036c22d2468c001a22056ef697d51587e97423c57d8238d67ebc36d4f768.lean.json)

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
| 1 | `structure` | [Point](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/point.md) | 77 | `declaration-track:9c8148f10d995bc4f06886fa755dcab5b3d398ba5cefcc5e24f95f6f2bc628ce` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 93 | `declaration-track:e6fb13e8337df458741464e36e55fe5a8e07a90cae1f25b5128edd96c50e0493` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 96 | `declaration-track:4c1e302275bd4d4950c2a5ce1884c27607b515bba1019964c8373b75a8905567` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 98 | `declaration-track:592693211557c4136c8aa808448685aae05d5493db772c087ca10e9324644a2b` |
| 5 | `def` | [presheafFiber](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/presheaffiber.md) | 104 | `declaration-track:3990dae6096ffe6112f4d5962fbe116b343a218f659c14fa36661e5f863b6b64` |
| 6 | `def` | [toPresheafFiber](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/topresheaffiber.md) | 109 | `declaration-track:1870fb5b728e571060d1f6a28dcc8f96536a780130d17bd03b8ba5331a351502` |
| 7 | `lemma` | [presheafFiber_hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/presheaffiber-hom-ext.md) | 114 | `result-track:3f4dc0959c45ef942da4b23f0e9aadd84efd8d4544c5459868ca4241b9b2c59e` |
| 8 | `def` | [toPresheafFiberNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/topresheaffibernattrans.md) | 124 | `declaration-track:7dccf08c6fa92fd218f4476ac25495860a8108364baf7281b24550ba4c64e759` |
| 9 | `lemma` | [toPresheafFiber_w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/topresheaffiber-w.md) | 130 | `result-track:63e861f68c298916d889f7fab5e0c011c5a06ee31c9322a735fa6dac97710dac` |
| 10 | `lemma` | [toPresheafFiber_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/topresheaffiber-naturality.md) | 138 | `result-track:de8842fdb63f45fce845a1fdcc6d4402ba26114968ddfb1823420e8e21001822` |
| 11 | `def` | [presheafFiberCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/presheaffibercocone.md) | 146 | `declaration-track:9dba0bc256f358e7499760355eb8dd282fc4fd429f9e44a3baf16d10b01abeb0` |
| 12 | `def` | [isColimitPresheafFiberCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/iscolimitpresheaffibercocone.md) | 152 | `declaration-track:f42ad120363dee4df12bc7eddd66a00b7424f03e091c1d409f2c14bfcf6f8e39` |
| 13 | `def` | [shrinkYonedaCompPresheafFiberIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/shrinkyonedacomppresheaffiberiso.md) | 157 | `declaration-track:c5cd0f560c66189d6a17c14f7c23ca6feb5631111a35d3a74fc2919b277a6085` |
| 14 | `lemma` | [shrinkYonedaCompPresheafFiberIso_inv_app_toPresheafFiber](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/shrinkyonedacomppresheaffiberiso-inv-app-topresheaffiber.md) | 161 | `result-track:b01cec3ab559dd74fcf8374a59405f165c12e0d068bc18d48147f28ab9fbc70e` |
| 15 | `lemma` | [presheafFiber_map_shrinkYoneda_map_shrinkYonedaCompPresheafFiberIso_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/presheaffiber-map-shrinkyoneda-map-shrinkyonedacomppresheaffiberiso-inv.md) | 169 | `result-track:0d3a3da008d8ac92785d0d9c13cb0f87fb0400321d8649435c46ffe2ebe9ecb1` |
| 16 | `def` | [presheafFiberDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/presheaffiberdesc.md) | 190 | `declaration-track:92bff383eb7c8823e2f8132bfbe35465cc563277f15558aa021584679321c5c3` |
| 17 | `lemma` | [toPresheafFiber_presheafFiberDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/topresheaffiber-presheaffiberdesc.md) | 196 | `result-track:61b880f53796f6f2d9339fa45074697d7fdf31c937a00be45f63df99f95fb4d2` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 212 | `declaration-track:84f271da27193488ca34ba70a5076075c1d741f28b0b9bd617fed6ad416bbeab` |
| 19 | `lemma` | [toPresheafFiber_jointly_surjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/topresheaffiber-jointly-surjective.md) | 215 | `result-track:c5f87ad244a8ce34dee73e8c342dec7f7b062285adbfcd213d642ace69fd9595` |
| 20 | `lemma` | [toPresheafFiber_jointly_surjective₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/topresheaffiber-jointly-surjective-source-edition-2.md) | 223 | `result-track:e5f4be9239d78b7fdc123349c359c72b2428753b190ef1a96c9c63ac5d55e939` |
| 21 | `lemma` | [toPresheafFiber_eq_iff'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/topresheaffiber-eq-iff.md) | 231 | `result-track:60317eac20fa9d1b61b1c7e2342e6bb906b36ddb60532c1d49e8addb1b578eb9` |
| 22 | `lemma` | [toPresheafFiber_map_surjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/topresheaffiber-map-surjective.md) | 244 | `result-track:48f13ccffff870eade52b86c5af533a498506baa62825cbe8d52b07722ede0db` |
| 23 | `lemma` | [toPresheafFiber_map_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/topresheaffiber-map-injective.md) | 251 | `result-track:64f6edc40eb86d3798ea6d277a1bec80e616709d1b1533c0619df7cd205ac079` |
| 24 | `lemma` | [toPresheafFiber_map_bijective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/topresheaffiber-map-bijective.md) | 265 | `result-track:d88145738a0cbc96ca22aa7fa635793637abe8a89b967fafce4542b45746ce80` |
| 25 | `lemma` | [W_isInvertedBy_presheafFiber'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/w-isinvertedby-presheaffiber.md) | 273 | `result-track:94978c98199d00dd253fb92e9e3b9e55d81f385f40850e219c2c431eebef532a` |
| 26 | `def` | [sheafFiber](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/sheaffiber.md) | 284 | `declaration-track:b076e3dfa0f22d53bf03ec91da369efa89cf8a6516955d83f329a8524e1ecfcb` |
| 27 | `def` | [sheafToPresheafCompPresheafFiberIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/sheaftopresheafcomppresheaffiberiso.md) | 288 | `declaration-track:d6b744c1a883be5862f84f7e45699093bd8cb2046dbb7bb3a20586001bcee1cf` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/instance.md) | 292 | `declaration-track:046290ccde28e2ad404da016e1db131f5a6346f44536badc5a8e807d5791e4bc` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 296 | `declaration-track:9adb332ca81733cc98c6b80d1436a42ad381f49830b8e486c46ab3105b2b7348` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 300 | `declaration-track:71cf23675e051b5376b8d6a459ffd3c0905abc62cb5ba7f086cb509d0f09b7db` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 309 | `declaration-track:08ee2d6009944bd31c332eb21dcd8a7902e62f707d317bbff7284255e689a1ae` |
| 32 | `def` | [isTerminalFiberObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/isterminalfiberobj.md) | 313 | `declaration-track:1684a893426c48a896cd3fa70597b10a13cd15124bb8b966f47ddbf9258047fe` |
| 33 | `def` | [uniqueFiberObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/uniquefiberobj.md) | 319 | `declaration-track:da85c6f50c40b9bfe0e2ff35cb1039d24b8ecd9c6182ec403021bb0954b16f26` |
| 34 | `lemma` | [fiber_map_injective_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/fiber-map-injective-of-mono.md) | 323 | `result-track:0e18849e1c8ee2705f4161e5b6473f461a106bc2b909400796416c4e30760adf` |
| 35 | `lemma` | [subsingleton_fiber_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/subsingleton-fiber-obj.md) | 328 | `result-track:646a769498ae69c7543375bc7968dbebdc339cc2f4188fafe0c31f6857e64e1f` |
| 36 | `def` | [presheafFiberCompIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/presheaffibercompiso.md) | 340 | `declaration-track:007ad2fb840e3f8459fec9b27ef524a922dc50947cee3fcb6954e90703cae8fa` |
| 37 | `lemma` | [toPresheafFiber_presheafFiberCompIso_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/topresheaffiber-presheaffibercompiso-hom-app.md) | 349 | `result-track:f6ce3881f89c45f5c5c766d25e0fd46a282d08afffa50e0dc96d192ca97e6695` |
| 38 | `def` | [sheafFiberCompIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointBasicNamespacedPublic.lean/declarations/sheaffibercompiso.md) | 361 | `declaration-track:1800b71b75bf94e8775afd1adc65da86e9d2e79a5aa69ef3db7ebc1205d092a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb9d47938116fdebec1e404d30beed83d662ad4097f30af34f0eddf28de58c4a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9753036c22d2468c001a22056ef697d51587e97423c57d8238d67ebc36d4f768.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9753036c22d2468c001a22056ef697d51587e97423c57d8238d67ebc36d4f768.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
