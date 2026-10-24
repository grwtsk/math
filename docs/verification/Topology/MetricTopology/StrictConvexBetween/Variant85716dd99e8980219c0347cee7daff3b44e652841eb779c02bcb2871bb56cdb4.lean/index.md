# Verification target: GRWTSK.Topology.MetricTopology.StrictConvexBetween.Variant85716dd99e8980219c0347cee7daff3b44e652841eb779c02bcb2871bb56cdb4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0e71236f38e5397e062abbf456035369a979a81",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/StrictConvexBetween/Variant85716dd99e8980219c0347cee7daff3b44e652841eb779c02bcb2871bb56cdb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant85716dd99e8980219c0347cee7daff3b44e652841eb779c02bcb2871bb56cdb4.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant85716dd99e8980219c0347cee7daff3b44e652841eb779c02bcb2871bb56cdb4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0e71236f38e5397e062abbf456035369a979a81`.

Source path: `GRWTSK/Topology/MetricTopology/StrictConvexBetween/Variant85716dd99e8980219c0347cee7daff3b44e652841eb779c02bcb2871bb56cdb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/StrictConvexBetween/Variant85716dd99e8980219c0347cee7daff3b44e652841eb779c02bcb2871bb56cdb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Between` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.StrictConvexSpace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Affine.AddTorsor` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Affine.Isometry` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Sbtw.dist_lt_max_dist](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant85716dd99e8980219c0347cee7daff3b44e652841eb779c02bcb2871bb56cdb4.lean/declarations/sbtw-dist-lt-max-dist--03c2ab0afd823599bb303de5.md) | 28 | `result-track:03c2ab0afd823599bb303de5b17564031a48d70be8a3e121346b2a61809fe25e` |
| 2 | `theorem` | [Wbtw.dist_le_max_dist](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant85716dd99e8980219c0347cee7daff3b44e652841eb779c02bcb2871bb56cdb4.lean/declarations/wbtw-dist-le-max-dist--61ba4c2230f992d362c5bebc.md) | 44 | `result-track:61ba4c2230f992d362c5bebc1e344d4bb8ec52c73c3ebd91e44ba6345a282ad2` |
| 3 | `theorem` | [Collinear.wbtw_of_dist_eq_of_dist_le](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant85716dd99e8980219c0347cee7daff3b44e652841eb779c02bcb2871bb56cdb4.lean/declarations/collinear-wbtw-of-dist-eq-of-dist-le--dd17edde15c7ade09bcde7c2.md) | 53 | `result-track:dd17edde15c7ade09bcde7c2bd536921eb7794d3765391b275866ce3c52dfadf` |
| 4 | `theorem` | [Collinear.sbtw_of_dist_eq_of_dist_lt](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant85716dd99e8980219c0347cee7daff3b44e652841eb779c02bcb2871bb56cdb4.lean/declarations/collinear-sbtw-of-dist-eq-of-dist-lt--7c956606e83b9acafb7fe228.md) | 73 | `result-track:7c956606e83b9acafb7fe228da03ba77c51ff47c3abcd2c68915bcc45e07d67c` |
| 5 | `lemma` | [dist_add_dist_eq_iff](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant85716dd99e8980219c0347cee7daff3b44e652841eb779c02bcb2871bb56cdb4.lean/declarations/dist-add-dist-eq-iff--983053b2e4614f2dc0b0ecda.md) | 89 | `result-track:983053b2e4614f2dc0b0ecda2c00e2a566fca0d32b907422867eb280102672bd` |
| 6 | `theorem` | [dist_lt_dist_add_dist_iff](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant85716dd99e8980219c0347cee7daff3b44e652841eb779c02bcb2871bb56cdb4.lean/declarations/dist-lt-dist-add-dist-iff--f35d5ac662129a2ea5a6fd4f.md) | 100 | `result-track:f35d5ac662129a2ea5a6fd4f9c2abaad4836c4cf3d06d101dd67e171d287e886` |
| 7 | `lemma` | [eq_lineMap_of_dist_eq_mul_of_dist_eq_mul](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant85716dd99e8980219c0347cee7daff3b44e652841eb779c02bcb2871bb56cdb4.lean/declarations/eq-linemap-of-dist-eq-mul-of-dist-eq-mul--53157b0f8ced54533a8c811a.md) | 110 | `result-track:53157b0f8ced54533a8c811a5ddf89e58c9db9d0782c141226e59b323f453c14` |
| 8 | `lemma` | [eq_midpoint_of_dist_eq_half](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant85716dd99e8980219c0347cee7daff3b44e652841eb779c02bcb2871bb56cdb4.lean/declarations/eq-midpoint-of-dist-eq-half--7854ec473e80c37f6a7ac3f6.md) | 127 | `result-track:7854ec473e80c37f6a7ac3f69c8cce106b96db993669088aee8cf04794c53ab3` |
| 9 | `def` | [affineIsometryOfStrictConvexSpace](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant85716dd99e8980219c0347cee7daff3b44e652841eb779c02bcb2871bb56cdb4.lean/declarations/affineisometryofstrictconvexspace--1c9d8b6c14b0eaf29c2d04bd.md) | 138 | `declaration-track:1c9d8b6c14b0eaf29c2d04bd4246771583f2e4c466f7ee27fefd728c9de3daf1` |
| 10 | `lemma` | [coe_affineIsometryOfStrictConvexSpace](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant85716dd99e8980219c0347cee7daff3b44e652841eb779c02bcb2871bb56cdb4.lean/declarations/coe-affineisometryofstrictconvexspace--1021652cec41cd5a8c678f21.md) | 149 | `result-track:1021652cec41cd5a8c678f21aab582c2339e4c8f57e0f7ad7b2ffb01eccb1574` |
| 11 | `lemma` | [affineIsometryOfStrictConvexSpace_apply](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant85716dd99e8980219c0347cee7daff3b44e652841eb779c02bcb2871bb56cdb4.lean/declarations/affineisometryofstrictconvexspace-apply--8862c8449245418827b1af6a.md) | 152 | `result-track:8862c8449245418827b1af6aa28c65eea52303adc2a4eb324ef02f9f7001e8bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
