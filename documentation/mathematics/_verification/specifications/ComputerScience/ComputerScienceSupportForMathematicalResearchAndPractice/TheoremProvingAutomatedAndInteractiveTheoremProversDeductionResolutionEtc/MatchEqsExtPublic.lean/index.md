# Verification target: Match Eqs Ext Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07d1f07a1611212d0e1a73016b6f50797eb0c1c6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqsExt/Variantc6e8d7b3c51517054320bde4b5f0c68b5c9034698cb6b7aa951e551da316e8bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MatchEqsExtPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MatchEqsExtPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07d1f07a1611212d0e1a73016b6f50797eb0c1c6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqsExt/Variantc6e8d7b3c51517054320bde4b5f0c68b5c9034698cb6b7aa951e551da316e8bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqsExt/Variantc6e8d7b3c51517054320bde4b5f0c68b5c9034698cb6b7aa951e551da316e8bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Eqns` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MatchEqns](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MatchEqsExtPublic.lean/declarations/matcheqns.md) | 17 | `declaration-track:651e4258a8064775a2a874386c1f47600df7b4b122129c02add8015e463dd1b7` |
| 2 | `def` | [MatchEqns.size](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MatchEqsExtPublic.lean/declarations/matcheqns-size.md) | 23 | `declaration-track:c47f1ed55745a96f26f5d764c82d86236679c9fb8e1e38a30fa04082f90ae6e8` |
| 3 | `structure` | [MatchEqnsExtState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MatchEqsExtPublic.lean/declarations/matcheqnsextstate.md) | 26 | `declaration-track:b8d9d6f1e049afb9b9ae93303849216c9fa3626d2832891def702dca95bada72` |
| 4 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MatchEqsExtPublic.lean/declarations/builtin-initialize.md) | 32 | `declaration-track:2a302172eaa2741c82cfa973414bed646739b154608bbfbeabfdecadd576e2c2` |
| 5 | `def` | [registerMatchEqns](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MatchEqsExtPublic.lean/declarations/registermatcheqns.md) | 38 | `declaration-track:36f04e752d1e62d6ab4fe5950454b17f4308eaa3603af177745a0e42287f0955` |
| 6 | `opaque` | [getEquationsFor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MatchEqsExtPublic.lean/declarations/getequationsfor.md) | 51 | `declaration-track:7cf6da8f7a79726b4a555653aa46e0011ea8fee544317bde17d91e4a8d5ebcba` |
| 7 | `opaque` | [genMatchCongrEqns](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MatchEqsExtPublic.lean/declarations/genmatchcongreqns.md) | 58 | `declaration-track:84a49fac9e98f956e1b0d8642cf7c75f2f583f3e22493570de93b434ecb21943` |
| 8 | `def` | [isMatchEqnTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MatchEqsExtPublic.lean/declarations/ismatcheqntheorem.md) | 63 | `declaration-track:9fdc0bdfcf8cbf0575f5571d162d6cecb46878a64665f9a4ab717ecc7bf5de3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6481de01812ae2904462502bce23650350f878d624e47140d834d51dc20c5f73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqsExt/Variantc6e8d7b3c51517054320bde4b5f0c68b5c9034698cb6b7aa951e551da316e8bb.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqsExt/Variantc6e8d7b3c51517054320bde4b5f0c68b5c9034698cb6b7aa951e551da316e8bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
