# Verification target: GRWTSK.Topology.MetricTopology.Diam.Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5a39e2f435e837f92a9ed3c804f61d9f6240bbf",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5a39e2f435e837f92a9ed3c804f61d9f6240bbf`.

Source path: `GRWTSK/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ediam](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/declarations/ediam--eee871f940616febc5916799.md) | 30 | `declaration-track:eee871f940616febc59167993978d8457fcfff6753614ec12f7700c44d07d89f` |
| 2 | `theorem` | [ediam_eq_sSup](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/declarations/ediam-eq-ssup--4cfd1ec27f6fff350dd6cb38.md) | 35 | `result-track:4cfd1ec27f6fff350dd6cb38fbaa92194ebb5c2e1c7f5218b6df772f88bc5af4` |
| 3 | `theorem` | [ediam_le_iff](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/declarations/ediam-le-iff--6b75211fe2cee7111cbe3eb9.md) | 37 | `result-track:6b75211fe2cee7111cbe3eb983847e02b30792465d2a27730a2a3f744479d13f` |
| 4 | `theorem` | [ediam_image_le_iff](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/declarations/ediam-image-le-iff--b2e672a281b63f758a28a50e.md) | 40 | `result-track:b2e672a281b63f758a28a50ec5c074b4b855dcbf7b3f0e425e57e0ed1648713d` |
| 5 | `theorem` | [edist_le_of_ediam_le](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/declarations/edist-le-of-ediam-le--3f315d7d40ea9f74d1d9ed7f.md) | 44 | `result-track:3f315d7d40ea9f74d1d9ed7f09e18347b02154c7de8ad64ecf73eee54bac03fd` |
| 6 | `theorem` | [edist_le_ediam_of_mem](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/declarations/edist-le-ediam-of-mem--7860b48166e8698bcb2d5d94.md) | 48 | `result-track:7860b48166e8698bcb2d5d94810105d48f63a93f9621e6b44b25744164c1305c` |
| 7 | `theorem` | [ediam_le](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/declarations/ediam-le--de385b71ece2657aeba2c102.md) | 53 | `result-track:de385b71ece2657aeba2c10251d7b29d78e0b2738b6376686bbbfee55a8d7873` |
| 8 | `theorem` | [ediam_subsingleton](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/declarations/ediam-subsingleton--2eb16d2a8d870c3f42fb99a5.md) | 57 | `result-track:2eb16d2a8d870c3f42fb99a5861133daea45648b96f8936dcc12d19240a65840` |
| 9 | `theorem` | [ediam_empty](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/declarations/ediam-empty--70720144d3b9eec78804a4d9.md) | 64 | `result-track:70720144d3b9eec78804a4d99d4a0cd8d8d58f59da80e3f62beabe987f054799` |
| 10 | `theorem` | [ediam_singleton](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/declarations/ediam-singleton--f2d31982f7f1f87f18360b03.md) | 69 | `result-track:f2d31982f7f1f87f18360b03778a99a7df476bf7be60231e0e4d2575652ea67f` |
| 11 | `theorem` | [ediam_one](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/declarations/ediam-one--0cd96564fb707f78086c6878.md) | 73 | `result-track:0cd96564fb707f78086c687879f2c82712f6d0cc66eb508f7f8d09a597b8b809` |
| 12 | `theorem` | [ediam_iUnion_mem_option](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/declarations/ediam-iunion-mem-option--a336b35f9d7b4a24e4ebc00d.md) | 76 | `result-track:a336b35f9d7b4a24e4ebc00d8465b4f6c1740d94386f56b7a1e5b844868edbe8` |
| 13 | `theorem` | [ediam_insert](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/declarations/ediam-insert--52eea92798b03715dfe25eca.md) | 79 | `result-track:52eea92798b03715dfe25ecae80b4d42bf8dd5a18b728905f00251d8e6fd647b` |
| 14 | `theorem` | [ediam_pair](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/declarations/ediam-pair--ceeb514a00ce56092910f200.md) | 82 | `result-track:ceeb514a00ce56092910f200cd98e81cc01de50c662437950a9586fac6148c84` |
| 15 | `theorem` | [ediam_triple](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/declarations/ediam-triple--6b8a58cdf7fdb664b478b38e.md) | 84 | `result-track:6b8a58cdf7fdb664b478b38e4571e6489b2cb852ae6803e6527e2d41e448d583` |
| 16 | `theorem` | [ediam_mono](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/declarations/ediam-mono--324c67371569c2c41fd10321.md) | 89 | `result-track:324c67371569c2c41fd10321ac985293543d0bfacad7f0474ef7caa67cea5719` |
| 17 | `theorem` | [ediam_union_le_add_edist](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/declarations/ediam-union-le-add-edist--69f335619edecf96d2f83f88.md) | 94 | `result-track:69f335619edecf96d2f83f88dacb4f0567df07f0dd99bb934f6a39080c4664ec` |
| 18 | `theorem` | [ediam_union_le](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/declarations/ediam-union-le--7f0553045ecd293a1102195d.md) | 118 | `result-track:7f0553045ecd293a1102195d4da7a86bcf3e5f9a3e9e90c3559fdb56b6d500c7` |
| 19 | `theorem` | [ediam_closedEBall_le](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/declarations/ediam-closedeball-le--79bc1e7346d6bc7535f34b63.md) | 122 | `result-track:79bc1e7346d6bc7535f34b63b7140c9ca700a701da142aea51ececd393281b78` |
| 20 | `theorem` | [ediam_eball_le](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/declarations/ediam-eball-le--bbed44a18b26047ac994e351.md) | 129 | `result-track:bbed44a18b26047ac994e3515dbbe97b76431ebf7044341ceac04ee0ac14179c` |
| 21 | `theorem` | [ediam_pi_le_of_le](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/declarations/ediam-pi-le-of-le--e9022c64b40c003cca325825.md) | 132 | `result-track:e9022c64b40c003cca32582559b54241d74054d2571ca8b61c5c0f4b9c70f2ac` |
| 22 | `theorem` | [ediam_eq_zero_iff](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/declarations/ediam-eq-zero-iff--bab01fb66317998c02b05dcf.md) | 144 | `result-track:bab01fb66317998c02b05dcf0e0368491df779fba91d4dce0193d6b217f1870c` |
| 23 | `theorem` | [ediam_pos_iff](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/declarations/ediam-pos-iff--e0e19475f9e5362f5ed9f0ef.md) | 147 | `result-track:e0e19475f9e5362f5ed9f0ef0d42ca14784e7f0125758459fb85d636569fc9b6` |
| 24 | `theorem` | [ediam_pos_iff'](../../../../../mathematics/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/declarations/ediam-pos-iff--b09c7d0704a11f94d1d6c3b2.md) | 150 | `result-track:b09c7d0704a11f94d1d6c3b243ef2fbe4d653a9a58dc7fd708341a6f86d9c9bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
