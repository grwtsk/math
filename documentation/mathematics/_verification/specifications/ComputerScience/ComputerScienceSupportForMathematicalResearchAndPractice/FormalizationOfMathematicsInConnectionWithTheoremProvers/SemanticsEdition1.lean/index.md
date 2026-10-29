# Verification target: Semantics Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8e22c1d8d2b2366b4a99e7a929849c0e88a6c81",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variant57e0b5969af923f7f5dc4ef45bdec5a88552dfb3f66e81fc5079401ca54d3231.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SemanticsEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SemanticsEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8e22c1d8d2b2366b4a99e7a929849c0e88a6c81`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variant57e0b5969af923f7f5dc4ef45bdec5a88552dfb3f66e81fc5079401ca54d3231.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variant57e0b5969af923f7f5dc4ef45bdec5a88552dfb3f66e81fc5079401ca54d3231.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Presentation.Syntax` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LogTotalityBoundary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SemanticsEdition1.lean/declarations/logtotalityboundary.md) | 25 | `declaration-track:106c62d516d26107f3d1f2141958dc95ca35f228e86806150f259ef93f05c3cf` |
| 2 | `def` | [complexLogTotalityBoundary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SemanticsEdition1.lean/declarations/complexlogtotalityboundary.md) | 31 | `declaration-track:b1f61e2ad76370ba1c29d2c4e5527658e98badb0c6625ce81cddc471d2e43a61` |
| 3 | `structure` | [ComplexLikeSemantics](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SemanticsEdition1.lean/declarations/complexlikesemantics.md) | 45 | `declaration-track:6369c0a425a7cc7fa30799cb5d83beb4a4db146993e3cf9835d7d28bf8256ab2` |
| 4 | `def` | [expMinusLogOp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SemanticsEdition1.lean/declarations/expminuslogop.md) | 56 | `declaration-track:73d8c82b113434e3fd773d7e4018ac720bb38e8d03bf5eed1412bc685648df20` |
| 5 | `def` | [evaluate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SemanticsEdition1.lean/declarations/evaluate.md) | 60 | `declaration-track:32e3e781a71616e641c1f3100f30cf13231831910f6f89fb90baf5a00b15f808` |
| 6 | `theorem` | [evaluate_e](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SemanticsEdition1.lean/declarations/evaluate-e.md) | 66 | `result-track:06cacb59b2cf2d1c41ce0c9d4d87c243c1671e5af4ec6149fd4d254363ec2428` |
| 7 | `def` | [AnalyticallySafe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SemanticsEdition1.lean/declarations/analyticallysafe.md) | 76 | `declaration-track:ba3e63aba37e9d1e01ec19bbf9983ac4d521e7376f4323e7d4e435314445d3d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d60037c6db48b02a78e401006bf73e35c9539bbb36566addbf1a8646d6949d8a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variant57e0b5969af923f7f5dc4ef45bdec5a88552dfb3f66e81fc5079401ca54d3231.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Variant57e0b5969af923f7f5dc4ef45bdec5a88552dfb3f66e81fc5079401ca54d3231.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
