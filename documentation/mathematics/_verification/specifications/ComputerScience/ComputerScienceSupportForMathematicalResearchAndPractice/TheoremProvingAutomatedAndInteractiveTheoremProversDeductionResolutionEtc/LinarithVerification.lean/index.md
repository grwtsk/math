# Verification target: Linarith Verification

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08e45031d6c5f82a5f1fece752a0adc1ce918236",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant8193b1af46115263a88c8f258c9cf0962eee0acc635fd4ae6dec6ffb5800b049.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithVerification.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithVerification.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08e45031d6c5f82a5f1fece752a0adc1ce918236`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant8193b1af46115263a88c8f258c9cf0962eee0acc635fd4ae6dec6ffb5800b049.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant8193b1af46115263a88c8f258c9cf0962eee0acc635fd4ae6dec6ffb5800b049.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Linarith.Parsing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Qq` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofNatQ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithVerification.lean/declarations/ofnatq.md) | 29 | `declaration-track:d94bf388d662ab8a3e7e7bde7b72a675d6c427b5536ab8927d5e517473db2d8e` |
| 2 | `def` | [mulExpr'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithVerification.lean/declarations/mulexpr-source-edition-2.md) | 49 | `declaration-track:77b722be354fcceba9f8fa765bb0977b6f8705057d27cb09ef707250f0870788` |
| 3 | `def` | [mulExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithVerification.lean/declarations/mulexpr.md) | 58 | `declaration-track:3de7d28a4d27f7c27d44d1682a4032dc68edf47a6df6856873e33462e41326ed` |
| 4 | `def` | [addExprs'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithVerification.lean/declarations/addexprs-source-edition-2.md) | 64 | `declaration-track:9d3ae9eaf7e1e1bbaf263a3d50d7be86e9b000f8466b7f85af8f15fe933e1559` |
| 5 | `def` | [addExprs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithVerification.lean/declarations/addexprs.md) | 75 | `declaration-track:535daa4cf24bbf4a2dbc137d91846a405a817d0850494e37e25fb82d1cf8089d` |
| 6 | `def` | [addIneq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithVerification.lean/declarations/addineq.md) | 88 | `declaration-track:36e035fe88775839277e938f6b90eaacd9a1cec0b85990ec549e33e7a94e96e5` |
| 7 | `def` | [mkLTZeroProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithVerification.lean/declarations/mkltzeroproof.md) | 104 | `declaration-track:1f8107888fc1b5bca813a05d75cef1ec3cbdfb146da276e2c0d3321a4859ea32` |
| 8 | `def` | [leftOfIneqProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithVerification.lean/declarations/leftofineqproof.md) | 125 | `declaration-track:eb0f72e543dc4a060c807fa29a8309e7806950ccc2127b7cb6c6e26f79a98757` |
| 9 | `def` | [typeOfIneqProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithVerification.lean/declarations/typeofineqproof.md) | 130 | `declaration-track:24a88b6ce3546cc7213ac63f7f2385054acb9e914f3c9f4296f1ef23232607fb` |
| 10 | `def` | [mkNegOneLtZeroProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithVerification.lean/declarations/mknegoneltzeroproof.md) | 138 | `declaration-track:9626f0104c805bfad9a585cc939de917b28f63f48ce68446522d7bb71c0759df` |
| 11 | `def` | [addNegEqProofs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithVerification.lean/declarations/addnegeqproofs.md) | 146 | `declaration-track:e22534d682fae0c2de771b47d8affd49472e8af62139d12cfbeb8642faa0ad0d` |
| 12 | `def` | [proveEqZeroUsing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithVerification.lean/declarations/proveeqzerousing.md) | 160 | `declaration-track:c60d97ebb946080eee2eb2b25c576947e33a48d5761f082538b08daa35ec7cbe` |
| 13 | `def` | [proveFalseByLinarith](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithVerification.lean/declarations/provefalsebylinarith.md) | 190 | `declaration-track:dbe1311c6475b8964f142dadffd2a88d5c9e50338b321a30e6f2787f194e282a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f8fcae66e4efd4d26c813777dc32152f56ad23f41500b0411522eee909de864 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant8193b1af46115263a88c8f258c9cf0962eee0acc635fd4ae6dec6ffb5800b049.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant8193b1af46115263a88c8f258c9cf0962eee0acc635fd4ae6dec6ffb5800b049.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
