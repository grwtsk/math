# Verification target: Authority Namespaced Evidence Class

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a63c63be1d8eaae9821e7af4d607212de03bf285",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantf89e2a4cc7931418fbd1581582ef6da26dcc5876f0c36403567c3b0f92dbb5d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AuthorityNamespacedEvidenceClass.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AuthorityNamespacedEvidenceClass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a63c63be1d8eaae9821e7af4d607212de03bf285`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantf89e2a4cc7931418fbd1581582ef6da26dcc5876f0c36403567c3b0f92dbb5d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantf89e2a4cc7931418fbd1581582ef6da26dcc5876f0c36403567c3b0f92dbb5d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AuthorityClass](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AuthorityNamespacedEvidenceClass.lean/declarations/authorityclass.md) | 21 | `declaration-track:6e8323cdca6a263dd28835b351aa76b0627f8dd717d3227a9bb166b8363aa9f7` |
| 2 | `inductive` | [EvidenceClass](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AuthorityNamespacedEvidenceClass.lean/declarations/evidenceclass.md) | 30 | `declaration-track:cb0d83a6a10e078635bf1834490afa7130d0c8c42d36aa3007faa3c80185bebe` |
| 3 | `theorem` | [authorityClass_pairwise_disjoint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AuthorityNamespacedEvidenceClass.lean/declarations/authorityclass-pairwise-disjoint.md) | 40 | `result-track:867d6a4da67a92b0275d5deebf66190708f6f9a376fc24f5a64ba7a66be41cbf` |
| 4 | `theorem` | [checkingBoundaryRoles_pairwise_disjoint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AuthorityNamespacedEvidenceClass.lean/declarations/checkingboundaryroles-pairwise-disjoint.md) | 49 | `result-track:4fe3f69009fa3d86801b16ecb9bba9f50f487f3ebbb6d6f69cbed23a790fade5` |
| 5 | `theorem` | [evidenceClass_pairwise_disjoint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AuthorityNamespacedEvidenceClass.lean/declarations/evidenceclass-pairwise-disjoint.md) | 57 | `result-track:efd02cd0e7ec1f610533fbd972db3808fbebf6c4eb6199ffa9d9e7bf75072449` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58e227af1616834d740fbb62c2127ed8ee56dcec2dbf1530b0bbb649aab0b8dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantf89e2a4cc7931418fbd1581582ef6da26dcc5876f0c36403567c3b0f92dbb5d5.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantf89e2a4cc7931418fbd1581582ef6da26dcc5876f0c36403567c3b0f92dbb5d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
