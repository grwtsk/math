# Verification target: GRWTSK.Topology.MetricTopology.ShrinkingLemma.Variant62555e96817d972786177568bcd65c6f9b40867ed44c99f416749576c858804c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d095ba3f46499c643cfaa5a8d83b927ed4f8a868",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/ShrinkingLemma/Variant62555e96817d972786177568bcd65c6f9b40867ed44c99f416749576c858804c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Variant62555e96817d972786177568bcd65c6f9b40867ed44c99f416749576c858804c.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Variant62555e96817d972786177568bcd65c6f9b40867ed44c99f416749576c858804c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d095ba3f46499c643cfaa5a8d83b927ed4f8a868`.

Source path: `GRWTSK/Topology/MetricTopology/ShrinkingLemma/Variant62555e96817d972786177568bcd65c6f9b40867ed44c99f416749576c858804c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/ShrinkingLemma/Variant62555e96817d972786177568bcd65c6f9b40867ed44c99f416749576c858804c.lean.json)

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
| 1 | `theorem` | [exists_subset_iUnion_ball_radius_lt](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Variant62555e96817d972786177568bcd65c6f9b40867ed44c99f416749576c858804c.lean/declarations/exists-subset-iunion-ball-radius-lt--495d85924d888f88bb5854aa.md) | 49 | `result-track:495d85924d888f88bb5854aa810a6f37db01f50ee64c3bc1d7eb3c9d1ce82e42` |
| 2 | `theorem` | [exists_iUnion_ball_eq_radius_lt](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Variant62555e96817d972786177568bcd65c6f9b40867ed44c99f416749576c858804c.lean/declarations/exists-iunion-ball-eq-radius-lt--1247f0b3739f777af15fba49.md) | 61 | `result-track:1247f0b3739f777af15fba4974bbdd551b15c35df27c97b5ac69816c767ca359` |
| 3 | `theorem` | [exists_subset_iUnion_ball_radius_pos_lt](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Variant62555e96817d972786177568bcd65c6f9b40867ed44c99f416749576c858804c.lean/declarations/exists-subset-iunion-ball-radius-pos-lt--63c8d71e955cf3139e0b0b40.md) | 70 | `result-track:63c8d71e955cf3139e0b0b40740ffe14209ade83d2460bd9ea9b788ebb06156b` |
| 4 | `theorem` | [exists_iUnion_ball_eq_radius_pos_lt](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Variant62555e96817d972786177568bcd65c6f9b40867ed44c99f416749576c858804c.lean/declarations/exists-iunion-ball-eq-radius-pos-lt--70ccbd97a33abb5ffc78e9a7.md) | 82 | `result-track:70ccbd97a33abb5ffc78e9a7cfd2502c98c0cd188dd4b1e2695bda61ecdd4532` |
| 5 | `theorem` | [exists_locallyFinite_subset_iUnion_ball_radius_lt](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Variant62555e96817d972786177568bcd65c6f9b40867ed44c99f416749576c858804c.lean/declarations/exists-locallyfinite-subset-iunion-ball-radius-lt--b3363467ec41479c1d64d59a.md) | 100 | `result-track:b3363467ec41479c1d64d59a41a75acb35cc82e530026a0830fdaa8ad4119444` |
| 6 | `theorem` | [exists_locallyFinite_iUnion_eq_ball_radius_lt](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Variant62555e96817d972786177568bcd65c6f9b40867ed44c99f416749576c858804c.lean/declarations/exists-locallyfinite-iunion-eq-ball-radius-lt--87afd7d23d5bf74c49014282.md) | 124 | `result-track:87afd7d23d5bf74c49014282302632b996981611e85cef8de1ee6fb3601738d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
