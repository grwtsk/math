# Verification target: Nonarchimedean Basic Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86408c3e617a807cfc9f762379ffe756e726b9f3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NonarchimedeanBasicNamespacedAligned.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NonarchimedeanBasicNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86408c3e617a807cfc9f762379ffe756e726b9f3`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Subgroup.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.OpenSubgroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NonarchimedeanAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NonarchimedeanBasicNamespacedAligned.lean/declarations/nonarchimedeanaddgroup.md) | 43 | `declaration-track:9f1e6c08c7eafc1ba5a579d8d86d0a994a2de1520a0526703639b0c652194779` |
| 2 | `class` | [NonarchimedeanGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NonarchimedeanBasicNamespacedAligned.lean/declarations/nonarchimedeangroup.md) | 50 | `declaration-track:bf9b80f7461325c4b644b490eadf8b762536a449aca1956f42082b8ced814e7c` |
| 3 | `class` | [NonarchimedeanRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NonarchimedeanBasicNamespacedAligned.lean/declarations/nonarchimedeanring.md) | 57 | `declaration-track:86627bede2652b9f91e4892b569f414d38169ce6c546ebb4fb5f62ac2abc4163` |
| 4 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NonarchimedeanBasicNamespacedAligned.lean/declarations/instance-source-edition-2.md) | 64 | `declaration-track:3e4c96369e706bb19613c0806750fe937adde1cdc147562b3135a33d0a044906` |
| 5 | `theorem` | [nonarchimedean_of_emb](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NonarchimedeanBasicNamespacedAligned.lean/declarations/nonarchimedean-of-emb.md) | 79 | `result-track:1c6f2e5cff487a31fad1ff4014324c141a11e36017527c340d1a1d269a148a48` |
| 6 | `theorem` | [prod_subset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NonarchimedeanBasicNamespacedAligned.lean/declarations/prod-subset.md) | 94 | `result-track:c807348d92c548dfc73f73ce35ef4635ab8455b443a2efd3198be4d943052066` |
| 7 | `theorem` | [prod_self_subset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NonarchimedeanBasicNamespacedAligned.lean/declarations/prod-self-subset.md) | 112 | `result-track:1df4430795467fde92e75db9c32e37cdc5eb474255443bc2766937fd5e29788a` |
| 8 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NonarchimedeanBasicNamespacedAligned.lean/declarations/instance.md) | 121 | `declaration-track:35a18f0e4719186a24840ad744d54092ae4bdba615d5d1c34ac4b8a6fcd92a32` |
| 9 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NonarchimedeanBasicNamespacedAligned.lean/declarations/instance-source-edition-3.md) | 141 | `declaration-track:b94f8cf23a2c62142a00c246b49d5e41a5388f06f1e13a9f7011f23e0784a628` |
| 10 | `theorem` | [left_mul_subset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NonarchimedeanBasicNamespacedAligned.lean/declarations/left-mul-subset.md) | 146 | `result-track:03fba51e0dcb74b713f6cf32eaf7d7660ee64aebd58c389534780ac2f061707c` |
| 11 | `theorem` | [mul_subset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NonarchimedeanBasicNamespacedAligned.lean/declarations/mul-subset.md) | 152 | `result-track:aa97873bacef05ace40468c8edb4f4ceb012a6e298aeb730fd9085dbdc4b0b01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f40b74c55edaeec73c869a9a70c5e5d4f1e9011dd4899e1d55840907bc2e1ca9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantcf68a269ce1a9e1f0152b162363fdd5c15d682fb3c750baf4428f58be0cd985f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
