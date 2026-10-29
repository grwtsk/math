# Verification target: Fold Consts Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a76391b76d99ad3e4a7e1508f4de369358f013da",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FoldConsts/Variant774190cea08a030f48448faf39748d5817bd69e8f3fc7abfaf80867dbc5d46f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FoldConstsNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FoldConstsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a76391b76d99ad3e4a7e1508f4de369358f013da`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FoldConsts/Variant774190cea08a030f48448faf39748d5817bd69e8f3fc7abfaf80867dbc5d46f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FoldConsts/Variant774190cea08a030f48448faf39748d5817bd69e8f3fc7abfaf80867dbc5d46f5.lean.json)

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
| 1 | `structure` | [State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FoldConstsNamespacedPublic.lean/declarations/state.md) | 26 | `declaration-track:34e20defa9dfac4816b0cb356f8acf9cfc218f457241fea64ee31d967a30b9d9` |
| 2 | `abbrev` | [FoldM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FoldConstsNamespacedPublic.lean/declarations/foldm.md) | 30 | `declaration-track:75124b3a7897a36db25f99ad19895d1ee5e83b129189bb40165e61050643087a` |
| 3 | `def` | [fold](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FoldConstsNamespacedPublic.lean/declarations/fold.md) | 32 | `declaration-track:aef9d51a45599f54991a09fb97289b97871e7187dde79c54b90a33f9ecfbe5d4` |
| 4 | `def` | [foldUnsafe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FoldConstsNamespacedPublic.lean/declarations/foldunsafe.md) | 53 | `declaration-track:df002ee66091bac5751eafbf03974c72112fac098cceeca2787669a237bbd339` |
| 5 | `opaque` | [foldConsts](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FoldConstsNamespacedPublic.lean/declarations/foldconsts.md) | 60 | `declaration-track:bc8b24ce3113737ca4d878f5f830f8e745d3879c2dbd105a46426b46ba498f00` |
| 6 | `def` | [getUsedConstants](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FoldConstsNamespacedPublic.lean/declarations/getusedconstants.md) | 62 | `declaration-track:d50b9da28084bd486d6b162b6a39256429617c60fe8ca0c737244b19754e4311` |
| 7 | `def` | [getUsedConstantsAsSet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FoldConstsNamespacedPublic.lean/declarations/getusedconstantsasset-source-edition-2.md) | 66 | `declaration-track:e9cf772dc1fbd234da622e45f7e7d956e5fb975e4f69a29d0596c85bef150825` |
| 8 | `def` | [getUsedConstantsAsSet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FoldConstsNamespacedPublic.lean/declarations/getusedconstantsasset.md) | 74 | `declaration-track:78461169abd3b4b15bfdebb5f9f1f82c87f33d2dda8ea0e6b1028ab1d20702ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e7e0efdf942ae4231a14c8047a3f4cd278fdc3119791cde19d451ee108c7aa1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FoldConsts/Variant774190cea08a030f48448faf39748d5817bd69e8f3fc7abfaf80867dbc5d46f5.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FoldConsts/Variant774190cea08a030f48448faf39748d5817bd69e8f3fc7abfaf80867dbc5d46f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
