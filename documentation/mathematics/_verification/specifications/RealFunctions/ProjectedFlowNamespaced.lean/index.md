# Verification target: Projected Flow Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e073993f48a57cfaa16261272f4e123fb6c96782",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ProjectedFlow/Variantdc219684d7599b3414f241e253b2a5e9a56daf5996d40aedcf9c098464a4e413.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ProjectedFlowNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/ProjectedFlowNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e073993f48a57cfaa16261272f4e123fb6c96782`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ProjectedFlow/Variantdc219684d7599b3414f241e253b2a5e9a56daf5996d40aedcf9c098464a4e413.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ProjectedFlow/Variantdc219684d7599b3414f241e253b2a5e9a56daf5996d40aedcf9c098464a4e413.lean.json)

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
| 1 | `structure` | [FiniteFeasibleGraph](../../../../RealFunctions/ProjectedFlowNamespaced.lean/declarations/finitefeasiblegraph.md) | 23 | `declaration-track:f96ce493816a6a539df278001083a6841151db70e07d7c03a7d8368b23de1b32` |
| 2 | `structure` | [FeasibleProbabilityVector](../../../../RealFunctions/ProjectedFlowNamespaced.lean/declarations/feasibleprobabilityvector.md) | 30 | `declaration-track:be5ba618a8784cc5b856d4906a47732905c994a2e6c0b32c501fd5059349d544` |
| 3 | `structure` | [ProjectedTransitionOperator](../../../../RealFunctions/ProjectedFlowNamespaced.lean/declarations/projectedtransitionoperator.md) | 37 | `declaration-track:42559a25992533a9fe050efeedafdd1ff4bb730c2f567d097f08f63368a8f7b6` |
| 4 | `structure` | [FeasibleBoundaryChecker](../../../../RealFunctions/ProjectedFlowNamespaced.lean/declarations/feasibleboundarychecker.md) | 44 | `declaration-track:6831223af6f3cb3d9aa20101be86ef35274803e60b86abbf4845ea5ae6bf7a11` |
| 5 | `structure` | [ProjectedFlowCertificate](../../../../RealFunctions/ProjectedFlowNamespaced.lean/declarations/projectedflowcertificate.md) | 50 | `declaration-track:6eae92aa4221e3d34e5315f23313e07b57dcf022fe5f8ad12fd457252bfa551d` |
| 6 | `def` | [ProjectedFlowCertificate.sound](../../../../RealFunctions/ProjectedFlowNamespaced.lean/declarations/projectedflowcertificate-sound.md) | 57 | `declaration-track:8c942111b1c26d589fff107f7d0383da1a9cb49b385300c12fec34e9f1829044` |
| 7 | `theorem` | [projected_flow_preserves_feasibility](../../../../RealFunctions/ProjectedFlowNamespaced.lean/declarations/projected-flow-preserves-feasibility.md) | 64 | `result-track:5c9c6c42ac923c394e65e8a88214ca08419a14cc4ce76aca0520e10738ee5962` |
| 8 | `theorem` | [projected_flow_preserves_zero_boundary](../../../../RealFunctions/ProjectedFlowNamespaced.lean/declarations/projected-flow-preserves-zero-boundary.md) | 72 | `result-track:dd6d2e5854877b4d5185ca7781f09e31f9a5440a0fc31511ad27b858bb4aea8e` |
| 9 | `theorem` | [projected_flow_certificate_sound](../../../../RealFunctions/ProjectedFlowNamespaced.lean/declarations/projected-flow-certificate-sound.md) | 78 | `result-track:b8271ec333d6c69e21413b16381834cb704dc4de49413ac90814b1d63e115837` |
| 10 | `theorem` | [projected_flow_through_boundary_calculus](../../../../RealFunctions/ProjectedFlowNamespaced.lean/declarations/projected-flow-through-boundary-calculus.md) | 86 | `result-track:44eb6f2c1ffeeca16dba315910da0a1ad1c86dec55839e1a5d9b1e9cee33b7ff` |
| 11 | `def` | [FullStateFlowWithoutProjectionOwnsProjectedFeasibility](../../../../RealFunctions/ProjectedFlowNamespaced.lean/declarations/fullstateflowwithoutprojectionownsprojectedfeasibility.md) | 92 | `declaration-track:8285b477ead71ce2d3e2686ac5353301281c3fbdcb54789d1ca02f9a7cc820cd` |
| 12 | `theorem` | [full_state_flow_without_projection_authority_attempt_fails](../../../../RealFunctions/ProjectedFlowNamespaced.lean/declarations/full-state-flow-without-projection-authority-attempt-fails.md) | 97 | `result-track:a23fdcac37e8bb83aa10efc43f1dbebbf463ea09b7db1894e3d056312ba3d50c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4548499ca06d7d66381c8e6ef6669ef25fc3788a4c755e1547b24a152923394e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ProjectedFlow/Variantdc219684d7599b3414f241e253b2a5e9a56daf5996d40aedcf9c098464a4e413.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/ProjectedFlow/Variantdc219684d7599b3414f241e253b2a5e9a56daf5996d40aedcf9c098464a4e413.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
