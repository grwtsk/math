# Verification target: Reset Reuse Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "860c30661e28b97e6e927a7986e0807fab2d80d6",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variantab66760f0aa1b007a40fbcb8daeb4ef15c95e9f37b01391daa7ed9f9ba0cac92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ResetReuseNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ResetReuseNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `860c30661e28b97e6e927a7986e0807fab2d80d6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variantab66760f0aa1b007a40fbcb8daeb4ef15c95e9f37b01391daa7ed9f9ba0cac92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variantab66760f0aa1b007a40fbcb8daeb4ef15c95e9f37b01391daa7ed9f9ba0cac92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.LCNF.LiveVars` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.DependsOn` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.PhaseExt` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.PropagateBorrow` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ResetReuseNamespacedPublic.lean/declarations/context.md) | 48 | `declaration-track:ef00ec0a5cc8c85d3b87b3c9d93a3d0d1689d7492daeeeb3cfe66f2348120e4c` |
| 2 | `abbrev` | [ReuseM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ResetReuseNamespacedPublic.lean/declarations/reusem.md) | 76 | `declaration-track:6e4400d8297e6a34132da0d7f735187862d2a6233bbb858af5db1bc0a4d02649` |
| 3 | `def` | [mayReuse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ResetReuseNamespacedPublic.lean/declarations/mayreuse.md) | 78 | `declaration-track:b187fb25b1543024b2a29001648525b9f7b924531145312fd9f2a16829c45cfb` |
| 4 | `def` | [S](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ResetReuseNamespacedPublic.lean/declarations/s.md) | 91 | `declaration-track:c4420e000bc6361921a99750ce1f44d925e26fd5259931702e41c444772053de` |
| 5 | `def` | [isCtorUsing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ResetReuseNamespacedPublic.lean/declarations/isctorusing.md) | 135 | `declaration-track:ba35a987fe91d711db79d55a615cdb49a987a775500f38b71ca47f8d5ecd115b` |
| 6 | `inductive` | [UseClassification](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ResetReuseNamespacedPublic.lean/declarations/useclassification.md) | 140 | `declaration-track:99bd463f7799fbc84a35e246c1dd2f244c4d1b3f0f4f3240b5fbe9aeb65a83ce` |
| 7 | `def` | [classifyUse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ResetReuseNamespacedPublic.lean/declarations/classifyuse.md) | 157 | `declaration-track:592af425d33f31f7e17ca6a391027c42b983baa82e3fa6dc5e4a08f1e14a7555` |
| 8 | `def` | [D](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ResetReuseNamespacedPublic.lean/declarations/d.md) | 196 | `declaration-track:402d649a9afe798992dc2a21f205c180e1fa77cbdebc6e51faa8c9f2b86c49c7` |
| 9 | `def` | [Code.insertResetReuse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ResetReuseNamespacedPublic.lean/declarations/code-insertresetreuse.md) | 263 | `declaration-track:ed4ef2f982867698c49d8d27cf75ab07ad0412c6c3066dbba78438a42e9cab71` |
| 10 | `def` | [Decl.insertResetReuseCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ResetReuseNamespacedPublic.lean/declarations/decl-insertresetreusecore.md) | 291 | `declaration-track:da99f3eaae7b562860f2e3f1d455c5cae9de2548560fd4076a889ef42806ff06` |
| 11 | `def` | [Decl.insertResetReuse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ResetReuseNamespacedPublic.lean/declarations/decl-insertresetreuse.md) | 315 | `declaration-track:57cbc8b8d21ff635f86a3f4db090fe7efc1abea2232e9a55912c26d091423b84` |
| 12 | `def` | [insertResetReuse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ResetReuseNamespacedPublic.lean/declarations/insertresetreuse.md) | 335 | `declaration-track:ccb9c91efaa498944d22d1504a92ed33408cb81bb00bcfade7a71b2fc4d71072` |
| 13 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ResetReuseNamespacedPublic.lean/declarations/builtin-initialize.md) | 338 | `declaration-track:e371d09e47563a657ebbf62bfa997993e79c82b461dadde05f2bd39e415f44ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f749fc10652e0d06dc0ec4e7221bf8634c0fe2901deb3c844731003a05a18075 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variantab66760f0aa1b007a40fbcb8daeb4ef15c95e9f37b01391daa7ed9f9ba0cac92.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variantab66760f0aa1b007a40fbcb8daeb4ef15c95e9f37b01391daa7ed9f9ba0cac92.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
