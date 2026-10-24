# Verification target: GRWTSK.Topology.MetricTopology.Bilipschitz.Variant97b22b55956e63de57e5895025f589a3a79fdbee70c5a078887879517db0edd9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e69f60fc5dbcce1ad43435045d7c05f10e42860",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Bilipschitz/Variant97b22b55956e63de57e5895025f589a3a79fdbee70c5a078887879517db0edd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Bilipschitz/Variant97b22b55956e63de57e5895025f589a3a79fdbee70c5a078887879517db0edd9.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Bilipschitz/Variant97b22b55956e63de57e5895025f589a3a79fdbee70c5a078887879517db0edd9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e69f60fc5dbcce1ad43435045d7c05f10e42860`.

Source path: `GRWTSK/Topology/MetricTopology/Bilipschitz/Variant97b22b55956e63de57e5895025f589a3a79fdbee70c5a078887879517db0edd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Bilipschitz/Variant97b22b55956e63de57e5895025f589a3a79fdbee70c5a078887879517db0edd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Antilipschitz` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [uniformity_eq_of_bilipschitz](../../../../../mathematics/Topology/MetricTopology/Bilipschitz/Variant97b22b55956e63de57e5895025f589a3a79fdbee70c5a078887879517db0edd9.lean/declarations/uniformity-eq-of-bilipschitz--2aa5ab4c2cc3a088f70751a5.md) | 56 | `result-track:2aa5ab4c2cc3a088f70751a54567b306f5b0372220e80994496681ee9f6cbe37` |
| 2 | `lemma` | [bornology_eq_of_bilipschitz](../../../../../mathematics/Topology/MetricTopology/Bilipschitz/Variant97b22b55956e63de57e5895025f589a3a79fdbee70c5a078887879517db0edd9.lean/declarations/bornology-eq-of-bilipschitz--f4ebeb27b157ecd77d2c4b68.md) | 71 | `result-track:f4ebeb27b157ecd77d2c4b68c6509b3f86f87f32a77faeab6666f7d7b9a8701f` |
| 3 | `lemma` | [isBounded_iff_of_bilipschitz](../../../../../mathematics/Topology/MetricTopology/Bilipschitz/Variant97b22b55956e63de57e5895025f589a3a79fdbee70c5a078887879517db0edd9.lean/declarations/isbounded-iff-of-bilipschitz--be8e23aa38d455600da8b67e.md) | 93 | `result-track:be8e23aa38d455600da8b67e2198c2ec545890606165fca64bfd2471c544f6c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
