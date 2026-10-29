# Verification target: Diagnosis Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcaa7f8ee7237cc383cfd07c2ae5683e82a8dfb9",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnosis/Variant432133aaa42712e7d398bc298211f1c136f6856cd0ce4610fc43a0abf54eb592.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DiagnosisNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DiagnosisNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcaa7f8ee7237cc383cfd07c2ae5683e82a8dfb9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnosis/Variant432133aaa42712e7d398bc298211f1c136f6856cd0ce4610fc43a0abf54eb592.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnosis/Variant432133aaa42712e7d398bc298211f1c136f6856cd0ce4610fc43a0abf54eb592.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Mutation.Signature` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.ProofStrategy.FrontierAntichain` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Explanation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DiagnosisNamespaced.lean/declarations/explanation.md) | 23 | `declaration-track:eabbaca935c129d48117e18ef69b9b05c3e26b997d7b7c0efc22d873d45b0218` |
| 2 | `abbrev` | [ExplanationFamily](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DiagnosisNamespaced.lean/declarations/explanationfamily.md) | 26 | `declaration-track:0af272e545fa8ee5cd12b2769ec25b629ea225dd9f62a1684254a2e1b541bb61` |
| 3 | `def` | [minimalExplanations](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DiagnosisNamespaced.lean/declarations/minimalexplanations.md) | 29 | `declaration-track:5f7556420f8a8da09d1c0285bd8e24b987ca848733c168e5b9345da24d97eebc` |
| 4 | `def` | [inverseProblem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DiagnosisNamespaced.lean/declarations/inverseproblem.md) | 34 | `declaration-track:96139c67fdff81e3074e3053890fabc8acd8d190ab7da8670a54aca9309a469b` |
| 5 | `def` | [ExplanationCovers](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DiagnosisNamespaced.lean/declarations/explanationcovers.md) | 39 | `declaration-track:5a198dbb97dfabf8e6f378b37051c35c59586f88f1c2e9edfbbc8981a677e16f` |
| 6 | `structure` | [ExactMutationMatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DiagnosisNamespaced.lean/declarations/exactmutationmatch.md) | 43 | `declaration-track:ece9c98a0a87092faa2ee84bc32e06f563e4c5a4144e214f84c0e409e7c278a0` |
| 7 | `theorem` | [inverse_exact_match_sound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DiagnosisNamespaced.lean/declarations/inverse-exact-match-sound.md) | 50 | `result-track:8f78b9c9d5d15125ec6205b902443f4f28d60b065308abde135b00853fa6a0f4` |
| 8 | `def` | [discriminatingPower](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DiagnosisNamespaced.lean/declarations/discriminatingpower.md) | 55 | `declaration-track:0496f2c719a7adeb2da960e0ec2a495e39a49aafb2468d14fc3ad6deee1af803` |
| 9 | `theorem` | [minimal_explanations_form_antichain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DiagnosisNamespaced.lean/declarations/minimal-explanations-form-antichain.md) | 67 | `result-track:b9313ed185289495d1bac73af12283749936e8dfcfe4dc9c0f83eecb674016ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=216babf196c6091bfb68688731526fcc08a67047d34db675cba96acec8ce466d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnosis/Variant432133aaa42712e7d398bc298211f1c136f6856cd0ce4610fc43a0abf54eb592.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnosis/Variant432133aaa42712e7d398bc298211f1c136f6856cd0ce4610fc43a0abf54eb592.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
