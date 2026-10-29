# Verification target: Contradiction Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db6543db78507c677c443e56d1aa8ff48922a74d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contradiction/Variant13a97f9f0ffc2e6e8be8ffd6a49f68f70530c06ed4972f5b3627908ddd1497cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db6543db78507c677c443e56d1aa8ff48922a74d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contradiction/Variant13a97f9f0ffc2e6e8be8ffd6a49f68f70530c06ed4972f5b3627908ddd1497cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contradiction/Variant13a97f9f0ffc2e6e8be8ffd6a49f68f70530c06ed4972f5b3627908ddd1497cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.HasNotBit` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Rewrite` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Contradiction.Config](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionNamespacedPublic.lean/declarations/contradiction-config.md) | 27 | `declaration-track:0fe0b2985af3b28e2846a80842da0a835aade7a9e5f54f0f3e382ce91fc60a47` |
| 2 | `def` | [nestedFalseElim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionNamespacedPublic.lean/declarations/nestedfalseelim.md) | 44 | `declaration-track:cdd3442afae1c952af00763196d5769ab836a521bb3f76b9a04617277453072f` |
| 3 | `def` | [isElimEmptyInductiveCandidate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionNamespacedPublic.lean/declarations/iselimemptyinductivecandidate.md) | 54 | `declaration-track:ca3149fc95b5a3b96e53afcb4981a1ae50d197825774cc4aeb7adf35add8ddff` |
| 4 | `abbrev` | [M](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionNamespacedPublic.lean/declarations/m.md) | 61 | `declaration-track:dd18505d3819df979da361af0026b32e04f9b439e6ef121c1361de9ac397ba8f` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionNamespacedPublic.lean/declarations/instance.md) | 63 | `declaration-track:1a55d21e2de68e6779e710618ce419acd0d4a67592273f60c14bf466f24b4428` |
| 6 | `def` | [elim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionNamespacedPublic.lean/declarations/elim.md) | 67 | `declaration-track:304e51560ad70d3a74c96c9234ed31875c2ead9dfa42894e05b5ff9883c09e3f` |
| 7 | `def` | [elimEmptyInductive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionNamespacedPublic.lean/declarations/elimemptyinductive.md) | 92 | `declaration-track:0578f08f74dca53bb2ab2f33a868714860ab2859ac3bbb1b06918d1bdc49859e` |
| 8 | `abbrev` | [isGenDiseq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionNamespacedPublic.lean/declarations/isgendiseq.md) | 103 | `declaration-track:c4c246f604cbac72c5f9a1b51710fe507b0ba93bafc717298f7b70897b02a01f` |
| 9 | `def` | [mkGenDiseqMask](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionNamespacedPublic.lean/declarations/mkgendiseqmask.md) | 112 | `declaration-track:7fa8e3728a4921de1a63232335100ac253f7a876852ad7728ec8a876409eb81d` |
| 10 | `def` | [processGenDiseq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionNamespacedPublic.lean/declarations/processgendiseq.md) | 127 | `declaration-track:e7bb7ae7ca5c0c1b8d5f4298b046efea5a2f582862f5d6a93b059944cda7440f` |
| 11 | `def` | [Contradiction Namespaced Public](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionNamespacedPublic.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-contr.md) | 166 | `declaration-track:4b6a511544e234923ea87feba5fbcc26505f2924722f5f953c3c767903d55533` |
| 12 | `def` | [Contradiction Namespaced Public](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionNamespacedPublic.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-contr-source-edition-2.md) | 244 | `declaration-track:5f448d07fae8a62b588fca79bcd7aed17a239a7309a76a412aab79024660a80e` |
| 13 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionNamespacedPublic.lean/declarations/builtin-initialize.md) | 248 | `declaration-track:86b55141179ba3ef63ddcd37cbec88098c7758e915d1ed21030c8c55ef146002` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd87642f33852cb455eeafab07a5f993c568b387e81d04eb0db60421da75d3b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contradiction/Variant13a97f9f0ffc2e6e8be8ffd6a49f68f70530c06ed4972f5b3627908ddd1497cc.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contradiction/Variant13a97f9f0ffc2e6e8be8ffd6a49f68f70530c06ed4972f5b3627908ddd1497cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
