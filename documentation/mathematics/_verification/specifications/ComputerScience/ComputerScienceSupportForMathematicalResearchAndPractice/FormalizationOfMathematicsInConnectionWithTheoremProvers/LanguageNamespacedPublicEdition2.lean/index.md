# Verification target: Language Namespaced Public Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce451f5c8471f1b2fb44089c9edbf9624e05fd60",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variantcc55063edb3b27b86717f2e0fe1b6a7f10a9a2f85e985d427d19b2d220ae87a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce451f5c8471f1b2fb44089c9edbf9624e05fd60`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variantcc55063edb3b27b86717f2e0fe1b6a7f10a9a2f85e985d427d19b2d220ae87a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variantcc55063edb3b27b86717f2e0fe1b6a7f10a9a2f85e985d427d19b2d220ae87a2.lean.json)

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
| 1 | `inductive` | [LanguageId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition2.lean/declarations/languageid.md) | 28 | `declaration-track:1f6fb418f74eb0ed808dc4f75a0740c3a46ea32e6b56d66bc01fbcc5b40ca215` |
| 2 | `def` | [LanguageId.code](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition2.lean/declarations/languageid-code.md) | 35 | `declaration-track:fe1c3acecfbf8706e1c26a151663bdd5e24ba82a8412ab77d6a28ab164ca6d85` |
| 3 | `def` | [LanguageId.ofCode?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition2.lean/declarations/languageid-ofcode.md) | 41 | `declaration-track:65eea238e6c185b8936a074d1a037a355eb8a04c58d8e5fcc67aea6f1c7375ef` |
| 4 | `theorem` | [languageCode_roundtrip](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition2.lean/declarations/languagecode-roundtrip.md) | 49 | `result-track:d792ed56fa77b8ae3561fa5ea742c215372b470cd12dfd14e06e8544b4dcb421` |
| 5 | `theorem` | [unknown_language_code_fails_closed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition2.lean/declarations/unknown-language-code-fails-closed.md) | 54 | `result-track:01924898d3604d672b9b8afe95978c3d391aae89cd1f9f25e9ef7a0b7c53ab3e` |
| 6 | `structure` | [ParserFingerprint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition2.lean/declarations/parserfingerprint.md) | 61 | `declaration-track:647c7ba707452af84e423cfa7d85e730d0b98679347f6d64fbb28d1000478cae` |
| 7 | `def` | [ParserFingerprint.Valid](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition2.lean/declarations/parserfingerprint-valid.md) | 70 | `declaration-track:1353da1c00a1ec877e1071d0aef17cda5e65d9eebe09ff18ebaaf9824b875acc` |
| 8 | `inductive` | [ParserAuthority](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition2.lean/declarations/parserauthority.md) | 78 | `declaration-track:70ab9f4f0230fa747a97f53e578d8f0c67b1e97817019c9b0bc53426d0ba269c` |
| 9 | `def` | [ParserAuthority.isCanonicalCompilerObservation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition2.lean/declarations/parserauthority-iscanonicalcompilerobservation.md) | 85 | `declaration-track:5f7c12cda4828330e62d8f55572425dcfb172cb803eeb20a2d915765941fc588` |
| 10 | `theorem` | [recoveredPreview_is_not_canonical](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition2.lean/declarations/recoveredpreview-is-not-canonical.md) | 90 | `result-track:5fe526099f372a6b0317ebf47a4ff60413af7a1aafdba89bda90a3d506d7605c` |
| 11 | `theorem` | [structuralParserObservation_is_not_canonical](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition2.lean/declarations/structuralparserobservation-is-not-canonical.md) | 95 | `result-track:fbc3d26336497e3a109bfb412811005673599bd395215593f088024e4f35f3a7` |
| 12 | `structure` | [SourceFileIdentity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition2.lean/declarations/sourcefileidentity.md) | 100 | `declaration-track:b1d209e64459a23b0556199c2e3ce7889c7e08a146e42d44ad487667312029dd` |
| 13 | `structure` | [SourceSnapshotId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition2.lean/declarations/sourcesnapshotid.md) | 107 | `declaration-track:e0330c0c3e2b269bdcebe419ee1173663abedc82aeadd4269552f94ee028666d` |
| 14 | `structure` | [BuildTargetIdentity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition2.lean/declarations/buildtargetidentity.md) | 113 | `declaration-track:5fc37692b294707cc98a71952515cd1a2d34e32f666238416f2c666d1d5b3dc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=236b257e77ce57dd104c38c36b0bfec0ec6060dd11a3fc2b5043d1eb3b6591e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variantcc55063edb3b27b86717f2e0fe1b6a7f10a9a2f85e985d427d19b2d220ae87a2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variantcc55063edb3b27b86717f2e0fe1b6a7f10a9a2f85e985d427d19b2d220ae87a2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
