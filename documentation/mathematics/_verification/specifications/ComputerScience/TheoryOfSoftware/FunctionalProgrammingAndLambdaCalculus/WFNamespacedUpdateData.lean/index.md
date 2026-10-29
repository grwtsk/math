# Verification target: WFNamespaced Update Data

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e1c3254ae1c099f827e12ce39547d083521336c",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variante94bf3eb3378518a3d9228902172903f566d6702ef107aae9b45f78ef288097b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e1c3254ae1c099f827e12ce39547d083521336c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variante94bf3eb3378518a3d9228902172903f566d6702ef107aae9b45f78ef288097b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variante94bf3eb3378518a3d9228902172903f566d6702ef107aae9b45f78ef288097b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.HashMap.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Data.List.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Data.Array.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Tactic.ShowTerm` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/ext.md) | 26 | `result-track:62e8607cce94fe081dc7ae007ce373d52465c78eb91389835448cf76642f773c` |
| 2 | `theorem` | [update_data](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/update-data.md) | 29 | `result-track:e041ba3e0a7660e0c60f47cc6e2f3e3e91062d45e37b6ca0c8c5cd4f71ef93e9` |
| 3 | `theorem` | [exists_of_update](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/exists-of-update.md) | 32 | `result-track:b4956e42e05a349fbbc2ac52a6b5ed2c4b668f52eb71c2795b0ba634c3f3c348` |
| 4 | `theorem` | [update_update](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/update-update.md) | 37 | `result-track:67987b840a936746671929eb8f255a00dfc00573c71ab5ae73143728d05a4fec` |
| 5 | `theorem` | [size_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/size-eq.md) | 41 | `result-track:ccceb3455ab77ef90745c04afc23d615957731b160ab3a9264466cf641a14834` |
| 6 | `theorem` | [mk_size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/mk-size.md) | 44 | `result-track:4f9c8f9e713612f59bacf360aa44280b807989e06d0f30adad66d236196670be` |
| 7 | `theorem` | [WF.mk'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/wf-mk.md) | 48 | `result-track:85331d38f0e908e8b8a5469a63533369777701d796667e3d38d6437ee8bb28d5` |
| 8 | `theorem` | [WF.update](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/wf-update.md) | 54 | `result-track:e21e7dce6a2f95d4ef7c6459228976705a6f3fa2d2c7c031d0f3180403a5dfc0` |
| 9 | `theorem` | [reinsertAux_size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/reinsertaux-size.md) | 72 | `result-track:0e2d48ddccb013ebf77dd16b4f53ad1d385807d6533a417af973e7e906fa5ecf` |
| 10 | `theorem` | [reinsertAux_WF](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/reinsertaux-wf.md) | 78 | `result-track:00c37d2a82962127bc51fa43d092726267889238f7dd76c97265d00addb23dfa` |
| 11 | `theorem` | [expand_size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/expand-size.md) | 87 | `result-track:b5d7d32272d96a7cd73d2e55e15390037388f18391123f63dfd87b1b58059109` |
| 12 | `theorem` | [expand_WF.foldl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/expand-wf-foldl.md) | 121 | `result-track:7f06e7032ababff02f9ac5159f715c47a65d71beb910f119bacaac06dc968ffe` |
| 13 | `theorem` | [expand_WF](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/expand-wf.md) | 151 | `result-track:04298bf5fc2062ff70109206be496c76ae4121cc8c212add69484e160da94d91` |
| 14 | `theorem` | [insert_size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/insert-size.md) | 183 | `result-track:cd1d8d0fe17a85e71c1d8bab195c6cb8d9f61d6455165dcf0ebb6a05df815e86` |
| 15 | `theorem` | [mem_replaceF](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/mem-replacef.md) | 198 | `result-track:893ee96baae457a48ce1de96765eae4f1ef47b71e038bc6dc045eca0c2da3f71` |
| 16 | `theorem` | [pairwise_replaceF](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/pairwise-replacef.md) | 212 | `result-track:e40dff893395b7cc7563bf36c69c41f0c4777a30dcf2d82358c6f9393ce6e446` |
| 17 | `theorem` | [insert_WF](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/insert-wf.md) | 230 | `result-track:c602c7bfa2e5681068ff4da0914ee3eaa8f37d74641248849110532479777269` |
| 18 | `theorem` | [erase_size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/erase-size.md) | 250 | `result-track:3f18b8e3c3e715fc474cc6b1664c05dfdc0332100018baf2e2ae88c8596ff2cf` |
| 19 | `theorem` | [erase_WF](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/erase-wf.md) | 266 | `result-track:2a8892dbf7e8dece76812f9a665f6bc91e94951a64293c5923dd714bcd1229e8` |
| 20 | `theorem` | [modify_size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/modify-size.md) | 274 | `result-track:51517bfd795e37684a954cc01bee8d9403f578454bb92308efe4cf846b472665` |
| 21 | `theorem` | [modify_WF](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/modify-wf.md) | 282 | `result-track:a9cfb559bd60950b21ef7ba62dc8386fa2f813c3967b10fd332e4d6cd6c33e41` |
| 22 | `theorem` | [WF.out](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/wf-out.md) | 292 | `result-track:23ffc3221dcde54515673f39a4462ed94019f094dd13de844d56175070485c79` |
| 23 | `theorem` | [WF_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/wf-iff.md) | 301 | `result-track:b4b7c05a43e61dbb439cd0a359c1c6e1084a1646ea95e2c7bf699e8f83d2ee5f` |
| 24 | `theorem` | [WF.mapVal](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/wf-mapval.md) | 305 | `result-track:4ea02f6ec83dbdf3ae7818c1aeb940d05fd86ad19dcd50ffed1ec145f057c861` |
| 25 | `theorem` | [WF.filterMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/wf-filtermap.md) | 317 | `result-track:29997c9566909e53a61c53d0c908f55f17f6b1d9693b5b92262c6e417e901eda` |
| 26 | `def` | [mapVal](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/mapval.md) | 363 | `declaration-track:d82da95d974ee4f7151347269a670b6fc94bf20eafac7210126cf9551458ebba` |
| 27 | `def` | [filterMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/filtermap.md) | 370 | `declaration-track:55239caa3dcbc9faee9aa5887c82fb94adc55e5511312848c07a5ede2aa03510` |
| 28 | `def` | [filter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/WFNamespacedUpdateData.lean/declarations/filter.md) | 374 | `declaration-track:b39a261b97de0216a1afc602f69d891a91e2376cf6067ad8bcfa6aaaae61cb15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48388b2b3c4f9d2a97808e84cc08dbcbc755b47cc411331662408cab374bce2f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variante94bf3eb3378518a3d9228902172903f566d6702ef107aae9b45f78ef288097b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variante94bf3eb3378518a3d9228902172903f566d6702ef107aae9b45f78ef288097b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
