# Verification target: GRWTSK.Topology.MetricTopology.GeometricApplications.Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3029a94bb57199032f687505b76b628a053abf58",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3029a94bb57199032f687505b76b628a053abf58`.

Source path: `GRWTSK/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.SmoothFramedSurgery.DisjointCommutation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveScalarCurvatureSemantics](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/positivescalarcurvaturesemantics--0132d2d6c4f8f8b1841ce23f.md) | 54 | `declaration-track:0132d2d6c4f8f8b1841ce23f74a8e3ca13cab8070b950c95e21af5a3b4425fda` |
| 2 | `structure` | [PSCSurgeryInput](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/pscsurgeryinput--54500a26e16b6e8da0e50d89.md) | 99 | `declaration-track:54500a26e16b6e8da0e50d89302f8fa8b2c10996ee81ddd6ac317024913d105a` |
| 3 | `structure` | [PSCSurgeryOutput](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/pscsurgeryoutput--a4bc3a3e8b6f77fe1500a497.md) | 126 | `declaration-track:a4bc3a3e8b6f77fe1500a497a92983791bd0537b03ce30c858feb0d8a22f14f3` |
| 4 | `structure` | [PSCSurgeryCapability](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/pscsurgerycapability--90b65eb088f6042f6a3aaa5b.md) | 142 | `declaration-track:90b65eb088f6042f6a3aaa5b2502dc65388f85e5a7cfcb8d084025c9f8a4d6da` |
| 5 | `theorem` | [psc_codimension_at_least_three](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/psc-codimension-at-least-three--180b1a1f2b92f6b4935bee87.md) | 152 | `result-track:180b1a1f2b92f6b4935bee87dfe40a4afd92d18defb759f01807a935c0b18945` |
| 6 | `theorem` | [exists_psc_metric_after_surgery](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/exists-psc-metric-after-surgery--e5176eba75705055f960cfdc.md) | 165 | `result-track:e5176eba75705055f960cfdc83b917d2df798ed956d717eb5e45c0126d32e6c2` |
| 7 | `theorem` | [psc_surgery_product_near_boundary](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/psc-surgery-product-near-boundary--2a7a9441f96b9981a1bd64d5.md) | 182 | `result-track:2a7a9441f96b9981a1bd64d52cfba19df9ea23b60e20e522c5d0ad7334d94188` |
| 8 | `structure` | [RicciNeckSurgeryTopology](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/riccinecksurgerytopology--604e3b95eef292055297a76f.md) | 201 | `declaration-track:604e3b95eef292055297a76fe51c989bb676dbf18a61a82036f51ba9d3cc91c1` |
| 9 | `def` | [selectedExecution](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/selectedexecution--9cc7135ec0ca81af17653f61.md) | 215 | `declaration-track:9cc7135ec0ca81af17653f6120e217dd8e04e8e71a49ff8bc2ddbf2fe1780a18` |
| 10 | `def` | [preDeletionManifold](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/predeletionmanifold--e0ff414f88263e478ca659ca.md) | 225 | `declaration-track:e0ff414f88263e478ca659cad90361cc312ef71731693a9206dae34d4123c2c1` |
| 11 | `theorem` | [preDeletionManifold_eq_selectedExecution_result](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/predeletionmanifold-eq-selectedexecution-result--36a0551f01a31fbdaf5ec10f.md) | 234 | `result-track:36a0551f01a31fbdaf5ec10f717791ff166ef29bbe7ac62f0d62dfda85198e99` |
| 12 | `def` | [comparisonFromSelectedOrder](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/comparisonfromselectedorder--1ce956feb09419ceaa774f43.md) | 243 | `declaration-track:1ce956feb09419ceaa774f4391f47619e17b25269121a232cc5071128947243d` |
| 13 | `theorem` | [selectedExecution_commutes_with](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/selectedexecution-commutes-with--cb46de4d4cde83aded808b05.md) | 254 | `result-track:cb46de4d4cde83aded808b05bf029c15adcbb1d87d1fec64f126980b42e4a94f` |
| 14 | `theorem` | [coreDimension](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/coredimension--6a4e3af5a637ef254edba5c0.md) | 265 | `result-track:6a4e3af5a637ef254edba5c0fa4d78972dbef1eded6c30ff4b6a3dace73edf8b` |
| 15 | `theorem` | [normalDimension](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/normaldimension--f203692c4e3382c9ebb6ea61.md) | 275 | `result-track:f203692c4e3382c9ebb6ea611fa43aeda0489747915d35f20f9140e7595567f3` |
| 16 | `structure` | [RicciFlowSurgerySemantics](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/ricciflowsurgerysemantics--6239c70dc74634a4f6492563.md) | 291 | `declaration-track:6239c70dc74634a4f64925637569affe079b60af55c6fd0b8ec48d70c7116ab7` |
| 17 | `structure` | [RicciFlowSurgeryInput](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/ricciflowsurgeryinput--b3b0d4294d18406446cb0db3.md) | 352 | `declaration-track:b3b0d4294d18406446cb0db3f01c1fcebadc6b685bcd4291f1090baf3e959851` |
| 18 | `structure` | [RicciFlowSurgeryOutput](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/ricciflowsurgeryoutput--b192a2203397c0bdbd6ef59e.md) | 378 | `declaration-track:b192a2203397c0bdbd6ef59e86703d8b08032245fc14db164ae00701c7feb548` |
| 19 | `structure` | [RicciFlowSurgeryCapability](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/ricciflowsurgerycapability--507f491e777bb7f1c4f50167.md) | 428 | `declaration-track:507f491e777bb7f1c4f501677e0e77d9ad12b8b875eef2dce7ce0272ee31833c` |
| 20 | `def` | [ricciFlowSurgery](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/ricciflowsurgery--cc49ee799918a2d462a616fd.md) | 438 | `declaration-track:cc49ee799918a2d462a616fd621a742cb08dd57218255036865d7783d620b567` |
| 21 | `theorem` | [ricci_flow_surgery_deletion_eligible](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/ricci-flow-surgery-deletion-eligible--cf9e9685362d61a1822a11f5.md) | 449 | `result-track:cf9e9685362d61a1822a11f59cf7a530d2d5244983bd5250f7781d68b972421d` |
| 22 | `theorem` | [ricci_flow_surgery_topology_after_deletion](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/ricci-flow-surgery-topology-after-deletion--4e5a64bb09542c407df8eff2.md) | 464 | `result-track:4e5a64bb09542c407df8eff2ec08bc4017e80ed8696b01c870807328f77dbd26` |
| 23 | `theorem` | [ricci_flow_pre_deletion_slice](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/ricci-flow-pre-deletion-slice--6eb07b4d406bdf02e9c463c1.md) | 478 | `result-track:6eb07b4d406bdf02e9c463c1fd26bcf6cacb5a211073de3ba10786c61a77a48b` |
| 24 | `theorem` | [ricci_flow_retained_union_valid](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/ricci-flow-retained-union-valid--08bb76f858af606a3d76ad5f.md) | 491 | `result-track:08bb76f858af606a3d76ad5f68d6c91ed3cabaaae3ecd81c8451179df272577b` |
| 25 | `theorem` | [ricci_flow_post_metric_corresponds](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/ricci-flow-post-metric-corresponds--3a7dc537c76a3abe33651d0b.md) | 503 | `result-track:3a7dc537c76a3abe33651d0b140f6b74cd8eb20894f23ed49ed952b053c00d27` |
| 26 | `theorem` | [ricci_flow_post_surgery_flow](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/ricci-flow-post-surgery-flow--484d3bc87466ecefb3cdd50f.md) | 516 | `result-track:484d3bc87466ecefb3cdd50fa246555a01c6637bec42168a8ef25db50a579de2` |
| 27 | `theorem` | [ricci_flow_surgery_analytic_conclusions](../../../../../mathematics/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/declarations/ricci-flow-surgery-analytic-conclusions--06df0fc0b70987f432423572.md) | 535 | `result-track:06df0fc0b70987f43242357200038c155b51b538e21007e4a2f7650bcfb79728` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
