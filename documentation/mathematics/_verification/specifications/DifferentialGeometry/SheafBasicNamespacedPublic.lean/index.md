# Verification target: Sheaf Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad442e82ca0b27a67ba4a066526244599bbba326",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantbb7bdea29ac9bb85024a954f89315f649c3bc8932eabcbc192279a77de56c1a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/SheafBasicNamespacedPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/SheafBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad442e82ca0b27a67ba4a066526244599bbba326`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantbb7bdea29ac9bb85024a954f89315f649c3bc8932eabcbc192279a77de56c1a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantbb7bdea29ac9bb85024a954f89315f649c3bc8932eabcbc192279a77de56c1a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [TopCat.of.chartedSpace](../../../../DifferentialGeometry/SheafBasicNamespacedPublic.lean/declarations/topcat-of-chartedspace.md) | 55 | `declaration-track:3f2cb6aa13980c33f9a8cfdaa74d15ed636f57155a26617a67cb4dc25bf7584d` |
| 2 | `instance` | [TopCat.of.hasGroupoid](../../../../DifferentialGeometry/SheafBasicNamespacedPublic.lean/declarations/topcat-of-hasgroupoid.md) | 58 | `declaration-track:39b8a34e60888f16dc092ebf509df50ce890b4074a8a85bb4b07ddacbf0c3e58` |
| 3 | `def` | [StructureGroupoid.LocalInvariantProp.localPredicate](../../../../DifferentialGeometry/SheafBasicNamespacedPublic.lean/declarations/localpredicate.md) | 64 | `declaration-track:7fe70946cfeb15b2aa21e881cf84e4521da42b2d7bd898f05486b10d29f913df` |
| 4 | `def` | [StructureGroupoid.LocalInvariantProp.sheaf](../../../../DifferentialGeometry/SheafBasicNamespacedPublic.lean/declarations/sheaf.md) | 87 | `declaration-track:2db73542420994ce3527b9c35e05f0e669d44d8f9b10a5f2c9b393a37304caed` |
| 5 | `instance` | [StructureGroupoid.LocalInvariantProp.sheafHasCoeToFun](../../../../DifferentialGeometry/SheafBasicNamespacedPublic.lean/declarations/sheafhascoetofun.md) | 91 | `declaration-track:5d80adcbe4c6d97a9c4cce982f8203c3154a2d0cd6bba155ba9dfa85e76b5c8a` |
| 6 | `theorem` | [StructureGroupoid.LocalInvariantProp.section_spec](../../../../DifferentialGeometry/SheafBasicNamespacedPublic.lean/declarations/section-spec.md) | 95 | `result-track:10bd0c0b3e4dd0c2d7084f536b3100c3a023caf37ed4a1eaf22aedc5da7f21b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ffa996aa79654e7d18ffc926f452401647ed42f3ab32c1546de4711c631efb29 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantbb7bdea29ac9bb85024a954f89315f649c3bc8932eabcbc192279a77de56c1a8.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantbb7bdea29ac9bb85024a954f89315f649c3bc8932eabcbc192279a77de56c1a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
