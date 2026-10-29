# Verification target: Ext Public With Ext Hyps

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "526ed04905f730e568144cbf0043f439a6d86651",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtPublicWithExtHyps.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtPublicWithExtHyps.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `526ed04905f730e568144cbf0043f439a6d86651`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Ext` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.RCases` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Elab.Command` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Linter.Init` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [withExtHyps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtPublicWithExtHyps.lean/declarations/withexthyps.md) | 40 | `declaration-track:57db09d91d6ada83c137706514b74f4be0774870c76d3dbd6a0eee69465f5053` |
| 2 | `def` | [mkExtType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtPublicWithExtHyps.lean/declarations/mkexttype.md) | 65 | `declaration-track:8099547df5e0e18fe4e264760e04616e7e3e04ef30a5441e10a77dd8512e6c3a` |
| 3 | `def` | [mkExtIffType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtPublicWithExtHyps.lean/declarations/mkextifftype.md) | 73 | `declaration-track:da6988674984777e06df79674b20b241b6aa90bae8777ee7d437fd2a454ee922` |
| 4 | `def` | [realizeExtTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtPublicWithExtHyps.lean/declarations/realizeexttheorem.md) | 104 | `declaration-track:dddaf5648708e5c6447f9ea3d451cf6a81773e714485dd2c0249e926e2b2a8d4` |
| 5 | `def` | [realizeExtIffTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtPublicWithExtHyps.lean/declarations/realizeextifftheorem.md) | 139 | `declaration-track:21c7a0643fb10c226b9655ed871dc5ff0f63e958b2681a0b0acce4c2328cc752` |
| 6 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtPublicWithExtHyps.lean/declarations/builtin-initialize.md) | 180 | `declaration-track:e486a788af83ecbdf8db41c4244ceff72dfa3d65af6de3acfd8a94f241d09149` |
| 7 | `def` | [applyExtTheoremAt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtPublicWithExtHyps.lean/declarations/applyexttheoremat.md) | 220 | `declaration-track:990de0e74742128f4ef590e0f25a61273c0de3d649eb052472510f7fbe64afbd` |
| 8 | `def` | [evalApplyExtTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtPublicWithExtHyps.lean/declarations/evalapplyexttheorem.md) | 245 | `declaration-track:127c639250c7d7d2f66f00a289d1e0a60b9adad1abcd8d3da6278a200c087e00` |
| 9 | `def` | [tryIntros](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtPublicWithExtHyps.lean/declarations/tryintros.md) | 252 | `declaration-track:e2113fde89d4b45354fa94e27556ae5edb86adef01616cdce35d3eb722d57772` |
| 10 | `def` | [withExt1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtPublicWithExtHyps.lean/declarations/withext1.md) | 268 | `declaration-track:2571052b72cf568100b8a1d3c9bf82a6f41483e956727e995290481c3731abe5` |
| 11 | `def` | [withExtN](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtPublicWithExtHyps.lean/declarations/withextn.md) | 279 | `declaration-track:509b60cf7bf20166c7d267165bfd32c8eb13b86dfc71777b3cd80062867abcc8` |
| 12 | `def` | [extCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtPublicWithExtHyps.lean/declarations/extcore.md) | 299 | `declaration-track:8839d2384bc5b7196585a62d592a9e689c2591753addab7410098b1a4d92178c` |
| 13 | `def` | [evalExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtPublicWithExtHyps.lean/declarations/evalext.md) | 305 | `declaration-track:04272c3648e29f60981752f8582eb5cc41f43a5dc70ed162b5462377075de302` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a202114d10ac9d702bcb317e01a57a294c41195bb5f881882fa611ec17c246a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
