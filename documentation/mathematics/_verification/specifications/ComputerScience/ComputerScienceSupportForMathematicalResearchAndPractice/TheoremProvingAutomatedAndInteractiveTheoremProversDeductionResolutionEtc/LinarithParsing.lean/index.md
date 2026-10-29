# Verification target: Linarith Parsing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "629813390c1ee7894638728fd7a2771d87eaf46d",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantaafea13110ebb4dc3a13282ffb53f9a2a2040d0c4a2e9a4d8cb1a07c4d56fd65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `629813390c1ee7894638728fd7a2771d87eaf46d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantaafea13110ebb4dc3a13282ffb53f9a2a2040d0c4a2e9a4d8cb1a07c4d56fd65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantaafea13110ebb4dc3a13282ffb53f9a2a2040d0c4a2e9a4d8cb1a07c4d56fd65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Linarith.Datatypes` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [beq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/beq.md) | 40 | `declaration-track:09195b9f50ed013b2fd7365a1b84a4821c3897feb7030a50e7396ae7bf192b8b` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/instance-source-edition-2.md) | 51 | `declaration-track:a1dcdbad8afdd3d8b5115c81e9e9724a1e3dda54fe28e43e62ae8bccb8d535d2` |
| 3 | `def` | [List.findDefeq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/list-finddefeq.md) | 64 | `declaration-track:c2c894b88d1bbe5de8cdc50ffe3013be3f923cc5fd511526c062b87658d70c71` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/instance-source-edition-3.md) | 77 | `declaration-track:d10da6b03725fae0971b1657aa51daa30c1bea64223d625047d9d57a29453c52` |
| 5 | `abbrev` | [Map](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/map.md) | 84 | `declaration-track:fd06c62559ee27087d1be574e1a5c58ed20971a6d2b2ecefbc36d3603e4fb0bc` |
| 6 | `abbrev` | [Monom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/monom.md) | 89 | `declaration-track:3536a9ded2f0d4a8bba061ca54186d46f9f096ab5e111af46adb9efbf34e80b6` |
| 7 | `def` | [Monom.one](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/monom-one.md) | 92 | `declaration-track:610e001223c02983a2b03a6e7c3cf77f309d9afab31ea07a9795b8624ab35833` |
| 8 | `def` | [Monom.lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/monom-lt.md) | 95 | `declaration-track:cc22fe83981e02a2e20a51216b2d2fe9e844843dda1955ad1a6d03ec07ae19ed` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/instance.md) | 100 | `declaration-track:3249f93b3a4d9a0371dd6bfed6c34110f55b9d0462b53828b8b9caced58b702a` |
| 10 | `abbrev` | [Sum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/sum.md) | 104 | `declaration-track:b7e6495935b534fb4012733ab92c6a6d478e931dc5b3cf4cac48d8afbb796569` |
| 11 | `def` | [Sum.one](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/sum-one.md) | 107 | `declaration-track:3ffc4b25ae4f8d5ef4a72efac776b021edb6505a43ddf84c0ed05e8cc5a2976e` |
| 12 | `def` | [Sum.scaleByMonom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/sum-scalebymonom.md) | 110 | `declaration-track:050e0184e25165418706a58aed46d4a72f523ce6b4061fdda6ab555b64b1134a` |
| 13 | `def` | [Sum.mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/sum-mul.md) | 114 | `declaration-track:9b9d98fc54344ab0649170038f1967512ece41b8969d43402d86b03d92d6d0f7` |
| 14 | `def` | [Sum.pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/sum-pow.md) | 119 | `declaration-track:31670d0d703cc1c2c6f37bfb121fde8e21ab3e86c01965cc212cb8a1190e3440` |
| 15 | `def` | [SumOfMonom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/sumofmonom.md) | 131 | `declaration-track:78fd7df1b33dca48ba75024e3c88b924d3693c44c1cd9a8ece5d3477ae347c90` |
| 16 | `def` | [one](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/one.md) | 135 | `declaration-track:f36ba68ee2ff2bd828cd67332719482de50f42d95f97a181c7e5e9474a8447f7` |
| 17 | `def` | [scalar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/scalar.md) | 138 | `declaration-track:804e470894fbeb4e49c6cc86e81593a7b93be0e6a557fc81ac5ae6895ca1670f` |
| 18 | `def` | [var](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/var.md) | 142 | `declaration-track:c98018d39add3807369dd9cbe988b97aac45f8c7140eec835a9a0e4e61f3f507` |
| 19 | `abbrev` | [ExprMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/exprmap.md) | 156 | `declaration-track:0d51bde540a273650cad751d6bb39baab12060f17fb9ad4d17aa2bb3e549de02` |
| 20 | `def` | [linearFormOfAtom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/linearformofatom.md) | 163 | `declaration-track:1598f174f2737c9c1738a8ee8ae0ed873371f2143935831449d4e3883d921387` |
| 21 | `def` | [linearFormOfExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/linearformofexpr.md) | 182 | `declaration-track:c3a96680c5c857b02d1d9a32c713877449aaec76fede63d7e064442f8c4ba151` |
| 22 | `def` | [elimMonom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/elimmonom.md) | 220 | `declaration-track:af82f3d81c130d45b29b0995ece48cde72d700f55e78b2d44a0dd1ab5f119f24` |
| 23 | `def` | [toComp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/tocomp.md) | 236 | `declaration-track:9f8807407b745f61a4e289e6bf9efca78937caf9fd08407acfc1384823fbc4b1` |
| 24 | `def` | [toCompFold](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/tocompfold.md) | 248 | `declaration-track:266743c38318e74c1d4507f3bf2ad0278711b407ca4a318ada67facd0a1dc8df` |
| 25 | `def` | [linearFormsAndMaxVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithParsing.lean/declarations/linearformsandmaxvar.md) | 263 | `declaration-track:1ced7c0178677542f096a760e62f85130ee09aae29ea175fbbb035725ec911f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7c82e192cf18bf2a0d0c87c746ebcd5e26aead65eda193024933129039d9eed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantaafea13110ebb4dc3a13282ffb53f9a2a2040d0c4a2e9a4d8cb1a07c4d56fd65.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantaafea13110ebb4dc3a13282ffb53f9a2a2040d0c4a2e9a4d8cb1a07c4d56fd65.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
