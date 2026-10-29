# Verification target: Intended PTSNamespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e24c5a4a56dade6f0f743299118f543c6576dd8",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTS/Variant9e5c202350d4d37a50f64089249b6444a458a0270d365ffd49ca4fd1c9458d99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSNamespacedEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e24c5a4a56dade6f0f743299118f543c6576dd8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTS/Variant9e5c202350d4d37a50f64089249b6444a458a0270d365ffd49ca4fd1c9458d99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTS/Variant9e5c202350d4d37a50f64089249b6444a458a0270d365ffd49ca4fd1c9458d99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `OAI.Computability.TypeSystem.Typing` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [monomorphicArrow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSNamespacedEdition1.lean/declarations/monomorphicarrow.md) | 25 | `declaration-track:957a30085d55c2d6c34be95b00492f8a1ef9e87bb149d5cc01c2c4e6283bfce7` |
| 2 | `axioms` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSNamespacedEdition1.lean/declarations/axioms.md) | 26 | `declaration-track:ea1d65fe56e43b2c24b95a55dcb1f0d05f5369962984d86a8b7ec1793b3dea24` |
| 3 | `def` | [WeakNormalizationGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSNamespacedEdition1.lean/declarations/weaknormalizationgoal.md) | 30 | `declaration-track:53a8093f30e19fa8c9bf7fa2761c7ae3599a7c1c4bd94c1a9b33e9ae0e3a976c` |
| 4 | `theorem` | [base_has_type](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSNamespacedEdition1.lean/declarations/base-has-type.md) | 33 | `result-track:4ac957569e0e70ec8102d60641427b2525da0b1460507d8f6422c7a1fec3489c` |
| 5 | `theorem` | [base_context_valid](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSNamespacedEdition1.lean/declarations/base-context-valid.md) | 37 | `result-track:acec187b2d5cce329229f93f73bb92dddcc573d08c5f0e7cce27bcae7c33caa8` |
| 6 | `theorem` | [base_in_context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSNamespacedEdition1.lean/declarations/base-in-context.md) | 40 | `result-track:d35d7fae6482bcc4e8ffa2968fb1976362e037721dd832ca2a4d3cebc83268ad` |
| 7 | `theorem` | [variable_has_type](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSNamespacedEdition1.lean/declarations/variable-has-type.md) | 45 | `result-track:33f395c30ea0935acf49c322a04b1553966f0a6e792727db36604d049360f4db` |
| 8 | `theorem` | [identity_has_type](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSNamespacedEdition1.lean/declarations/identity-has-type.md) | 49 | `result-track:8f320d1224075b5e16ce65206b36c1d3ac0419069453ccb0f4c20f24abb245ae` |
| 9 | `theorem` | [identity_application_has_type](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSNamespacedEdition1.lean/declarations/identity-application-has-type.md) | 56 | `result-track:e15dc39607aa3c6c9f5cf068f121949262501a4f17e8077ed239ffb986c2e7c2` |
| 10 | `theorem` | [identity_application_reduces](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSNamespacedEdition1.lean/declarations/identity-application-reduces.md) | 62 | `result-track:7ca78353e74b005d889b2fb44505c16336ee17809799e24fbc1bd5043c30b0f4` |
| 11 | `theorem` | [identity_application_weakly_normalizing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSNamespacedEdition1.lean/declarations/identity-application-weakly-normalizing.md) | 67 | `result-track:d194186d1379679b7081067101062fd53c5977a4d592793b2a03dbada11bb586` |
| 12 | `inductive` | [BaseArrowType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSNamespacedEdition1.lean/declarations/basearrowtype.md) | 72 | `declaration-track:fdc3df45ca022d97617f0d672aa73c460507d6bb421f641358770ba8f94c9ae9` |
| 13 | `theorem` | [rename_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSNamespacedEdition1.lean/declarations/rename-eq.md) | 80 | `result-track:ea65d11f3c151d77cfa4682d2246158ca5c82563fe1940f362569a3bca3f1beb` |
| 14 | `theorem` | [subst_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSNamespacedEdition1.lean/declarations/subst-eq.md) | 88 | `result-track:0739640e1750064b8e295233a7a1a82dafd825971118fe2393cfdbac642e225c` |
| 15 | `theorem` | [normal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSNamespacedEdition1.lean/declarations/normal.md) | 96 | `result-track:e09f5424059adb87139bf9e37243e1def2b1da558935088a4b13f3f91bba4fed` |
| 16 | `theorem` | [has_type](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSNamespacedEdition1.lean/declarations/has-type.md) | 106 | `result-track:3567d4a03ecdb65913e93c010d92d7a77be2dcd23bc0b2cb0e89a5dcc34e27ea` |
| 17 | `def` | [SortedTypeClassificationGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSNamespacedEdition1.lean/declarations/sortedtypeclassificationgoal.md) | 119 | `declaration-track:76cec9fa192324936d1ecc5587559c7cca126e6119180b6dac1193d8b5d41aa7` |
| 18 | `theorem` | [kind_not_typable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSNamespacedEdition1.lean/declarations/kind-not-typable.md) | 123 | `result-track:bbec3834013c99c64056c4eb3bcb10dc184b90e2f1c88766e75cbdb00c48de47` |
| 19 | `theorem` | [rename_sort_inv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSNamespacedEdition1.lean/declarations/rename-sort-inv.md) | 129 | `result-track:d2f543060bd56a8122b143e3673de683bbe5362d90b82f7ef8db548102a0b41c` |
| 20 | `theorem` | [sorted_type_classification](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSNamespacedEdition1.lean/declarations/sorted-type-classification.md) | 137 | `result-track:3e2b94ed039b1d3eb952d4d596d09a8fea865b1cb6824648cc7edd120d2b7aa9` |
| 21 | `theorem` | [sorted_type_classification_goal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSNamespacedEdition1.lean/declarations/sorted-type-classification-goal.md) | 192 | `result-track:c48987be55e1023b5683c63bc8ac8224a2c4e1d99b5f4e32e53b897deb2b548f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=08bd0793f86007b522ed69b5ecad340f1ea9b9291506abed9dea097d1b0833fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTS/Variant9e5c202350d4d37a50f64089249b6444a458a0270d365ffd49ca4fd1c9458d99.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTS/Variant9e5c202350d4d37a50f64089249b6444a458a0270d365ffd49ca4fd1c9458d99.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
