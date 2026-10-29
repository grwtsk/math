# Verification target: Alter Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c40de296434223504dbfbfdd5f0aed5e80139d74",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variantac3e7d5200199d9758c8bec76e657631d208194a6731356f68657cc572ff2935.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c40de296434223504dbfbfdd5f0aed5e80139d74`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variantac3e7d5200199d9758c8bec76e657631d208194a6731356f68657cc572ff2935.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variantac3e7d5200199d9758c8bec76e657631d208194a6731356f68657cc572ff2935.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.RBMap.WF` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [OnRoot](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/onroot.md) | 33 | `declaration-track:a2434d675d79221899cdb365f6373e789c83cf4b83698fe6e7bd56ef748c81d0` |
| 2 | `def` | [setRoot](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/setroot.md) | 40 | `declaration-track:889c3ad5f8b8f17aba74cf7350ed40ae62ac68f9cfbe377b6e1ce175aeac3b63` |
| 3 | `def` | [delRoot](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/delroot.md) | 47 | `declaration-track:76168eaf88ab26715b989941959b3dde73f9361571ad120148fdff13f452d68a` |
| 4 | `def` | [fill'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/fill.md) | 54 | `declaration-track:0117b10bb8b44911f850a2cbe41857d4503c1f6477436760277e647ac7fa148f` |
| 5 | `theorem` | [zoom_fill'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/zoom-fill-source-edition-2.md) | 56 | `result-track:571ac534a894573c5bff3aba1146cde1087f56c5e6e533e6f0887b41a05800c7` |
| 6 | `theorem` | [zoom_fill](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/zoom-fill.md) | 62 | `result-track:533e125a1cb4e793663f26c550b0bba05eda6af9266c616f2f736b193612ad37` |
| 7 | `theorem` | [zoom_ins](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/zoom-ins.md) | 65 | `result-track:0c99adfb1bcbc4ab916cbaafd15237c9e40ba6e045c22a80a6b65aedfeabf6ed` |
| 8 | `theorem` | [insertNew_eq_insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/insertnew-eq-insert.md) | 76 | `result-track:fe49566a563e1476ab95842693e4e878201cb683cf17e972465a950d1a6806f3` |
| 9 | `theorem` | [zoom_del](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/zoom-del.md) | 80 | `result-track:28bdcdd39d5ca025995301d769790a40d3a54e1c8e2c111d154384226f05c380` |
| 10 | `inductive` | [Balanced](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/balanced.md) | 105 | `declaration-track:6855dd0b9abb3a9c0210e96a612d58f0ca63ac7681e66dfe1a087926df5e0fdb` |
| 11 | `theorem` | [Balanced.fill](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/balanced-fill.md) | 125 | `result-track:5b4be9316c391042ab8232f77db0220ff61665c9482a295dadce5d45743e73e4` |
| 12 | `theorem` | [Alter Namespaced](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-ba-source-edition-3.md) | 131 | `result-track:a3feabf0ebab5f73760b21df546fb85139eaef51a7d12b8dd4ac0dccd83f5cd6` |
| 13 | `theorem` | [ins_eq_fill](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/ins-eq-fill.md) | 145 | `result-track:136e9473939859cb80353baade17376e9c5efadb1293af26657ae850ea60b008` |
| 14 | `theorem` | [Balanced.ins](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/balanced-ins.md) | 152 | `result-track:099853ef0a9eeaf0bc99aa090dd7d27e477d32e521bd442194b767b0c3c41e75` |
| 15 | `theorem` | [Balanced.insertNew](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/balanced-insertnew.md) | 168 | `result-track:a009a03cb36d6fc501c76b70eaa103835b4a8340f89b33d12fbbae27f568ece5` |
| 16 | `theorem` | [Balanced.insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/balanced-insert.md) | 171 | `result-track:908bdab0e99e160c361732df802c1212fa9234a854c256c865fc800e64a5f762` |
| 17 | `theorem` | [zoom_insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/zoom-insert.md) | 177 | `result-track:8429b1b4a8adefea5fd475fe922f031274e47c25777fb2712d6ec8bfd0afc4d3` |
| 18 | `theorem` | [Balanced.del](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/balanced-del.md) | 186 | `result-track:7f86d8c4be6b107ded3f0dec7a78dc29670395ec6998beecacc04574ca6bc32d` |
| 19 | `def` | [AllL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/alll.md) | 206 | `declaration-track:8733c74e7e95ddec5aadefe4db677fe8c734ca2b158e47b5fdf6d84e1915d31e` |
| 20 | `def` | [AllR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/allr.md) | 212 | `declaration-track:325ea8a3ed81689bc0dde8f37f1c73d9752144ff17ed93369dcd8a0fb6cc44b0` |
| 21 | `def` | [Zoomed](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/zoomed.md) | 221 | `declaration-track:88c31dfd3cae02b757e3181ccfb136e1cff28b3f3eeafe512767e9e7f9f10934` |
| 22 | `theorem` | [zoom_zoomed₁](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/zoom-zoomed.md) | 226 | `result-track:1fb40cddc5267ed7c73d7945ef92ce919ff9a05f4a2343e56b80b2cc7be0138f` |
| 23 | `theorem` | [zoom_zoomed₂](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/zoom-zoomed-source-edition-2.md) | 235 | `result-track:6a29c02663cde39cd499627c662c521d3b7d88677eaf61b4254af73ccd2c161e` |
| 24 | `def` | [RootOrdered](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/rootordered.md) | 249 | `declaration-track:db5d076b8e3e500a255570b2118ac39bae2bf04644054af91f24bcc8c8a68a8e` |
| 25 | `theorem` | [Alter Namespaced](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-ba-source-edition-2.md) | 254 | `result-track:6f0ee6b92dc4ffe7aca08fb4f74906531a1b406d3ed087acffa1f13d66329169` |
| 26 | `theorem` | [Zoomed.toRootOrdered](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/zoomed-torootordered.md) | 260 | `result-track:272fccb26ca80312c0728a3af15f30ded43c3a2c85ef1c0632bbb82ce6469591` |
| 27 | `def` | [Ordered](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/ordered.md) | 267 | `declaration-track:5c03dff57ba65ed1c887a7c7797fef06edf1b0e39273bc56c861d692c1606e44` |
| 28 | `theorem` | [Ordered.fill](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/ordered-fill.md) | 276 | `result-track:d2dd6edd3b16d9ab6fa4881015c4cfabdb9d79c612e0d3f4ec35cfa6aa0b7241` |
| 29 | `theorem` | [Alter Namespaced](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-ba.md) | 290 | `result-track:24ad094bf0355fda0ae4faa63cb36d2dbc78ba6bf96f1af1680fa229309b1a8b` |
| 30 | `theorem` | [Alter Namespaced](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-ba-source-edition-4.md) | 297 | `result-track:bec33d9da62e1f60186583983877f33953a4507095ce5d6f65fce847f6f6899e` |
| 31 | `theorem` | [Ordered.ins](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/ordered-ins.md) | 302 | `result-track:fd0e71506e91279a48d21d27abd0e2975098d3529496a856731c68232c04f5fc` |
| 32 | `theorem` | [Ordered.insertNew](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/ordered-insertnew.md) | 316 | `result-track:f5bab267b9d6d5e1be6e59aa0b2bb80def835e83c84f146d9e3808e37807ab79` |
| 33 | `theorem` | [Ordered.insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/ordered-insert.md) | 320 | `result-track:47771dc4feaf68eec4cb45016c24f464bb4d8c07cc7492c68e151dbcd859c2ff` |
| 34 | `theorem` | [Ordered.del](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/ordered-del.md) | 327 | `result-track:328b84c0512be5a23dbe10629f77dfedfcf8557e937f285c875b6b06356b7804` |
| 35 | `theorem` | [Ordered.erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/ordered-erase.md) | 341 | `result-track:51bef0ba3d85cac8dfc287fa85f69bd7243ef8adf67c1d2c3757e657d475a950` |
| 36 | `theorem` | [Ordered.alter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/ordered-alter.md) | 351 | `result-track:e31196270025b89a3d2603841b642cbca83759f0fe4aadb3bf111548ee7df744` |
| 37 | `theorem` | [Balanced.alter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/balanced-alter.md) | 369 | `result-track:952cd8bd327b5d7bc4b576892feca1842d3bd5d13211c947b0f47f6a400e588a` |
| 38 | `theorem` | [modify_eq_alter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/modify-eq-alter.md) | 387 | `result-track:20fc279816700505da0314c3f415e56747e8f514e4719d76d6ff9772a8a5acaf` |
| 39 | `theorem` | [Ordered.modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/ordered-modify.md) | 391 | `result-track:ff567656b2596039b267b8c7bab4d67790b31114b517e35933b3d601f77e5d45` |
| 40 | `theorem` | [Balanced.modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/balanced-modify.md) | 399 | `result-track:001b03a3fd89c69a800039a6865019c1e4a2c312c64e447898921439a4094f3b` |
| 41 | `theorem` | [WF.alter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/wf-alter.md) | 402 | `result-track:ffdd7d17d64aaf1b36c2fe1df517201d89f9149af72c4caeeaadf6d7dbce7813` |
| 42 | `theorem` | [WF.modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/wf-modify.md) | 408 | `result-track:d51a5b8dd9f08c87d242d1b923bb4bf37db4705d1845a2eb709f4676f2317f83` |
| 43 | `theorem` | [find?_eq_zoom](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/find-eq-zoom.md) | 413 | `result-track:8b748aee4bb6305207e021123054a203276948f35a47544dba26aba905514914` |
| 44 | `theorem` | [ModifyWF.of_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/modifywf-of-eq.md) | 425 | `result-track:ffbddbef4a8270c57a27a588042e675a0ee3208d96dae42321da0de83a1d4ee4` |
| 45 | `def` | [modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/modify.md) | 440 | `declaration-track:b60971532fdb9a0c4a9f1cb47035801a06d67cea7aa2c4c26ac9604ff065d91d` |
| 46 | `def` | [alter.adapt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/alter-adapt.md) | 445 | `declaration-track:bf82e00636636d3ea7a93fe87aaf36ad2714a9408a0d04dae234ffcc4ae29ad3` |
| 47 | `def` | [alter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlterNamespaced.lean/declarations/alter.md) | 466 | `declaration-track:86269f42d6a26a4da5e6031bd6a7c298650c407b49a73a465c47738b38981cdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f021574f4d6d80fc776a2f22ab0fa870b20573b00d834a5b31e8421e87d07651 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variantac3e7d5200199d9758c8bec76e657631d208194a6731356f68657cc572ff2935.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variantac3e7d5200199d9758c8bec76e657631d208194a6731356f68657cc572ff2935.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
