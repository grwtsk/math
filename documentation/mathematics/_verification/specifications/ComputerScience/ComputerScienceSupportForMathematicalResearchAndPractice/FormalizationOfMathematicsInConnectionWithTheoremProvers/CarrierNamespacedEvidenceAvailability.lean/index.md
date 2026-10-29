# Verification target: Carrier Namespaced Evidence Availability

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2a8320742a3751659bdfd47c0d130f6361ee209",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carrier/Variant402c5b3c42fabe6251fa20b00d728c4c01b2a1e1dde49c7e46952515e3dd561b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CarrierNamespacedEvidenceAvailability.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CarrierNamespacedEvidenceAvailability.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2a8320742a3751659bdfd47c0d130f6361ee209`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carrier/Variant402c5b3c42fabe6251fa20b00d728c4c01b2a1e1dde49c7e46952515e3dd561b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carrier/Variant402c5b3c42fabe6251fa20b00d728c4c01b2a1e1dde49c7e46952515e3dd561b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Resolution.Kind` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [EvidenceAvailability](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CarrierNamespacedEvidenceAvailability.lean/declarations/evidenceavailability.md) | 20 | `declaration-track:30e96d35babed15e5db3500f7abd67fb2b241e5f6946092352b8189152b82d27` |
| 2 | `inductive` | [EvidenceValidity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CarrierNamespacedEvidenceAvailability.lean/declarations/evidencevalidity.md) | 25 | `declaration-track:d28907dbb9b52ff0320ebbbe332b885fffe772046e4931116c6762bd0e213b73` |
| 3 | `inductive` | [TheoremCoordinate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CarrierNamespacedEvidenceAvailability.lean/declarations/theoremcoordinate.md) | 31 | `declaration-track:4c231a4ea676781450236427a6f3829cfef4bee29826719019a80ea6c0aa151f` |
| 4 | `structure` | [ResolutionCarrierCell](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CarrierNamespacedEvidenceAvailability.lean/declarations/resolutioncarriercell.md) | 37 | `declaration-track:3f2288764ed0f2b41836af6e5b55f8b7409ee33040e3c0a2fec1b0f09fc05069` |
| 5 | `def` | [ResolutionCarrierCell.ofStatus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CarrierNamespacedEvidenceAvailability.lean/declarations/resolutioncarriercell-ofstatus.md) | 44 | `declaration-track:173549f54630e870b82ec8b9be24bdfbc2931d9d3fb297b6a2711e4fec9f6a6a` |
| 6 | `theorem` | [unresolved_status_is_not_false](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CarrierNamespacedEvidenceAvailability.lean/declarations/unresolved-status-is-not-false.md) | 53 | `result-track:f38cf83bf5b22d0799865d04faf129415fb7ec29a9c1b84877a3fc8f04613578` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=decae0db35b44e47973bb93d2281079c3f4cf5edbde48bb7c30282ba06d51002 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carrier/Variant402c5b3c42fabe6251fa20b00d728c4c01b2a1e1dde49c7e46952515e3dd561b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carrier/Variant402c5b3c42fabe6251fa20b00d728c4c01b2a1e1dde49c7e46952515e3dd561b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
