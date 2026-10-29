# Verification target: Reader Namespaced Public Reader

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7220bcc3dc63f2d453c541a32247f9f4744359e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7220bcc3dc63f2d453c541a32247f9f4744359e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean.json)

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
| 1 | `inductive` | [Reader.BodyState](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/reader-bodystate.md) | 42 | `declaration-track:3b8d68f88da23acee203d1241fe4603d571749a91b423977052c45e7f4b4de9b` |
| 2 | `inductive` | [Reader.State](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/reader-state.md) | 67 | `declaration-track:d9f50d3dadf2288bfb827b30a011e3500b86b9ffdbabea7b25f4ef9dcbe4118b` |
| 3 | `structure` | [Reader](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/reader.md) | 112 | `declaration-track:1ca5390497b6bfd720ad1dbee0709bb04cc0f272229134f57a5fafbfbd010906` |
| 4 | `def` | [isClosed](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/isclosed.md) | 155 | `declaration-track:874ec120afb0308c7dfe1d2c3e3a201f48aee91c426f0a112b6b8c407eb3d4fb` |
| 5 | `def` | [isComplete](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/iscomplete.md) | 164 | `declaration-track:5e53a73999d245de763eef36c91a4ae81e3020a0f906de95697aefdf7ce5c466` |
| 6 | `def` | [hasFailed](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/hasfailed.md) | 173 | `declaration-track:6108fee1027c71b0e3e4a4d7256c559984a3b07102d2d641de5ab9c8daa37006` |
| 7 | `def` | [feed](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/feed.md) | 184 | `declaration-track:5338af1a9277561ef49f5a945cf3cef18a4411352eec94155993fc147dac24c4` |
| 8 | `def` | [setInput](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/setinput.md) | 194 | `declaration-track:5613bf0e9c2d1e70b716700d8fa97f444ccff624741475c1d14b6de2451cb6d3` |
| 9 | `def` | [setMessageHead](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/setmessagehead.md) | 201 | `declaration-track:8c1d7232e042333b3a25ba94dfeecfda897e1e9868bf028052f83b8e5d64efba` |
| 10 | `def` | [addHeader](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/addheader.md) | 208 | `declaration-track:38d1437be1a0a960ac9366cdf8d968f3ab332ae1f54dd71690969828fb522e07` |
| 11 | `def` | [close](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/close.md) | 216 | `declaration-track:745cc0f5afbbe57eeaa47248b5a48b914adaf60e83581f819538b3514b1b39d9` |
| 12 | `def` | [markComplete](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/markcomplete.md) | 223 | `declaration-track:ff7a8a01fec622bdd6c972b35d4dc6db43ae48ed9e3c46fe8ace58a281af7c59` |
| 13 | `def` | [fail](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/fail.md) | 232 | `declaration-track:89c9c4638b2adae4c6587eb0633cab81d221328474a87dc4881997bb689f9f6b` |
| 14 | `def` | [reset](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/reset.md) | 239 | `declaration-track:a40398816210ed6462f4a0500112cc2c9fe4989174283817f472c52a41ad73f2` |
| 15 | `def` | [needsMoreInput](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/needsmoreinput.md) | 250 | `declaration-track:20f975a7fbdea7a7ee29511a2b2f65033916f269a1c5b358aa057204bd97d79d` |
| 16 | `def` | [getError](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/geterror.md) | 260 | `declaration-track:9d3798b15a69a28946292285457a1a03e1d980404df9e5b63bac0331b19e2695` |
| 17 | `def` | [remainingBytes](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/remainingbytes.md) | 269 | `declaration-track:0655cdb7afc4842cc57810f67fde1cbeb74c7cd1a187d9d26adf6218090f0071` |
| 18 | `def` | [advance](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/advance.md) | 276 | `declaration-track:caa5e6d4a49c812fd55c2837fafdfb5c5512dd41bb29c11c0b9d44f985480758` |
| 19 | `def` | [startHeaders](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/startheaders.md) | 283 | `declaration-track:ae0df126c296b9146e149d31a6031a64ff47f4ae9d2d081d4a29775c2c61c7b8` |
| 20 | `def` | [addBodyBytes](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/addbodybytes.md) | 290 | `declaration-track:34c0bb568b4a10df8b5737d2674adffc9948ada808f244b5c281d76fcd7ad79c` |
| 21 | `def` | [addHeaderBytes](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/addheaderbytes.md) | 297 | `declaration-track:9bb76426a5aa51c206b9767bf9e020fb0ad8be018dbdef653f58df8adafffc15` |
| 22 | `def` | [startFixedBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/startfixedbody.md) | 304 | `declaration-track:b61b615dea9d5fa0aca45da330e5c5f42f8617e55cc996b95e9dd36a43d31fb4` |
| 23 | `def` | [startChunkedBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/startchunkedbody.md) | 311 | `declaration-track:26ccd95f3c48cb570c9d49e04b7930adbc423cc112af0079985366af3b292bb7` |
| 24 | `def` | [markNoMoreInput](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/marknomoreinput.md) | 318 | `declaration-track:ee1bd198f23eb138e7c5df949af377c817c20c722a46d2e2bc2c83de4f54368b` |
| 25 | `def` | [shouldKeepAlive](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderNamespacedPublicReader.lean/declarations/shouldkeepalive.md) | 324 | `declaration-track:bb83597d4a53f2fb6ca2eb3686531a57e713c1c810a71a1767799c6b756b7dc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7c2ba44c996bce8bf88bb5678db24943a24cfb9425ca299b289ce7908433c1e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
