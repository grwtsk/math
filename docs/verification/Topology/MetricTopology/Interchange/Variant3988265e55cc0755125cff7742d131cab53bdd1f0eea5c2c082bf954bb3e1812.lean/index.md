# Verification target: GRWTSK.Topology.MetricTopology.Interchange.Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39054fc0dca9ee68f8850c85fc219ac77319c136",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39054fc0dca9ee68f8850c85fc219ac77319c136`.

Source path: `GRWTSK/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InterchangeSquare](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/declarations/interchangesquare--496692ab9725b3726752e61f.md) | 14 | `declaration-track:496692ab9725b3726752e61f2a78366355ed5752c503cc47b372e03c2741463a` |
| 2 | `def` | [leftPath](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/declarations/leftpath--03f2ee27f41f2ca6963a8202.md) | 32 | `declaration-track:03f2ee27f41f2ca6963a820234f123a93785f9a621377bb6a3e61f6b64c364d6` |
| 3 | `def` | [rightPath](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/declarations/rightpath--0e045f7083be16229cec23a8.md) | 38 | `declaration-track:0e045f7083be16229cec23a8d6c5e53427de419443aa77155ff0ac5a4a700c9c` |
| 4 | `def` | [metricDefect](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/declarations/metricdefect--1a250d55af0e851d51d964de.md) | 44 | `declaration-track:1a250d55af0e851d51d964de3d37a367bd4f13ef225d1b1003229be01e3be664` |
| 5 | `structure` | [ExactCertificate](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/declarations/exactcertificate--6afad3299a4d25809db9d6a0.md) | 50 | `declaration-track:6afad3299a4d25809db9d6a0e1462aae59bf67c56bcb2f2edf1da4fcb8894a7e` |
| 6 | `structure` | [Certificate](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/declarations/certificate--2a700c13a7add3e73e5c814d.md) | 55 | `declaration-track:2a700c13a7add3e73e5c814d2c5b30bc765d52f5969555e751dba548b93d62bc` |
| 7 | `structure` | [SnapshotCertificate](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/declarations/snapshotcertificate--2d01d82fbe3b88512dd6b2a6.md) | 61 | `declaration-track:2d01d82fbe3b88512dd6b2a6190f6d8b3096c236ce258151d6b024deb2cc180a` |
| 8 | `def` | [ExactCertificate.toCertificate](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/declarations/exactcertificate-tocertificate--4b97e582545f0c91352ae012.md) | 68 | `declaration-track:4b97e582545f0c91352ae0126368d0d22c1a7ccde924424cff7ba25b156a5d15` |
| 9 | `theorem` | [Certificate.exact_of_bound_eq_zero](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/declarations/certificate-exact-of-bound-eq-zero--f34e41021ec334f80427677f.md) | 76 | `result-track:f34e41021ec334f80427677f93735c45210a983baec296fa5b2c1b826bd021c8` |
| 10 | `def` | [postcompose](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/declarations/postcompose--802b7d975da9d3992ca7313f.md) | 86 | `declaration-track:802b7d975da9d3992ca7313f322c9eec992795a9707186aca10958ecf5109945` |
| 11 | `theorem` | [metricDefect_postcompose_le](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/declarations/metricdefect-postcompose-le--462cb56f8a39fc0307c2de50.md) | 97 | `result-track:462cb56f8a39fc0307c2de50cab7efb55d78b158e70498302e6be6af86bc71d5` |
| 12 | `def` | [Certificate.postcompose](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/declarations/certificate-postcompose--3c6fe69377edbd32e1abc486.md) | 110 | `declaration-track:3c6fe69377edbd32e1abc486d955fbc534742e45a00c44f3fffb9ae814377d2e` |
| 13 | `def` | [algebraicDefect](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/declarations/algebraicdefect--77b78ba21be9deaa7c141bd4.md) | 132 | `declaration-track:77b78ba21be9deaa7c141bd4fa52590bf66d4db16cc580686ded7fa5e84878b4` |
| 14 | `theorem` | [nnnorm_algebraicDefect](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/declarations/nnnorm-algebraicdefect--82926252d2c07da2f68c79e2.md) | 138 | `result-track:82926252d2c07da2f68c79e279e8c8f7322a36fbe421b0e345740b5751ffe10a` |
| 15 | `structure` | [AttentionInterchangeReceipt](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/declarations/attentioninterchangereceipt--fbc6cb4e3b17ad48d33f15af.md) | 151 | `declaration-track:fbc6cb4e3b17ad48d33f15afa1a03287644222f8b55d41846131b883ea4ec8df` |
| 16 | `def` | [interchangeDefect](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/declarations/interchangedefect--6ce95146c12c5598b225dfc5.md) | 166 | `declaration-track:6ce95146c12c5598b225dfc56b9e10324968ee026545822352d23e6911723847` |
| 17 | `abbrev` | [AttentionInterchangeCertificate](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/declarations/attentioninterchangecertificate--5f742a8c44835d0779f06bb7.md) | 176 | `declaration-track:5f742a8c44835d0779f06bb79169784880da2e4eb1fd7f1fd14d62f6dc48f232` |
| 18 | `structure` | [LinearInterchangeSquare](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/declarations/linearinterchangesquare--b6871a32c78337a427620fc2.md) | 185 | `declaration-track:b6871a32c78337a427620fc217b59fdf39fd9a98d834b7a722567e4d599a3aed` |
| 19 | `def` | [toInterchangeSquare](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/declarations/tointerchangesquare--e4253d21d55a8980fc32b526.md) | 215 | `declaration-track:e4253d21d55a8980fc32b5263bef23ed30443d189e26fb833c55c52c158c597b` |
| 20 | `def` | [defect](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/declarations/defect--f5e7b3d6d1f92b08bc89cb71.md) | 224 | `declaration-track:f5e7b3d6d1f92b08bc89cb717b71f82401d593c5d3f5a0e41c9b38c23fb0a8e6` |
| 21 | `theorem` | [defect_apply](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/declarations/defect-apply--4be5d39cb7b97638ced45572.md) | 231 | `result-track:4be5d39cb7b97638ced455724c65850f833a3af4f8161fffaf4cf32cb8f430db` |
| 22 | `theorem` | [defect_eq_zero_iff](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/declarations/defect-eq-zero-iff--14819b3a34f274b77610f789.md) | 240 | `result-track:14819b3a34f274b77610f78994c6eb853aab8dd950b052f853ee51d262d8151f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
