# Verification target: GRWTSK.Topology.MetricTopology.StrictConvexBetween.Variantab3f6fcdf342682213a66af07bf9f40e2001e4eef510f682dfbcbf0ab7780645

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "186f1fa55e016220f96a4ab09252ab5b22957aed",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/StrictConvexBetween/Variantab3f6fcdf342682213a66af07bf9f40e2001e4eef510f682dfbcbf0ab7780645.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variantab3f6fcdf342682213a66af07bf9f40e2001e4eef510f682dfbcbf0ab7780645.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variantab3f6fcdf342682213a66af07bf9f40e2001e4eef510f682dfbcbf0ab7780645.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `186f1fa55e016220f96a4ab09252ab5b22957aed`.

Source path: `GRWTSK/Topology/MetricTopology/StrictConvexBetween/Variantab3f6fcdf342682213a66af07bf9f40e2001e4eef510f682dfbcbf0ab7780645.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/StrictConvexBetween/Variantab3f6fcdf342682213a66af07bf9f40e2001e4eef510f682dfbcbf0ab7780645.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Between` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.StrictConvexSpace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Affine.AddTorsor` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Affine.Isometry` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Sbtw.dist_lt_max_dist](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variantab3f6fcdf342682213a66af07bf9f40e2001e4eef510f682dfbcbf0ab7780645.lean/declarations/sbtw-dist-lt-max-dist--174d274452c0ba345a54566e.md) | 36 | `result-track:174d274452c0ba345a54566e77f9e8d87ae6f8c5708f970db65e408088188daf` |
| 2 | `theorem` | [Wbtw.dist_le_max_dist](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variantab3f6fcdf342682213a66af07bf9f40e2001e4eef510f682dfbcbf0ab7780645.lean/declarations/wbtw-dist-le-max-dist--7dd6062e01432ee80d6d731f.md) | 52 | `result-track:7dd6062e01432ee80d6d731f885774408ed23db30b1fb0c8d95ab361ccf3d998` |
| 3 | `theorem` | [Collinear.wbtw_of_dist_eq_of_dist_le](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variantab3f6fcdf342682213a66af07bf9f40e2001e4eef510f682dfbcbf0ab7780645.lean/declarations/collinear-wbtw-of-dist-eq-of-dist-le--e9a6d59e0529250b6e5ba60e.md) | 61 | `result-track:e9a6d59e0529250b6e5ba60ed2d82295d6c289be75dda4b16f9d98623cdffe63` |
| 4 | `theorem` | [Collinear.sbtw_of_dist_eq_of_dist_lt](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variantab3f6fcdf342682213a66af07bf9f40e2001e4eef510f682dfbcbf0ab7780645.lean/declarations/collinear-sbtw-of-dist-eq-of-dist-lt--ead101ea245d6def7a8a5dd2.md) | 81 | `result-track:ead101ea245d6def7a8a5dd2d2ed9ce91b9811a7c31646c65b86f945ad29a5b3` |
| 5 | `lemma` | [dist_add_dist_eq_iff](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variantab3f6fcdf342682213a66af07bf9f40e2001e4eef510f682dfbcbf0ab7780645.lean/declarations/dist-add-dist-eq-iff--2707113fd56f577279fdb348.md) | 97 | `result-track:2707113fd56f577279fdb348f7ea9855906c3f90fcfbd3c93872d5376f71c097` |
| 6 | `theorem` | [dist_lt_dist_add_dist_iff](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variantab3f6fcdf342682213a66af07bf9f40e2001e4eef510f682dfbcbf0ab7780645.lean/declarations/dist-lt-dist-add-dist-iff--d4a2a8ba835ae1086a5dca70.md) | 108 | `result-track:d4a2a8ba835ae1086a5dca7057e2ade98c550537074353191e54087b0589ee12` |
| 7 | `lemma` | [eq_lineMap_of_dist_eq_mul_of_dist_eq_mul](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variantab3f6fcdf342682213a66af07bf9f40e2001e4eef510f682dfbcbf0ab7780645.lean/declarations/eq-linemap-of-dist-eq-mul-of-dist-eq-mul--7ccd7310fcddb996c571feaf.md) | 118 | `result-track:7ccd7310fcddb996c571feaf78e0ef80681bc8929da80fe726f0f0c3cf2b3b84` |
| 8 | `lemma` | [eq_midpoint_of_dist_eq_half](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variantab3f6fcdf342682213a66af07bf9f40e2001e4eef510f682dfbcbf0ab7780645.lean/declarations/eq-midpoint-of-dist-eq-half--9906a62d49feab0e0f59f40a.md) | 135 | `result-track:9906a62d49feab0e0f59f40a61fc92e808613b5a453d916a331f99bc952e0d7d` |
| 9 | `def` | [affineIsometryOfStrictConvexSpace](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variantab3f6fcdf342682213a66af07bf9f40e2001e4eef510f682dfbcbf0ab7780645.lean/declarations/affineisometryofstrictconvexspace--2225dd703dac77660c32639a.md) | 146 | `declaration-track:2225dd703dac77660c32639a33c8274934cd982c7c7871764eefc785452eeca1` |
| 10 | `lemma` | [coe_affineIsometryOfStrictConvexSpace](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variantab3f6fcdf342682213a66af07bf9f40e2001e4eef510f682dfbcbf0ab7780645.lean/declarations/coe-affineisometryofstrictconvexspace--972846a3263db4880339fcca.md) | 157 | `result-track:972846a3263db4880339fccac08a4c37169a997472744289bf4f5e45b9b92ff7` |
| 11 | `lemma` | [affineIsometryOfStrictConvexSpace_apply](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variantab3f6fcdf342682213a66af07bf9f40e2001e4eef510f682dfbcbf0ab7780645.lean/declarations/affineisometryofstrictconvexspace-apply--3a2d1bbcaaccf536226918cf.md) | 160 | `result-track:3a2d1bbcaaccf536226918cfd420472aa826a496618b12cde6eab683d2f6ee8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
