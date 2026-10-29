# Verification target: Kan Extension Adjunction Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e7350edc65a8636c38b665be2338006d7aa7425",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantbc521a6a8828e55bb298e05cfe0ff5fd95886567bab9db60370fa973e261ac2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e7350edc65a8636c38b665be2338006d7aa7425`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantbc521a6a8828e55bb298e05cfe0ff5fd95886567bab9db60370fa973e261ac2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantbc521a6a8828e55bb298e05cfe0ff5fd95886567bab9db60370fa973e261ac2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.KanExtension.Pointwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Grothendieck` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.StructuredArrow.Functor` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/lan.md) | 48 | `declaration-track:89270b5c476717f8163cb68e8752183b107c33437a4b95d7f4c0f4e1a4fe39c1` |
| 2 | `def` | [lanUnit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/lanunit.md) | 54 | `declaration-track:20cb4988c7af71c0055bf83fc01a5bbd87424ccc928e55a67adfda0037b89db0` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/instance-source-edition-4.md) | 58 | `declaration-track:9f75842ed5f65b3b51c2bbc4db60f9893907eb19fe2d52a06ed3a3380b3a5f76` |
| 4 | `def` | [isPointwiseLeftKanExtensionLeftKanExtensionUnit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/ispointwiseleftkanextensionleftkanextensionunit.md) | 66 | `declaration-track:16270288172f1129b5d9a9106a48d85fb6c19733231caab40c7aab73328c6f46` |
| 5 | `def` | [leftKanExtensionObjIsoColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/leftkanextensionobjisocolimit.md) | 79 | `declaration-track:92c6df158f1cee08104d6990e9a618bfdd874028ac45f1960abedd5440f4a4f2` |
| 6 | `lemma` | [ι_leftKanExtensionObjIsoColimit_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/leftkanextensionobjisocolimit-inv.md) | 85 | `result-track:cd42f22cb7ac0eed0d4caf666f56898bd6d2fec4ba5a6e12ebd1b3b83d51e95d` |
| 7 | `lemma` | [ι_leftKanExtensionObjIsoColimit_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/leftkanextensionobjisocolimit-hom.md) | 92 | `result-track:b3c2624062bb93e9d881de7025e5aa262a5b8f395f087cb85c2c6fcba05cbd01` |
| 8 | `lemma` | [leftKanExtensionUnit_leftKanExtension_map_leftKanExtensionObjIsoColimit_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/leftkanextensionunit-leftkanextension-map-leftkanextensionobjisocolimit.md) | 99 | `result-track:24ec86f77395f0504cf982dc2a3d6e4e3e98a079e73a3174d932cd1c6418d62c` |
| 9 | `lemma` | [leftKanExtensionUnit_leftKanExtensionObjIsoColimit_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/leftkanextensionunit-leftkanextensionobjisocolimit-hom.md) | 108 | `result-track:ff05cd1f63355e5aa952eb910b8ef0572e923c593e8530a66dae23a4bd9240f1` |
| 10 | `theorem` | [hasColimit_map_comp_ι_comp_grotendieckProj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/hascolimit-map-comp-comp-grotendieckproj.md) | 115 | `result-track:13f7aa7043f23d33ec847893f99ba8ab6aa10f709276342403be1ee784abecee` |
| 11 | `def` | [leftKanExtensionIsoFiberwiseColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/leftkanextensionisofiberwisecolimit.md) | 123 | `declaration-track:10cec6bc01e841e63816d10d93259ef41f0202ad85ec5ef25756d89249b1eed6` |
| 12 | `def` | [lanAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/lanadjunction.md) | 142 | `declaration-track:f12def41627fe414f18096a2be3d076a1843162da58968b0ec7586db58e5fbc5` |
| 13 | `lemma` | [lanAdjunction_unit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/lanadjunction-unit.md) | 159 | `result-track:f06caf68675412074bb04475c036401e89b256607499a0c0a78c0c0cbecf8e9b` |
| 14 | `lemma` | [lanAdjunction_counit_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/lanadjunction-counit-app.md) | 164 | `result-track:43b17682bffa1174bd603ac074029ef3335c5e34593fbc1ab0e61cf551637e61` |
| 15 | `lemma` | [lanUnit_app_whiskerLeft_lanAdjunction_counit_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/lanunit-app-whiskerleft-lanadjunction-counit-app.md) | 170 | `result-track:beb38342141b7142bfc340f0ac05e891749e2b17251bca6fa1847c5fb88051f9` |
| 16 | `lemma` | [lanUnit_app_app_lanAdjunction_counit_app_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/lanunit-app-app-lanadjunction-counit-app-app.md) | 175 | `result-track:f545cb2221f73ecf02f6b9b10b3c128c03da5e58bf4ad1a428210d90dd300e48` |
| 17 | `lemma` | [isIso_lanAdjunction_counit_app_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/isiso-lanadjunction-counit-app-iff.md) | 179 | `result-track:fac909fd9fa9f22b0a61510553db24f8de6e88ab08b0f4e01ffaec47f1e4051a` |
| 18 | `def` | [lanCompColimIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/lancompcolimiso.md) | 186 | `declaration-track:3cd79f426c64a8432bcab4c96241959d48f7a47ece614412af3aa49257b8151d` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/instance.md) | 205 | `declaration-track:35bbd6ae76be9f80903a14c66533b1af9e7a51d46e68d2a84a1b4594f88dad46` |
| 20 | `def` | [colimitIsoColimitGrothendieck](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/colimitisocolimitgrothendieck.md) | 213 | `declaration-track:3906ab26729838feb0c53af3942f93209331e6a39b8286a17951b6221765b439` |
| 21 | `lemma` | [ι_colimitIsoColimitGrothendieck_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/colimitisocolimitgrothendieck-inv.md) | 224 | `result-track:4000bdffdb4fba88afbd25073dbe8e076fe8c28dbe071f39750dfaf46edfcaed` |
| 22 | `lemma` | [ι_colimitIsoColimitGrothendieck_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/colimitisocolimitgrothendieck-hom.md) | 231 | `result-track:ac396d24a40936e4b7fe9830a4a06ad9c0efdcbc2b47b4ac3d6a5b40cdd96767` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/instance-source-edition-3.md) | 244 | `declaration-track:6ebcab083089ff2233b92c1543cd52c928024ba018c70bfc3cfda13fad50ea92` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/instance-source-edition-6.md) | 249 | `declaration-track:b0440406b57228c84b1206023d302d01e9534da62b840ab92cb6b8e6adb0ce56` |
| 25 | `instance` | [coreflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/coreflective-source-edition-2.md) | 254 | `declaration-track:b9d5c45a3450123a19e1ba808f0b15481faf8097b7624d90c081f8637101c26b` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/instance-source-edition-9.md) | 258 | `declaration-track:f0fe08059dd473dd935f8b8226cbd2741063e8fdea395da8b4b0e530c5089f0d` |
| 27 | `instance` | [coreflective'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/coreflective.md) | 264 | `declaration-track:3b5d944a81be89d1cff4b6ceb3cf6de0725c6852883a41875c43ae53473e593a` |
| 28 | `def` | [ran](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/ran.md) | 279 | `declaration-track:5e31824a8dc48f004f4de8a50c87f6e9057f118b1f3152a4420ac2dea9342aaa` |
| 29 | `def` | [ranCounit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/rancounit.md) | 285 | `declaration-track:8980fef92501a525673959d4b29a1eb45117cfb95441018656b4f82ae7b1e974` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/instance-source-edition-5.md) | 289 | `declaration-track:a4ce73070c7f7d5e1680826740e9c66b9ace678de7bc1714de39f53d58dd6e6f` |
| 31 | `def` | [isPointwiseRightKanExtensionRanCounit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/ispointwiserightkanextensionrancounit.md) | 295 | `declaration-track:680d0d7615d3de0da52d848e387dece5af8560b46f12a1a281c12248a94a8858` |
| 32 | `def` | [ranObjObjIsoLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/ranobjobjisolimit.md) | 302 | `declaration-track:28dd15f42316040e4e8fbb6e097954b8c6886a0a1277b32e489c6c99f88d783f` |
| 33 | `lemma` | [ranObjObjIsoLimit_hom_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/ranobjobjisolimit-hom.md) | 308 | `result-track:d31c84d2c9eda380eb4156dd8b2897230d6caf3082d5fd4959fa959f87626b6f` |
| 34 | `lemma` | [ranObjObjIsoLimit_inv_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/ranobjobjisolimit-inv.md) | 315 | `result-track:57c923279451aa5fc966bbf99ece7c7d9a16bfd2f8385d71fb7770122a4a7ca5` |
| 35 | `def` | [ranAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/ranadjunction.md) | 325 | `declaration-track:d296024b0d9e24784b3d1b80faacf9a34346336e0f2b8c1cb9299a92df92fefb` |
| 36 | `lemma` | [ranAdjunction_counit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/ranadjunction-counit.md) | 343 | `result-track:72d854785f1cb88368ac3d51f16d485ec8422b2762deaa9461c1f8a720e2b985` |
| 37 | `lemma` | [ranAdjunction_unit_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/ranadjunction-unit-app.md) | 348 | `result-track:4351e9b85e2490188818aad4a8b3bbdc6801d149b602536e6109ba0d2bc97d6e` |
| 38 | `lemma` | [ranCounit_app_whiskerLeft_ranAdjunction_unit_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/rancounit-app-whiskerleft-ranadjunction-unit-app.md) | 354 | `result-track:952ec562692e96696f3c3ca3234e7e879edce645f2392988a689d12214a997a6` |
| 39 | `lemma` | [ranCounit_app_app_ranAdjunction_unit_app_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/rancounit-app-app-ranadjunction-unit-app-app.md) | 359 | `result-track:c2dd788377655b2d5a5acebf016e8e58be8919b74b6a8473792e59056211cccf` |
| 40 | `lemma` | [isIso_ranAdjunction_unit_app_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/isiso-ranadjunction-unit-app-iff.md) | 363 | `result-track:f25e9231fb2c610e67d1444387790fb9157c5cbac17d31a124e837be87fb95e9` |
| 41 | `def` | [ranCompLimIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/rancomplimiso.md) | 370 | `declaration-track:3053a1f8fa9e9dbdbbae1bc1d194fd1d66dcb1494751634055666d30cab9c166` |
| 42 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/instance-source-edition-7.md) | 387 | `declaration-track:cb2b9b8c44af41462068d92f373fabc8316f3ba00c69601184a06106a72bc25e` |
| 43 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/instance-source-edition-8.md) | 392 | `declaration-track:d329b250bf59d6eec64dbbcc9284d4e5a4355f9799455b452fa97d37348849b7` |
| 44 | `instance` | [reflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/reflective-source-edition-2.md) | 397 | `declaration-track:c0942285f9868831d93854f6ed9452f8f47b4214d13700f4343ff75443f5951e` |
| 45 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/instance-source-edition-2.md) | 401 | `declaration-track:5b0b2e8d44afc4a429a283fa35bd0427951a643f800a273ab1ff5370f907ecba` |
| 46 | `instance` | [reflective'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionAdjunctionNamespaced.lean/declarations/reflective.md) | 407 | `declaration-track:abb3f366070d9154115df6d1f8eb60c343e84aeda20cbb220390ae10fae034dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd8566e86e9fac8af2fa43d53571239ee2e3bb88d51da398feb40b306b069324 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantbc521a6a8828e55bb298e05cfe0ff5fd95886567bab9db60370fa973e261ac2a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantbc521a6a8828e55bb298e05cfe0ff5fd95886567bab9db60370fa973e261ac2a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
