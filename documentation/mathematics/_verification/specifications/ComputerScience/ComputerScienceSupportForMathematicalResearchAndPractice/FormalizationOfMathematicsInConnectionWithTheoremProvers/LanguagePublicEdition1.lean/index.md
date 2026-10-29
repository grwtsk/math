# Verification target: Language Public Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38cd109cb3a2b9a0105378c06a645c9c668cbb38",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguagePublicEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguagePublicEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38cd109cb3a2b9a0105378c06a645c9c668cbb38`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean.json)

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
| 1 | `inductive` | [LanguageId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguagePublicEdition1.lean/declarations/languageid.md) | 20 | `declaration-track:95e734f8e8ae9f98f1c91a2d062fa332755d9fdb94cc7a6b60fd313c07b89eaf` |
| 2 | `def` | [LanguageId.code](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguagePublicEdition1.lean/declarations/languageid-code.md) | 27 | `declaration-track:0588bc03c0ed79dc2e6fa048d22f474d6d013a612904f18e513784f2e345dc41` |
| 3 | `def` | [LanguageId.ofCode?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguagePublicEdition1.lean/declarations/languageid-ofcode.md) | 33 | `declaration-track:31b5becdaa87fd9567f001d7da6ef56b2e44be662e0858dc9349af05a2aa2981` |
| 4 | `theorem` | [languageCode_roundtrip](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguagePublicEdition1.lean/declarations/languagecode-roundtrip.md) | 41 | `result-track:d5651a3d7bb6f1138f8e963e0b9f91811d6a5bec11042d844528fe4dd4fe84d1` |
| 5 | `theorem` | [unknown_language_code_fails_closed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguagePublicEdition1.lean/declarations/unknown-language-code-fails-closed.md) | 46 | `result-track:7ec86fb741ba31a891a1e3ee8c3860a626840801813553de6a0c31d8ce2c8f52` |
| 6 | `structure` | [ParserFingerprint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguagePublicEdition1.lean/declarations/parserfingerprint.md) | 53 | `declaration-track:f2772d87f78f39508775ae64ce044dc2ea9d9176d14a74c0ea6a54671e832f4d` |
| 7 | `def` | [ParserFingerprint.Valid](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguagePublicEdition1.lean/declarations/parserfingerprint-valid.md) | 62 | `declaration-track:5ca6e626f7ae660e372067b288566d6e1643379b478e5058050d65f66c5f561b` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguagePublicEdition1.lean/declarations/instance.md) | 69 | `declaration-track:709761e682bb8435134fd75af75d0655ed0e99b0855e7a468e19e0233c4e1e7f` |
| 9 | `inductive` | [ParserAuthority](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguagePublicEdition1.lean/declarations/parserauthority.md) | 74 | `declaration-track:a2d1840916a9aaee2a15ef7f2d1005583c51438adcb75a4c1b0c381ebc1c04c9` |
| 10 | `def` | [ParserAuthority.isCanonicalCompilerObservation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguagePublicEdition1.lean/declarations/parserauthority-iscanonicalcompilerobservation.md) | 81 | `declaration-track:ff4edd04533b3f48781c40946f5787df65173fa2cb33ba34050985c06850e953` |
| 11 | `theorem` | [recoveredPreview_is_not_canonical](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguagePublicEdition1.lean/declarations/recoveredpreview-is-not-canonical.md) | 86 | `result-track:b4bd71fe644dd5252907c3fe949eeaa39479b84707d2b56f6996beb758f31db6` |
| 12 | `theorem` | [structuralParserObservation_is_not_canonical](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguagePublicEdition1.lean/declarations/structuralparserobservation-is-not-canonical.md) | 91 | `result-track:2e69bccba4f715bd41f57bb9eec480b86134ca2e81caae41960a1fac6bb661c2` |
| 13 | `structure` | [SourceFileIdentity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguagePublicEdition1.lean/declarations/sourcefileidentity.md) | 96 | `declaration-track:95944e79b5bc6b50b7fc4c06281de37e96e9ccad7da0727e5dfcf9bc937487c8` |
| 14 | `structure` | [SourceSnapshotId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguagePublicEdition1.lean/declarations/sourcesnapshotid.md) | 103 | `declaration-track:0e6559137b51b5ed647cc587b342c367dfb6ba8bf75c3742556b80bfc35751e2` |
| 15 | `structure` | [BuildTargetIdentity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LanguagePublicEdition1.lean/declarations/buildtargetidentity.md) | 109 | `declaration-track:a3fb13a390a2516801732aa7ec82ce9eee90f700c5308b68e4ca4fd7a4d251fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f1019cc96321e3ae583ae617cee8859945d6e9c76890b13e5e662dcf172aa416 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
