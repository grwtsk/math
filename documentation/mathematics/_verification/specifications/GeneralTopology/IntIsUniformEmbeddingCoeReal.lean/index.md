# Verification target: Int Is Uniform Embedding Coe Real

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01828932619ab6e55e12074756ac3dc759169810",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Int/Variant7f459fe3653cdd7351788f53e8c04cb39fd7676751b39caebb3e6d762af4633b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/IntIsUniformEmbeddingCoeReal.lean/index.md) · [Full source](../../../../GeneralTopology/IntIsUniformEmbeddingCoeReal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01828932619ab6e55e12074756ac3dc759169810`.

Source path: `GRWTSK/Topology/MetricTopology/Int/Variant7f459fe3653cdd7351788f53e8c04cb39fd7676751b39caebb3e6d762af4633b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Int/Variant7f459fe3653cdd7351788f53e8c04cb39fd7676751b39caebb3e6d762af4633b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Interval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.ConditionallyCompleteOrder` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Discrete` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Bounded` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Archimedean` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../GeneralTopology/IntIsUniformEmbeddingCoeReal.lean/declarations/instance-source-edition-3.md) | 26 | `declaration-track:5ac5d5937b5fd9569f4333f455968f5c717cbd546e40a9adec91eaa608117f9a` |
| 2 | `theorem` | [dist_eq](../../../../GeneralTopology/IntIsUniformEmbeddingCoeReal.lean/declarations/dist-eq.md) | 29 | `result-track:1abf7e28d36152301166cf18501e60c1b9bc11fe5098c05a0101c8be7472f218` |
| 3 | `theorem` | [dist_eq'](../../../../GeneralTopology/IntIsUniformEmbeddingCoeReal.lean/declarations/dist-eq-source-edition-2.md) | 31 | `result-track:48dd16dc4374008cc245503abcfc44a9e98756c612b3c380a343e6180320ce13` |
| 4 | `theorem` | [dist_cast_real](../../../../GeneralTopology/IntIsUniformEmbeddingCoeReal.lean/declarations/dist-cast-real.md) | 34 | `result-track:083b9ef2927c7d30e84c18a67b6ce251b38be7bd112b3129225f66113622dfe1` |
| 5 | `theorem` | [pairwise_one_le_dist](../../../../GeneralTopology/IntIsUniformEmbeddingCoeReal.lean/declarations/pairwise-one-le-dist.md) | 37 | `result-track:2d5b9b43839a285789179da0f80695802f563afbf4f42b41e4197bfd2f1de030` |
| 6 | `theorem` | [isUniformEmbedding_coe_real](../../../../GeneralTopology/IntIsUniformEmbeddingCoeReal.lean/declarations/isuniformembedding-coe-real.md) | 41 | `result-track:e47243b4d7e854220b769f541374685ae6bffe603d6df9b2f4a580f4d7061ce4` |
| 7 | `theorem` | [isClosedEmbedding_coe_real](../../../../GeneralTopology/IntIsUniformEmbeddingCoeReal.lean/declarations/isclosedembedding-coe-real.md) | 44 | `result-track:35d283980b620ae48a89e0ac3526dd5ea098a0c1d7a2755c0301e3339794a310` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/IntIsUniformEmbeddingCoeReal.lean/declarations/instance.md) | 47 | `declaration-track:3041bd80e7a7c8af23e22fefa0a5be221ee543993d80c620876035cc14419b72` |
| 9 | `theorem` | [preimage_ball](../../../../GeneralTopology/IntIsUniformEmbeddingCoeReal.lean/declarations/preimage-ball.md) | 49 | `result-track:576b8dafcaba6e2a2b1d16b1bc42b64435d179ebc5ec08fe0240b2449e5f4662` |
| 10 | `theorem` | [preimage_closedBall](../../../../GeneralTopology/IntIsUniformEmbeddingCoeReal.lean/declarations/preimage-closedball.md) | 51 | `result-track:929543496206f94c4dd4a160b2b9c409e6369974b7bf68d2d572a50889745958` |
| 11 | `theorem` | [ball_eq_Ioo](../../../../GeneralTopology/IntIsUniformEmbeddingCoeReal.lean/declarations/ball-eq-ioo.md) | 53 | `result-track:91d12699ba3d62ceda3a90cbadc81c1025954b307f4ac71f2ed971b89fa9fc67` |
| 12 | `theorem` | [closedBall_eq_Icc](../../../../GeneralTopology/IntIsUniformEmbeddingCoeReal.lean/declarations/closedball-eq-icc.md) | 56 | `result-track:186f6c82504ad014bcabafbd51f3a1d5f90ff2cb32426942c150dd2f284e23c7` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/IntIsUniformEmbeddingCoeReal.lean/declarations/instance-source-edition-2.md) | 59 | `declaration-track:4eef80da71e0d217d9f50ca31ebed89e83f6a46bdd105b74203b76c5e1f5f93a` |
| 14 | `theorem` | [cobounded_eq](../../../../GeneralTopology/IntIsUniformEmbeddingCoeReal.lean/declarations/cobounded-eq.md) | 65 | `result-track:f012d52b4d333f7f8a43d54966e910592a2be17d4958162e2dcc8cbad3ebb20e` |
| 15 | `theorem` | [cofinite_eq](../../../../GeneralTopology/IntIsUniformEmbeddingCoeReal.lean/declarations/cofinite-eq.md) | 71 | `result-track:d8445bad795871e0e44dc9dcab200b06c61e91f3f8da8975165cbb950e38308f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9146cd0ed9d0a2a14771f28e21bc6736c2d5ee14339407f980800097dbe7f577 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Int/Variant7f459fe3653cdd7351788f53e8c04cb39fd7676751b39caebb3e6d762af4633b.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Int/Variant7f459fe3653cdd7351788f53e8c04cb39fd7676751b39caebb3e6d762af4633b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
