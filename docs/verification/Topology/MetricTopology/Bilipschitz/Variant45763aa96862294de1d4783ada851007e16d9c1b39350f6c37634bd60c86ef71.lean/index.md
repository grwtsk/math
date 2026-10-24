# Verification target: GRWTSK.Topology.MetricTopology.Bilipschitz.Variant45763aa96862294de1d4783ada851007e16d9c1b39350f6c37634bd60c86ef71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2fc88f43d20b68098907838afb2dff0cf2018de",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Bilipschitz/Variant45763aa96862294de1d4783ada851007e16d9c1b39350f6c37634bd60c86ef71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Bilipschitz/Variant45763aa96862294de1d4783ada851007e16d9c1b39350f6c37634bd60c86ef71.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Bilipschitz/Variant45763aa96862294de1d4783ada851007e16d9c1b39350f6c37634bd60c86ef71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2fc88f43d20b68098907838afb2dff0cf2018de`.

Source path: `GRWTSK/Topology/MetricTopology/Bilipschitz/Variant45763aa96862294de1d4783ada851007e16d9c1b39350f6c37634bd60c86ef71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Bilipschitz/Variant45763aa96862294de1d4783ada851007e16d9c1b39350f6c37634bd60c86ef71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Antilipschitz` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [uniformity_eq_of_bilipschitz](../../../../../mathematics/Topology/MetricTopology/Bilipschitz/Variant45763aa96862294de1d4783ada851007e16d9c1b39350f6c37634bd60c86ef71.lean/declarations/uniformity-eq-of-bilipschitz--07e428f4eb552b540ebd32d3.md) | 64 | `result-track:07e428f4eb552b540ebd32d35ea1d0c8d4e8f90392b83588826ac3646bcbe81f` |
| 2 | `lemma` | [bornology_eq_of_bilipschitz](../../../../../mathematics/Topology/MetricTopology/Bilipschitz/Variant45763aa96862294de1d4783ada851007e16d9c1b39350f6c37634bd60c86ef71.lean/declarations/bornology-eq-of-bilipschitz--cda939bd48ee68dd845a78ca.md) | 79 | `result-track:cda939bd48ee68dd845a78cae4e614900578667cdc3650c3c67c526ce4694a24` |
| 3 | `lemma` | [isBounded_iff_of_bilipschitz](../../../../../mathematics/Topology/MetricTopology/Bilipschitz/Variant45763aa96862294de1d4783ada851007e16d9c1b39350f6c37634bd60c86ef71.lean/declarations/isbounded-iff-of-bilipschitz--a6f28cd65aea5bbca4197f34.md) | 101 | `result-track:a6f28cd65aea5bbca4197f349dc400e4fb7ef9dd7e53abce82f2c8179ac08d16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
