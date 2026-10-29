# Verification target: Alter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a13a8c5d8e08cfe0c77a535da97cc37d21a3989",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variantea2dff8af32d1d8988ff5809370e0821f2c23e47486074d043d90a7523b25bb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a13a8c5d8e08cfe0c77a535da97cc37d21a3989`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variantea2dff8af32d1d8988ff5809370e0821f2c23e47486074d043d90a7523b25bb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variantea2dff8af32d1d8988ff5809370e0821f2c23e47486074d043d90a7523b25bb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.RBMap.WF` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [OnRoot](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/onroot.md) | 25 | `declaration-track:83f89ba1bfe7c2d942c1ae9a6044e8d897154af579eb773a71ece1001174fcf4` |
| 2 | `def` | [setRoot](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/setroot.md) | 32 | `declaration-track:487e85d7624c15bf3885fd16041a5a067b4fdccfc04444d97821b3a31c6f2299` |
| 3 | `def` | [delRoot](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/delroot.md) | 39 | `declaration-track:76734361703991e73ab497023ea3dc11f6c96c34cf6c3ff3486303db618157e5` |
| 4 | `def` | [fill'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/fill.md) | 46 | `declaration-track:36d0ea6842c1f17b56676981e88ce6cba4f2b9cd8406c128f102cd95595a5629` |
| 5 | `theorem` | [zoom_fill'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/zoom-fill-source-edition-2.md) | 48 | `result-track:e9e29c7c695ef62fe8a036e278954c326e74a11ca70c1d17aeaab6613bcaa240` |
| 6 | `theorem` | [zoom_fill](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/zoom-fill.md) | 54 | `result-track:93947b9ac943aa7ec3d4de3d957eddde91895145641908ccd279e8288a71475c` |
| 7 | `theorem` | [zoom_ins](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/zoom-ins.md) | 57 | `result-track:7b984f791e20ee5ec78b6bc9926ddf236bd00e1902fd2dfc132c79db560735fe` |
| 8 | `theorem` | [insertNew_eq_insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/insertnew-eq-insert.md) | 68 | `result-track:f3f96040b2e644e6ae8662c7d2c8423884f9643a3be47615fb33de4f92556862` |
| 9 | `theorem` | [zoom_del](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/zoom-del.md) | 72 | `result-track:37b9e3796d7667de2426545376ca18a67814329f6dd8489aea3278a3c32c4e69` |
| 10 | `inductive` | [Balanced](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/balanced.md) | 97 | `declaration-track:2f2fcfee51a8c79885e5936c50da207fff8fe6fa80d0c9d409692290efb14566` |
| 11 | `theorem` | [Balanced.fill](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/balanced-fill.md) | 117 | `result-track:8a73546027479032cb3631956f926598d7ea56175f579aa4723da92a3b7a479a` |
| 12 | `theorem` | [_root_.Std.RBNode.Balanced.zoom](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/root-std-rbnode-balanced-zoom.md) | 123 | `result-track:5341055e45dfff48829392e06e7c8bde865ffc34adec724c22a592443c93bfff` |
| 13 | `theorem` | [ins_eq_fill](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/ins-eq-fill.md) | 137 | `result-track:71070e19578894f3c776acc7711ff56d642f3502fd76c3bed3bb20926c3b1bc2` |
| 14 | `theorem` | [Balanced.ins](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/balanced-ins.md) | 144 | `result-track:f990f7c3919c7cbf8263db83f0a46535d6e61e32f0c29ae32feeab687df734a9` |
| 15 | `theorem` | [Balanced.insertNew](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/balanced-insertnew.md) | 160 | `result-track:aad25a5d65078ee1bd7e0a42acfeb14b0b69e210b7458101f927b68e43fe9290` |
| 16 | `theorem` | [Balanced.insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/balanced-insert.md) | 163 | `result-track:13a5862dc0678364dd9ff0cc349b05effd6ef952855ee06b1715e58a0dd8cd95` |
| 17 | `theorem` | [zoom_insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/zoom-insert.md) | 169 | `result-track:0438fb453d4a5903e7e816cabfb1bf64f39cc4169047aa78d08567717fcb1024` |
| 18 | `theorem` | [Balanced.del](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/balanced-del.md) | 178 | `result-track:8561588271195c0424a2b705857830c39af7c6bc65ce9277e0fb5c7fc21a2891` |
| 19 | `def` | [AllL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/alll.md) | 198 | `declaration-track:ddbf7ade636f9b076af57ae599dcdfe5b3f025b81f0c442fcfefa905084c81bc` |
| 20 | `def` | [AllR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/allr.md) | 204 | `declaration-track:fc221920c2db42a632e8ad1573a759b1931390274daac7ee136d4d43ac4892f9` |
| 21 | `def` | [Zoomed](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/zoomed.md) | 213 | `declaration-track:a706b3c02c99c1c79d314f4c698246c7dfb9b937ae943a0cab8e7590b75ded28` |
| 22 | `theorem` | [zoom_zoomed₁](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/zoom-zoomed.md) | 218 | `result-track:44ad89a0e9e3ce2a0f275b8c5a3e51632a72b87b58ceb57eac4fa0558f7165c4` |
| 23 | `theorem` | [zoom_zoomed₂](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/zoom-zoomed-source-edition-2.md) | 227 | `result-track:897763b00c8381d256d0954bcfd67f291e8d7a6e54d6fe4a73fc2d24ed6536e1` |
| 24 | `def` | [RootOrdered](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/rootordered.md) | 241 | `declaration-track:701878009a42aaf060f6e360a56610a8c8b273431726d3800928ab0f98eed3eb` |
| 25 | `theorem` | [_root_.Std.RBNode.cmpEq.RootOrdered_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/root-std-rbnode-cmpeq-rootordered-congr.md) | 246 | `result-track:6c2f7aea20f888fa24d09346858a496b79ff70ba5e2e7a57383e4c4f5570b32a` |
| 26 | `theorem` | [Zoomed.toRootOrdered](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/zoomed-torootordered.md) | 252 | `result-track:c5fd8120b2374a90d925c6353f90eefb70e0214f0c1dfff5e4dc147082fbc085` |
| 27 | `def` | [Ordered](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/ordered.md) | 259 | `declaration-track:629a7e34e98d4b68e3a91861c593bdadd7689f87af4ba8a0e496adaa27064436` |
| 28 | `theorem` | [Ordered.fill](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/ordered-fill.md) | 268 | `result-track:1eae0965c5a049b4b353492ac48ed47ea5d422853aa8f1335104896e1e124915` |
| 29 | `theorem` | [_root_.Std.RBNode.Ordered.zoom'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/root-std-rbnode-ordered-zoom.md) | 282 | `result-track:078948bf440c2012cbbe8c2821dd511b7a227a49d502f9e1803dcdb5a5fb2fd7` |
| 30 | `theorem` | [_root_.Std.RBNode.Ordered.zoom](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/root-std-rbnode-ordered-zoom-source-edition-2.md) | 289 | `result-track:36ed7eb53fbbcff63a4f655fd26e91885ecc88cb3adae89d5204dfc8e0d24441` |
| 31 | `theorem` | [Ordered.ins](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/ordered-ins.md) | 294 | `result-track:e858c1af834aae6517e06149fb4a7d1cedfe6b9a8b494affeee251a3a78922ba` |
| 32 | `theorem` | [Ordered.insertNew](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/ordered-insertnew.md) | 308 | `result-track:1cce42233b5541a8339784dbc81ae7434ff1c452167ca56cbdd71ba6376a815e` |
| 33 | `theorem` | [Ordered.insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/ordered-insert.md) | 312 | `result-track:4f3ea6c9659ab2f84a3f7335b53f9a2db56353a54820d0c82859f059e0f3549c` |
| 34 | `theorem` | [Ordered.del](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/ordered-del.md) | 319 | `result-track:f54c71290cfe325f1b06db4ce41b3c1795036251b7c44bc2a014815a8b051b11` |
| 35 | `theorem` | [Ordered.erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/ordered-erase.md) | 333 | `result-track:bb7e26670684175690816b60103c54d904aa5d6aa8d0baabe7d276ee05b0a009` |
| 36 | `theorem` | [Ordered.alter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/ordered-alter.md) | 343 | `result-track:2c503a10385d8002288791579354be811c7e236f452c5e7e3133d670be5fcc5c` |
| 37 | `theorem` | [Balanced.alter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/balanced-alter.md) | 361 | `result-track:dff65eecd523ca941af4e78f01606d60553f6f20ed82df358b71e056e1860aee` |
| 38 | `theorem` | [modify_eq_alter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/modify-eq-alter.md) | 379 | `result-track:a444e4fdda760a5736fcdd8d932d43a6dc5c546293d278754ce5fb23025889c6` |
| 39 | `theorem` | [Ordered.modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/ordered-modify.md) | 383 | `result-track:c2d2982a0285e64373810ebf7b9df207c8b3ea773291d859b088698a5ad13ed8` |
| 40 | `theorem` | [Balanced.modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/balanced-modify.md) | 391 | `result-track:cb87cfb8a2041f4c0b665e0bc39b53283f7a8e67bdf5cd0cab81c9e06a25ed75` |
| 41 | `theorem` | [WF.alter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/wf-alter.md) | 394 | `result-track:6800ac97521fd1d32601ead00107360f4781762c523892ee1ee630a7089bfb51` |
| 42 | `theorem` | [WF.modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/wf-modify.md) | 400 | `result-track:c0f2c7da6ff356326aadf65f303b0d876e2a267b7a5123fac251396339c64c38` |
| 43 | `theorem` | [find?_eq_zoom](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/find-eq-zoom.md) | 405 | `result-track:21d273328dd550e65ea35b2bf617674a4f13c4be070ca52c592e310de832d39f` |
| 44 | `theorem` | [ModifyWF.of_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/modifywf-of-eq.md) | 417 | `result-track:63c931bc2de2fa3ea011ae7fa5e376a8571b6dcaf732c85fead0b610173b7585` |
| 45 | `def` | [modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/modify.md) | 432 | `declaration-track:2db99f94f8c72cbb263f5c94c851be1296dfce87909e425a02ce8edff84f7e6f` |
| 46 | `def` | [alter.adapt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/alter-adapt.md) | 437 | `declaration-track:a885da79d4fb67615ae6a44a3b25848ac905db36b3f867524dc49053949fced5` |
| 47 | `def` | [alter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Alter.lean/declarations/alter.md) | 458 | `declaration-track:43d443ce16a5e5468d4615ef2d88bac15bb617d1f73bf05399a87ff1abc5e6e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b8868f92377329d961069fa66d3b18cbf7c9925568fae06d82bbe1d71297514 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variantea2dff8af32d1d8988ff5809370e0821f2c23e47486074d043d90a7523b25bb0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variantea2dff8af32d1d8988ff5809370e0821f2c23e47486074d043d90a7523b25bb0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
