# Verification target: GRWTSK.Topology.MetricTopology.CompactSpaceStdSimplex.Variant12be8aa7335f36feb17e8fc5461110024a35567692d6f7e2c5eaeceb108eeb1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a737c13106340fe3fb34e77d2e5e2395c105fa45",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/CompactSpaceStdSimplex/Variant12be8aa7335f36feb17e8fc5461110024a35567692d6f7e2c5eaeceb108eeb1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/CompactSpaceStdSimplex/Variant12be8aa7335f36feb17e8fc5461110024a35567692d6f7e2c5eaeceb108eeb1e.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/CompactSpaceStdSimplex/Variant12be8aa7335f36feb17e8fc5461110024a35567692d6f7e2c5eaeceb108eeb1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a737c13106340fe3fb34e77d2e5e2395c105fa45`.

Source path: `GRWTSK/Topology/MetricTopology/CompactSpaceStdSimplex/Variant12be8aa7335f36feb17e8fc5461110024a35567692d6f7e2c5eaeceb108eeb1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/CompactSpaceStdSimplex/Variant12be8aa7335f36feb17e8fc5461110024a35567692d6f7e2c5eaeceb108eeb1e.lean.json)

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
| 1 | `lemma` | [range_toFun_comp_weights_subset_closedBall](../../../../../mathematics/Topology/MetricTopology/CompactSpaceStdSimplex/Variant12be8aa7335f36feb17e8fc5461110024a35567692d6f7e2c5eaeceb108eeb1e.lean/declarations/range-tofun-comp-weights-subset-closedball--dfefd54e458463981563389b.md) | 33 | `result-track:dfefd54e458463981563389b6efc625b7c7b36f433d7dceea5ff699c03af0f47` |
| 2 | `lemma` | [isBounded_range_toFun_comp_weights](../../../../../mathematics/Topology/MetricTopology/CompactSpaceStdSimplex/Variant12be8aa7335f36feb17e8fc5461110024a35567692d6f7e2c5eaeceb108eeb1e.lean/declarations/isbounded-range-tofun-comp-weights--42607cd6855f29201bea5217.md) | 38 | `result-track:42607cd6855f29201bea52177546e7e529717a13c2363b6a54e3b13b57af7b86` |
| 3 | `lemma` | [diam_range_toFun_comp_weights_subset_closedBall](../../../../../mathematics/Topology/MetricTopology/CompactSpaceStdSimplex/Variant12be8aa7335f36feb17e8fc5461110024a35567692d6f7e2c5eaeceb108eeb1e.lean/declarations/diam-range-tofun-comp-weights-subset-closedball--8795aa689ea99b89c03eb4b1.md) | 44 | `result-track:8795aa689ea99b89c03eb4b1f2546d96962900ed6f1c9e0d3b8538b05937b063` |
| 4 | `lemma` | [diam_range_toFun_comp_weights_subset_closedBall_eq_zero](../../../../../mathematics/Topology/MetricTopology/CompactSpaceStdSimplex/Variant12be8aa7335f36feb17e8fc5461110024a35567692d6f7e2c5eaeceb108eeb1e.lean/declarations/diam-range-tofun-comp-weights-subset-closedball-eq-zero--4793876be3b64914aa044d0e.md) | 53 | `result-track:4793876be3b64914aa044d0eb3226f79f8120abe752e42b02e947ad29ef1f30e` |
| 5 | `lemma` | [diam_range_toFun_comp_weights_subset_closedBall_eq_one](../../../../../mathematics/Topology/MetricTopology/CompactSpaceStdSimplex/Variant12be8aa7335f36feb17e8fc5461110024a35567692d6f7e2c5eaeceb108eeb1e.lean/declarations/diam-range-tofun-comp-weights-subset-closedball-eq-one--42974337717fb16d76d85f6a.md) | 62 | `result-track:42974337717fb16d76d85f6a033b2618e67d2c1db10cd3cf045a690abac4f037` |
| 6 | `instance` | [compactSpace](../../../../../mathematics/Topology/MetricTopology/CompactSpaceStdSimplex/Variant12be8aa7335f36feb17e8fc5461110024a35567692d6f7e2c5eaeceb108eeb1e.lean/declarations/compactspace--532f144a20edf9842be38dd2.md) | 76 | `declaration-track:532f144a20edf9842be38dd2b49081fe7b7285506eeffe016155793cbd61bf9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
