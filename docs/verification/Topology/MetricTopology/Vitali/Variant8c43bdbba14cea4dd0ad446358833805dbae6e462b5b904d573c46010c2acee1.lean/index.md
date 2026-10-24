# Verification target: GRWTSK.Topology.MetricTopology.Vitali.Variant8c43bdbba14cea4dd0ad446358833805dbae6e462b5b904d573c46010c2acee1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31ff0eb700101d92296f25a6ffdbbf33cb617375",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Vitali/Variant8c43bdbba14cea4dd0ad446358833805dbae6e462b5b904d573c46010c2acee1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Vitali/Variant8c43bdbba14cea4dd0ad446358833805dbae6e462b5b904d573c46010c2acee1.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Vitali/Variant8c43bdbba14cea4dd0ad446358833805dbae6e462b5b904d573c46010c2acee1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31ff0eb700101d92296f25a6ffdbbf33cb617375`.

Source path: `GRWTSK/Topology/MetricTopology/Vitali/Variant8c43bdbba14cea4dd0ad446358833805dbae6e462b5b904d573c46010c2acee1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Vitali/Variant8c43bdbba14cea4dd0ad446358833805dbae6e462b5b904d573c46010c2acee1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.VitaliFamily` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_disjoint_subfamily_covering_enlargment](../../../../../mathematics/Topology/MetricTopology/Vitali/Variant8c43bdbba14cea4dd0ad446358833805dbae6e462b5b904d573c46010c2acee1.lean/declarations/exists-disjoint-subfamily-covering-enlargment--a46307d3842f926bcdd51756.md) | 59 | `result-track:a46307d3842f926bcdd51756a23379708dbb646849ee7668f623c2a9a3c76517` |
| 2 | `theorem` | [exists_disjoint_subfamily_covering_enlargment_closedBall](../../../../../mathematics/Topology/MetricTopology/Vitali/Variant8c43bdbba14cea4dd0ad446358833805dbae6e462b5b904d573c46010c2acee1.lean/declarations/exists-disjoint-subfamily-covering-enlargment-closedball--c031f9c699d5fc20aac6b28c.md) | 162 | `result-track:c031f9c699d5fc20aac6b28c92bd1f21ce3c560a37c5e3d9a4768a7a980f35ce` |
| 3 | `theorem` | [exists_disjoint_covering_ae](../../../../../mathematics/Topology/MetricTopology/Vitali/Variant8c43bdbba14cea4dd0ad446358833805dbae6e462b5b904d573c46010c2acee1.lean/declarations/exists-disjoint-covering-ae--1b49368ac688417cd8b26bf5.md) | 203 | `result-track:1b49368ac688417cd8b26bf56bc03139a48635ba0e9f2c95d713ac6e9fa82bbd` |
| 4 | `def` | [vitaliFamily](../../../../../mathematics/Topology/MetricTopology/Vitali/Variant8c43bdbba14cea4dd0ad446358833805dbae6e462b5b904d573c46010c2acee1.lean/declarations/vitalifamily--fae579e0185867e36ff5c9e2.md) | 402 | `declaration-track:fae579e0185867e36ff5c9e2571af11a7d8f4be7ea25425df64989ef4f4925ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
