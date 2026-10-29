# Verification target: WSeq Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae33b29da9fe110dfb7c1bffc5acb17ee189dcb1",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantbb19847f332ec09cebff486f10746131d9a6ca48ef69cd4fbd74dcdc31ee71e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae33b29da9fe110dfb7c1bffc5acb17ee189dcb1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantbb19847f332ec09cebff486f10746131d9a6ca48ef69cd4fbd74dcdc31ee71e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantbb19847f332ec09cebff486f10746131d9a6ca48ef69cd4fbd74dcdc31ee71e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [length](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/length.md) | 27 | `declaration-track:140a65497226f71ca04de8dabd5c8347e44829f925b2c61f8f27985843e82669` |
| 2 | `class` | [IsFinite](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/isfinite.md) | 38 | `declaration-track:15015dcac84e0afc7a0aa6cad871720308512268a8cf49b24ffbcf99386ab481` |
| 3 | `instance` | [toList_terminates](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/tolist-terminates.md) | 41 | `declaration-track:d927f6022eb6b2cecc20f68bff1ac256de7370f37bb7fe233713e843ff5604fe` |
| 4 | `def` | [get](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/get.md) | 45 | `declaration-track:677caf317451ee18f0566442821ba2fee19088bfdebbe169f23c52798142fca1` |
| 5 | `def` | [updateNth](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/updatenth.md) | 49 | `declaration-track:4bf862f184ac23e7dbc9c5ecccb668c6ce137fe558d1602e30ac56aaf7f1af70` |
| 6 | `def` | [removeNth](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/removenth.md) | 61 | `declaration-track:bfcbb9c03a7ba9cb49918715f4a987d783c3b1c84503aaf2dd0be1edbd365fa4` |
| 7 | `def` | [filterMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/filtermap.md) | 73 | `declaration-track:e3db8fc9788a34595fa42520ea7c46757c4cfe53f3da35530bc3e2df78ee3e3b` |
| 8 | `def` | [filter](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/filter.md) | 81 | `declaration-track:c5ce91115163505348c0c6ed7106ba2ee9c617369089a76fd0131e71c786fcd3` |
| 9 | `def` | [find](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/find.md) | 86 | `declaration-track:66e6e92b3bda81a59bb3a2d0455e4ece646005b4b2623791c2726d6502984b85` |
| 10 | `def` | [zipWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/zipwith.md) | 90 | `declaration-track:553d4bc2ad8977d5d1580c6c57ab5628122da3380522a07d76c6df296c863ecb` |
| 11 | `def` | [zip](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/zip.md) | 102 | `declaration-track:84cbeaca1c12a2f4171f00d1c83c88d412ff7e5aff439b4cc3150309afeec16f` |
| 12 | `def` | [findIndexes](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/findindexes.md) | 106 | `declaration-track:0db9e3e8ea8775f7cb82d804dd0d2b4d652bc4a6f691858ba652d32a785a8252` |
| 13 | `def` | [findIndex](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/findindex.md) | 110 | `declaration-track:8d2cb38a51564b71bd752fb930f0e4aca587e263696407731c19b271114676cd` |
| 14 | `def` | [indexOf](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/indexof.md) | 114 | `declaration-track:99351979a276d2889d3bf890eaa028ce66f022ad82049777287933e0f4e78974` |
| 15 | `def` | [indexesOf](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/indexesof.md) | 118 | `declaration-track:387c4a503b19edaecc705b2e3de6885f24feace3518dad4fb6d539f355239388` |
| 16 | `def` | [union](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/union.md) | 123 | `declaration-track:1857700e7e6219314f27812fb7045befdc3810d7f5bdd61cfbf3c6824c790a2f` |
| 17 | `def` | [isEmpty](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/isempty.md) | 137 | `declaration-track:09333b4bba79b6b251808d63fee86f51ba19296678ed7408c0d9bd0bd34951b8` |
| 18 | `def` | [compute](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/compute.md) | 141 | `declaration-track:4b5763338517190923c15ebc2903d636f20efa6dd93eb116fc5e54e418cff758` |
| 19 | `def` | [take](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/take.md) | 147 | `declaration-track:1c46e8f092b727b67452ad75f2742924e44443aba774a3302db5bb91908a5e3e` |
| 20 | `def` | [splitAt](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/splitat.md) | 159 | `declaration-track:afbb46a3df7685e880656759769f92ca97764a0337176d3081c192e1e478e652` |
| 21 | `def` | [any](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/any.md) | 170 | `declaration-track:0558d2128c427089aebd7de4862fed283d4ca0c9d0268d3fb43ecfa4afccec8d` |
| 22 | `def` | [all](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/all.md) | 180 | `declaration-track:f91f5f8039ea8fe5786b5fc7693c3ac7359dd56d0da5d253cfd552f4b7d85f63` |
| 23 | `def` | [scanl](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/scanl.md) | 192 | `declaration-track:1f1b3f2f2b4310156721950d3371500b00ca32f900a2cef63e3abae4000f88be` |
| 24 | `def` | [inits](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/inits.md) | 205 | `declaration-track:e8a2b412cd2a9714896ec67ca9286e08539592a36e3dfc4e836fad6db4c20428` |
| 25 | `def` | [collect](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/collect.md) | 219 | `declaration-track:124d553652954af97f24240b9e1a04f509ea34f08f7c29326be51df7d5ddc747` |
| 26 | `theorem` | [length_eq_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsPublic.lean/declarations/length-eq-map.md) | 222 | `result-track:3d4d828a8a6b29052a43e6ce64bf12628fc0031227f8a8aced2c21a94192a167` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=014d394013f723e4cdec630bda469694589d3e33756d4e0c7fe88b4fd27f9f79 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantbb19847f332ec09cebff486f10746131d9a6ca48ef69cd4fbd74dcdc31ee71e6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantbb19847f332ec09cebff486f10746131d9a6ca48ef69cd4fbd74dcdc31ee71e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
