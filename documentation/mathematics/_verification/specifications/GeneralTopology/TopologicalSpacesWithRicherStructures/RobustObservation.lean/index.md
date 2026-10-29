# Verification target: Robust Observation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a222f7b2c0049a262954bb19114e66ad67708c9b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/RobustObservation/Variant2a1123ce69e451fe6c8c877e27f5b5697eedae89821108c79fec97e35cad30ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RobustObservation.lean/index.md) · [Full source](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RobustObservation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a222f7b2c0049a262954bb19114e66ad67708c9b`.

Source path: `GRWTSK/Topology/MetricTopology/RobustObservation/Variant2a1123ce69e451fe6c8c877e27f5b5697eedae89821108c79fec97e35cad30ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/RobustObservation/Variant2a1123ce69e451fe6c8c877e27f5b5697eedae89821108c79fec97e35cad30ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Pseudo.Defs` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ZeroDistance](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RobustObservation.lean/declarations/zerodistance.md) | 15 | `declaration-track:c8731fb9a89ade9e7059518d80223cbb523568b261439d1d1e49dd8a705e7abb` |
| 2 | `theorem` | [zeroDistance_equivalence](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RobustObservation.lean/declarations/zerodistance-equivalence.md) | 20 | `result-track:ee44a2c74c56c931ed95ef75eb1d361e0ac23ae85bbdd051e312c35182a24e49` |
| 3 | `def` | [zeroDistanceSetoid](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RobustObservation.lean/declarations/zerodistancesetoid.md) | 36 | `declaration-track:fc6be7963ce4529f86e806f22d73db40983be893c05677bc126f704fd9420afc` |
| 4 | `abbrev` | [MetricIdentification](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RobustObservation.lean/declarations/metricidentification.md) | 42 | `declaration-track:02dc2b631b48262321df9421a2581a1787eac0ec941142640dfaa4f278be885c` |
| 5 | `structure` | [RobustObservation](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RobustObservation.lean/declarations/robustobservation.md) | 46 | `declaration-track:3a92c31f7d7e601eb50f2813cbb6ab2af7ffdce6ef83fe7ae3c5357d4fe495cd` |
| 6 | `def` | [observeMetric](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RobustObservation.lean/declarations/observemetric.md) | 62 | `declaration-track:811e5559533601b4ae7644d14c4178467e7b756ea5d23bc58cbf9adc902911a4` |
| 7 | `def` | [SemanticOntology](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RobustObservation.lean/declarations/semanticontology.md) | 71 | `declaration-track:e56bd4d58f4b7ca4f79f938537d4df9d42a0a1332e0cf149d7d681353639348d` |
| 8 | `def` | [ObservationEquivalent](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RobustObservation.lean/declarations/observationequivalent.md) | 80 | `declaration-track:b80c2a5be8729cfe052cb1b0f93895c5b604254252a8f606aa4193f2e52c091a` |
| 9 | `theorem` | [observationEquivalent_equivalence](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RobustObservation.lean/declarations/observationequivalent-equivalence.md) | 87 | `result-track:6af7a460e43ba50ca8041d9dd770b63a99a1987bf968f51a9636c8e74af6e72b` |
| 10 | `structure` | [ObservationSeparationCertificate](../../../../../GeneralTopology/TopologicalSpacesWithRicherStructures/RobustObservation.lean/declarations/observationseparationcertificate.md) | 101 | `declaration-track:ff717ac8b6e7f2410902f89813f46a6967e464c39f82162166d9f9c95b14dde0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f78c68ca9486d31078d3989fbee5dcd51a2ad32e1671b5435a1e01cc586b8761 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/RobustObservation/Variant2a1123ce69e451fe6c8c877e27f5b5697eedae89821108c79fec97e35cad30ca.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/RobustObservation/Variant2a1123ce69e451fe6c8c877e27f5b5697eedae89821108c79fec97e35cad30ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
