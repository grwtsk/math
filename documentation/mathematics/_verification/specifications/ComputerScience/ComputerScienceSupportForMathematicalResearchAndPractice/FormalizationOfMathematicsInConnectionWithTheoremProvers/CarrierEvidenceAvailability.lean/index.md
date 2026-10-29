# Verification target: Carrier Evidence Availability

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba7e38a4b57b1ae59ea67c1f42034402743c1b95",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carrier/Variant147a2a9f9b08e96566e281c46cb9e557534d27b35d0e03793ce42adec99ba027.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CarrierEvidenceAvailability.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CarrierEvidenceAvailability.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba7e38a4b57b1ae59ea67c1f42034402743c1b95`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carrier/Variant147a2a9f9b08e96566e281c46cb9e557534d27b35d0e03793ce42adec99ba027.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carrier/Variant147a2a9f9b08e96566e281c46cb9e557534d27b35d0e03793ce42adec99ba027.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Resolution.Kind` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [EvidenceAvailability](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CarrierEvidenceAvailability.lean/declarations/evidenceavailability.md) | 12 | `declaration-track:3586ae6d8714f81e5dcf709cc7bd63a9ae4f305afcfec7f4cadcd85e49b310c7` |
| 2 | `inductive` | [EvidenceValidity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CarrierEvidenceAvailability.lean/declarations/evidencevalidity.md) | 17 | `declaration-track:2accd0ab8ee0256a51c89ab317b20b4b115820efe8e95eae309b3485bcc2b853` |
| 3 | `inductive` | [TheoremCoordinate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CarrierEvidenceAvailability.lean/declarations/theoremcoordinate.md) | 23 | `declaration-track:f6df803574deeaa5a0d8983163dc7342bbb3e311acad157f45457fbae4779e50` |
| 4 | `structure` | [ResolutionCarrierCell](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CarrierEvidenceAvailability.lean/declarations/resolutioncarriercell.md) | 29 | `declaration-track:260ec88e3171dcb8b8acc0628beb5601342426087bd9d338688129deb9c5c660` |
| 5 | `def` | [ResolutionCarrierCell.ofStatus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CarrierEvidenceAvailability.lean/declarations/resolutioncarriercell-ofstatus.md) | 36 | `declaration-track:72d57da14139c694d570975398301c7bb3b444d17a949479556fc565d42590bb` |
| 6 | `theorem` | [unresolved_status_is_not_false](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CarrierEvidenceAvailability.lean/declarations/unresolved-status-is-not-false.md) | 45 | `result-track:84e44f92587278545271d24c5e546754446987e4731db5856d3520224391a032` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86d070d2768fe5558552a3c889eb899d0a4c936c3b9f5a05a8bbb41ccd9c8812 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carrier/Variant147a2a9f9b08e96566e281c46cb9e557534d27b35d0e03793ce42adec99ba027.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carrier/Variant147a2a9f9b08e96566e281c46cb9e557534d27b35d0e03793ce42adec99ba027.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
