# Verification target: Fold

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4faa7832c440e5f00061fe869f8a933d64bffc79",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Fold/Variant191b4233504e24e02783b80525cf007a7a8837d221872c07a40394d6a4b1923c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4faa7832c440e5f00061fe869f8a933d64bffc79`.

Source path: `GRWTSK/Algebra/GroupTheory/Fold/Variant191b4233504e24e02783b80525cf007a7a8837d221872c07a40394d6a4b1923c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Fold/Variant191b4233504e24e02783b80525cf007a7a8837d221872c07a40394d6a4b1923c.lean.json)

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
- `Mathlib.Tactic.AdaptationNote` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Foldl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldl-source-edition-2.md) | 106 | `declaration-track:d29f23a64a855c76f36c7e05bccf227e2565cdca8afbd950945b0819c5e5bdb3` |
| 2 | `def` | [Foldl.mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldl-mk.md) | 109 | `declaration-track:96063614c7e8b75f36957e038584fac57fec70baca9f671980329d3a4a51734b` |
| 3 | `def` | [Foldl.get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldl-get.md) | 112 | `declaration-track:662cbb02e1fea9a6b1a1249f8f0c56417525ceabdaad4fec66aa96b1bb83c772` |
| 4 | `def` | [Foldl.ofFreeMonoid](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldl-offreemonoid.md) | 116 | `declaration-track:ba90f6602dcc5316a0afa4fc2efafb6e14454cfe55751fefcd50af2531f3f182` |
| 5 | `abbrev` | [Foldr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldr.md) | 124 | `declaration-track:365dd4d253fce6233095094f657bd21304406b91a369b707a2282f3621de69e7` |
| 6 | `def` | [Foldr.mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldr-mk.md) | 127 | `declaration-track:fea2d8d46dbd41ac56bff6fea683e383d7c664363ef0403f7a6478ca1bebd5c0` |
| 7 | `def` | [Foldr.get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldr-get.md) | 130 | `declaration-track:b6248d12888e65424a21938b0b09fe9d591f90abd299dcf5a528749cf3ddf10f` |
| 8 | `def` | [Foldr.ofFreeMonoid](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldr-offreemonoid.md) | 134 | `declaration-track:432252f4ef5359f98261053f334ad0307aec9a12269d03593d17b18c60d44be5` |
| 9 | `abbrev` | [foldlM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldlm.md) | 139 | `declaration-track:34fa1d435e0bcd2c1ed1633e175e0d3621273daede391d50ca4d08c4690bb9cc` |
| 10 | `def` | [foldlM.mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldlm-mk.md) | 142 | `declaration-track:48b9ff3fbd6d993f869b403d6c4963c703946840f39d26527ddc6a913d254cae` |
| 11 | `def` | [foldlM.get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldlm-get.md) | 145 | `declaration-track:7cfe492b7fd05f705dd451f152dc46a6729229a371f5c62a9526b52450cb6973` |
| 12 | `def` | [foldlM.ofFreeMonoid](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldlm-offreemonoid.md) | 149 | `declaration-track:08b7d1675fe3b78cc3c5f429980fdda2beebaded4d7c946166fd66683405bed8` |
| 13 | `abbrev` | [foldrM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldrm-source-edition-2.md) | 154 | `declaration-track:b8484863549cd8a9b7123671b5b5090abd0a63c25bd9bd225313ee85e7401312` |
| 14 | `def` | [foldrM.mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldrm-mk.md) | 157 | `declaration-track:3ed6b8352e087cdb7e6b888be99eb0ecc60467a3418b91d296fb7166e0ecf985` |
| 15 | `def` | [foldrM.get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldrm-get.md) | 160 | `declaration-track:c95364474d7c2fc1e86740c07439378ca352b07fa948b0ad131550a9c1069f05` |
| 16 | `def` | [foldrM.ofFreeMonoid](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldrm-offreemonoid.md) | 164 | `declaration-track:583d4d9b55a16537daaaf8798da1cda313277c741f0fb0d31281b601d1f8f606` |
| 17 | `def` | [foldMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldmap.md) | 179 | `declaration-track:a71f9b21d57edc48bdc976b6c197ca5e90fa46f04eb00d63f85c900e94600636` |
| 18 | `def` | [foldl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldl.md) | 182 | `declaration-track:0ba88f1793aa6e8f055a4f7eec010c350f0f7f6ef32718e6bb0eb7cc7ddd6ca2` |
| 19 | `def` | [foldr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldr-source-edition-2.md) | 185 | `declaration-track:9042fc2199aff55045bfd939aea6cd655b8dee0b367ca0a55f35f70fc347c9c1` |
| 20 | `def` | [toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/tolist.md) | 204 | `declaration-track:6d90381a332371aed15a4967b3304acd086db59ca41b5523e930908fc92636d4` |
| 21 | `def` | [length](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/length.md) | 207 | `declaration-track:7f7855a5a07f834eb2c12dad3211e33356a5a4f1a011b3c91c58682efc1b909f` |
| 22 | `def` | [foldlm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldlm-source-edition-2.md) | 212 | `declaration-track:ae23c56efde3d6d24a2bbcb92593a5fda58264549e7b69af00439177e2d4106e` |
| 23 | `def` | [foldrm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldrm.md) | 215 | `declaration-track:198017f6d2867f8291917f1f0a2d654e4f1a6e51fd94415440c608f46a9fbcc6` |
| 24 | `def` | [mapFold](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/mapfold.md) | 226 | `declaration-track:39966e2f864b6f09151140a7e521d709d43663872b9d8e3d704992124210424e` |
| 25 | `theorem` | [Free.map_eq_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/free-map-eq-map.md) | 231 | `result-track:8477df89029dc7993468ab5d4eafb63b87da24f3cb8ef676885c83c85c8b1c74` |
| 26 | `theorem` | [foldl.unop_ofFreeMonoid](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldl-unop-offreemonoid.md) | 235 | `result-track:6c72a32c0f086ac062d28d670d416e26f058e1d22f570c65fd486b69fe738117` |
| 27 | `theorem` | [foldMap_hom](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldmap-hom.md) | 243 | `result-track:acf0c3e30daa44de3568f1da46362dd27be8929872337afe953f6612bbea4c11` |
| 28 | `theorem` | [foldMap_hom_free](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldmap-hom-free.md) | 251 | `result-track:c712fd890bc7e6d80d743c6b3f124267b02292d383d87ed84e4be58408136a66` |
| 29 | `theorem` | [foldl.ofFreeMonoid_comp_of](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldl-offreemonoid-comp-of.md) | 267 | `result-track:e4040f894abcb9fc32469015bd9980432214a113d45bd3d11cccd8d97e3f615e` |
| 30 | `theorem` | [foldr.ofFreeMonoid_comp_of](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldr-offreemonoid-comp-of.md) | 272 | `result-track:e9f9e313368735f1dcd46da518935541d1d562b77414a1733744072d5a501b04` |
| 31 | `theorem` | [foldlm.ofFreeMonoid_comp_of](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldlm-offreemonoid-comp-of.md) | 277 | `result-track:95f9e1d1286038923c28c85db7d8830a1c6a6e96ae0a0b027751842489be0a6b` |
| 32 | `theorem` | [foldrm.ofFreeMonoid_comp_of](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldrm-offreemonoid-comp-of.md) | 286 | `result-track:1112841f501b709caadcd8f58686b4aabcec2302643754d4627044dddc1ac68c` |
| 33 | `theorem` | [toList_spec](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/tolist-spec.md) | 291 | `result-track:a9841487cf50209ac067efe2ec8d18142e0ae0fa474d0e60430d31716c3d3124` |
| 34 | `theorem` | [foldMap_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldmap-map.md) | 305 | `result-track:6c543378b1f9545b1e735a6e7309e941f520b0fc906aa0c6dfada3d21d55e23f` |
| 35 | `theorem` | [foldl_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldl-tolist.md) | 309 | `result-track:2fd7251aa485a3b9ad0a8f5e3662fca3e6e1eebf48e0f53daf71e379c5263b27` |
| 36 | `theorem` | [foldr_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldr-tolist.md) | 315 | `result-track:126b16d8b7a0748cd78a5037e45cd580e11c14885b39991164d55bbc2989d7e4` |
| 37 | `theorem` | [toList_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/tolist-map.md) | 321 | `result-track:495334c342c3a52451c569812fe80b782bb0c08660da3ea92845a7ebd7c2f719` |
| 38 | `theorem` | [foldl_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldl-map.md) | 326 | `result-track:fbbdb200a62d68da82fa1f7a197859cd0d74478325483cf2f26f0764de9af154` |
| 39 | `theorem` | [foldr_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldr-map.md) | 331 | `result-track:d2bdd5fc48620331f4e9bee748598e095a1fc6e27f333a22b740b7830a71f26f` |
| 40 | `theorem` | [toList_eq_self](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/tolist-eq-self.md) | 336 | `result-track:dfab116bcbcee326fbe7cd1c2758f68b3b85776c2a67179aa33906a55d93c324` |
| 41 | `theorem` | [length_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/length-tolist.md) | 342 | `result-track:5623aa514ff5ab95eceff8b0860742feabd3dc45c2743db587e473df8025130a` |
| 42 | `theorem` | [foldlm_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldlm-tolist.md) | 354 | `result-track:bc3abc34d3dd901675633c5013ab0c707e150ca58b5b31da9a6f52a7c0d21f02` |
| 43 | `theorem` | [foldrm_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldrm-tolist.md) | 362 | `result-track:2a5f76cbc2df453141faf81f2b664df68bcf5f6a2d0062129cacbc03d5b935dc` |
| 44 | `theorem` | [foldlm_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldlm-map.md) | 369 | `result-track:eb1665014826a507a8ead23ee1c0237abee2c0dc6710e57f92c1e453a13eae69` |
| 45 | `theorem` | [foldrm_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Fold.lean/declarations/foldrm-map.md) | 374 | `result-track:9ff795c6b2483816aee31a296e50fd5d64826bb3f2c9c8f0b640cae7cac4f48d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4928cd5bc6df04fa0bfe4c0b354f38459b492ac4d3c50b659c4774264c4c723e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Fold/Variant191b4233504e24e02783b80525cf007a7a8837d221872c07a40394d6a4b1923c.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Fold/Variant191b4233504e24e02783b80525cf007a7a8837d221872c07a40394d6a4b1923c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
