# Verification target: Fold Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5b72cd0d074434aa3902b7b4e084fc2a6924473",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Fold/Variant6e0d2c17f114aef085af5357a438cb7f44bc8b51d4ef141685cfb87edcf5ab12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5b72cd0d074434aa3902b7b4e084fc2a6924473`.

Source path: `GRWTSK/Algebra/GroupTheory/Fold/Variant6e0d2c17f114aef085af5357a438cb7f44bc8b51d4ef141685cfb87edcf5ab12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Fold/Variant6e0d2c17f114aef085af5357a438cb7f44bc8b51d4ef141685cfb87edcf5ab12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Opposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.FreeMonoid.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Instances` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Endomorphism` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Types` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.KleisliCat` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Foldl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldl.md) | 114 | `declaration-track:28eec9fe8333895f64f142a5089c9fa277ecb74cbab50aa9c646ede3cb66a1e5` |
| 2 | `def` | [Foldl.mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldl-mk.md) | 117 | `declaration-track:03c94cf0107115ba4884b023e1e3a3b2a7d1c7cf33bf049c126ad1de440f1c36` |
| 3 | `def` | [Foldl.get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldl-get.md) | 120 | `declaration-track:06bf2ad0105df0f4e815605ecaa10dcb4d04e36800437969c9390eeaf972ec95` |
| 4 | `def` | [Foldl.ofFreeMonoid](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldl-offreemonoid.md) | 124 | `declaration-track:e05443475f58f84a5656593409e6542719a95e6afbaf77dee64e94f54034ee9d` |
| 5 | `abbrev` | [Foldr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldr-source-edition-2.md) | 132 | `declaration-track:e2469064065ed43398be672a665da7457782527db4e12f7a02f02f0294591806` |
| 6 | `def` | [Foldr.mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldr-mk.md) | 135 | `declaration-track:493cb094a8fc1b1a92865d75f7c3df1c2c188d994187eb09393192fe255a2722` |
| 7 | `def` | [Foldr.get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldr-get.md) | 138 | `declaration-track:45bbd4fd32d6fd929ea41210c06fd6bf1eeb71f935921557a92fb27b50575094` |
| 8 | `def` | [Foldr.ofFreeMonoid](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldr-offreemonoid.md) | 142 | `declaration-track:932dce07e3eeff52b00b4032528c30e406e0c397aee15329c0bf584fd475e06a` |
| 9 | `abbrev` | [foldlM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldlm-source-edition-2.md) | 147 | `declaration-track:eebea72bae5ebc93753911a8e5ad1cd12d723e13a5e70ac313e10cc5d6d6f051` |
| 10 | `def` | [foldlM.mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldlm-mk.md) | 150 | `declaration-track:520773c08ab966c39fcd670191e91e6aee1763842a6a244540fda56fc305c770` |
| 11 | `def` | [foldlM.get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldlm-get.md) | 153 | `declaration-track:9cb368e188379e124eb0f02fc1073273c92b104acac1575e797a17063507278c` |
| 12 | `def` | [foldlM.ofFreeMonoid](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldlm-offreemonoid.md) | 157 | `declaration-track:22b0649c68dd2dc992fdfbcef6aa3d880bffdb6c109d660d7fabad1956d40a26` |
| 13 | `abbrev` | [foldrM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldrm.md) | 162 | `declaration-track:6980777101fba278989d627226413964c3b8d72ec8800ab8f4496a90e87a81a4` |
| 14 | `def` | [foldrM.mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldrm-mk.md) | 165 | `declaration-track:51346b388241ff50941eeebb70e01bb1e144aed77ac15eccb2f4f283f1574656` |
| 15 | `def` | [foldrM.get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldrm-get.md) | 168 | `declaration-track:da32eb19c469931c92e63fc6da4f56fd8af763da5b061f8f9abe34772384f148` |
| 16 | `def` | [foldrM.ofFreeMonoid](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldrm-offreemonoid.md) | 172 | `declaration-track:f86e48e1b03c3c636ff50cd8a641efd16cf5a88844748ff942de352d24fa237e` |
| 17 | `def` | [foldMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldmap.md) | 187 | `declaration-track:58e8577652428db7c0c70eb5f8a68f10932caef760943a5159e82955816bdec9` |
| 18 | `def` | [foldl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldl-source-edition-2.md) | 190 | `declaration-track:d08d8da8a036432f2ebf52234256147f2c80e573ae710254c808305e9d1029b2` |
| 19 | `def` | [foldr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldr.md) | 193 | `declaration-track:c1a95d81614147887687a32fdb79037a7170be98fbac3c7fa6dc0c0403eb07ff` |
| 20 | `def` | [toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/tolist.md) | 212 | `declaration-track:429d446b72d2e5d2bc2651ef38ec524ca5c56223ddf00c25a41acf1348c34a0e` |
| 21 | `def` | [length](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/length.md) | 215 | `declaration-track:3b7bb1bc82e61ce8ebf929dd4df422ed921cfc970b6acc7eea4c06b015a59b36` |
| 22 | `def` | [foldlm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldlm.md) | 220 | `declaration-track:9b3a7559e092bcc266aac38df0b67c06800d7aefb66568e7f6e36ee3345b9404` |
| 23 | `def` | [foldrm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldrm-source-edition-2.md) | 223 | `declaration-track:706307d8dddf4f6dbfe8347063ee5d7ffce190f84cf963d1a52a015dd170cffa` |
| 24 | `def` | [mapFold](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/mapfold.md) | 234 | `declaration-track:3ae3ec3af386c90136da5933c892225cd307f95ae66728e60613fcdc059ec3ca` |
| 25 | `theorem` | [Free.map_eq_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/free-map-eq-map.md) | 239 | `result-track:a3bf5b390ef89851192d2019b9a2b278aeff75900de534651e1ac213e2a35d8e` |
| 26 | `theorem` | [foldl.unop_ofFreeMonoid](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldl-unop-offreemonoid.md) | 243 | `result-track:9e30e6257aaefeaa69de5451984489723a7b3842f3284f23508ac6ffc34b9007` |
| 27 | `theorem` | [foldMap_hom](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldmap-hom.md) | 251 | `result-track:f1b7fd5919fddc7987039d8247e5cdc21c0eb4112579b725e72edc85eb85fdfb` |
| 28 | `theorem` | [foldMap_hom_free](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldmap-hom-free.md) | 259 | `result-track:c33e75518711b95ec5ed4d4b592cdd20562c9b951d87489caf7d9cd025c64b40` |
| 29 | `theorem` | [foldl.ofFreeMonoid_comp_of](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldl-offreemonoid-comp-of.md) | 275 | `result-track:66ba5b9c2f215baf8a61ce73c52ea074d13bb89fe0edb16e8f419278f7e924a8` |
| 30 | `theorem` | [foldr.ofFreeMonoid_comp_of](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldr-offreemonoid-comp-of.md) | 280 | `result-track:0f4bfaae53cab1f317b1e59af1e53f000c19900006c50fb34c206d5af974f7d1` |
| 31 | `theorem` | [foldlm.ofFreeMonoid_comp_of](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldlm-offreemonoid-comp-of.md) | 285 | `result-track:a0f47775ee068c9a5ff334243ad3e9871cb09760f34f2ffb670ee24c7bc0a950` |
| 32 | `theorem` | [foldrm.ofFreeMonoid_comp_of](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldrm-offreemonoid-comp-of.md) | 294 | `result-track:f41d831a4b79fd9df207eed431cad0aa2463b281d2e600cc1ce1585b9d6b7e7b` |
| 33 | `theorem` | [toList_spec](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/tolist-spec.md) | 299 | `result-track:551485b1a6b7f865b1e9b76112f43e358c18d4e5b8aada3a239867116e6ceca6` |
| 34 | `theorem` | [foldMap_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldmap-map.md) | 313 | `result-track:b2452ff95f17dd57417ec90e5e74b6b6e75468cdd4eb7067179356c3e602d09b` |
| 35 | `theorem` | [foldl_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldl-tolist.md) | 317 | `result-track:507949fd61a057dbb7d1a69d7cedb7a40a73c2ddd001dafdee4ef75344ed11ec` |
| 36 | `theorem` | [foldr_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldr-tolist.md) | 323 | `result-track:5a168c165787315e45f542bf0abbfd7a8952c4b87e9879a739f7a34092d2e275` |
| 37 | `theorem` | [toList_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/tolist-map.md) | 329 | `result-track:2341db0605ae467b295d3d90d5044a841be681e0ecdbbdb9b0315a00dc9fb7c5` |
| 38 | `theorem` | [foldl_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldl-map.md) | 334 | `result-track:e329d2c37d85001bd860d91acf99ee5eb551d83f3c924c66ca988b56fbe4ccff` |
| 39 | `theorem` | [foldr_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldr-map.md) | 339 | `result-track:19a17658170ca89fe3cfff13e4bf3e0c18cd0a1ebe5396cab56b83186d1b56b9` |
| 40 | `theorem` | [toList_eq_self](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/tolist-eq-self.md) | 344 | `result-track:4abf514cb53082856f84153eca5e04eb150b52a1ad62159fbe07e9cde186a954` |
| 41 | `theorem` | [length_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/length-tolist.md) | 350 | `result-track:4eac59f4fdb2fce61b162dbf81884144353ea09b2f38eb29ce3f596956cbde0d` |
| 42 | `theorem` | [foldlm_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldlm-tolist.md) | 362 | `result-track:ed85967bd6bcd96bf13a278d420c4b210495478369b69be412f3070f58aeda50` |
| 43 | `theorem` | [foldrm_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldrm-tolist.md) | 370 | `result-track:a0bbaecda2fa0ef2f0d3583d9980bcbc5340e0d70841a7b67a6be5f9e4432dc5` |
| 44 | `theorem` | [foldlm_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldlm-map.md) | 377 | `result-track:798710601ab8e8fa395a8ac995ca3a1a9e6f27e7b5e2e55ef30e1ebe3f6a06f7` |
| 45 | `theorem` | [foldrm_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldNamespaced.lean/declarations/foldrm-map.md) | 382 | `result-track:d45468426b5271a2f137b1a3dadc100902018baea8021b33f4486bf738e7b97c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5928dcf6f89f2ab88d372ddc6641974ab304b22e0bd74ed7801106aaf3c3ec6f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Fold/Variant6e0d2c17f114aef085af5357a438cb7f44bc8b51d4ef141685cfb87edcf5ab12.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Fold/Variant6e0d2c17f114aef085af5357a438cb7f44bc8b51d4ef141685cfb87edcf5ab12.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
