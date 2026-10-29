# Verification target: Robust Observation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26af6344c0948062ea53e4966d8d4abf33188ccf",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/RobustObservation/Variantff9344872f3ae2381934578dff239ecdac9f475793e2bc6e61da503fa9cc0130.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RobustObservationNamespaced.lean/index.md) · [Full source](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RobustObservationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26af6344c0948062ea53e4966d8d4abf33188ccf`.

Source path: `GRWTSK/Topology/MetricTopology/RobustObservation/Variantff9344872f3ae2381934578dff239ecdac9f475793e2bc6e61da503fa9cc0130.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/RobustObservation/Variantff9344872f3ae2381934578dff239ecdac9f475793e2bc6e61da503fa9cc0130.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Pseudo.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ZeroDistance](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RobustObservationNamespaced.lean/declarations/zerodistance.md) | 23 | `declaration-track:494601e860c675be7f2fadb612a3d05e2e174b2c1e10c991a8caf4d0a5467d5a` |
| 2 | `theorem` | [zeroDistance_equivalence](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RobustObservationNamespaced.lean/declarations/zerodistance-equivalence.md) | 28 | `result-track:c767ae9cee700b20a30dfa477e2ed16d4fddafa83a949811d64c2871ce663f9d` |
| 3 | `def` | [zeroDistanceSetoid](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RobustObservationNamespaced.lean/declarations/zerodistancesetoid.md) | 44 | `declaration-track:9452c7bf7104a2435f1e970a4020508e747a9e81355b4242cc82a2529cdb68f7` |
| 4 | `abbrev` | [MetricIdentification](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RobustObservationNamespaced.lean/declarations/metricidentification.md) | 50 | `declaration-track:3af6c467b6b2a32c19a93883fe4993a2ead0ece9f18543dfdf64a8127916ed4f` |
| 5 | `structure` | [RobustObservation](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RobustObservationNamespaced.lean/declarations/robustobservation.md) | 54 | `declaration-track:cdcce40e7644c1998e19462ecdb8dcc8d2ab68ea4192f56c1be7a764430419c8` |
| 6 | `def` | [observeMetric](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RobustObservationNamespaced.lean/declarations/observemetric.md) | 70 | `declaration-track:157aaeee21bc0435b149744689775a898d7ee95f2715a6e0c4f3ec992547d801` |
| 7 | `def` | [SemanticOntology](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RobustObservationNamespaced.lean/declarations/semanticontology.md) | 79 | `declaration-track:ceab73491aa5990b8f53d665505769bb9034d0c697cd2b41a574dd46370d5a4f` |
| 8 | `def` | [ObservationEquivalent](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RobustObservationNamespaced.lean/declarations/observationequivalent.md) | 88 | `declaration-track:711a1d07e357c06e517daf09fb5a3bbab5dcbabb1f214333d861b4bbd070ba41` |
| 9 | `theorem` | [observationEquivalent_equivalence](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RobustObservationNamespaced.lean/declarations/observationequivalent-equivalence.md) | 95 | `result-track:f536316033da0e591044fe2cbbfe8a4ae2a0ceb0035a954aa4ba158a1ca179a7` |
| 10 | `structure` | [ObservationSeparationCertificate](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RobustObservationNamespaced.lean/declarations/observationseparationcertificate.md) | 109 | `declaration-track:067fe1e51f5b017c10c767faee0ba3af080fbb8573cc76598fe9c8ba5aa3c060` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90f864b4ef5819b284ea063609b71c1c6bcbb5138fec87e4134105961ab4b424 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/RobustObservation/Variantff9344872f3ae2381934578dff239ecdac9f475793e2bc6e61da503fa9cc0130.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/RobustObservation/Variantff9344872f3ae2381934578dff239ecdac9f475793e2bc6e61da503fa9cc0130.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
