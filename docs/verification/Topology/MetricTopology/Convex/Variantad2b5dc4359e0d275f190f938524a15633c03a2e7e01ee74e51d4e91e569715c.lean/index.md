# Verification target: GRWTSK.Topology.MetricTopology.Convex.Variantad2b5dc4359e0d275f190f938524a15633c03a2e7e01ee74e51d4e91e569715c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a45f5d5a2e2e3619e4e9b61cdc7576986db2e474",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Convex/Variantad2b5dc4359e0d275f190f938524a15633c03a2e7e01ee74e51d4e91e569715c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Convex/Variantad2b5dc4359e0d275f190f938524a15633c03a2e7e01ee74e51d4e91e569715c.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Convex/Variantad2b5dc4359e0d275f190f938524a15633c03a2e7e01ee74e51d4e91e569715c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a45f5d5a2e2e3619e4e9b61cdc7576986db2e474`.

Source path: `GRWTSK/Topology/MetricTopology/Convex/Variantad2b5dc4359e0d275f190f938524a15633c03a2e7e01ee74e51d4e91e569715c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Convex/Variantad2b5dc4359e0d275f190f938524a15633c03a2e7e01ee74e51d4e91e569715c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Between` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Affine.AddTorsorBases` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Convex` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Wbtw.dist_add_dist](../../../../../mathematics/Topology/MetricTopology/Convex/Variantad2b5dc4359e0d275f190f938524a15633c03a2e7e01ee74e51d4e91e569715c.lean/declarations/wbtw-dist-add-dist--71f10bf7905cf0091d0248ec.md) | 35 | `result-track:71f10bf7905cf0091d0248ec8b1bcd72cc3c7eec5ba067c78014742f97a32e17` |
| 2 | `theorem` | [dist_add_dist_of_mem_segment](../../../../../mathematics/Topology/MetricTopology/Convex/Variantad2b5dc4359e0d275f190f938524a15633c03a2e7e01ee74e51d4e91e569715c.lean/declarations/dist-add-dist-of-mem-segment--b2ad29faa0ddc67e3f6ca8cb.md) | 40 | `result-track:b2ad29faa0ddc67e3f6ca8cb69abaf5062649681462dd52e6552cebddca5fd64` |
| 3 | `lemma` | [exists_mem_interior_convexHull_affineBasis](../../../../../mathematics/Topology/MetricTopology/Convex/Variantad2b5dc4359e0d275f190f938524a15633c03a2e7e01ee74e51d4e91e569715c.lean/declarations/exists-mem-interior-convexhull-affinebasis--af2abea3ebb293e0c3489a50.md) | 50 | `result-track:af2abea3ebb293e0c3489a504b270d5568924669be6793e6f619aa71ae5e9739` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
