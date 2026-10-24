# Verification target: GRWTSK.Topology.GeneralTopology.SmoothExistence.Variantdb308bf757a7b51bdbc835872445266c51f9c2c60708f6e5aae068fc628b9c9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "571ddc94784d8e3249130f32c246c69ba13d1c8c",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SmoothExistence/Variantdb308bf757a7b51bdbc835872445266c51f9c2c60708f6e5aae068fc628b9c9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SmoothExistence/Variantdb308bf757a7b51bdbc835872445266c51f9c2c60708f6e5aae068fc628b9c9b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SmoothExistence/Variantdb308bf757a7b51bdbc835872445266c51f9c2c60708f6e5aae068fc628b9c9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `571ddc94784d8e3249130f32c246c69ba13d1c8c`.

Source path: `GRWTSK/Topology/GeneralTopology/SmoothExistence/Variantdb308bf757a7b51bdbc835872445266c51f9c2c60708f6e5aae068fc628b9c9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SmoothExistence/Variantdb308bf757a7b51bdbc835872445266c51f9c2c60708f6e5aae068fc628b9c9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Lemma` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.PartitionOfUnity` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Bound` — import line 14; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.Mathlib.Algebra.Notation.Support` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [smooth_urysohn_support_Ioo](../../../../../mathematics/Topology/GeneralTopology/SmoothExistence/Variantdb308bf757a7b51bdbc835872445266c51f9c2c60708f6e5aae068fc628b9c9b.lean/declarations/smooth-urysohn-support-ioo--8d4c1c608d4b69c700cb40b5.md) | 22 | `result-track:8d4c1c608d4b69c700cb40b5269f4864418232db6081c06e733ea5117f53a0b7` |
| 2 | `lemma` | [SmoothExistence](../../../../../mathematics/Topology/GeneralTopology/SmoothExistence/Variantdb308bf757a7b51bdbc835872445266c51f9c2c60708f6e5aae068fc628b9c9b.lean/declarations/smoothexistence--d52d3bfdd22d5216d1863262.md) | 57 | `result-track:d52d3bfdd22d5216d1863262b4f12b2eded1b561877deb604c813148bb1b19c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
