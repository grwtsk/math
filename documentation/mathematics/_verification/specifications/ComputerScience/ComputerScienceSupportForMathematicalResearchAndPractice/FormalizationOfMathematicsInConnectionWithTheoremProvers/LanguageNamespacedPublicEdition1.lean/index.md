# Verification target: Language Namespaced Public Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96992086ab523ff5959ae51197588d7a33260e8d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant2147f0a806686fe0e8f2d79a07b39cde44249c96dfc18672364b9729e2d22129.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96992086ab523ff5959ae51197588d7a33260e8d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant2147f0a806686fe0e8f2d79a07b39cde44249c96dfc18672364b9729e2d22129.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant2147f0a806686fe0e8f2d79a07b39cde44249c96dfc18672364b9729e2d22129.lean.json)

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
| 1 | `inductive` | [LanguageId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition1.lean/declarations/languageid.md) | 28 | `declaration-track:e6f343cb5ded823ee2c54d8d980428c21ffa8bc6bcbcbca6192f0a447828dce3` |
| 2 | `def` | [LanguageId.code](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition1.lean/declarations/languageid-code.md) | 35 | `declaration-track:1dfff34a9ad4b97eb065f5f5ccf3a0a1192534f6a8c6cadcbd11c4b85aa41140` |
| 3 | `def` | [LanguageId.ofCode?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition1.lean/declarations/languageid-ofcode.md) | 41 | `declaration-track:147487510672403b8b57a0480a8da6413add086a3d076f2a894c8244756c698f` |
| 4 | `theorem` | [languageCode_roundtrip](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition1.lean/declarations/languagecode-roundtrip.md) | 49 | `result-track:e367b7e19cd8b4c052f4ee049b6315bd64cf8811bb867e8c23b37757a9d49f84` |
| 5 | `theorem` | [unknown_language_code_fails_closed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition1.lean/declarations/unknown-language-code-fails-closed.md) | 54 | `result-track:75c950126b7bbc16e0098a6ce171f1e79ee72e20c77efa5e1fc8cc2335431902` |
| 6 | `structure` | [ParserFingerprint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition1.lean/declarations/parserfingerprint.md) | 61 | `declaration-track:e9ff7fdd5aa253e4a0c4b18272c57e57d823b0e1afffe59573bad5cd04748972` |
| 7 | `def` | [ParserFingerprint.Valid](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition1.lean/declarations/parserfingerprint-valid.md) | 70 | `declaration-track:075e614c9056c69b5bdb258e834120c2c443da236b5eeb6d80139b00be70603a` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition1.lean/declarations/instance.md) | 77 | `declaration-track:77d5a45b1058f511b654e20e8e9bd8e37aefe334096737727912f6912e990781` |
| 9 | `inductive` | [ParserAuthority](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition1.lean/declarations/parserauthority.md) | 82 | `declaration-track:395f5c2e1eb50cac10866c2968064346f7e1e8478c3bfc7dbf3ef65bdfd98fe4` |
| 10 | `def` | [ParserAuthority.isCanonicalCompilerObservation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition1.lean/declarations/parserauthority-iscanonicalcompilerobservation.md) | 89 | `declaration-track:1de537c22434fc44570677efc63c9a74d04b34c84be1a296cd3941a58b2874bc` |
| 11 | `theorem` | [recoveredPreview_is_not_canonical](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition1.lean/declarations/recoveredpreview-is-not-canonical.md) | 94 | `result-track:deef1730eaa0c121ff3882dde34139123a936e8c94b5de624f284645016d47a7` |
| 12 | `theorem` | [structuralParserObservation_is_not_canonical](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition1.lean/declarations/structuralparserobservation-is-not-canonical.md) | 99 | `result-track:902767d4437ace890b51310c20d2bfa4f6d0eadb40791709c707ed6fc08f8706` |
| 13 | `structure` | [SourceFileIdentity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition1.lean/declarations/sourcefileidentity.md) | 104 | `declaration-track:8ae47ba0b67f43fd7fdc09accad1b5e2f8c778d508b94ca0b8bae9e3c7891ddc` |
| 14 | `structure` | [SourceSnapshotId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition1.lean/declarations/sourcesnapshotid.md) | 111 | `declaration-track:acbf666b19c17e28edf7e273d916a41eb00efe80133dd7d84865cfaf9521e889` |
| 15 | `structure` | [BuildTargetIdentity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguageNamespacedPublicEdition1.lean/declarations/buildtargetidentity.md) | 117 | `declaration-track:04e9deb7ce58b735a0ac2b0b37c442b787e8c2fcf83831c2abb0b2eae7636bbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fbb22925852c09ef8d6f8137370530223249b35f5ac34de4506a25549bf6bf7d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant2147f0a806686fe0e8f2d79a07b39cde44249c96dfc18672364b9729e2d22129.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant2147f0a806686fe0e8f2d79a07b39cde44249c96dfc18672364b9729e2d22129.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
