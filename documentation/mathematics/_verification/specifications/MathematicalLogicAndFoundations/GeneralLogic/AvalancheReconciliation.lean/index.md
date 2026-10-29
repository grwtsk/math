# Verification target: Avalanche Reconciliation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e85d1315ff6f942b61c41018bbe6c2a6694f3e3",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantdae4c8fc20724714690baf6fc0036bd9b1c2580988d3f2dc154ef7378f39831b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e85d1315ff6f942b61c41018bbe6c2a6694f3e3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantdae4c8fc20724714690baf6fc0036bd9b1c2580988d3f2dc154ef7378f39831b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantdae4c8fc20724714690baf6fc0036bd9b1c2580988d3f2dc154ef7378f39831b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Geometry.LegalDiffusion` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Terrain.AvalanchePartition` — import line 2; external provider; requires a separately pinned dependency.
- `DAF.Manifest` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GlobalLocalRelaxationSquare](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/globallocalrelaxationsquare.md) | 26 | `declaration-track:12a04426a796eec33000d35a30134f84cce22be1c86b58a7eb418c33a944664f` |
| 2 | `def` | [globalResult](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/globalresult.md) | 58 | `declaration-track:b0ade8b5be2f25cab11546f4673676d7ece1037aea3d6b9e42fec8d6fb7584d7` |
| 3 | `def` | [localResult](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/localresult.md) | 65 | `declaration-track:21548e732ba7318d3a6725374d7bdff6a2f7a6e0fa90ace0636c798a44016f55` |
| 4 | `theorem` | [globalResult_restrict](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/globalresult-restrict.md) | 73 | `result-track:5c4ed14ed2bced59658ab562ddcc80dc5359042c926bd6f287af30adf36dc204` |
| 5 | `theorem` | [threshold_globalResult_restrict](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/threshold-globalresult-restrict.md) | 93 | `result-track:97929ca1510cc954238404eaf7dadc9dfdb3520de61e9415c74f9d48730014fe` |
| 6 | `structure` | [GlobalLocalReconciliationObstruction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/globallocalreconciliationobstruction.md) | 104 | `declaration-track:073380c4a3e961f32a148d39b4101aaaed7fbcd28aac64bd621aa00c226ad210` |
| 7 | `inductive` | [GlobalLocalReconciliationStatus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/globallocalreconciliationstatus.md) | 116 | `declaration-track:0a6c1d2fd285d54daa54418aefebe120cf5375f81822ac54dd5613c757a266aa` |
| 8 | `structure` | [PartitionLocalBoolSections](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/partitionlocalboolsections.md) | 139 | `declaration-track:3a858978a28a906efcc893d18443640cc28350923c5846b79c610127c9dc9681` |
| 9 | `def` | [Compatible](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/compatible.md) | 146 | `declaration-track:11e7f78ec640f4a69cfd767891f736550e6c80d78d26a453739b453310189d7c` |
| 10 | `def` | [ofGlobal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/ofglobal.md) | 160 | `declaration-track:1ddc5f6a17d1da5acd83875034f8c99dcfebbb20f583f4a371439b874e487dbb` |
| 11 | `theorem` | [ofGlobal_compatible](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/ofglobal-compatible.md) | 165 | `result-track:dda949aaea5c9f867665d8f1f358acca0d74b8ab00c8bdc0a10b47d26776d23b` |
| 12 | `structure` | [CompatiblePartitionLocalBoolSections](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/compatiblepartitionlocalboolsections.md) | 177 | `declaration-track:a3b6ac1cddc3d15b342fa8ad3ae5bb50d359c3c6722ff2dbf2c4d04b78789e26` |
| 13 | `structure` | [PartitionGluingCapability](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/partitiongluingcapability.md) | 187 | `declaration-track:01c7dd61827df91118ba54c1ed411558a010b7db9122ef5c1f693694fb5043b0` |
| 14 | `def` | [partitionSelectedNode](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/partitionselectednode.md) | 199 | `declaration-track:1c62c5125deb0daef0812e4d14e7ace573eac01afd6499ce7f0e47fb4bab7913` |
| 15 | `theorem` | [partitionSelectedNode_mem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/partitionselectednode-mem.md) | 207 | `result-track:e0c32b0add3bd0cb934470e5a6ca8527e6642c7b33f5b840547a47ea39aa5582` |
| 16 | `theorem` | [mem_partitionSelectedNode_region](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/mem-partitionselectednode-region.md) | 215 | `result-track:ee4664c5497d691691c06507273f00c1e6d36801e8b391794f7ee86916aff339` |
| 17 | `def` | [glue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/glue.md) | 226 | `declaration-track:520c321d2dbf0aef79c6c976d2aeefa82484e477bbb70146e3b1c8eded1e366d` |
| 18 | `theorem` | [restrict_glue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/restrict-glue.md) | 235 | `result-track:10f40a4034108ad9e7220bd06eded1652ac7597097adc95e5d32b55ca351cfe5` |
| 19 | `theorem` | [compatibleSections_glue_unique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/compatiblesections-glue-unique.md) | 259 | `result-track:3f142b4787eb79f3528d4f0b76d82feb346e7a932dd862806bd97bbe04cd6437` |
| 20 | `structure` | [PartitionGlobalLocalRelaxationSystem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/partitiongloballocalrelaxationsystem.md) | 289 | `declaration-track:cadcaf4305b48971a089ab18e47ecccbf7d5025e66f6e0602fee3389c0ba412e` |
| 21 | `def` | [squareAt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/squareat.md) | 317 | `declaration-track:df6ba80cad1486fa772c9e1d20b4853a7370c8728ec72d58d12007aa2426ee2c` |
| 22 | `def` | [globalResult](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/globalresult-source-edition-2.md) | 341 | `declaration-track:b3245a1cb9e4fa87dc2ec1d9e8acb3762452b389e132899623d64dba395b216e` |
| 23 | `def` | [localResult](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/localresult-source-edition-2.md) | 349 | `declaration-track:3543a2736c80b8a6fdb506f5f93361897e686fb0b32d5639806d322de45ab670` |
| 24 | `theorem` | [globalResult_restrict](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/globalresult-restrict-source-edition-2.md) | 360 | `result-track:eaf9e2be8e93a47a9e49fdd78a7a8b6bba9875a32bccf5710c97552f1915577b` |
| 25 | `theorem` | [threshold_globalResult_restrict](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/threshold-globalresult-restrict-source-edition-2.md) | 370 | `result-track:9d8709e500c4413e2338fa21ed77f69eb878a8a22a5b46ea238b9c0d8c1628f4` |
| 26 | `def` | [thresholdSections](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/thresholdsections.md) | 381 | `declaration-track:96d61017e00853ad56af9deff21b87e492793b93f538fb41da662a2f6a097cd1` |
| 27 | `theorem` | [thresholdedLocalStates_agree](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/thresholdedlocalstates-agree.md) | 398 | `result-track:96f023bda2c735a7d49658d94b689d574277c8b4062680d71d5d5c1b0fd749dd` |
| 28 | `theorem` | [glued_thresholdSections_eq_global](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/glued-thresholdsections-eq-global.md) | 415 | `result-track:54730d0bfd322f5e33aa8cfcce2d7dc80ca6162768472944a15c56c30f3700db` |
| 29 | `structure` | [PartitionGlobalLocalReconciliationObligation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/partitiongloballocalreconciliationobligation.md) | 435 | `declaration-track:fe8ddd1134e0674aa78000fda972b31393d385f3819cddce18adeb95e220e0e0` |
| 30 | `structure` | [ThresholdInterfaceObstruction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/thresholdinterfaceobstruction.md) | 444 | `declaration-track:e10c87c7c86a15602481c743f927d99273d9135efe82f56609671d20dbdf09e0` |
| 31 | `theorem` | [ThresholdInterfaceObstruction.not_equal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/thresholdinterfaceobstruction-not-equal.md) | 461 | `result-track:5332b35ce8b9bcb7548754f4d6527307248c2fae2df95dada1688f6f4f7f1b30` |
| 32 | `inductive` | [PartitionGlobalLocalReconciliationStatus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/declarations/partitiongloballocalreconciliationstatus.md) | 472 | `declaration-track:26758b95fbddcbfa6eae94e3917c9a9c485e267287642958024426238fad2150` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=960f3d0545516d894024d956f4cb3dfd212d3b51d7c4a71ef7a706343917d6c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantdae4c8fc20724714690baf6fc0036bd9b1c2580988d3f2dc154ef7378f39831b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantdae4c8fc20724714690baf6fc0036bd9b1c2580988d3f2dc154ef7378f39831b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
