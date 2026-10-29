# Verification target: Assoc List

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0ba063e01f7c8381dce5158c1d5c06367609641",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant3c52fd9afc3c9b7a863af1c2faa19395b7795f90e46d7cd94df387f3fda354d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0ba063e01f7c8381dce5158c1d5c06367609641`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant3c52fd9afc3c9b7a863af1c2faa19395b7795f90e46d7cd94df387f3fda354d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant3c52fd9afc3c9b7a863af1c2faa19395b7795f90e46d7cd94df387f3fda354d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.List.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AssocList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/assoclist.md) | 16 | `declaration-track:d85e00c9fd442a9e748708d1831ddf02eb5bc0870c10f9611553d75afcf000da` |
| 2 | `def` | [toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/tolist.md) | 30 | `declaration-track:41c18663838a5e4889700e244274c83806c76786d229b9ac7f5d0c9b62a0024b` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/instance.md) | 34 | `declaration-track:577901e6828683cfc688f5dc6dd3751fab7b1dc14ec4edb1ee939835e494fdd6` |
| 4 | `theorem` | [empty_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/empty-eq.md) | 36 | `result-track:1a13538d660e0d49f729029db604cfeb46e8a35ba8bdcc1c3269acd505a125f0` |
| 5 | `def` | [isEmpty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/isempty.md) | 39 | `declaration-track:3094cb16590bb6583aa49e78af7d35b1990feb27a91991263f4d28f00b44e739` |
| 6 | `theorem` | [isEmpty_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/isempty-eq.md) | 43 | `result-track:70562919a23754f3b263fa190e2f77ad056acbb21694004c807c0efb55fc8354` |
| 7 | `def` | [foldlM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/foldlm.md) | 47 | `declaration-track:59b4f9faea0bf39206a2376c8257a5a4b737c6df3c7a03e0fe822824d2a37362` |
| 8 | `theorem` | [foldlM_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/foldlm-eq.md) | 51 | `result-track:58d9591df76f39a44e3b8fcbb51bed29f25400778dc4c37f13e0a8b24333299b` |
| 9 | `def` | [foldl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/foldl.md) | 56 | `declaration-track:976c684729313195566d02291df475c42b9c87a329fddf6e96197b12f65ebbf4` |
| 10 | `theorem` | [foldl_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/foldl-eq.md) | 59 | `result-track:14841c6ad6ce1f234fa18f02da2d4060b18c088b9d09ddcb3be25c6567e3757f` |
| 11 | `def` | [toListTR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/tolisttr.md) | 64 | `declaration-track:a0cece50b6ce92e0c892fbdb43a3c38868ad2207b04ba34a18e88e0f3e6f008c` |
| 12 | `theorem` | [toList_eq_toListTR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/tolist-eq-tolisttr.md) | 67 | `result-track:1e84521e1857d4808403e9a3e2498f00aa0bb9320c71c7aa12c04a7017c2b1e1` |
| 13 | `def` | [forM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/form.md) | 72 | `declaration-track:7de672eb6db0fd04fc10f00daa5f69744cb2da230349876d5ecf030506c17198` |
| 14 | `theorem` | [forM_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/form-eq.md) | 76 | `result-track:2ce05128036bc53ca3cd9b2c246cc262e2bf4f3b4210240f82e5308ffd9312c9` |
| 15 | `def` | [mapKey](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/mapkey.md) | 81 | `declaration-track:322301839eaeb90d92d9fb32f7df93886b038044da811a4b08f9270a467558bf` |
| 16 | `theorem` | [mapKey_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/mapkey-tolist.md) | 85 | `result-track:8ab9b74640ef102de7d77ee6c4cbe11e533d41b9557aec87f4ffc5f17d122f2d` |
| 17 | `def` | [mapVal](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/mapval.md) | 90 | `declaration-track:880534210f2db8132201406a1d57b2d4786bd03b4022b67503bd24c0a51098aa` |
| 18 | `theorem` | [mapVal_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/mapval-tolist.md) | 94 | `result-track:1e515d0697d3acf7ead30b527cb74932bf410a1a2e2c186967f529e1b978129e` |
| 19 | `def` | [findEntryP?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/findentryp.md) | 99 | `declaration-track:eb540915cf6a6ff802aefc84b1b8277a2e7954a276592831ec19d9a61f35c194` |
| 20 | `theorem` | [findEntryP?_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/findentryp-eq.md) | 103 | `result-track:054a0b254d5082bb3ac44d8af55c573e45d2482a194772295cba1b60993fc7e9` |
| 21 | `def` | [findEntry?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/findentry.md) | 108 | `declaration-track:1b7544b3809660b68ec2a3e0018ba2813d3af9410d4712d475109a0f0eb5cad5` |
| 22 | `theorem` | [findEntry?_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/findentry-eq.md) | 111 | `result-track:5abdabf076351c3386582bbec8ddb17df3fadbf21c0f4d2e1e5540fafecc542a` |
| 23 | `def` | [find?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/find.md) | 115 | `declaration-track:a9cca627d9fcdfddacb77a2a314ae8e2706155b6c797b941035cb3a37c3ec974` |
| 24 | `theorem` | [find?_eq_findEntry?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/find-eq-findentry.md) | 121 | `result-track:4e6117868f1478f6ebf3eede7b33d36d6ef2fdee066609f6cb21d550261c8ca3` |
| 25 | `theorem` | [find?_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/find-eq.md) | 125 | `result-track:75c6d6e382a5d2f6f6b213978021a5f9370fc36fb6c58afb4a2247ab059ef560` |
| 26 | `def` | [any](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/any.md) | 129 | `declaration-track:6db0f71680f979b9dcac7bd30aaf356209cf00faa00e6fe38a0f599335b65157` |
| 27 | `theorem` | [any_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/any-eq.md) | 133 | `result-track:0fcada420252a432b2a93958d87059a2ee84a7352e892c4fa080559544012f90` |
| 28 | `def` | [all](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/all-source-edition-2.md) | 137 | `declaration-track:90210e19f3641c883eeb7851ba04670fad7ac0cab51cec4bb524fa628b9fadf1` |
| 29 | `theorem` | [all_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/all-eq.md) | 141 | `result-track:554a09292d08379f369b7407d251440a883c5430ca4e9545299099953e914d84` |
| 30 | `def` | [All](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/all.md) | 145 | `declaration-track:3af5e6cba5b47852a14395ee17183f7ed7e9a5f994658490b5c5b0e07748059d` |
| 31 | `def` | [contains](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/contains.md) | 148 | `declaration-track:493ad55ab2fa8aa066377b8a8771094fb89118ce95e80f51a86d1c1937ff0802` |
| 32 | `theorem` | [contains_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/contains-eq.md) | 150 | `result-track:9228f529468f6c17ff42d4fe7539a63669a2b4d468e5ff3523b0387364435f9c` |
| 33 | `def` | [replace](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/replace.md) | 158 | `declaration-track:97e54077956375464851cc44ed599f7d35166605e9786a8cb1124ed9546253be` |
| 34 | `theorem` | [replace_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/replace-tolist.md) | 164 | `result-track:3b004814383815bf19c21c28c48644acb40d31500daffc870c029c33b36fbe19` |
| 35 | `def` | [eraseP](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/erasep.md) | 170 | `declaration-track:f9666c7b2531d82ce51b01a25d39662bc161a905df4b13972270436bd4eb0576` |
| 36 | `theorem` | [eraseP_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/erasep-tolist.md) | 174 | `result-track:17f264c623e544c6be0ff281594cd3ef0b72b0acfdfbc60803c73985e88323b9` |
| 37 | `def` | [erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/erase.md) | 179 | `declaration-track:015053e3d90b1953ea580c4ce7224d3b4de8f1eddb2f4676b5543e020d903856` |
| 38 | `theorem` | [erase_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/erase-tolist.md) | 182 | `result-track:4b7ec9263a45efeece4e436e4cb87954b5a8fc683b28c9de4792dc854f48377e` |
| 39 | `def` | [modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/modify.md) | 189 | `declaration-track:b60ee40774d0b417c38e3f1e98706c051cad75408bb470a39112a8bb66315e4a` |
| 40 | `theorem` | [modify_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/modify-tolist.md) | 195 | `result-track:3bdb7a1085c1eb5da33d55b69d14010c727f8bf763929e6cf00d10aa4792c154` |
| 41 | `def` | [forIn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/forin.md) | 203 | `declaration-track:f9d0072bb5d52d17c92b8f654783f2c4abb2ca63bcbda8b9d7308c8df1a25456` |
| 42 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/instance-source-edition-4.md) | 212 | `declaration-track:ef33a97bd15cd7d6838bcbc9b69a4a028ad58fd2bedf7d2de055cd74eedc7b57` |
| 43 | `theorem` | [forIn_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/forin-eq.md) | 215 | `result-track:1b3f75462b2371736ad3781a2c432f0e2739378e1c6c163107e5f3deb8f9cb41` |
| 44 | `def` | [pop?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/pop.md) | 222 | `declaration-track:bfbd79e1a9aa36dce8ab0c4bb37c80a34657e2c8be59a3f701e0255596f40cc0` |
| 45 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/instance-source-edition-3.md) | 226 | `declaration-track:69742d75c75cca3a6d7af5fd14e5ff3e3f8a7b98848225a47c572a7fffb4ca28` |
| 46 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/instance-source-edition-2.md) | 227 | `declaration-track:5f0fe3a2a5d1a7533cf26d26a917a29c403efb21db69d672181a25f4a4baecec` |
| 47 | `def` | [_root_.List.toAssocList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/root-list-toassoclist.md) | 230 | `declaration-track:0af4d809f4db8cf873dbdb93d5207959dc7e87d2498350d58d7d960559fcdf17` |
| 48 | `theorem` | [_root_.List.toAssocList_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/root-list-toassoclist-tolist.md) | 234 | `result-track:13d1e4b5d67ef1b9aa2286892f8e6847cc42695705487cad0dfa2e48836a2894` |
| 49 | `theorem` | [toList_toAssocList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocList.lean/declarations/tolist-toassoclist.md) | 237 | `result-track:aabe0eaabb9c5b398f33c3879675f464a89eab39b06d633c22dd2e38fe017696` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9492ae403a563cb291078b6a06f3f6c4456ea414d3a5db855ee82e662182139 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant3c52fd9afc3c9b7a863af1c2faa19395b7795f90e46d7cd94df387f3fda354d2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant3c52fd9afc3c9b7a863af1c2faa19395b7795f90e46d7cd94df387f3fda354d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
