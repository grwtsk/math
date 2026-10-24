# Verification target: GRWTSK.Topology.MetricTopology.UnitizationL1.Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da6a66b1b9c468c8a311c7a958f610522a5cf6b1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da6a66b1b9c468c8a311c7a958f610522a5cf6b1`.

Source path: `GRWTSK/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Unitization` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Lp.ProdLp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitization_addEquiv_prod](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean/declarations/unitization-addequiv-prod--04edcae73598b06bb98c9d45.md) | 43 | `declaration-track:04edcae73598b06bb98c9d451b0b43c5d3864ce0c78d30b4d49cd6fec3a8f1d3` |
| 2 | `instance` | [instUnitizationNormedAddCommGroup](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean/declarations/instunitizationnormedaddcommgroup--2f1c9b77389ef799d28ea032.md) | 47 | `declaration-track:2f1c9b77389ef799d28ea032aaa8219615f817391e1b4ee108296ca30251da46` |
| 3 | `def` | [uniformEquiv_unitization_addEquiv_prod](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean/declarations/uniformequiv-unitization-addequiv-prod--a9979db4ae67a1291541095c.md) | 53 | `declaration-track:a9979db4ae67a1291541095cc9027cb056d7e8e2a0b605dc770f17d7d6dbbf7c` |
| 4 | `instance` | [instCompleteSpace](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean/declarations/instcompletespace--c6a131fb37ef51e28361613c.md) | 59 | `declaration-track:c6a131fb37ef51e28361613c7a85a2f73adc718a08669c5a507ba6786e14ada7` |
| 5 | `lemma` | [unitization_norm_def](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean/declarations/unitization-norm-def--27691dee151e75e7d19ba21c.md) | 67 | `result-track:27691dee151e75e7d19ba21c82e45eb0d4c3890d45141e1ccca29479769dc979` |
| 6 | `lemma` | [unitization_nnnorm_def](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean/declarations/unitization-nnnorm-def--e343d4cd33a8aae83d4198fc.md) | 74 | `result-track:e343d4cd33a8aae83d4198fcd02fbad2b03fbfbee7519912cf4f5ffc557fb737` |
| 7 | `lemma` | [unitization_norm_inr](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean/declarations/unitization-norm-inr--377520b2a894361ae24cc36f.md) | 78 | `result-track:377520b2a894361ae24cc36f1c1225e0c6b385a7aa49456e8f7d88b3034243df` |
| 8 | `lemma` | [unitization_nnnorm_inr](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean/declarations/unitization-nnnorm-inr--42d52fa10eeee3f5d5f0a26d.md) | 81 | `result-track:42d52fa10eeee3f5d5f0a26df96e4d30fb85b5803b97986ede7c03f26a0ed56f` |
| 9 | `lemma` | [unitization_isometry_inr](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean/declarations/unitization-isometry-inr--28d2678689d16675b0045c73.md) | 84 | `result-track:28d2678689d16675b0045c73e0944535c1f431b507048dced4b5ca424912740b` |
| 10 | `instance` | [instUnitizationRing](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean/declarations/instunitizationring--2e229b9e4a5872312328e12f.md) | 92 | `declaration-track:2e229b9e4a5872312328e12fca1826d963ad5e66fa887adb6761928f3b55c50e` |
| 11 | `lemma` | [unitization_mul](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean/declarations/unitization-mul--910cbfb9aa8f593fd254b533.md) | 96 | `result-track:910cbfb9aa8f593fd254b5337ca179bcca8f8d510081a2ce584f5a9598714c62` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean/declarations/instance--5187c8a9523d224b099c1721.md) | 100 | `declaration-track:5187c8a9523d224b099c17212b0be42e35b076c487bd2597956cdf983655c6d4` |
| 13 | `lemma` | [unitization_algebraMap](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean/declarations/unitization-algebramap--909d3a1807854d6ce65f1343.md) | 105 | `result-track:909d3a1807854d6ce65f13433c0f853bbd4e40e313ca3893f482c34ddcb4e783` |
| 14 | `def` | [unitizationAlgEquiv](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean/declarations/unitizationalgequiv--33ee5de97ccb818677ce33f5.md) | 112 | `declaration-track:33ee5de97ccb818677ce33f51d4229cedd8e3a8a60c206bd1b609710cec7a49d` |
| 15 | `instance` | [instUnitizationNormedRing](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean/declarations/instunitizationnormedring--94c29e01f332bdd27a30180a.md) | 119 | `declaration-track:94c29e01f332bdd27a30180a948641718a0ffa8b5bb2b54fcb7582fcb1acb04c` |
| 16 | `instance` | [instUnitizationNormedAlgebra](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant43daf2daa49f1bd9b6aa42cbf5e044e16a3e82be3e60db84670a6b6d0c395521.lean/declarations/instunitizationnormedalgebra--846816cdb9ba6f548fec54c7.md) | 134 | `declaration-track:846816cdb9ba6f548fec54c7fbb6f397216133101693edcfe0ddb92cbd396595` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
