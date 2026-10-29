# Verification target: Turing Machine Computable Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd5f3259c7cfb2c1fd8b2c3e8caf9980bebb5285",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Computable/Variant6bd3c9c30288a0e13e4df79f97549858807e3fee0353a598ca581560cb021d95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd5f3259c7cfb2c1fd8b2c3e8caf9980bebb5285`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/Computable/Variant6bd3c9c30288a0e13e4df79f97549858807e3fee0353a598ca581560cb021d95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/Computable/Variant6bd3c9c30288a0e13e4df79f97549858807e3fee0353a598ca581560cb021d95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinTM2](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/fintm2.md) | 54 | `declaration-track:aa231af547abf0b73e8e67290b7cbda97d5cf8b694ecc0d66fad6931c3a87c81` |
| 2 | `instance` | [decidableEqK](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/decidableeqk.md) | 88 | `declaration-track:822f47ad02e380a23016c757fdfb43a6ca8b5e813200fecb497be2471f46b56d` |
| 3 | `instance` | [inhabitedσ](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/inhabited.md) | 91 | `declaration-track:e155d03594022b35da9fcdf3768fcec329cb119afae39f616b823981734272fc` |
| 4 | `def` | [Stmt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/stmt.md) | 95 | `declaration-track:d6048948438c3293932ec42a65cdf5218021c6a975f6dc5a073cb04081eaae28` |
| 5 | `instance` | [inhabitedStmt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/inhabitedstmt.md) | 98 | `declaration-track:6e4c9b85f1acc82d0ab954191b2fc6b4bf7b1d424e739976d47253531dc43d33` |
| 6 | `def` | [Cfg](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/cfg.md) | 102 | `declaration-track:73166548fcb36888297479a26f67f1867a4420205e535937f8cb995dd75d24c2` |
| 7 | `instance` | [inhabitedCfg](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/inhabitedcfg.md) | 105 | `declaration-track:d6ff749acb7b178b4303c85bd833b0f080fd66917736e837a094f7c4e278575f` |
| 8 | `def` | [step](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/step.md) | 110 | `declaration-track:42a19489d10bc8eedccf708c6c8163e0a401df0019aa6e15caf776a4ee20aee1` |
| 9 | `def` | [initList](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/initlist.md) | 118 | `declaration-track:850b9f7d1e2b0ef7e7dc4fab8b9aa838837db1574e6af591e7fce33e950b4b78` |
| 10 | `def` | [haltList](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/haltlist.md) | 126 | `declaration-track:92f83ab30e42a24cbad3a3c2de6ca4695f28131252de5c918a7ecaf2a4693cba` |
| 11 | `def` | [TM2Outputs](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/tm2outputs.md) | 139 | `declaration-track:a7086813c7d4d939b2651b408e2c12ffa870188c94f7bf3f900f0a018ab9cec5` |
| 12 | `def` | [TM2OutputsInTime](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/tm2outputsintime.md) | 143 | `declaration-track:57c8ab9ae2120abe3c360bf71f83c54feed9717da6ba43bce369928147de2001` |
| 13 | `def` | [TM2OutputsInTime.toTM2Outputs](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/tm2outputsintime-totm2outputs.md) | 148 | `declaration-track:0a6a2704e8f46bccdae05217ab1d82b7172be50546e7e6bbecd7b3f946c12054` |
| 14 | `structure` | [TM2ComputableAux](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/tm2computableaux.md) | 155 | `declaration-track:bd25694f556c430207f4661b185cdd1e979dc9af195c4b71f75e1f08f61521d7` |
| 15 | `structure` | [TM2Computable](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/tm2computable.md) | 164 | `declaration-track:b86f531a8b5ecfdee5e98078d67d9d8130d6ba22cbc7c67912bacdd665114542` |
| 16 | `structure` | [TM2ComputableInTime](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/tm2computableintime.md) | 174 | `declaration-track:38e88465695c57c52db66aef784febc756c70c88b9446577d9141a258a24792d` |
| 17 | `structure` | [TM2ComputableInPolyTime](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/tm2computableinpolytime.md) | 187 | `declaration-track:6af5d24a8d575ee1bb54e5bff8bbc83356eccfa0123f52471a51888c8ceb3cca` |
| 18 | `def` | [TM2ComputableInTime.toTM2Computable](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/tm2computableintime-totm2computable.md) | 199 | `declaration-track:55491b1237beda370cfb69c0ed83e95153e326c218d3c85f15cbf5125155f99d` |
| 19 | `def` | [TM2ComputableInPolyTime.toTM2ComputableInTime](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/tm2computableinpolytime-totm2computableintime.md) | 204 | `declaration-track:2f413d76ee35cc6d4f760cc375cab58fdf7ac8cbdc32c6ebf7a516fa3b08d097` |
| 20 | `def` | [idComputer](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/idcomputer.md) | 212 | `declaration-track:1b9a94dade3f73217b6b7d29c821f2d6acffea3ca06bff736cdf3465e1a7cf89` |
| 21 | `instance` | [inhabitedFinTM2](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/inhabitedfintm2.md) | 223 | `declaration-track:e264dca56f436194f09a74e4edb715cd96efd0ff5c57636616f9125ca46473dd` |
| 22 | `def` | [idComputableInPolyTime](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/idcomputableinpolytime.md) | 229 | `declaration-track:777c1f0c0506368b346bd8580a0adea29b0bd1751c78a6f3a1fa8a2af199997b` |
| 23 | `instance` | [inhabitedTM2ComputableInPolyTime](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/inhabitedtm2computableinpolytime.md) | 240 | `declaration-track:40d80b95ca1a3a0c3095804cf285232ac602111ca69edab4b672dcebd59cc89e` |
| 24 | `instance` | [inhabitedTM2OutputsInTime](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/inhabitedtm2outputsintime.md) | 244 | `declaration-track:aa6a1213c6977af25363173c06c22ae022eaa28dbaf0c729c295f5a75abeedd3` |
| 25 | `instance` | [inhabitedTM2Outputs](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/inhabitedtm2outputs.md) | 250 | `declaration-track:1e586df9fef6c8d58043468f0989b33a7b0ad68b397739ddc5388fb77e080f1d` |
| 26 | `instance` | [inhabitedEvalsToInTime](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/inhabitedevalstointime.md) | 256 | `declaration-track:2e3b058dfa00052c6bbc6cc9965bc57c21c99745b160545fe46b1a17beee15e4` |
| 27 | `instance` | [inhabitedTM2EvalsTo](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/inhabitedtm2evalsto.md) | 260 | `declaration-track:7a2e1259b7ff3c8e17adcb656aef453d69d20118a430edcdc62c7584d1aa4144` |
| 28 | `def` | [idComputableInTime](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/idcomputableintime.md) | 264 | `declaration-track:996d7afd9d544d6f97f52cfdd3975713393ac9158e0e61d072dcae7cddf3d2b7` |
| 29 | `instance` | [inhabitedTM2ComputableInTime](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/inhabitedtm2computableintime.md) | 268 | `declaration-track:6502389d5c3c2014617a0cca8f8afc14eca2e6e9bb12a7953a444860568989ef` |
| 30 | `def` | [idComputable](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/idcomputable.md) | 273 | `declaration-track:8c3b7245b5dd727611d9762f1a701745a26d097a2dba67ad5f48d62d636f43b1` |
| 31 | `instance` | [inhabitedTM2Computable](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/inhabitedtm2computable.md) | 277 | `declaration-track:100d1cc6a4671f87a0ef510346eb04e2be1c807364d0322b38d973eb4e5f2448` |
| 32 | `instance` | [inhabitedTM2ComputableAux](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/declarations/inhabitedtm2computableaux.md) | 281 | `declaration-track:b14f82ca6494c2e1745a2fa9859694fd79e061a807e9e963a0d9ad379c94250f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8118834c71305d4bd23d34022f3074d3cb0b6243e937c9a742ff709151a3859a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/Computable/Variant6bd3c9c30288a0e13e4df79f97549858807e3fee0353a598ca581560cb021d95.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Computability/Computable/Variant6bd3c9c30288a0e13e4df79f97549858807e3fee0353a598ca581560cb021d95.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
