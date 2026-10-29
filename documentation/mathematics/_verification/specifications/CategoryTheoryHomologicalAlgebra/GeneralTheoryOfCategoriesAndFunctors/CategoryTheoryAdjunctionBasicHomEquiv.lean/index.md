# Verification target: Category Theory Adjunction Basic Hom Equiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b3f3722f61de6ccdddab966badc9b281b61639d",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57a8c0fa143e006317e63e113e10f8d436e0e9c7347b08efd7fc9d339274e051.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b3f3722f61de6ccdddab966badc9b281b61639d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57a8c0fa143e006317e63e113e10f8d436e0e9c7347b08efd7fc9d339274e051.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57a8c0fa143e006317e63e113e10f8d436e0e9c7347b08efd7fc9d339274e051.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Equivalence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Yoneda` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Adjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/adjunction-source-edition-2.md) | 99 | `declaration-track:fb691c7c5869c5c3c684a99200ae333d0d52770dcbccfc1661f2d536ed66f6e8` |
| 2 | `class` | [IsLeftAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/isleftadjoint-source-edition-2.md) | 117 | `declaration-track:b434b37225467c7fa9bd83bf2ec8c4f01e3b5964d44451cc588a8d92a69b7fef` |
| 3 | `class` | [IsRightAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/isrightadjoint-source-edition-2.md) | 121 | `declaration-track:f0fcc512d7db25073e13f32175102250c61aeec0adadf673cd315adace41f89a` |
| 4 | `def` | [leftAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/leftadjoint.md) | 125 | `declaration-track:08713b71eaf7c21856ddfc8b7ff98f95877262020d48844874918f57291de094` |
| 5 | `def` | [rightAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/rightadjoint.md) | 129 | `declaration-track:f91b7df9d6a6dc0cce32fbfb5527ddeee041bc6f201ebcbcd49ed3c50c86a9e6` |
| 6 | `def` | [Adjunction.ofIsLeftAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/adjunction-ofisleftadjoint.md) | 135 | `declaration-track:9004192b882bc3f076e52a3201b5e697b9576fcc1d7f8cbc5aacba8b48837bb7` |
| 7 | `def` | [Adjunction.ofIsRightAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/adjunction-ofisrightadjoint.md) | 140 | `declaration-track:dc23e130f317fc46cdcfc663fa1a96387ff74b9862ce087cf1271e2c699555e0` |
| 8 | `def` | [homEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/homequiv.md) | 150 | `declaration-track:c7175faf5cc292d055853c6e8db8e2a530c3ce99954bc747cf40e3bddec3a016` |
| 9 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/ext.md) | 178 | `result-track:b1bc6964496da4b0d8940db6d9fa1aa614f9cd5588d764f9f7429f62e9f8b141` |
| 10 | `lemma` | [isLeftAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/isleftadjoint.md) | 190 | `result-track:76d39c6213eac967d0965601907160226338d1ae51afe6998b9d887f6769b6d8` |
| 11 | `lemma` | [isRightAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/isrightadjoint.md) | 192 | `result-track:40836aff38b68be6141209e334d8955d89dd16ca0f745ebc4854adcc24b0f0d9` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/instance-source-edition-4.md) | 194 | `declaration-track:a54fd95e978aa1ada80c2042459202c24e70b3de7bc66419f58af0a00bfa228e` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/instance-source-edition-3.md) | 197 | `declaration-track:8ba234e63f1865a6284b1ab4efabd4ed7dab8a25b340aee1b99e6fbbef62f2e9` |
| 14 | `theorem` | [homEquiv_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/homequiv-id.md) | 202 | `result-track:b862fbb0db012d7b85460bdef268ff1e2b4deff061929c3d2da1645d54343195` |
| 15 | `theorem` | [homEquiv_symm_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/homequiv-symm-id.md) | 204 | `result-track:2b9c6e7716bb59e1242a83232d33f06a8735ad342f0e07b43e9e4137901da1c8` |
| 16 | `theorem` | [homEquiv_naturality_left_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/homequiv-naturality-left-symm.md) | 206 | `result-track:adbac8ef99255c838b9750917b3d8178dc54fc0de8422fa7b0da67dd74f8a90e` |
| 17 | `theorem` | [homEquiv_naturality_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/homequiv-naturality-left.md) | 210 | `result-track:10475a1f7e994602481e68d2e8a86029ea38ec58208184993d17cf6870716fd6` |
| 18 | `theorem` | [homEquiv_naturality_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/homequiv-naturality-right.md) | 215 | `result-track:7c69f57b1a61c0423283640eaf0a01d5e787fe6072e4a8dd32dabfbd8b18d9bc` |
| 19 | `theorem` | [homEquiv_naturality_right_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/homequiv-naturality-right-symm-source-edition-2.md) | 219 | `result-track:89a602c90177aeeb6041280a9847f000a4019aa6808500ff8f6f571d07c65de5` |
| 20 | `theorem` | [homEquiv_naturality_left_square](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/homequiv-naturality-left-square.md) | 225 | `result-track:1f04493d5eca2936ce77c18497ebe4df1383ac3b8e5cd7c67a7adfb1aa6498eb` |
| 21 | `theorem` | [homEquiv_naturality_right_square](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/homequiv-naturality-right-square.md) | 231 | `result-track:a733ba099d1f52448ba4cd4fd0bdedb6b2e15ae80bc207084536e46cafa8fd5c` |
| 22 | `theorem` | [homEquiv_naturality_left_square_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/homequiv-naturality-left-square-iff.md) | 236 | `result-track:97dbe5697d100f5ec749a6161a9a3ee1015db335db210f1c68de9f1b9fee965a` |
| 23 | `theorem` | [homEquiv_naturality_right_square_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/homequiv-naturality-right-square-iff.md) | 244 | `result-track:4b92e2f320bdfdc5070b6b1c830c655c148d12a9df54a5bd9081269ae0fde043` |
| 24 | `theorem` | [left_triangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/left-triangle.md) | 253 | `result-track:00a00b307fcb431e3ebe797e4de9562fa2e02558bf90775b06a7c8abdad39b4a` |
| 25 | `theorem` | [right_triangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/right-triangle.md) | 257 | `result-track:d322e04509c91b8778d4d2a611cdcb31391aa3dc9b4789d4bcd844381bf55318` |
| 26 | `theorem` | [counit_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/counit-naturality.md) | 261 | `result-track:f30975ad1f435e071ec8775243329fade0a0619e12dff8ff8fcd45ca388daada` |
| 27 | `theorem` | [unit_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/unit-naturality.md) | 266 | `result-track:de4f79e7df7c61f14d7c451df5e7ebded7617f04ee38e95288945899c7191271` |
| 28 | `lemma` | [unit_comp_map_eq_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/unit-comp-map-eq-iff.md) | 270 | `result-track:16bb2cafb3389d918d7360ddc8bbd45e0f748294b74b5e8eb5af82c6cdc320d7` |
| 29 | `lemma` | [eq_unit_comp_map_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/eq-unit-comp-map-iff.md) | 274 | `result-track:2019acb50efa7b5535bc04ab2d358ab27545d880a265b789b3835eef21e47119` |
| 30 | `theorem` | [homEquiv_apply_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/homequiv-apply-eq.md) | 278 | `result-track:49dc0dd82ecec5c61f6bf780071b2df70971ceceeb4d87001831b75d1b2ee993` |
| 31 | `theorem` | [eq_homEquiv_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/eq-homequiv-apply.md) | 282 | `result-track:307b3c4d47611220dd56f8922fad81c9d492a197e95d81133b325bc425ab57f0` |
| 32 | `def` | [corepresentableBy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/corepresentableby.md) | 288 | `declaration-track:c5084a0aa56e2cce1703a43d5c71f746cb8ed7c8dcb6aa203889683351c2b4e0` |
| 33 | `def` | [representableBy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/representableby.md) | 295 | `declaration-track:ea1a5bee2ea6157cdc3bd10dcceddca7510bf6a609201dae6452f16860ccc9dc` |
| 34 | `structure` | [CoreHomEquivUnitCounit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/corehomequivunitcounit.md) | 310 | `declaration-track:16d0a904d9f19483804ad981ced36cc86c71f02584b636e2df385977ba9e6d7d` |
| 35 | `structure` | [CoreHomEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/corehomequiv.md) | 326 | `declaration-track:98912f37b8b9e86e1a5aee3ad44a806402c60a6f3dc1ad29735f4f9eddac4fe3` |
| 36 | `theorem` | [homEquiv_naturality_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/homequiv-naturality-left-source-edition-2.md) | 346 | `result-track:f81353af4fb2718d4d9622780e42be8efaf8dbc526a076ac2acdcbeb5d703584` |
| 37 | `theorem` | [homEquiv_naturality_right_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/homequiv-naturality-right-symm.md) | 350 | `result-track:0214558461a604f72f2c5d3837a29128c8186cc68d852c348bdb9b346eae56f3` |
| 38 | `structure` | [CoreUnitCounit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/coreunitcounit.md) | 360 | `declaration-track:69a1f66295a7071ddc0b40b43c5b0dc8cb51c50ff96f312d0e2ed6c7864847d8` |
| 39 | `def` | [mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/mk.md) | 394 | `declaration-track:c55075473e61e015ebd4290f030cb627334ac113330cbfa1a1f997184356bf03` |
| 40 | `lemma` | [mk'_homEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/mk-homequiv.md) | 404 | `result-track:ce7eb80069eb02aef7c8d48ec2dc65071d22a7a34bf2e8869922eaa52000323d` |
| 41 | `def` | [mkOfHomEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/mkofhomequiv.md) | 411 | `declaration-track:f25c9ab5b4ed499949c0b69382ab01f44aba63c10ba9bfe41e91edfc970e28b2` |
| 42 | `lemma` | [mkOfHomEquiv_homEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/mkofhomequiv-homequiv.md) | 428 | `result-track:dc64ffe15a1cfa385b6d0b435b12595ed7458b5e9bccb7b632fcba7c766d55e6` |
| 43 | `def` | [mkOfUnitCounit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/mkofunitcounit.md) | 436 | `declaration-track:da0c799831491785d124b4855c8477a7e2d57fa2d2c1fc9515342cacce04df22` |
| 44 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/id.md) | 449 | `declaration-track:b89e58d0b4aba27be785a882858ad2a77fd2f35d34f17c2d07211069744fe6c1` |
| 45 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/instance-source-edition-5.md) | 454 | `declaration-track:f78a0c39db9d5c6a205824325d25d9102fe119149fdcdea2030bc483a4c44af6` |
| 46 | `def` | [equivHomsetLeftOfNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/equivhomsetleftofnatiso.md) | 459 | `declaration-track:ab5671bff908ede661f06eebd480eed9fc8882591def54d5e612ea9305e0c541` |
| 47 | `def` | [equivHomsetRightOfNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/equivhomsetrightofnatiso.md) | 468 | `declaration-track:8142866033d7b62d76f3a7e1676de416c4f2b511ef95da78568d80f301ef28d5` |
| 48 | `def` | [ofNatIsoLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/ofnatisoleft.md) | 476 | `declaration-track:63bb55f4f3f225419f1d1f5c0b5f344dd4cacb2e32b803e35c95563f5192d832` |
| 49 | `def` | [ofNatIsoRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/ofnatisoright.md) | 481 | `declaration-track:ffb13febc29aa7eaef4b1ba3795afae24f56f5a06881b492525ca011237d5390` |
| 50 | `def` | [compYonedaIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/compyonedaiso.md) | 488 | `declaration-track:875cda43e53d7f3dbd767ae3030bd94e314ac737881940951dd9b12ef81c825a` |
| 51 | `def` | [compCoyonedaIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/compcoyonedaiso.md) | 496 | `declaration-track:888f6a1a73b9a6e6a7d958b9074924245df585d445afdae98967bcd5097395bb` |
| 52 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/comp.md) | 508 | `declaration-track:7bd9653d3f000dd2cc41a92600310850306ccffa3b2327b140e00e3c54ecd510` |
| 53 | `lemma` | [comp_unit_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/comp-unit-app.md) | 517 | `result-track:ca7c136a2f74048b9cfc248313b45c6423626013d8560c567bc4bd0115edd1e0` |
| 54 | `lemma` | [comp_counit_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/comp-counit-app.md) | 522 | `result-track:e229bba8774e9e8c4ea7586fa754ccee960eeb6d6dd5ab89b6c3ff496082a9ef` |
| 55 | `lemma` | [comp_homEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/comp-homequiv.md) | 526 | `result-track:0575034517358f3cae9b9e8cc3e13d6d1b36a02f4b82e5d147a07d93e8563adc` |
| 56 | `def` | [leftAdjointOfEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/leftadjointofequiv.md) | 547 | `declaration-track:f6a7329296136764f690bd643b0d79586eff530f95eef043021e31d773c3a394` |
| 57 | `def` | [adjunctionOfEquivLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/adjunctionofequivleft.md) | 562 | `declaration-track:27c6115569db3fb1a422744e117537e76ab5476ec13abd7540fbe3eca9f21961` |
| 58 | `theorem` | [he''](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/he.md) | 579 | `result-track:d2ed13b6462c422f2273bafb9acf31bb0114ab9968b680da76226367661142fc` |
| 59 | `def` | [rightAdjointOfEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/rightadjointofequiv.md) | 588 | `declaration-track:14b84c42e08021f4b412fe616d8f6ced629c4387225606505faa208beddb53ff` |
| 60 | `def` | [adjunctionOfEquivRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/adjunctionofequivright.md) | 601 | `declaration-track:07b1e3c0b34b5518c12226a4b627cb42c36c0a0727cc1fe2a83f7ee133c63a2c` |
| 61 | `def` | [toEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/toequivalence.md) | 618 | `declaration-track:80fc3f9f582c5e831d4fbd446a6d8bc4b5945a9140a425a6eee678ab7d84f40b` |
| 62 | `lemma` | [Functor.isEquivalence_of_isRightAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/functor-isequivalence-of-isrightadjoint.md) | 633 | `result-track:f735b681fe51c20a11748a6f981e0132c1a89fb5e651c5ee3a52256f0821a779` |
| 63 | `def` | [toAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/toadjunction.md) | 645 | `declaration-track:dbb85c70538ad2144197453205f23ff0fa575d0dc7ff503c6c8078d4a1324a5f` |
| 64 | `lemma` | [isLeftAdjoint_functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/isleftadjoint-functor.md) | 649 | `result-track:b94b2c9b0a4411597ffd101a2d82c57be5727fce27f9828e4bc44ec7f773b9a1` |
| 65 | `lemma` | [isRightAdjoint_inverse](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/isrightadjoint-inverse.md) | 652 | `result-track:5b92f552348dbf41ee76b84d4c9ac1b8f686ee23d395645693701fa8d517f881` |
| 66 | `lemma` | [isLeftAdjoint_inverse](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/isleftadjoint-inverse.md) | 655 | `result-track:8ff5084f5ab00728b64f069b1f86fcd93015992d6ca392655ae4f3a8fd3d0e7d` |
| 67 | `lemma` | [isRightAdjoint_functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/isrightadjoint-functor.md) | 658 | `result-track:92eca20661e89077265472a800d2d07d6009760b60746acc73951f8d38937a7e` |
| 68 | `lemma` | [refl_toAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/refl-toadjunction.md) | 661 | `result-track:e3378ea1a55be5476839b4b7c7e4e7caa175709c234949ce31f03be62702ce34` |
| 69 | `lemma` | [trans_toAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/trans-toadjunction.md) | 663 | `result-track:d011ddbe5719da9e5478f35d9f5fea46c482e47fa25367a1c90b2b4e1e4fb716` |
| 70 | `instance` | [isLeftAdjoint_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/isleftadjoint-comp.md) | 671 | `declaration-track:c0944625318322a138ef5d023826eefadc8f555124478b8ecf77b78ff78da759` |
| 71 | `instance` | [isRightAdjoint_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/isrightadjoint-comp.md) | 677 | `declaration-track:4ed865523872564bc25f640b77efd6bf84a2bcd00f92d5d04e1dea75002da91d` |
| 72 | `lemma` | [isRightAdjoint_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/isrightadjoint-of-iso.md) | 683 | `result-track:2a3f514374f7dc57417fa0faf2ddc218baf2e17556a506d2cbf0e62639fe9277` |
| 73 | `lemma` | [isLeftAdjoint_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/isleftadjoint-of-iso.md) | 688 | `result-track:3b1ea6756d0560271bc37a9ae4bf5b322399292dd5e8d349d10780f599575424` |
| 74 | `def` | [adjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/adjunction.md) | 694 | `declaration-track:db0cb35e0c3af564ac92debe7532acd3779592a8d8d11c8edcd610424280f167` |
| 75 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/instance.md) | 698 | `declaration-track:2c1b9204ea1fbd2f5d22ba056cd37f41353d911af98005d3c2a70a576e3617bf` |
| 76 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryAdjunctionBasicHomEquiv.lean/declarations/instance-source-edition-2.md) | 703 | `declaration-track:44ad98ed0711db3fc283078a2ffca9a576925e7989baba91756e88ac9191cd2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36eb92330d52da647b0743903f52481c16d4fb02a4d980ca851885d51e9b3502 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57a8c0fa143e006317e63e113e10f8d436e0e9c7347b08efd7fc9d339274e051.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57a8c0fa143e006317e63e113e10f8d436e0e9c7347b08efd7fc9d339274e051.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
