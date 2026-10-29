# Verification target: Revision Namespaced Public Edition4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8abbb8e54721926d189f95ada7b0f71f6480e4e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant0ab8f40feb376fd29e5c5133637f4e137215ed8b964b3085080ba1b24cce331b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RevisionNamespacedPublicEdition4.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RevisionNamespacedPublicEdition4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8abbb8e54721926d189f95ada7b0f71f6480e4e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant0ab8f40feb376fd29e5c5133637f4e137215ed8b964b3085080ba1b24cce331b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant0ab8f40feb376fd29e5c5133637f4e137215ed8b964b3085080ba1b24cce331b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [revisionModulus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RevisionNamespacedPublicEdition4.lean/declarations/revisionmodulus.md) | 25 | `declaration-track:22c207f0931993b4f0ec36309023c0765cac5a04725c693ac4193c606914763b` |
| 2 | `abbrev` | [Revision](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RevisionNamespacedPublicEdition4.lean/declarations/revision.md) | 27 | `declaration-track:605f1ade425036989cd89fb3a40204dddac1e82bed38a7328306af7956f41bca` |
| 3 | `def` | [next?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RevisionNamespacedPublicEdition4.lean/declarations/next.md) | 31 | `declaration-track:26d53d2aa3b00ca8d05244fb46d1a34d3c246d3d2f8eee86000ecaece4b96df0` |
| 4 | `theorem` | [next?_sound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RevisionNamespacedPublicEdition4.lean/declarations/next-sound.md) | 38 | `result-track:b86d18847cda7de3991207e0e6733c83887b8693c10071d72cf06329ee1def94` |
| 5 | `theorem` | [next?_strict](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RevisionNamespacedPublicEdition4.lean/declarations/next-strict.md) | 47 | `result-track:fe49432b2e4be1298df57bc768e592f988a6e7e37f1244384b272fbf8a5ce5a3` |
| 6 | `theorem` | [next?_eq_none_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RevisionNamespacedPublicEdition4.lean/declarations/next-eq-none-iff.md) | 55 | `result-track:16613759f1c9f124a6e81a4b3e2e8f7ee968d08c4b24f23e68daeac8ea60458e` |
| 7 | `structure` | [Revisioned](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RevisionNamespacedPublicEdition4.lean/declarations/revisioned.md) | 62 | `declaration-track:9665ba2733bd7cf2f6b6ba8f5cc73933a3abca4b2db5216eec271a73d6a68ef4` |
| 8 | `structure` | [LwwRegister](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RevisionNamespacedPublicEdition4.lean/declarations/lwwregister.md) | 68 | `declaration-track:1ebb5736f15fc200a5fe0954103775c98f499d57d9bd8dcb8d42c027657068dd` |
| 9 | `inductive` | [MergeDecision](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RevisionNamespacedPublicEdition4.lean/declarations/mergedecision.md) | 73 | `declaration-track:666678c4198f7d360e63728bd552b557d021b173c2fe952bab755aae5279c91a` |
| 10 | `def` | [merge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RevisionNamespacedPublicEdition4.lean/declarations/merge.md) | 80 | `declaration-track:93d8f4703af10229b376a24cc4f9f18e17211163695676dfb695afea6757dcca` |
| 11 | `def` | [MergeDecision.result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RevisionNamespacedPublicEdition4.lean/declarations/mergedecision-result.md) | 96 | `declaration-track:432d31a3a03c4a36e5a1cc3b7bb67fb3327aa27d8b34b90ff6d0c443b90a4ca8` |
| 12 | `def` | [LwwRegister.apply](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RevisionNamespacedPublicEdition4.lean/declarations/lwwregister-apply.md) | 103 | `declaration-track:33dd42da4b25ae7cb3e822528bb4c3e0a4878371a9e77b9aadc6fb4c98b91832` |
| 13 | `theorem` | [merge_deterministic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RevisionNamespacedPublicEdition4.lean/declarations/merge-deterministic.md) | 109 | `result-track:64fd5f8bfea0bf744e36e16bcdb310b6048057faf8c14c142ba80b9d8849d884` |
| 14 | `theorem` | [staleRevision_rejected](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RevisionNamespacedPublicEdition4.lean/declarations/stalerevision-rejected.md) | 118 | `result-track:f02df553a48fb67f53dcfb7660bafdc2eedab1e0ea0ff6918608088864768bbb` |
| 15 | `theorem` | [equalRevision_conflict_rejected](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RevisionNamespacedPublicEdition4.lean/declarations/equalrevision-conflict-rejected.md) | 125 | `result-track:61b8dde4c8916f1b81122a23957a844be4ff92667122dbb28748ba66148a03da` |
| 16 | `theorem` | [equalRevision_identical_replay](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RevisionNamespacedPublicEdition4.lean/declarations/equalrevision-identical-replay.md) | 134 | `result-track:3b8b676031b6683f633517f1e0e5e5c8825d6a06b6a807cb0eca853c40be1c1a` |
| 17 | `theorem` | [acceptedRevision_not_stale](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RevisionNamespacedPublicEdition4.lean/declarations/acceptedrevision-not-stale.md) | 143 | `result-track:0585f3aa443b70bac782e8f8e7c9be54f5ce833a64d68b33c9579dfb75ffb80b` |
| 18 | `theorem` | [merge_revision_monotone](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RevisionNamespacedPublicEdition4.lean/declarations/merge-revision-monotone.md) | 152 | `result-track:4ad4a02eb9e47029694746f679b26721df1f08fe00279088aa42baab12c01fc4` |
| 19 | `theorem` | [replay_apply_idempotent](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RevisionNamespacedPublicEdition4.lean/declarations/replay-apply-idempotent.md) | 166 | `result-track:9f942f56bf58a361d1768ad7700d52e75d2ff8f455cf92d5abd601073ff563ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=30f3511057424e6327441cdc44bb1a9adbe8ed1b490c79c229b16655ef58458d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant0ab8f40feb376fd29e5c5133637f4e137215ed8b964b3085080ba1b24cce331b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant0ab8f40feb376fd29e5c5133637f4e137215ed8b964b3085080ba1b24cce331b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
