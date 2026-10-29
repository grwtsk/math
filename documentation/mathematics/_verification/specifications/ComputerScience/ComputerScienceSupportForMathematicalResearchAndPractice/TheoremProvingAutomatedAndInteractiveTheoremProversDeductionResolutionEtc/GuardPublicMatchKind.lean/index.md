# Verification target: Guard Public Match Kind

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d881b177c7417f37fe05237cb3532d49b0dacf0",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guard/Varianta6ec79d51ffd6e7f42ddcd9762654426eb6e3e7c14413d80d45fc4b6107fa723.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardPublicMatchKind.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardPublicMatchKind.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d881b177c7417f37fe05237cb3532d49b0dacf0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guard/Varianta6ec79d51ffd6e7f42ddcd9762654426eb6e3e7c14413d80d45fc4b6107fa723.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guard/Varianta6ec79d51ffd6e7f42ddcd9762654426eb6e3e7c14413d80d45fc4b6107fa723.lean.json)

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
| 1 | `inductive` | [MatchKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardPublicMatchKind.lean/declarations/matchkind.md) | 23 | `declaration-track:e9a5ac2c3e3f8abc2a18dd20a1d8c736f052d6849fc110380be5005cc080da9c` |
| 2 | `def` | [colon.toMatchKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardPublicMatchKind.lean/declarations/colon-tomatchkind.md) | 34 | `declaration-track:5cfccc89752018bc12463f767f061db723e89cc6ab046e801d6a822e4e022764` |
| 3 | `def` | [colonEq.toMatchKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardPublicMatchKind.lean/declarations/coloneq-tomatchkind.md) | 42 | `declaration-track:a641caa835d95beff9517568651847acd2c4bb777d7aba7841927677f191619f` |
| 4 | `def` | [equal.toMatchKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardPublicMatchKind.lean/declarations/equal-tomatchkind.md) | 50 | `declaration-track:b8a48f786db7a6fa9b0cec1aa9159524baa761d0239198a0647db54d1e1dc65d` |
| 5 | `def` | [MatchKind.isEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardPublicMatchKind.lean/declarations/matchkind-iseq.md) | 58 | `declaration-track:577757b4b0aa82248359df4df427f9b56e5e9eb98b6c0a62ae3c07c695ecf5be` |
| 6 | `def` | [MatchKind.toStringDescr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardPublicMatchKind.lean/declarations/matchkind-tostringdescr.md) | 64 | `declaration-track:81a36e08ec66eeea6f5ac2016b117cb48b9251e127fc98c767e69bd7ab3d611b` |
| 7 | `def` | [elabAndEvalMatchKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardPublicMatchKind.lean/declarations/elabandevalmatchkind.md) | 77 | `declaration-track:2176b948130b00c2e8d01da7b86fb9c55396b9d83dbf2147aa0e686250813d09` |
| 8 | `def` | [evalGuardExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardPublicMatchKind.lean/declarations/evalguardexpr.md) | 87 | `declaration-track:552b8422f5aa012d451d9213bde16e72717d6b579b72128bee15bd51e8888a8c` |
| 9 | `def` | [evalGuardExprConv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardPublicMatchKind.lean/declarations/evalguardexprconv.md) | 97 | `declaration-track:7f10e5c22da459b0a88f8b154b825bfadde1146cee0be857aa031d42e2ba7bfd` |
| 10 | `def` | [evalGuardTarget](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardPublicMatchKind.lean/declarations/evalguardtarget.md) | 100 | `declaration-track:a2b2bdf8f10ca4b831836458cd968176e1cade6eeed7562c8d4d156d16d81941` |
| 11 | `def` | [evalGuardTargetConv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardPublicMatchKind.lean/declarations/evalguardtargetconv.md) | 114 | `declaration-track:a9bde34af195a9f503a50a863db6edfab3f6f124e234f6cd1f0b04cfc5803785` |
| 12 | `def` | [evalGuardHyp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardPublicMatchKind.lean/declarations/evalguardhyp.md) | 117 | `declaration-track:67c2d9899973c4e057a75dada92249b6473d61133248ef8d7f1b41101b48593b` |
| 13 | `def` | [evalGuardHypConv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardPublicMatchKind.lean/declarations/evalguardhypconv.md) | 144 | `declaration-track:0c895bbd178d3ba8f7aed86e40e5cb70a040a59ff0bb1d0305a60ef7185a1353` |
| 14 | `def` | [evalGuardExprCmd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardPublicMatchKind.lean/declarations/evalguardexprcmd.md) | 147 | `declaration-track:586317d15628e8ca735ee0112945abe8778e9b79c853a1c45fa4d8bb97d3c8ce` |
| 15 | `def` | [evalGuardCmd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardPublicMatchKind.lean/declarations/evalguardcmd.md) | 156 | `declaration-track:c7f55ba27d346d9401c585ff9420f280ab56912a6ede9141eaeb64be1ca25b6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fad06d15cefe6e83724f353851f462d21b293d29166a6564cb334bdd295a627e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guard/Varianta6ec79d51ffd6e7f42ddcd9762654426eb6e3e7c14413d80d45fc4b6107fa723.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guard/Varianta6ec79d51ffd6e7f42ddcd9762654426eb6e3e7c14413d80d45fc4b6107fa723.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
