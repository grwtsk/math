# Verification target: Algebra Field Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd4ab79bbe279f73202d08c8d0e0c03b4e6eda9e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Field/Variant52e5996f0731108d6937467f80e9ae18dc2ecb6c95e9db981f4d40ec7918c0f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraFieldNamespacedPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraFieldNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd4ab79bbe279f73202d08c8d0e0c03b4e6eda9e`.

Source path: `GRWTSK/Topology/GeneralTopology/Field/Variant52e5996f0731108d6937467f80e9ae18dc2ecb6c95e9db981f4d40ec7918c0f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Field/Variant52e5996f0731108d6937467f80e9ae18dc2ecb6c95e9db981f4d40ec7918c0f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Filter.tendsto_cocompact_mul_left₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraFieldNamespacedPublic.lean/declarations/filter-tendsto-cocompact-mul-left.md) | 37 | `result-track:a7522c5853cc463ac9e85f3701a3d080a84bb5b6516dcbd605f7cd2536762bc6` |
| 2 | `theorem` | [Filter.tendsto_cocompact_mul_right₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraFieldNamespacedPublic.lean/declarations/filter-tendsto-cocompact-mul-right.md) | 43 | `result-track:c564a40601b26a9467f01f34ec4e00215eb5a65d75b02c5fabfbe103c0dbbd80` |
| 3 | `theorem` | [DivisionRing.finite_of_compactSpace_of_t2Space](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraFieldNamespacedPublic.lean/declarations/divisionring-finite-of-compactspace-of-t2space.md) | 49 | `result-track:108208f616f907ff52e08366f8a50eb70c58d1744b034623848b99bc33490f7a` |
| 4 | `class` | [IsTopologicalDivisionRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraFieldNamespacedPublic.lean/declarations/istopologicaldivisionring.md) | 60 | `declaration-track:fc9c7587507068125dba3125a2e3e8bb3fcb94ad7d7f209d0c29e55ff34eabe3` |
| 5 | `def` | [Subfield.topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraFieldNamespacedPublic.lean/declarations/subfield-topologicalclosure.md) | 68 | `declaration-track:91bc0b7815726fda6203740f5d95f6cc68b63b4ae4ad3c09af0150cf3f8b49f8` |
| 6 | `theorem` | [Subfield.le_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraFieldNamespacedPublic.lean/declarations/subfield-le-topologicalclosure.md) | 77 | `result-track:fb6e8ca427299efa195a5f84cfccdfb1ecc25ced537f3a5243f271624d1bcf04` |
| 7 | `theorem` | [Subfield.isClosed_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraFieldNamespacedPublic.lean/declarations/subfield-isclosed-topologicalclosure.md) | 80 | `result-track:ff2db40a9f0fe4288d6fd17372f63a022560ab66585c3c77445836c4d9cc6725` |
| 8 | `theorem` | [Subfield.topologicalClosure_minimal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraFieldNamespacedPublic.lean/declarations/subfield-topologicalclosure-minimal.md) | 84 | `result-track:bba769e4d6c2b93277ae0e0ecf74e20171e1f1eeb22b8f5ea889e91a510fe4d6` |
| 9 | `def` | [Nonneg.unitsHomeomorphPos](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraFieldNamespacedPublic.lean/declarations/nonneg-unitshomeomorphpos.md) | 94 | `declaration-track:1857b69236caf6ea7570672fcc6ca608e876625c3167ba5fe007edf627424932` |
| 10 | `def` | [affineHomeomorph](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraFieldNamespacedPublic.lean/declarations/affinehomeomorph.md) | 128 | `declaration-track:039228250a55c37a7adeebb6628eb342f1281d5b3f7ae551668c9a38d487a812` |
| 11 | `theorem` | [affineHomeomorph_image_Icc](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraFieldNamespacedPublic.lean/declarations/affinehomeomorph-image-icc.md) | 136 | `result-track:c70cf3fb0c266f544ef5aa938b9dc5176372c98bdf30083feca5e6a47e8ec21a` |
| 12 | `theorem` | [affineHomeomorph_image_Ico](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraFieldNamespacedPublic.lean/declarations/affinehomeomorph-image-ico.md) | 142 | `result-track:d166ef7de259aa21c82b2685bdd02b8fb55bcca3a69c26bc2a4765c0bd238cdc` |
| 13 | `theorem` | [affineHomeomorph_image_Ioc](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraFieldNamespacedPublic.lean/declarations/affinehomeomorph-image-ioc.md) | 148 | `result-track:297c9ffc7563611d8270ccc90a358da71530495d20ec8518312dd01dea9a36c8` |
| 14 | `theorem` | [affineHomeomorph_image_Ioo](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraFieldNamespacedPublic.lean/declarations/affinehomeomorph-image-ioo.md) | 154 | `result-track:3c4143cb1405f90164aa2bd1238654918f927a6984e1990aaa0bd6ebaa199da0` |
| 15 | `theorem` | [IsLocalMin.inv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraFieldNamespacedPublic.lean/declarations/islocalmin-inv.md) | 169 | `result-track:601d8e5a6888514215d8db2487de52a9e06117047dd5bedb379c9582815bebd4` |
| 16 | `theorem` | [IsPreconnected.eq_one_or_eq_neg_one_of_sq_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraFieldNamespacedPublic.lean/declarations/ispreconnected-eq-one-or-eq-neg-one-of-sq-eq.md) | 186 | `result-track:81eccec915b68e2f7a32ca07c38f50e48d843d4dd727dbcc8a2a15c975e6bc45` |
| 17 | `theorem` | [IsPreconnected.eq_or_eq_neg_of_sq_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraFieldNamespacedPublic.lean/declarations/ispreconnected-eq-or-eq-neg-of-sq-eq.md) | 196 | `result-track:95fc65f9303883f00cb761b906abcb83a15110d75bf35b7fe96a42a1a1c0c50e` |
| 18 | `theorem` | [IsPreconnected.eq_of_sq_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraFieldNamespacedPublic.lean/declarations/ispreconnected-eq-of-sq-eq.md) | 208 | `result-track:775266436d677993ce96dd04f68a6e9aed4e1ed4900e2c115e0d50739a840c9f` |
| 19 | `instance` | [Subfield.continuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraFieldNamespacedPublic.lean/declarations/subfield-continuoussmul.md) | 224 | `declaration-track:00c7a14a576a4ba5d954be590608bd211f90a8b64e9d1dbfebdb43b243926961` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=feb400bb71d0a1f993cbc6eb576d476eb1b06e78960bfc40c3e6da627e8714d2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Field/Variant52e5996f0731108d6937467f80e9ae18dc2ecb6c95e9db981f4d40ec7918c0f8.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Field/Variant52e5996f0731108d6937467f80e9ae18dc2ecb6c95e9db981f4d40ec7918c0f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
