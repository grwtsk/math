# Verification target: Tactic Have Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b4f7d600950ca2ca902ca0df2a294d1b81d1f58",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantfe72d24cef5fd8c3caec0142a92ad8c63f628c51c04da70f132493c7113821aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHaveNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHaveNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b4f7d600950ca2ca902ca0df2a294d1b81d1f58`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantfe72d24cef5fd8c3caec0142a92ad8c63f628c51c04da70f132493c7113821aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantfe72d24cef5fd8c3caec0142a92ad8c63f628c51c04da70f132493c7113821aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Binders` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Elab.SyntheticMVars` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Assert` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [optBinderIdent](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHaveNamespaced.lean/declarations/optbinderident.md) | 33 | `declaration-track:e9cc083eef76aa87f387756df6812eebd9056db2ef603d96b15ff37891bd95b9` |
| 2 | `def` | [optBinderIdent.name](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHaveNamespaced.lean/declarations/optbinderident-name.md) | 39 | `declaration-track:24d93db886b33e86e5559b06a519502f1e9284f23990981170e77ff69a4d5f88` |
| 3 | `def` | [haveIdLhs'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHaveNamespaced.lean/declarations/haveidlhs.md) | 56 | `declaration-track:4c8cbc18450521d47b5f0a477cac418d53db81a331e6a138dcbaee8a1a15577d` |
| 4 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHaveNamespaced.lean/declarations/syntax-source-edition-2.md) | 60 | `declaration-track:90094731ff8c894e67bcfa2518c1dd390e71b3a596f8720649bf7f1a98418a73` |
| 5 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHaveNamespaced.lean/declarations/syntax-source-edition-3.md) | 61 | `declaration-track:c1a13b49b9a4d39f7059f7c54eb66ac87b8001404b2174c6641cc3cc393554d8` |
| 6 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHaveNamespaced.lean/declarations/syntax.md) | 62 | `declaration-track:28a03f3ac524ea1b34b9aeb9de88a444fb8d7c5ad88c5d0f37d0cfbc42afd3b5` |
| 7 | `def` | [haveLetCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHaveNamespaced.lean/declarations/haveletcore.md) | 72 | `declaration-track:5a888cb5858666639de4aad72388c060f9e6d92aed8c8c01f9e318c3c99c3643` |
| 8 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHaveNamespaced.lean/declarations/elab-rules-source-edition-3.md) | 94 | `declaration-track:6072e217e04a688a080d3ee6e5306acc224b9841f2ddb508cf5b44ab49d0ee3d` |
| 9 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHaveNamespaced.lean/declarations/elab-rules-source-edition-2.md) | 102 | `declaration-track:58a943879cec096b877b6b1d689248655be215434a8ea677a9f03b48fa613c41` |
| 10 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHaveNamespaced.lean/declarations/elab-rules.md) | 108 | `declaration-track:490af83b7da24c4c6d58f268c6d2a0a39521c109c3a9d8d57a4525d0dada38c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ada8fc1a8f8659163ac50c4e8dd26e956238cc16f58d5f89aa518815c512ce4c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantfe72d24cef5fd8c3caec0142a92ad8c63f628c51c04da70f132493c7113821aa.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantfe72d24cef5fd8c3caec0142a92ad8c63f628c51c04da70f132493c7113821aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
