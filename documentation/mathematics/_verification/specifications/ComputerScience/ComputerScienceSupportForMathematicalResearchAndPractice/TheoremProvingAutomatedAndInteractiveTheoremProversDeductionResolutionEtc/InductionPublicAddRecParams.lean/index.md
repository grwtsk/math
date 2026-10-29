# Verification target: Induction Public Add Rec Params

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "285ee1f4878be40473f8219f0f2eecd0d0b213b1",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc57f77eadeb8355513f11b1c3b066331e320c1ecb496c3472f3aeddc534c9d7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InductionPublicAddRecParams.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InductionPublicAddRecParams.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `285ee1f4878be40473f8219f0f2eecd0d0b213b1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc57f77eadeb8355513f11b1c3b066331e320c1ecb496c3472f3aeddc534c9d7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc57f77eadeb8355513f11b1c3b066331e320c1ecb496c3472f3aeddc534c9d7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.WHNF` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getTargetArity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InductionPublicAddRecParams.lean/declarations/gettargetarity.md) | 18 | `declaration-track:eaf06a2f687caed4ae0890b4ed6ef2dc675f09cc324f4b8830698330290cf7a2` |
| 2 | `def` | [addRecParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InductionPublicAddRecParams.lean/declarations/addrecparams.md) | 23 | `declaration-track:abf8a4ebab0133182662c0159f65e5a44673aff64601f69b5e552022bdb19094` |
| 3 | `structure` | [InductionSubgoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InductionPublicAddRecParams.lean/declarations/inductionsubgoal.md) | 40 | `declaration-track:155ef40ae065252e058e3547a5130c2aa4d9abfb6e13eb65011103819251805e` |
| 4 | `def` | [getTypeBody](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InductionPublicAddRecParams.lean/declarations/gettypebody.md) | 46 | `declaration-track:e984d7c1c363c32b229d6c6377f0d938de6c9437098506fbaef756b98b726fdd` |
| 5 | `structure` | [AltVarNames](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InductionPublicAddRecParams.lean/declarations/altvarnames.md) | 52 | `declaration-track:ed9a158ce1f0783720ff4c882dba06b4df181a379ff817bc7e02e4450ec8c1bd` |
| 6 | `def` | [finalize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InductionPublicAddRecParams.lean/declarations/finalize.md) | 57 | `declaration-track:cd2c619fea30c461381933d02eb82c35134fcf38bdf4cfba70f5153699919db2` |
| 7 | `def` | [throwUnexpectedMajorType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InductionPublicAddRecParams.lean/declarations/throwunexpectedmajortype.md) | 128 | `declaration-track:130c2423f05b503b90e335f244471e20859891a744097941d5f9c3e19d1f4add` |
| 8 | `def` | [getMajorTypeIndices](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InductionPublicAddRecParams.lean/declarations/getmajortypeindices.md) | 136 | `declaration-track:4c53108b7d25b4954623e521ce4a6736d7eb6dd0533f1a8bfb489e105426ee2b` |
| 9 | `def` | [mkRecursorAppPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InductionPublicAddRecParams.lean/declarations/mkrecursorappprefix.md) | 166 | `declaration-track:a56d079da06abe976db6ddc12bf88cd4ecd51fa346d70aff04e0082ec3be792b` |
| 10 | `def` | [_root_.Lean.MVarId.induction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InductionPublicAddRecParams.lean/declarations/root-lean-mvarid-induction.md) | 203 | `declaration-track:a284c91355d52a1b8e516ce8b63c30648f3171ca837647e1ea9be4936bac5f6b` |
| 11 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InductionPublicAddRecParams.lean/declarations/builtin-initialize.md) | 242 | `declaration-track:b634b05cf87b3377f4b2e2d7484eb9c859ef0c5d245e0e9d4926fff2de1e8879` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9451521b6fcfb390e5d02946d772d37d23ece2483aa5cceafba84d007fe85ed4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc57f77eadeb8355513f11b1c3b066331e320c1ecb496c3472f3aeddc534c9d7b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc57f77eadeb8355513f11b1c3b066331e320c1ecb496c3472f3aeddc534c9d7b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
