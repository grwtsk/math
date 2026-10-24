# Verification target: GRWTSK.Topology.MetricTopology.RieszLemma.Variant137211936849746fb31be1969a18862dfa35bd193df89e8844eee572c3e737e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64ad752a33b00fd95ccc023f861e5ffb65038366",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/RieszLemma/Variant137211936849746fb31be1969a18862dfa35bd193df89e8844eee572c3e737e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/RieszLemma/Variant137211936849746fb31be1969a18862dfa35bd193df89e8844eee572c3e737e0.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/RieszLemma/Variant137211936849746fb31be1969a18862dfa35bd193df89e8844eee572c3e737e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64ad752a33b00fd95ccc023f861e5ffb65038366`.

Source path: `GRWTSK/Topology/MetricTopology/RieszLemma/Variant137211936849746fb31be1969a18862dfa35bd193df89e8844eee572c3e737e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/RieszLemma/Variant137211936849746fb31be1969a18862dfa35bd193df89e8844eee572c3e737e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Seminorm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [riesz_lemma](../../../../../mathematics/Topology/MetricTopology/RieszLemma/Variant137211936849746fb31be1969a18862dfa35bd193df89e8844eee572c3e737e0.lean/declarations/riesz-lemma--3528dcb4d9ba678f5807357c.md) | 51 | `result-track:3528dcb4d9ba678f5807357c93436fbc61b537e33cae7ba19597bc48552bd39f` |
| 2 | `theorem` | [riesz_lemma_of_norm_lt](../../../../../mathematics/Topology/MetricTopology/RieszLemma/Variant137211936849746fb31be1969a18862dfa35bd193df89e8844eee572c3e737e0.lean/declarations/riesz-lemma-of-norm-lt--9a123108371fb200621119ca.md) | 93 | `result-track:9a123108371fb200621119cad101b993a2ea76bba6598519f27171868b63747f` |
| 3 | `theorem` | [Metric.closedBall_infDist_compl_subset_closure](../../../../../mathematics/Topology/MetricTopology/RieszLemma/Variant137211936849746fb31be1969a18862dfa35bd193df89e8844eee572c3e737e0.lean/declarations/metric-closedball-infdist-compl-subset-closure--fe220698ebe6e928e627f281.md) | 118 | `result-track:fe220698ebe6e928e627f281cc479a5f7797db8bd1706fa559ffbc672a9a827c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
