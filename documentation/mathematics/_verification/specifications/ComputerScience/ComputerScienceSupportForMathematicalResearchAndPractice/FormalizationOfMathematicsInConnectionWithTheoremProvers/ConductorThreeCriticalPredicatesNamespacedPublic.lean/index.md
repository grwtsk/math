# Verification target: Conductor Three Critical Predicates Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94e372a5c8ea43ecdb4a35b0fbe21d387a298d91",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant40aea576dbe20cd7a717a3b6b7fd724adea0b33a15ee8821a451f28836b18cbc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConductorThreeCriticalPredicatesNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConductorThreeCriticalPredicatesNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94e372a5c8ea43ecdb4a35b0fbe21d387a298d91`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant40aea576dbe20cd7a717a3b6b7fd724adea0b33a15ee8821a451f28836b18cbc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant40aea576dbe20cd7a717a3b6b7fd724adea0b33a15ee8821a451f28836b18cbc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [twistedPsiCriticalRate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConductorThreeCriticalPredicatesNamespacedPublic.lean/declarations/twistedpsicriticalrate.md) | 37 | `declaration-track:cce35246c726d63d80369f2a4e55760ee51bb297db3e5e208819380905e34e0d` |
| 2 | `def` | [residueDifferenceCriticalRate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConductorThreeCriticalPredicatesNamespacedPublic.lean/declarations/residuedifferencecriticalrate.md) | 42 | `declaration-track:0f86d8857a8d87709ef611951ce7b8460fa90276a2ad880687fa47907360047b` |
| 3 | `theorem` | [twistedPsiCriticalRate_nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConductorThreeCriticalPredicatesNamespacedPublic.lean/declarations/twistedpsicriticalrate-nonneg.md) | 46 | `result-track:43cb47c7442db3913e62b32b9cd770a9363218ff3a74393d67cd2340a0d8ebaa` |
| 4 | `theorem` | [residueDifferenceCriticalRate_nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConductorThreeCriticalPredicatesNamespacedPublic.lean/declarations/residuedifferencecriticalrate-nonneg.md) | 52 | `result-track:8e87668f97258e7795c2d4622aba919277550e38d3961808abd42ae0a32bc57b` |
| 5 | `theorem` | [one_le_residueDifferenceCriticalRate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConductorThreeCriticalPredicatesNamespacedPublic.lean/declarations/one-le-residuedifferencecriticalrate.md) | 60 | `result-track:b04aa7ded16555bedd40ac38ff5851817e6d0b7e0f6dc0399e6425d3d14df8b1` |
| 6 | `def` | [TwistedPsiCriticalBound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConductorThreeCriticalPredicatesNamespacedPublic.lean/declarations/twistedpsicriticalbound.md) | 73 | `declaration-track:e04cc485e42ee2f5a1312364b0d54effd5119a4a05004b50741cf049222cae85` |
| 7 | `def` | [TwistedThetaCriticalBound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConductorThreeCriticalPredicatesNamespacedPublic.lean/declarations/twistedthetacriticalbound.md) | 81 | `declaration-track:94418ec5e0d9863f89f0dbeb14aa9ce9bad597a3e52cc572a1618b378447df56` |
| 8 | `def` | [PrimeCharacterCriticalBound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConductorThreeCriticalPredicatesNamespacedPublic.lean/declarations/primecharactercriticalbound.md) | 88 | `declaration-track:c0fa4bcb24777909888562473427d2f605043fd87725238962418bdf79b321a5` |
| 9 | `def` | [ResidueDifferenceCriticalBound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConductorThreeCriticalPredicatesNamespacedPublic.lean/declarations/residuedifferencecriticalbound.md) | 96 | `declaration-track:28bef8242bfcff00cc1b64a1a582dfa9e41132bd5beaa8f08d1204856f6a9cc6` |
| 10 | `theorem` | [residueDifferenceCriticalBound_iff_hasSqrtLogCountDifferenceBound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConductorThreeCriticalPredicatesNamespacedPublic.lean/declarations/residuedifferencecriticalbound-iff-hassqrtlogcountdifferencebound.md) | 102 | `result-track:5bc55d2409abee97dcca8563e0582264b92074c4da7a275f43fbfd488cce6156` |
| 11 | `theorem` | [primeCharacterCriticalBound_iff_residueDifferenceCriticalBound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConductorThreeCriticalPredicatesNamespacedPublic.lean/declarations/primecharactercriticalbound-iff-residuedifferencecriticalbound.md) | 111 | `result-track:61d8ec846fed4f471edcd64ec317895278607b692edba29d95b242058b83f02c` |
| 12 | `theorem` | [conductorThreePsi_sub_theta_abs_le_two_criticalRate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConductorThreeCriticalPredicatesNamespacedPublic.lean/declarations/conductorthreepsi-sub-theta-abs-le-two-criticalrate.md) | 168 | `result-track:369f60a2b1ae91b6c7ce8e7a8c5765a5ec53218b75d9713774e0c8c4043ab162` |
| 13 | `theorem` | [twistedPsiCriticalBound_iff_twistedThetaCriticalBound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConductorThreeCriticalPredicatesNamespacedPublic.lean/declarations/twistedpsicriticalbound-iff-twistedthetacriticalbound.md) | 194 | `result-track:0671c7f8978281993dee563bdb23d42182a3868f76925c22a01b20315ad9c6a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=77246a11913559a870596333b17edb4bc1e99372853864b356ee1c616063b450 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant40aea576dbe20cd7a717a3b6b7fd724adea0b33a15ee8821a451f28836b18cbc.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCriticalPredicates/Variant40aea576dbe20cd7a717a3b6b7fd724adea0b33a15ee8821a451f28836b18cbc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
