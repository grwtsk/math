# Verification target: Intended PTSEdition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbef26335a92d7c928e3666a012927626730c199",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTS/Variant0315117a29ef5053a1ab908a393083a587aa8084ed47adfb0e01c0171db28beb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbef26335a92d7c928e3666a012927626730c199`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTS/Variant0315117a29ef5053a1ab908a393083a587aa8084ed47adfb0e01c0171db28beb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTS/Variant0315117a29ef5053a1ab908a393083a587aa8084ed47adfb0e01c0171db28beb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.Typing` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [monomorphicArrow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSEdition1.lean/declarations/monomorphicarrow.md) | 15 | `declaration-track:7fc728e5113867681bca31b643b32b253001ece20fcc0f3b96bc022a4af022b6` |
| 2 | `axioms` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSEdition1.lean/declarations/axioms.md) | 16 | `declaration-track:002cfc697822dcf30d4e55857c572b3ac8ec67ee4beca19c24b64e70aa13f753` |
| 3 | `def` | [WeakNormalizationGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSEdition1.lean/declarations/weaknormalizationgoal.md) | 20 | `declaration-track:eff43ccfed48f0c64ed529cbfaad71f263280517cf2825eb4e7d702bfec30b11` |
| 4 | `theorem` | [base_has_type](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSEdition1.lean/declarations/base-has-type.md) | 23 | `result-track:3aa72115764bf8d587ca47ef2a7bc532939e0899259e743fb69d7e837f0396f0` |
| 5 | `theorem` | [base_context_valid](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSEdition1.lean/declarations/base-context-valid.md) | 27 | `result-track:3d426bdeacd46fb4b015f7cf3469741e6e2ebc443b55742d2cb856b693d1946b` |
| 6 | `theorem` | [base_in_context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSEdition1.lean/declarations/base-in-context.md) | 30 | `result-track:0f989f778754fdb8662ad24c11d78babc7baa99b571632e73fa523148b5a0056` |
| 7 | `theorem` | [variable_has_type](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSEdition1.lean/declarations/variable-has-type.md) | 35 | `result-track:2204f12d7cbb9d6c759ad422a33e3f52ad5e9ebff2568b36fd739cdf5dff635f` |
| 8 | `theorem` | [identity_has_type](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSEdition1.lean/declarations/identity-has-type.md) | 39 | `result-track:80b5faa54c613deeef2b2f03ce2f34587665ae1dffb30d7cab892cabfe78eacf` |
| 9 | `theorem` | [identity_application_has_type](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSEdition1.lean/declarations/identity-application-has-type.md) | 46 | `result-track:8ef275b5bc50931a911380f56410387734ac5c6a89b5fbe18dafd84319d475fe` |
| 10 | `theorem` | [identity_application_reduces](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSEdition1.lean/declarations/identity-application-reduces.md) | 52 | `result-track:5798989909b74446b16eb74565e9487b1f52735f0bbca06b0b933ef01ce4cb4f` |
| 11 | `theorem` | [identity_application_weakly_normalizing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSEdition1.lean/declarations/identity-application-weakly-normalizing.md) | 57 | `result-track:a48e9b6cd4d3e6045b4e561053ae0a8aa57992a9f1449eb08f5cf649a4626cf7` |
| 12 | `inductive` | [BaseArrowType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSEdition1.lean/declarations/basearrowtype.md) | 62 | `declaration-track:ae855fa046c8611e33ac83bf81e843be66ad1dc488225f18e2835347e1f78815` |
| 13 | `theorem` | [rename_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSEdition1.lean/declarations/rename-eq.md) | 70 | `result-track:b2c43feea8ca1a458d6d454b554fae7d4af95731678216531e9d6bc75234d4ef` |
| 14 | `theorem` | [subst_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSEdition1.lean/declarations/subst-eq.md) | 78 | `result-track:8b1a8a0ca9c284620c89827cd8ca825500bb03d947e07ac8a432780856e7ae62` |
| 15 | `theorem` | [normal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSEdition1.lean/declarations/normal.md) | 86 | `result-track:f58e2a7a3149252f44f80b913f0907a627a236f659299fa50cc722e3151f6bc7` |
| 16 | `theorem` | [has_type](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSEdition1.lean/declarations/has-type.md) | 96 | `result-track:43c64293aeab8aadb5b9c9d0b0425eb77b4dbdd00e86d02d9653f945a36016e7` |
| 17 | `def` | [SortedTypeClassificationGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSEdition1.lean/declarations/sortedtypeclassificationgoal.md) | 109 | `declaration-track:1d7efc7f719840a0bd9e121d32d377f3ca04dcb04d887d5a74fb5e914d922b51` |
| 18 | `theorem` | [kind_not_typable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSEdition1.lean/declarations/kind-not-typable.md) | 113 | `result-track:c6f9c19e721231458828932af110c6c313979aa5ef56dbc9090d77ce6e56f258` |
| 19 | `theorem` | [rename_sort_inv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSEdition1.lean/declarations/rename-sort-inv.md) | 119 | `result-track:ac1e2e6a986b98f9c84f369af84d8d092beeb03fdebc0977a9c7f96121b39f77` |
| 20 | `theorem` | [sorted_type_classification](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSEdition1.lean/declarations/sorted-type-classification.md) | 127 | `result-track:ffd0d3ed1c804c7233b5e0841c103e3b728981b9b01b9cdfad79b5695c146e29` |
| 21 | `theorem` | [sorted_type_classification_goal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSEdition1.lean/declarations/sorted-type-classification-goal.md) | 182 | `result-track:5c1af952ef40ea8a56c5a59ff567a19142dce36fffce6dcabeba0fa848ab0ec2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa8820d35683b6816bd31eadc0cfbb7bfe2e538f8e7cf16d54ce2630ca19d29b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTS/Variant0315117a29ef5053a1ab908a393083a587aa8084ed47adfb0e01c0171db28beb.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTS/Variant0315117a29ef5053a1ab908a393083a587aa8084ed47adfb0e01c0171db28beb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
