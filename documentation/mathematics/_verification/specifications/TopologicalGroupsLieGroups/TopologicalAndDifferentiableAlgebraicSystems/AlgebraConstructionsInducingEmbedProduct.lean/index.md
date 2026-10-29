# Verification target: Algebra Constructions Inducing Embed Product

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b086d9149c62fd6fcbd9ad76e0dd10c5f22d943",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraConstructionsInducingEmbedProduct.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraConstructionsInducingEmbedProduct.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b086d9149c62fd6fcbd9ad76e0dd10c5f22d943`.

Source path: `GRWTSK/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instTopologicalSpaceMulOpposite](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraConstructionsInducingEmbedProduct.lean/declarations/insttopologicalspacemulopposite.md) | 32 | `declaration-track:250796a3951014f802838040f54294c8dec284ee1f7113e3bd7e15aee6768e98` |
| 2 | `theorem` | [continuous_unop](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraConstructionsInducingEmbedProduct.lean/declarations/continuous-unop.md) | 38 | `result-track:fb2028128ccbe663ac0c9711dee8aee7516051934426daaa53fa1df34f79dad2` |
| 3 | `theorem` | [continuous_op](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraConstructionsInducingEmbedProduct.lean/declarations/continuous-op.md) | 44 | `result-track:89f4fc99185825cea3e21fedfcc67434e30b536a2e6c0320741464223099e692` |
| 4 | `def` | [opHomeomorph](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraConstructionsInducingEmbedProduct.lean/declarations/ophomeomorph.md) | 51 | `declaration-track:8b4a50e00968ccf61c27946400e3a904a833def711c6a46f4384e02510d3c4a0` |
| 5 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraConstructionsInducingEmbedProduct.lean/declarations/instance.md) | 59 | `declaration-track:b4a7e590c5f0244063e6cbbf74ef1b30800749c760532f831681bfb0f5c6d6c2` |
| 6 | `theorem` | [map_op_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraConstructionsInducingEmbedProduct.lean/declarations/map-op-nhds.md) | 63 | `result-track:aa56894f427f7086c013abf03e3683682882be6c20512e2cb62f0a734b243ea0` |
| 7 | `theorem` | [map_unop_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraConstructionsInducingEmbedProduct.lean/declarations/map-unop-nhds.md) | 69 | `result-track:5aa7c95cc780c05a7ea8d5ac587566e06b3805cc0ad1aad72db494b400efec42` |
| 8 | `theorem` | [comap_op_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraConstructionsInducingEmbedProduct.lean/declarations/comap-op-nhds.md) | 75 | `result-track:743f2ff15ad345c2f14f75ae3933df143f6089b89b5bd19cb899cf8a137f2c77` |
| 9 | `theorem` | [comap_unop_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraConstructionsInducingEmbedProduct.lean/declarations/comap-unop-nhds.md) | 81 | `result-track:38f704cbc29bc0ea2c7c1a48deb83048b749f8adf868b3cc0a6877bb1cb7d28a` |
| 10 | `instance` | [instTopologicalSpaceUnits](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraConstructionsInducingEmbedProduct.lean/declarations/insttopologicalspaceunits.md) | 97 | `declaration-track:54711b4bb0c9db124f004fb3909e7cd85bc97d37ba65eaa7a13bc2a52410a7e2` |
| 11 | `theorem` | [inducing_embedProduct](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraConstructionsInducingEmbedProduct.lean/declarations/inducing-embedproduct.md) | 101 | `result-track:191ef1e48c6fd016bb670920168e848e1ddca47553c3193db0bc7aebe4161fa5` |
| 12 | `theorem` | [embedding_embedProduct](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraConstructionsInducingEmbedProduct.lean/declarations/embedding-embedproduct.md) | 107 | `result-track:320939263556e663902c0588e531ebb88aacd4ea6ea758680eef7bf8e633ad2d` |
| 13 | `lemma` | [topology_eq_inf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraConstructionsInducingEmbedProduct.lean/declarations/topology-eq-inf.md) | 112 | `result-track:39108f53225768285105886fb5ae086551c5adb834f4658f42269f9c71891f8a` |
| 14 | `lemma` | [embedding_val_mk'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraConstructionsInducingEmbedProduct.lean/declarations/embedding-val-mk.md) | 124 | `result-track:45d6332dea90e78c3137c1c745203178b8602826199b1efa4558a518cb6d9efe` |
| 15 | `lemma` | [embedding_val_mk](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraConstructionsInducingEmbedProduct.lean/declarations/embedding-val-mk-source-edition-2.md) | 138 | `result-track:7b5a2681c662130fd91beaabded757aa3d9b8712a5951c26667586f9a22b0022` |
| 16 | `theorem` | [continuous_embedProduct](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraConstructionsInducingEmbedProduct.lean/declarations/continuous-embedproduct.md) | 145 | `result-track:b35c54c2600034f11ca1120a990190dbdb36c111ba7a89a369dd47c5743d5760` |
| 17 | `theorem` | [continuous_val](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraConstructionsInducingEmbedProduct.lean/declarations/continuous-val.md) | 151 | `result-track:0ba02b57cc91ed7c628c86d2117884446e0ff16b87749c8ae61ff53c453b13e7` |
| 18 | `theorem` | [continuous_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraConstructionsInducingEmbedProduct.lean/declarations/continuous-iff.md) | 157 | `result-track:ced04bbf700d1eca24500c551d5d4595a9d853528cc46ec1b6a3d5a3fe771a07` |
| 19 | `theorem` | [continuous_coe_inv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraConstructionsInducingEmbedProduct.lean/declarations/continuous-coe-inv.md) | 166 | `result-track:24eb794dbdba5f202878cf7237c3fb85072082929e04514cf63433b907e3aa89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bfe2b6683bb6a27607a7fadc8af2119973187bd3246f005f06eb083a0c835a10 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Constructions/Variant73818ac7e529542b0793e9bf7e437b14cdeb9eac7b4b8de3a571ffe60e4f8861.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
