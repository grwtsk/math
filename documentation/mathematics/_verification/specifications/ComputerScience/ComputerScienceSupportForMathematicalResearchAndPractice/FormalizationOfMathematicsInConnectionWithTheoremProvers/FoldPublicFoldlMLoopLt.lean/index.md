# Verification target: Fold Public Foldl MLoop Lt

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dd631473c41be1663c2a732ea31a1354934ade7",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dd631473c41be1663c2a732ea31a1354934ade7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Fin.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.
- `Init.TacticsExtra` — import line 13; external provider; requires a separately pinned dependency.
- `Init.WFTactics` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Hints` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [foldl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldl.md) | 27 | `declaration-track:fc80a6e5f9556281a1bb970e8d7e4158745bb4620b632cd125e9333daedf7b67` |
| 2 | `def` | [foldr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldr.md) | 40 | `declaration-track:3cd442dafa4e66a3d1f426e4b616d9fc8d042ff7361bfcb27abe4a758965fded` |
| 3 | `def` | [foldlM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldlm.md) | 60 | `declaration-track:c29aa3c434b8caad4d99f2233af6fbe25555f76b6497bb56ace99935e066c111` |
| 4 | `def` | [foldrM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldrm.md) | 89 | `declaration-track:a64aa0e13e24df31772d06cde5ef58e81129a68a18a01e321d7b43ec4790d1e1` |
| 5 | `theorem` | [foldlM_congr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldlm-congr.md) | 108 | `result-track:db272cf1c43d2c70feb6f0778d46a85ecc4f91bd6b587fdfb26ff813d9621360` |
| 6 | `theorem` | [foldlM_loop_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldlm-loop-lt.md) | 113 | `result-track:5e522bd018ee066fe7fa7968ad39ba302103776bf815d2b16f1fe5e5c82c0bc1` |
| 7 | `theorem` | [foldlM_loop_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldlm-loop-eq.md) | 117 | `result-track:8c49d52f1002120b9f15117afc7fc9a246a2369b68a2afb4948eff88f17ac9c2` |
| 8 | `theorem` | [foldlM_loop](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldlm-loop.md) | 120 | `result-track:0e3fc7b40a7d268eef295dbbfd12d1cf36484b183eb392b35f00411278ddbf54` |
| 9 | `theorem` | [foldlM_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldlm-zero.md) | 133 | `result-track:9afe5b45c04bace1b0c6870e6aa3de650aa442faf8d279bdebf76a4f1c19efbe` |
| 10 | `theorem` | [foldlM_succ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldlm-succ.md) | 137 | `result-track:8eab01ca5785347fa68768a888d79e7603357434e934c910b81f33e2b83ffab0` |
| 11 | `theorem` | [foldlM_succ_last](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldlm-succ-last.md) | 143 | `result-track:399c1e91dc86313949c361f79ba6ea05998520cc4ace5e4a5f86458ac58d21c1` |
| 12 | `theorem` | [foldlM_add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldlm-add.md) | 158 | `result-track:053c098dc04cbf086e36b9cbae5273591309453a821efd8cdfd46ffa171b4120` |
| 13 | `theorem` | [foldrM_congr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldrm-congr.md) | 171 | `result-track:37bffbba17848a9fa5af46b706bfdd6ff57bfb067bed4d8037bf252900ebc0ec` |
| 14 | `theorem` | [foldrM_loop_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldrm-loop-zero.md) | 176 | `result-track:5feaecf3661c4ad568da04c6eae906c2fdd24f5c1222f94566e5206653030413` |
| 15 | `theorem` | [foldrM_loop_succ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldrm-loop-succ.md) | 180 | `result-track:06dc3320127d6fd4839b437472477fecad8be4e85ac17a38cf4098172b1d96a1` |
| 16 | `theorem` | [foldrM_loop](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldrm-loop.md) | 184 | `result-track:642331aef0777a34566c005d2547f3e192b48c6692325380170980f168d17f13` |
| 17 | `theorem` | [foldrM_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldrm-zero.md) | 198 | `result-track:3497d32f6760a46a08e1846f21458481072a8689607bd1efd263f93aa65c30c7` |
| 18 | `theorem` | [foldrM_succ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldrm-succ.md) | 202 | `result-track:15f9ba2d34c3f965689c11dfc038133f7b77094ec6c837a689f5d716caeb75c0` |
| 19 | `theorem` | [foldrM_succ_last](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldrm-succ-last.md) | 207 | `result-track:3f0c23dfa9eb0229ea6cb46dc999c73ce99625abb55f92b9dcceeb7a550d69a4` |
| 20 | `theorem` | [foldrM_add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldrm-add.md) | 217 | `result-track:05c862b10441b96c34642d573fabf8b5378dc2b14fe8248f4d363c08a31a0f1b` |
| 21 | `theorem` | [foldl_congr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldl-congr.md) | 229 | `result-track:92f68d7b8ff8419a416e3d04df0944561b27a36bf4ae94c0b78663b7c36b3488` |
| 22 | `theorem` | [foldl_loop_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldl-loop-lt.md) | 234 | `result-track:22ff0ee3ce1b779603428d0aa8d0756a5c9325baa8d7f3c27d482ef181ec708b` |
| 23 | `theorem` | [foldl_loop_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldl-loop-eq.md) | 238 | `result-track:ac93e9f0f6a1d628afc4807b5de1e3ac1e85fe448b9bcf94180f34a5ec319694` |
| 24 | `theorem` | [foldl_loop](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldl-loop.md) | 241 | `result-track:fe88bb6d9201a7fd0686a98f9eb71aa5e1d6fd740117497a9471d1368ad7eca7` |
| 25 | `theorem` | [foldl_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldl-zero.md) | 251 | `result-track:054f060cbd6ce9d8ecde41e4b532a6158f184f2ebdc2abb57d4b0db75d12c6c3` |
| 26 | `theorem` | [foldl_succ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldl-succ.md) | 254 | `result-track:df6851babd1db26552000d2d055cb164b894188a5c03a770511a0e6609a6a093` |
| 27 | `theorem` | [foldl_succ_last](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldl-succ-last.md) | 258 | `result-track:16d5eca0b946500756745c2f506b1ed2969d3fd63a97bd233c4ecb9411ec0fc8` |
| 28 | `theorem` | [foldl_add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldl-add.md) | 265 | `result-track:831a0a29657a2da471e1de32a85c90a0aee956c0afebce0c6a71bc8a815626f8` |
| 29 | `theorem` | [foldl_eq_foldlM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldl-eq-foldlm.md) | 273 | `result-track:bc8968dcb7f898664125b185808f5c25dfe53bfc4972caba20a781bd916b09df` |
| 30 | `theorem` | [foldlM_pure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldlm-pure.md) | 278 | `result-track:4fb8d4f6650c8fbe59d8cc8c2ab0212a656f440e5769941f74538f137673eeb7` |
| 31 | `theorem` | [foldr_congr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldr-congr.md) | 286 | `result-track:5cbc563e997a3088c07e7ea7acf83705b27f002facd21b49fa4543b79074a2de` |
| 32 | `theorem` | [foldr_loop_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldr-loop-zero.md) | 291 | `result-track:b0dcdef737e499e98efd5b5b4f873ae406a9fd64c6bcbb6f577ce2037929763b` |
| 33 | `theorem` | [foldr_loop_succ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldr-loop-succ.md) | 295 | `result-track:2de1f2dca1e1ae999eb7599c7807151dae58c647cea39d8db062a18f57e4c64c` |
| 34 | `theorem` | [foldr_loop](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldr-loop.md) | 299 | `result-track:e9248b36dbc40f28bd713b4a6c8feee1248036af065035aff1dddbd96e7b8425` |
| 35 | `theorem` | [foldr_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldr-zero.md) | 306 | `result-track:43f28d050801c268095b7ff7a73448524d070d9c5ac946d68003997708d6792c` |
| 36 | `theorem` | [foldr_succ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldr-succ.md) | 309 | `result-track:d16fb3b3bb88219e97b5bb3f51e17c0b9b2a7c96e10958db1a082d1dab26508b` |
| 37 | `theorem` | [foldr_succ_last](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldr-succ-last.md) | 312 | `result-track:239eeb7ff507d17153a6a78c2194146b302748dd344c4fc3ca1e53415a400471` |
| 38 | `theorem` | [foldr_add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldr-add.md) | 318 | `result-track:3e8a9e298301e88b912fbef062ed04e021bbaccba98320810d2b4e8f7b801823` |
| 39 | `theorem` | [foldr_eq_foldrM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldr-eq-foldrm.md) | 326 | `result-track:875d1e9db18150535da38dcc738a0ec37e48a9e6a701cf7acaf4e82c6c03aaa3` |
| 40 | `theorem` | [foldl_rev](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldl-rev.md) | 330 | `result-track:7d78daad4ce7aafbfb05a0998c95fc833d3901da036427e6d08ccbd492643288` |
| 41 | `theorem` | [foldr_rev](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldr-rev.md) | 336 | `result-track:20f71b0e80181d5d78f3598c9534a8346300acb810dc9b70423c6db4545e48c7` |
| 42 | `theorem` | [foldrM_pure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldPublicFoldlMLoopLt.lean/declarations/foldrm-pure.md) | 343 | `result-track:6ebd7a9f03c90030b92600bd782d161702d2076b0e1858a5f5704da082ddeb37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36816605da327234d93d1f74a0bae2441032256b30f397e03a64b95f9db9f31d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant01ffba5b2eff553776ddb78c7f91e357e98d9f2cd88f256a34511400199fff88.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
