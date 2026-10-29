# Verification target: Fold Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a916a61746f3da9de1080d0a7793523e3f297c03",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Fold/Variantdc966f67bb1eaeb8a6cac33134b5daeb1ec422dc63c91b3492ef8e066c372fb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a916a61746f3da9de1080d0a7793523e3f297c03`.

Source path: `GRWTSK/Algebra/GroupTheory/Fold/Variantdc966f67bb1eaeb8a6cac33134b5daeb1ec422dc63c91b3492ef8e066c372fb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Fold/Variantdc966f67bb1eaeb8a6cac33134b5daeb1ec422dc63c91b3492ef8e066c372fb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Opposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.FreeMonoid.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Instances` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Endomorphism` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Types` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.KleisliCat` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Foldl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldl-source-edition-2.md) | 110 | `declaration-track:d02e64fa6d2c1234c62371a76702f351fe686d22c6503dfb558176d8647deca0` |
| 2 | `def` | [Foldl.mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldl-mk.md) | 114 | `declaration-track:e19d4605de95f06279f3d1d69f2fc135bf5d3b4471cc61eb307aa4c2a789c0e1` |
| 3 | `def` | [Foldl.get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldl-get.md) | 118 | `declaration-track:71d17332dbad172f54aea511a2df5703be712639d6a02b7c686c91fe2c3fe8c8` |
| 4 | `def` | [Foldl.ofFreeMonoid](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldl-offreemonoid.md) | 123 | `declaration-track:f779a2ab7ff2cefa1f9084d7ce4893a168ae189c83a3b3e435b3dfe3e84c4847` |
| 5 | `def` | [Foldr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldr.md) | 132 | `declaration-track:cbdb85208898941a41a74748b59a30b3bc32b10ac102660f607d1b2539b1b77f` |
| 6 | `def` | [Foldr.mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldr-mk.md) | 136 | `declaration-track:1fb544743dd47b641c8519aef397c3128bb25233058d122bd7482a58ffeda6b2` |
| 7 | `def` | [Foldr.get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldr-get.md) | 140 | `declaration-track:d5baffa2b20054d07a2f73ca4fb3e9aba39b82d7e30d9513affcedfc687a9602` |
| 8 | `def` | [Foldr.ofFreeMonoid](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldr-offreemonoid.md) | 145 | `declaration-track:8c6bc383ec47632c03dfa717a5bd36d2e3c8f32b1dba4e5051471490a484427b` |
| 9 | `def` | [foldlM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldlm.md) | 153 | `declaration-track:0f14616c498d6843ed13a9e5c87df04a136e94ac9b4a18699c6210eff9a7f88c` |
| 10 | `def` | [foldlM.mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldlm-mk.md) | 157 | `declaration-track:5129802140533034398d436128ccadf57f7c193f75a5290c59cc39e2f63bfc13` |
| 11 | `def` | [foldlM.get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldlm-get.md) | 161 | `declaration-track:143a50003914fb56e4ee7f6fd6ef19a67f8169a5db32500e66b4edfbc38eb0d3` |
| 12 | `def` | [foldlM.ofFreeMonoid](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldlm-offreemonoid.md) | 166 | `declaration-track:87954bc5357cbc4144fb0470f3f65d1f034448a71ce4cbe9589feeb5cc312620` |
| 13 | `def` | [foldrM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldrm.md) | 174 | `declaration-track:c6e87da6fe75a94d0b5dd547c497677556343925ef20f0c3f8d4882533d5a840` |
| 14 | `def` | [foldrM.mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldrm-mk.md) | 178 | `declaration-track:575318b7b892c3ff60789f5bd30cb3bae31c65a12d5bb8c8f0e5bc374837e99c` |
| 15 | `def` | [foldrM.get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldrm-get.md) | 182 | `declaration-track:27100c77e388556051a420f5e365374b74b7f4be16315cfce468ae2a1e4f17aa` |
| 16 | `def` | [foldrM.ofFreeMonoid](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldrm-offreemonoid.md) | 187 | `declaration-track:94eca2a66d13104c8f7b7457b5bcb04db1c18de0e7706fc9dda5cabc26910324` |
| 17 | `def` | [foldMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldmap.md) | 204 | `declaration-track:87cc4fb824ff2b5d425b89501bc923d5037219559d77805ace783eec41a3f7d3` |
| 18 | `def` | [foldl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldl.md) | 208 | `declaration-track:0b7202c57df0790eeb3a9e515534ac4be2e9b18ba0ad41002a589a72a4e3447c` |
| 19 | `def` | [foldr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldr-source-edition-2.md) | 212 | `declaration-track:f5bf0d47e62d0aa853973e85eea6e66c1c4c7f627bf5f90cfaf6106e136beee5` |
| 20 | `def` | [toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/tolist.md) | 232 | `declaration-track:8921ec09d6142a150ce303e17c0738a60ba32dabbed9e873c95c46bbda4fad7e` |
| 21 | `def` | [length](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/length.md) | 236 | `declaration-track:fc8f93a1c2fa6ebfc2b084b07c565d62eb39d97d9fe58c34d605eae8860985f4` |
| 22 | `def` | [foldlm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldlm-source-edition-2.md) | 242 | `declaration-track:c710d5decf5b88c415ea862b8a0bba10fe72e8d3bde9919fb489f620222ad528` |
| 23 | `def` | [foldrm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldrm-source-edition-2.md) | 246 | `declaration-track:db1fba986c43107203050899efcbdde2794121939f3c609e3834d6c2a59656dd` |
| 24 | `def` | [mapFold](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/mapfold.md) | 258 | `declaration-track:cdc1c1cce8e23044c15b43e456f66f7d2d14ded729bcf1903084973091c851ff` |
| 25 | `theorem` | [Free.map_eq_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/free-map-eq-map.md) | 265 | `result-track:990f8a556941b449a4aa2629ce2af1f6d63ba47487ae8497262d55e6cc4c068f` |
| 26 | `theorem` | [foldl.unop_ofFreeMonoid](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldl-unop-offreemonoid.md) | 270 | `result-track:34cf97f8df4be26f0b04df5a8512f783f95cc6f5543d50d2d2a7bce1e5fe99fc` |
| 27 | `theorem` | [foldMap_hom](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldmap-hom.md) | 281 | `result-track:5480768c7b1e25b416512a4f9ea0e6b32242630e52ee3484dd594099e7b9632e` |
| 28 | `theorem` | [foldMap_hom_free](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldmap-hom-free.md) | 290 | `result-track:6f1d6adedab3fb446b9895eba07dff2269f260ac33255fb97212ea588fc96df7` |
| 29 | `theorem` | [foldl.ofFreeMonoid_comp_of](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldl-offreemonoid-comp-of.md) | 308 | `result-track:a796f74932694cdbf9dc3bb6c150afdd41f985ab8658cac1fccc43ca31f0b48e` |
| 30 | `theorem` | [foldr.ofFreeMonoid_comp_of](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldr-offreemonoid-comp-of.md) | 314 | `result-track:695dd8b713933862bd0d6406782c6cfbcca772dcfbdc8824e5e171668af037a4` |
| 31 | `theorem` | [foldlm.ofFreeMonoid_comp_of](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldlm-offreemonoid-comp-of.md) | 320 | `result-track:f4cf8267883762cf5f947b86a293e332b292979c4bb05837fed50f3a68f0cfab` |
| 32 | `theorem` | [foldrm.ofFreeMonoid_comp_of](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldrm-offreemonoid-comp-of.md) | 327 | `result-track:56ef858fb2ce4b9824369d5289077ceb4ee7df99a51ec0b3537ca552c4e571a6` |
| 33 | `theorem` | [toList_spec](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/tolist-spec.md) | 333 | `result-track:7821dfc1b52e3a035aad7bdf41df94d3771c33fc86e4eba25e7af4a651a0dea0` |
| 34 | `theorem` | [foldMap_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldmap-map.md) | 349 | `result-track:a7b63e910cff92774e4217786ef0c06724486b07a19b7baa22a95f7dd131b9fa` |
| 35 | `theorem` | [foldl_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldl-tolist.md) | 353 | `result-track:6a3c0c4e233dfe04a296814335423a4fa2495c01e723b647e5b4c4503954eb02` |
| 36 | `theorem` | [foldr_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldr-tolist.md) | 360 | `result-track:59410b49041617b4295f831efec79050fdedffd677934964d93c6ed87e84d85d` |
| 37 | `theorem` | [toList_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/tolist-map.md) | 367 | `result-track:f04ee6be11ba6eb9beabb3e78a211b1671e4257bcdea3ab8723d789136bc6799` |
| 38 | `theorem` | [foldl_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldl-map.md) | 373 | `result-track:eb58a0d69852fd10d53a795354ecdf82e8cfb9a99d84d7a19638edb6203f7a02` |
| 39 | `theorem` | [foldr_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldr-map.md) | 379 | `result-track:0694722d0b690fcdd46eb1811d5cd268ab02ae4aba7c67ddfd6781c76cd82f42` |
| 40 | `theorem` | [toList_eq_self](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/tolist-eq-self.md) | 384 | `result-track:f023791e9a65a8389b0caf11a335daf95ec97166a1124a6d2c7ed5d5e9205c8d` |
| 41 | `theorem` | [length_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/length-tolist.md) | 391 | `result-track:3d9ad0ca2e26ecfab57500aca88b2b4bd73125acb533c6f692d0ab955ab0ea10` |
| 42 | `theorem` | [foldlm_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldlm-tolist.md) | 404 | `result-track:74c8ef38d6365ddee1bfac935e9ff6ccf8dcc165a2d56656f6222fc8c3903145` |
| 43 | `theorem` | [foldrm_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldrm-tolist.md) | 413 | `result-track:36dae212833b7ef0a95990d1da3ce09fa5c92d835bcf2a356ac8e2f3a9e3bbcb` |
| 44 | `theorem` | [foldlm_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldlm-map.md) | 421 | `result-track:8191b3cde2029029f31d0bcdbfbeebc32604d3cdf193f5683fe6d3413404345a` |
| 45 | `theorem` | [foldrm_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldAligned.lean/declarations/foldrm-map.md) | 427 | `result-track:7232323a42353e8e69409bd506d55bd6a3ce9f89dd0e66359ed9c382d7d7f178` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48fa497a59d8b98a889ee8ef12e029e1fc9a2160bd7c8b50071ba29dc73e86d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Fold/Variantdc966f67bb1eaeb8a6cac33134b5daeb1ec422dc63c91b3492ef8e066c372fb8.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Fold/Variantdc966f67bb1eaeb8a6cac33134b5daeb1ec422dc63c91b3492ef8e066c372fb8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
