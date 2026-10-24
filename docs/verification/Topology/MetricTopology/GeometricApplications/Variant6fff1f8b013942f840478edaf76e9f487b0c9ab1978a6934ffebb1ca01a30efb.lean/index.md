# Verification target: GRWTSK.Topology.MetricTopology.GeometricApplications.Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4e296b55239a755d7e3cf2fa59956cfa2c3ba55",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4e296b55239a755d7e3cf2fa59956cfa2c3ba55`.

Source path: `GRWTSK/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.SmoothFramedSurgery.DisjointCommutation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveScalarCurvatureSemantics](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/positivescalarcurvaturesemantics--69133d56fc586739e684b605.md) | 62 | `declaration-track:69133d56fc586739e684b60581da0566b820ab3bccd1a59c02ee6731010a9a73` |
| 2 | `structure` | [PSCSurgeryInput](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/pscsurgeryinput--528ebc35328c2ef8c5c9a796.md) | 107 | `declaration-track:528ebc35328c2ef8c5c9a7965257502efb89cc14b74837212e84e628f808560d` |
| 3 | `structure` | [PSCSurgeryOutput](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/pscsurgeryoutput--971806cb1ca5961abbee0170.md) | 134 | `declaration-track:971806cb1ca5961abbee01704cd8fc6dfc77eee92cdb2e8b360f551b81f58b6a` |
| 4 | `structure` | [PSCSurgeryCapability](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/pscsurgerycapability--f7361fd9602a676aac8390cd.md) | 150 | `declaration-track:f7361fd9602a676aac8390cde64871a0f1b655c790f8a04ede6562c33a458a40` |
| 5 | `theorem` | [psc_codimension_at_least_three](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/psc-codimension-at-least-three--30329f2270397795a9f7aa21.md) | 160 | `result-track:30329f2270397795a9f7aa21e7762f4077ea3a47961d71f53f6a143c95f82726` |
| 6 | `theorem` | [exists_psc_metric_after_surgery](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/exists-psc-metric-after-surgery--d125ac709968d8ffe84e4cfd.md) | 173 | `result-track:d125ac709968d8ffe84e4cfd6ccf1b6b4b87c32a50f24f6d545a17692ab5f701` |
| 7 | `theorem` | [psc_surgery_product_near_boundary](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/psc-surgery-product-near-boundary--8153da89f2b2a3a09c31d778.md) | 190 | `result-track:8153da89f2b2a3a09c31d778cd70afb592bb62c5aa403e605e5339ce87ce19b6` |
| 8 | `structure` | [RicciNeckSurgeryTopology](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/riccinecksurgerytopology--d1f48aa9134b295595277e08.md) | 209 | `declaration-track:d1f48aa9134b295595277e086e1b3ac6d25d3cec8e2a8e82743a866dbb057975` |
| 9 | `def` | [selectedExecution](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/selectedexecution--d603323ad90e803f2c439268.md) | 223 | `declaration-track:d603323ad90e803f2c43926819cd94d711230247156fba1634a893dff548ce7e` |
| 10 | `def` | [preDeletionManifold](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/predeletionmanifold--64363dce7fa1046f5686b67f.md) | 233 | `declaration-track:64363dce7fa1046f5686b67ffc6c4eb20b106de125e3750eeed223699b90ec6d` |
| 11 | `theorem` | [preDeletionManifold_eq_selectedExecution_result](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/predeletionmanifold-eq-selectedexecution-result--dbaf5a12378233d0bcba3137.md) | 242 | `result-track:dbaf5a12378233d0bcba313746a2653b3ed9242f00f81c00f34e3c3342f0ab1c` |
| 12 | `def` | [comparisonFromSelectedOrder](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/comparisonfromselectedorder--6d8d78fea67e7c64823ec36f.md) | 251 | `declaration-track:6d8d78fea67e7c64823ec36f05082ef66309777c7057cbb1cbff40fd7422a6c9` |
| 13 | `theorem` | [selectedExecution_commutes_with](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/selectedexecution-commutes-with--26f2ac3df116c08f32e0f070.md) | 262 | `result-track:26f2ac3df116c08f32e0f0705b16bfc364c5a356de59adbe8f4d03c9f437c4f8` |
| 14 | `theorem` | [coreDimension](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/coredimension--d25713f8469a86390ca5c37e.md) | 273 | `result-track:d25713f8469a86390ca5c37ee617700316b06490346ef509ff7a80881cb7eafa` |
| 15 | `theorem` | [normalDimension](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/normaldimension--58a8d395998ad5ea4634c417.md) | 283 | `result-track:58a8d395998ad5ea4634c417a130c46fc40f003f49ea0059854cf83153bd655f` |
| 16 | `structure` | [RicciFlowSurgerySemantics](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/ricciflowsurgerysemantics--44134aa08fcdd5f56398ee39.md) | 299 | `declaration-track:44134aa08fcdd5f56398ee39f78afb33b05068e72c16c039f2bfae2a86006e07` |
| 17 | `structure` | [RicciFlowSurgeryInput](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/ricciflowsurgeryinput--2ea0bc9028d171bcfb567da7.md) | 360 | `declaration-track:2ea0bc9028d171bcfb567da76f6a8dccf4a85895ead243a888f1287026df9fd4` |
| 18 | `structure` | [RicciFlowSurgeryOutput](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/ricciflowsurgeryoutput--b4081babbd9087b3a7404db3.md) | 386 | `declaration-track:b4081babbd9087b3a7404db3646db240507e6b6b178e41267f8762a42d09c43d` |
| 19 | `structure` | [RicciFlowSurgeryCapability](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/ricciflowsurgerycapability--8b577d18dad841633f4fbcfd.md) | 436 | `declaration-track:8b577d18dad841633f4fbcfdbd887b25af53e0ab134782d81de54fc5575e0418` |
| 20 | `def` | [ricciFlowSurgery](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/ricciflowsurgery--d5ed0854649186e9cfc327df.md) | 446 | `declaration-track:d5ed0854649186e9cfc327dfc1aaf7aaffdcc6a33b243a48fcdf3b1ef9bf2fe4` |
| 21 | `theorem` | [ricci_flow_surgery_deletion_eligible](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/ricci-flow-surgery-deletion-eligible--dbd641987add2e3f93b583e8.md) | 457 | `result-track:dbd641987add2e3f93b583e86bccc50b8a3ea24ed226803ea5a807340ca0ba7d` |
| 22 | `theorem` | [ricci_flow_surgery_topology_after_deletion](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/ricci-flow-surgery-topology-after-deletion--4068d0bba7ac3d67077bdade.md) | 472 | `result-track:4068d0bba7ac3d67077bdade993d67bf0d9b9c42a4ebe3e54adafdab992c10ba` |
| 23 | `theorem` | [ricci_flow_pre_deletion_slice](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/ricci-flow-pre-deletion-slice--55b64ce1f3b2b67288a092c5.md) | 486 | `result-track:55b64ce1f3b2b67288a092c54c3b167832880c5294cea7366a24a3f538953134` |
| 24 | `theorem` | [ricci_flow_retained_union_valid](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/ricci-flow-retained-union-valid--512b07f55deed318fadfeea5.md) | 499 | `result-track:512b07f55deed318fadfeea5312f1955c12399a715cd2f6f224f1600ac88d2ae` |
| 25 | `theorem` | [ricci_flow_post_metric_corresponds](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/ricci-flow-post-metric-corresponds--bac81a0d8ba83fa4f10139af.md) | 511 | `result-track:bac81a0d8ba83fa4f10139af3920530fa835c3ae6ad30536db5ee560cac275c6` |
| 26 | `theorem` | [ricci_flow_post_surgery_flow](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/ricci-flow-post-surgery-flow--da44aaa88a76b612acb51e7a.md) | 524 | `result-track:da44aaa88a76b612acb51e7acfb119874342c84e54a682047adbf0d6fc6312fc` |
| 27 | `theorem` | [ricci_flow_surgery_analytic_conclusions](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/declarations/ricci-flow-surgery-analytic-conclusions--ca17e97cea48d8e98345aec7.md) | 543 | `result-track:ca17e97cea48d8e98345aec789cc356d53a9d7eb8a90389f97602f998699fd82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
