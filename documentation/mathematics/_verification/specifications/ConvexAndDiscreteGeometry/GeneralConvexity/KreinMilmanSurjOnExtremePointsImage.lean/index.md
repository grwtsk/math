# Verification target: Krein Milman Surj On Extreme Points Image

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7921d94fcdfc9729fb71866e1da6f889e5ecb0e4",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/KreinMilman/Variantd080744974f90629a80e11b3b944e93d69c804370b6f6e851a54938b073237ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/KreinMilmanSurjOnExtremePointsImage.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/KreinMilmanSurjOnExtremePointsImage.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7921d94fcdfc9729fb71866e1da6f889e5ecb0e4`.

Source path: `GRWTSK/Topology/GeneralTopology/KreinMilman/Variantd080744974f90629a80e11b3b944e93d69c804370b6f6e851a54938b073237ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/KreinMilman/Variantd080744974f90629a80e11b3b944e93d69c804370b6f6e851a54938b073237ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Exposed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.HahnBanach.Separation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ContinuousAffineMap` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsCompact.extremePoints_nonempty](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/KreinMilmanSurjOnExtremePointsImage.lean/declarations/iscompact-extremepoints-nonempty.md) | 60 | `result-track:df141b8235fd2023a906f4bf3c94f6c58e8302906cc5d8046513decf88922a70` |
| 2 | `theorem` | [closure_convexHull_extremePoints](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/KreinMilmanSurjOnExtremePointsImage.lean/declarations/closure-convexhull-extremepoints.md) | 92 | `result-track:fdba30c4b954fc443ff9509dfd5c1ffc05cc1ca641718cd6f66e07f6a31dc941` |
| 3 | `lemma` | [surjOn_extremePoints_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/KreinMilmanSurjOnExtremePointsImage.lean/declarations/surjon-extremepoints-image.md) | 107 | `result-track:ff5d2abbdacd13a46c87eef1df119fa8c518afe5481c07b17dfbdd23ba431233` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d7e3c09133186496620f5fa60d2aac5d02a03831cd52dbe3413d43f16e80b780 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/KreinMilman/Variantd080744974f90629a80e11b3b944e93d69c804370b6f6e851a54938b073237ca.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/KreinMilman/Variantd080744974f90629a80e11b3b944e93d69c804370b6f6e851a54938b073237ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
