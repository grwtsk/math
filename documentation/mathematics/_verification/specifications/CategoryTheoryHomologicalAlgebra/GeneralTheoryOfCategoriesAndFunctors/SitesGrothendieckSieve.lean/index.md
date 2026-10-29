# Verification target: Sites Grothendieck Sieve

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "590dff98c5359301585851e2d2fe7a5a073c01c4",
  "lexical_observation_count": 80,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3f94c999d357881474b7152274740a0c74fe75eac5b4f6bf922fe51bcf82d381.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `590dff98c5359301585851e2d2fe7a5a073c01c4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3f94c999d357881474b7152274740a0c74fe75eac5b4f6bf922fe51bcf82d381.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3f94c999d357881474b7152274740a0c74fe75eac5b4f6bf922fe51bcf82d381.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sieves` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullbacks` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Multiequalizer` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Preorder` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Copy` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GrothendieckTopology](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/grothendiecktopology.md) | 73 | `declaration-track:369d4895096e7b1c99cb7566efbca05b11c28b66a6e59797b7f05ab2f91bb290` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/instance-source-edition-9.md) | 91 | `declaration-track:d570b0aaa64121fba8d1cdacb71d5ecab50a33433345c33ad2dafc7ca32b753a` |
| 3 | `theorem` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/ext-source-edition-2.md) | 104 | `result-track:8425378970b1abf3052ef370e1a2e2594b036fa995b941686bff2fca7b7132ff` |
| 4 | `theorem` | [top_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/top-mem.md) | 121 | `result-track:b13e0f02749ccf0c12c25877ab43b46ec5b185f347618f87c4b75b19956b1bda` |
| 5 | `theorem` | [pullback_stable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/pullback-stable.md) | 127 | `result-track:f2da0905dee44eca4a861fdcb58c85e7aa54b8e0de6989e8e0adecfd7877f0a4` |
| 6 | `theorem` | [transitive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/transitive.md) | 131 | `result-track:0b62155a5559dc92441a111cda830e2d24b54a45328d2384706e9b04e2b11f51` |
| 7 | `theorem` | [covering_of_eq_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/covering-of-eq-top.md) | 136 | `result-track:1ad1d1c6e4aac4cf153cbec7d243fa847a6b0fbbe2a9bb545b75ea2d58c19cc9` |
| 8 | `theorem` | [superset_covering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/superset-covering.md) | 144 | `result-track:b751b3421f3d313c82a5f8e790ecff7c0ac361f8c2b8e63d5b0071ca28557be3` |
| 9 | `theorem` | [intersection_covering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/intersection-covering.md) | 157 | `result-track:d6f8afdb687adc36a02bb051550043483941763d36ac84792b637d5ae622b7a1` |
| 10 | `theorem` | [intersection_covering_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/intersection-covering-iff.md) | 165 | `result-track:4ec2f24930ef3bab7f23fa20627c6754f42e6827c9d9ab99b8d61e1c233e7db6` |
| 11 | `theorem` | [bind_covering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/bind-covering.md) | 170 | `result-track:b07c9430cb80d6a16b7b7849e1f78ae2e01f007297ce44c29c447558ada2ee13` |
| 12 | `def` | [Covers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/covers.md) | 178 | `declaration-track:221c4e82196e7cb99ebfed0446750a76e643d16911359f1ef83dddc0ef1c4387` |
| 13 | `theorem` | [covers_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/covers-iff.md) | 182 | `result-track:a967027c67d09b755ba6292e79ad52e6af63f0265776487ea7b728b418fa63a1` |
| 14 | `theorem` | [covering_iff_covers_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/covering-iff-covers-id.md) | 186 | `result-track:6a97cae821cf3c81c0b5938da5a4634cc9f594fcb0aa81f6a838a1b57febc662` |
| 15 | `theorem` | [arrow_max](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/arrow-max.md) | 190 | `result-track:01e6ed9f0aca0f61bb1992c518e2ead1adb6ca5c465098950c514724cf84e7e8` |
| 16 | `theorem` | [arrow_stable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/arrow-stable.md) | 196 | `result-track:bd891dfde26b5e84c72d8a6e12f6f337cd474eb7206d7d204713f92591c36f59` |
| 17 | `theorem` | [arrow_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/arrow-trans.md) | 205 | `result-track:248b66312d389b5ac75521dfcefce22832c5c5f88fb1b258240f3c93fdc84511` |
| 18 | `theorem` | [arrow_intersect](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/arrow-intersect.md) | 214 | `result-track:8b2a34e38065dd534f2e37875d02a1f08b4a4251f88c84f958027ad028e442bc` |
| 19 | `def` | [trivial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/trivial.md) | 226 | `declaration-track:65815ccf76228beec22dac912b5c35d4b8588a3fec8519182ed83f1dc503086b` |
| 20 | `def` | [discrete](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/discrete.md) | 241 | `declaration-track:f21d13c95c19eac8632e5884fc4239df0d68cec64b8a3df34a98653c4b9ff8f7` |
| 21 | `theorem` | [trivial_covering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/trivial-covering.md) | 251 | `result-track:a3c1194b1f897e172d6af24222f3ebb586bd691841fa6f71af03b44a7329fb65` |
| 22 | `instance` | [instLEGrothendieckTopology](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/instlegrothendiecktopology.md) | 256 | `declaration-track:776c96b69fe75592d1869cc05e7c701d573ae303cf176baa27f22caa4cad8085` |
| 23 | `theorem` | [le_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/le-def.md) | 259 | `result-track:a709e89893591afb86de11a939fde6a000021c496d6dbe94bc8ccb4cae08aebb` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/instance-source-edition-10.md) | 264 | `declaration-track:db2872a2905dea59d4b9ef51eb8dc1c92d2b33dfe034a262f0fc5e3b0df83558` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/instance-source-edition-2.md) | 271 | `declaration-track:2328236a7de63dd2d1b3489fe41510e4c328160c7a4c13733add49d7e218f4c7` |
| 26 | `theorem` | [isGLB_sInf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/isglb-sinf.md) | 286 | `result-track:86d8ea0514fe498c480179145a877b408251ebb12bdd030e33a886f18bb86a80` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/instance-source-edition-7.md) | 296 | `declaration-track:6bc6aa45706f1cdcb40aae3a953912b7bd635820c1148546734c587cf411a07a` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/instance-source-edition-3.md) | 312 | `declaration-track:26dc38cb776ddef7f491e06ef6446a38e89de377216e45f82bd2b5fae875a88f` |
| 29 | `theorem` | [trivial_eq_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/trivial-eq-bot.md) | 316 | `result-track:81410307f481fa7a67c6b91da7ab0ab5f594a7081b3433fe8420d1ccb9b9a460` |
| 30 | `theorem` | [discrete_eq_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/discrete-eq-top.md) | 321 | `result-track:0b835994865cb4ec70e90b3d5b44538e373318380fd8c436f9f9e9a971035404` |
| 31 | `theorem` | [bot_covering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/bot-covering.md) | 326 | `result-track:2f29cf6265dcfc110e2f74552098a1bcc87608b22b1ccad55cb132c8965234b1` |
| 32 | `theorem` | [top_covering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/top-covering.md) | 331 | `result-track:638ef8195f4431b956b6b05670ac6078dc292604bdbe6d52090fcb6e2213d758` |
| 33 | `theorem` | [bot_covers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/bot-covers.md) | 335 | `result-track:a1a431ec651c285f3480b54ebbb1265c0d86bfeb9438e777e2fa643dc29b3e7a` |
| 34 | `theorem` | [top_covers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/top-covers.md) | 340 | `result-track:d7ce40b7960567cac699f42ec85d81c412d6e4e9199e88eeec59454c633a7cf2` |
| 35 | `def` | [dense](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/dense.md) | 348 | `declaration-track:f78fd7fcf4d6bcf9e2ea76e7977e25141dee6c9fff453b13d6ef6541174b06bc` |
| 36 | `theorem` | [dense_covering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/dense-covering.md) | 363 | `result-track:0c0feae2653d4b9e5d59e05436cb3d9d66f0d67b9c4ef6f24d6be1a833a2cb33` |
| 37 | `def` | [RightOreCondition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/rightorecondition.md) | 372 | `declaration-track:31babe5d2e5c5ee39ba412b529e63a05ce6f33d645264fdc55b13f6618c3fa87` |
| 38 | `theorem` | [right_ore_of_pullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/right-ore-of-pullbacks.md) | 376 | `result-track:710e45bcc88d92775e7c40cdc1eaef174b069a0c654d2a5c111af661d3bc8eec` |
| 39 | `def` | [atomic](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/atomic.md) | 385 | `declaration-track:012ecf48f34a0b9bc07f5b1c15e2d01b4dd2d4979877e862f4bfe00ada63c4f6` |
| 40 | `def` | [Cover](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/cover.md) | 404 | `declaration-track:90ebcc0a5b91d9ecd91d31ed51699f49844f24bb0aae5c7eb1a6ebb25bf95196` |
| 41 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/instance-source-edition-8.md) | 409 | `declaration-track:ab3b49df9fcf2be6a2597dfa538308c303a37bf7074989822ccc813af9396a6b` |
| 42 | `def` | [sieve](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/sieve.md) | 429 | `declaration-track:997d3d27f714c6ee7f5736d61fee1e1ea8007d36f99d6d2b0c9172b6ea762ff2` |
| 43 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/instance.md) | 441 | `declaration-track:161e4004f597f5b751d8bc2e374958f5b54ccadbfd8798a43a93e958f9b78635` |
| 44 | `theorem` | [condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/condition.md) | 453 | `result-track:749840187e3fb13a66f025789e6bbe81fa267641a4118e0603af593c290a60a8` |
| 45 | `theorem` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/ext.md) | 458 | `result-track:3f0f4108b909bf07fb4da4f6a39b3775b63fefc77a4845282a8dfededff3c38f` |
| 46 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/instance-source-edition-4.md) | 462 | `declaration-track:3fc36d5ff2799368de1d68bc7439afadb26f20357025f4ce37464234919ddefd` |
| 47 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/instance-source-edition-5.md) | 467 | `declaration-track:4524ef5aa033ae24a4292ed5e402b24b8fdd47be5f16c41b1823820ccc012254` |
| 48 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/instance-source-edition-6.md) | 476 | `declaration-track:59077e51d473d73a1a6d223466f54011c9c1d572ba6a3db4ce71e799d4890953` |
| 49 | `structure` | [Arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/arrow.md) | 482 | `declaration-track:283b9971834f692a9920b665c20ca514be6ddca348d0db55bf11ae51d21906ab` |
| 50 | `structure` | [Relation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/relation.md) | 494 | `declaration-track:44566349536c7640c49f33241841b123b5dbe3152051a5a7175b1402f7cb887d` |
| 51 | `def` | [Arrow.map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/arrow-map.md) | 521 | `declaration-track:0b5ddb1e0125bae2799f34cf03957794c1cc2e33c88e0a60f8719a84dd0e7627` |
| 52 | `def` | [Relation.map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/relation-map.md) | 527 | `declaration-track:a00e1455c18641f3fb11ca704f9c76f0f9d17fc06143b3120fe681afbd8a24b7` |
| 53 | `def` | [Relation.fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/relation-fst.md) | 534 | `declaration-track:f1dc3777c6c193c2be43b5a246159b773eca8544a0d4b66db0e7f3cf4028f73a` |
| 54 | `def` | [Relation.snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/relation-snd.md) | 541 | `declaration-track:a0c8249ea8be76183ddcc5cfdd8135d9cbb710d5aabee1891e6917115b77f991` |
| 55 | `theorem` | [Relation.map_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/relation-map-fst.md) | 546 | `result-track:ebe4e90c1485193c9fdbcad98c90d3a36233eed4a5d9ba451109f6afcfe291aa` |
| 56 | `theorem` | [Relation.map_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/relation-map-snd.md) | 552 | `result-track:af035ad7fb51aca61fc8c5d1877921c1a8189e7bfbab93f5b59fffd17899d56c` |
| 57 | `def` | [pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/pullback.md) | 558 | `declaration-track:c2a370c6337e7acd4f4cb3b83320cb5633ce4529573887647030188566e30156` |
| 58 | `def` | [Arrow.base](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/arrow-base.md) | 564 | `declaration-track:cc120f68f9c0b358f433af318db28043007a172d51b36c309f6701aaa4a9b288` |
| 59 | `def` | [Relation.base](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/relation-base.md) | 570 | `declaration-track:67c48584931554d3cd1f6799a26f148049c187ebe3b3a401e5667456fd6e68a7` |
| 60 | `theorem` | [Relation.base_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/relation-base-fst.md) | 575 | `result-track:c8fb17897b08d903c5b0c3d6a20927dee508317ca9e7ea4b991d8a59cb52a101` |
| 61 | `theorem` | [Relation.base_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/relation-base-snd.md) | 581 | `result-track:617a0fed34d0eb689b378e9110e778ede7d0294cf8b3f9498f6a3f924c79a101` |
| 62 | `theorem` | [coe_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/coe-pullback.md) | 587 | `result-track:276903a67f872a58f6f3d18a3f661aba9faa8ca2458f220e83f732a184837ac1` |
| 63 | `def` | [pullbackId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/pullbackid.md) | 593 | `declaration-track:14cbbd9a70fcad0874be7a41dd0a2ea87baf193bb8c7e1564e2ab7d503ce620a` |
| 64 | `def` | [pullbackComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/pullbackcomp.md) | 598 | `declaration-track:326884ac103fe7f63993009854a455cda17352e28fd04e39a125355a3c86ba69` |
| 65 | `def` | [bind](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/bind.md) | 604 | `declaration-track:4962ac0119f9613cf87c8e27da7a97b8102a8ed1a18b431bae50a6ce17c3a017` |
| 66 | `def` | [bindToBase](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/bindtobase.md) | 610 | `declaration-track:ae54803e69a3cb4657946775b7d00ee91d61c75a84486c2eb6ce68ff67163310` |
| 67 | `def` | [Arrow.middle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/arrow-middle.md) | 620 | `declaration-track:4bbe02b3222c19d324c9aed06405eaed10bd477403c6d959c405ddb40ecde484` |
| 68 | `def` | [Arrow.toMiddleHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/arrow-tomiddlehom.md) | 627 | `declaration-track:4d60c0dcb01affc408162f0e8a2635726211c784a5395b8a85fd0f9b83ffa336` |
| 69 | `def` | [Arrow.fromMiddleHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/arrow-frommiddlehom.md) | 634 | `declaration-track:38a98edb033e8af9cb239f74ccfb55d1f0de38a606c9f196ae5cb3ea3b5197e8` |
| 70 | `theorem` | [Arrow.from_middle_condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/arrow-from-middle-condition.md) | 639 | `result-track:cc8e26badeceb4843788eeafa8682563320a1f2baf4d2e588f3ea0b0f4adfeda` |
| 71 | `def` | [Arrow.fromMiddle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/arrow-frommiddle.md) | 646 | `declaration-track:fb2922c8b595cc094d632ba0f56333fd238e18ec257160654a1af63ba8474789` |
| 72 | `theorem` | [Arrow.to_middle_condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/arrow-to-middle-condition.md) | 651 | `result-track:4c3430ad6a4e45aeaa3060632c608a57b1c0b7bc90280b56228c0f2eb9d1f504` |
| 73 | `def` | [Arrow.toMiddle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/arrow-tomiddle.md) | 658 | `declaration-track:e5f73955a747ff6e58248a9c22e25d6fd9e85a3f076cabb07ce61f0161f1a0b2` |
| 74 | `theorem` | [Arrow.middle_spec](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/arrow-middle-spec.md) | 663 | `result-track:5118878ea7bb536632c80acb496f209c1b458cc7a03782807e1473e8a9b6bd6e` |
| 75 | `def` | [index](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/index.md) | 671 | `declaration-track:3bfb154483bda610ec2366d7603f986cb1481bb47e07bac89669fe7d40a7fff8` |
| 76 | `abbrev` | [multifork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/multifork.md) | 688 | `declaration-track:2fd65b96b6ed522c69fee247858807bdf92982465cc8ce403188cf70990d47c5` |
| 77 | `abbrev` | [toMultiequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/tomultiequalizer.md) | 700 | `declaration-track:06f2b2103f26855b9d351ab2d44c0e99f1df47533f2b38913ceb13c88e857660` |
| 78 | `def` | [pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/pullback-source-edition-2.md) | 714 | `declaration-track:e61078e5d7ed2cbdc3cbfcd553dd5c8749d59fcefc3eb9b4d423939184e05115` |
| 79 | `def` | [pullbackId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/pullbackid-source-edition-2.md) | 721 | `declaration-track:e83a247875fcd616fd691360f721ff4f7c124b6b3daeffe91f22c93fa6ffc7dc` |
| 80 | `def` | [pullbackComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckSieve.lean/declarations/pullbackcomp-source-edition-2.md) | 727 | `declaration-track:a2026342475ba51466efc06185cfcd184c5d26b6732d0b217ed685fe1c244fd9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1449066066149da6dab3cc76da800d0445ece456c738f1bdf6dfe7bc6c70dd12 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3f94c999d357881474b7152274740a0c74fe75eac5b4f6bf922fe51bcf82d381.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3f94c999d357881474b7152274740a0c74fe75eac5b4f6bf922fe51bcf82d381.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
