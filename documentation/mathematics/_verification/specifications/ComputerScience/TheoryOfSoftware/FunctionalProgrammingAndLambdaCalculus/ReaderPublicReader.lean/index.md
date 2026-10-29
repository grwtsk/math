# Verification target: Reader Public Reader

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae83b0d85ca1c80286fa1a62aea9945e10328a79",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantf58f48e4b291218a5cd8f44f3c6a66314d7a1e1b20d0daaeec8e22f382f6e8b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae83b0d85ca1c80286fa1a62aea9945e10328a79`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantf58f48e4b291218a5cd8f44f3c6a66314d7a1e1b20d0daaeec8e22f382f6e8b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantf58f48e4b291218a5cd8f44f3c6a66314d7a1e1b20d0daaeec8e22f382f6e8b6.lean.json)

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
| 1 | `inductive` | [Reader.BodyState](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/reader-bodystate.md) | 34 | `declaration-track:3baf2f19a76f38c30ea16dcba81c7f8ce1ecb12ae5e906b1a5407b1a7641a874` |
| 2 | `inductive` | [Reader.State](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/reader-state.md) | 59 | `declaration-track:70a1126dc324371aaad49b310546e6565cd1a17d611f7f4c8d9690a7d77b49fa` |
| 3 | `structure` | [Reader](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/reader.md) | 104 | `declaration-track:f928339c3861cdb5dd42155d5a8bcf61ca22bba7933bf76fc2e6f322d04299d3` |
| 4 | `def` | [isClosed](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/isclosed.md) | 147 | `declaration-track:ef6b187a503e0091cdfe0c690625fd4a09ddfd637b35a4e136c1cbd148ce9302` |
| 5 | `def` | [isComplete](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/iscomplete.md) | 156 | `declaration-track:983858ac4f850d5890368f12161cc593166d73b2789cead750a1f0cd927a86ce` |
| 6 | `def` | [hasFailed](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/hasfailed.md) | 165 | `declaration-track:6b0205b5fb53770643be86ab05b86da8711b1adaf784fd5d9018ad564b8d2a6d` |
| 7 | `def` | [feed](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/feed.md) | 176 | `declaration-track:517893e9aa462fb23c70ac31a7a80e5fde0a4c8c7dc6c16a791ceff0300fabed` |
| 8 | `def` | [setInput](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/setinput.md) | 186 | `declaration-track:fe1c3cff27213e9d1ae4cde2608554207542294978ba411f4a67f344027c13db` |
| 9 | `def` | [setMessageHead](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/setmessagehead.md) | 193 | `declaration-track:cd7a27006484ebe7d326de49c6f85ef949d9a1bafb7a79d7213f87b536a293a2` |
| 10 | `def` | [addHeader](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/addheader.md) | 200 | `declaration-track:560e7368cc246626b1b9b51451c0b759a3308db6ee43d98e81d3aade6df04040` |
| 11 | `def` | [close](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/close.md) | 208 | `declaration-track:89b004ed761d44bb71b185b27b3f0b807fb17080d99a7e194e5006d46aa4144b` |
| 12 | `def` | [markComplete](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/markcomplete.md) | 215 | `declaration-track:0c087346cd84068f4b5e9a2d676df275b615bdb1259cd685028490c30f5ccb74` |
| 13 | `def` | [fail](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/fail.md) | 224 | `declaration-track:31c30480ebc0d03bd54e1ebd8a10eb056eaa51c00046135a6e201cd30a000041` |
| 14 | `def` | [reset](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/reset.md) | 231 | `declaration-track:9356eff87737f76e38a32639a77def550642db9856171cf7964b1cd73639129a` |
| 15 | `def` | [needsMoreInput](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/needsmoreinput.md) | 242 | `declaration-track:58e6e5008d9e26aae84ac8df358c2c80a63dc4e0335ff32c1cfc604a706d6ed7` |
| 16 | `def` | [getError](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/geterror.md) | 252 | `declaration-track:0a6d74424265f6dcf5f2996cefba7458164680446c08e57ea59ce0182ee64788` |
| 17 | `def` | [remainingBytes](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/remainingbytes.md) | 261 | `declaration-track:1acb4b98311d400500dd53f76c589cc140955f4823617a93270ed77d7d3510d2` |
| 18 | `def` | [advance](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/advance.md) | 268 | `declaration-track:14816da73c7adbef4253b82cb31c2fe663b07caa6141c3bf5bb2f14072028e8c` |
| 19 | `def` | [startHeaders](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/startheaders.md) | 275 | `declaration-track:b7ea98b694d678884dc7cdb394d76aece94601f0448bf9a435fd72768520617b` |
| 20 | `def` | [addBodyBytes](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/addbodybytes.md) | 282 | `declaration-track:1f8f0a79a7c410710c78606dd11f4e86f79d08196d407dd661f15d48a35c7b1e` |
| 21 | `def` | [addHeaderBytes](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/addheaderbytes.md) | 289 | `declaration-track:7c43cd062572928dd3ffbe8760d543c8422cefa86a7180cedcad3b01fea6c53a` |
| 22 | `def` | [startFixedBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/startfixedbody.md) | 296 | `declaration-track:885e1b5bbdb851a613ea07ddbeb839c474072b5fd1e7a5b8060bb52f8d3f9d12` |
| 23 | `def` | [startChunkedBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/startchunkedbody.md) | 303 | `declaration-track:e75c5898268a341f060362f49b6d5d40c5991307ca665a933429391fa6adf977` |
| 24 | `def` | [markNoMoreInput](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/marknomoreinput.md) | 310 | `declaration-track:253f9769c60b3b98d0f4863756795620be2f56a0f41a5c85bfa31234d94c80bb` |
| 25 | `def` | [shouldKeepAlive](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReaderPublicReader.lean/declarations/shouldkeepalive.md) | 316 | `declaration-track:c11978bccb53feb81d240eb68d2410927e6e9bd0f08b09afaae4ac51c84d0dd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2a467535273f01b5dd70a3f55a06c09a82b685ab8f6a03c4edaa0fbfcf8481f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantf58f48e4b291218a5cd8f44f3c6a66314d7a1e1b20d0daaeec8e22f382f6e8b6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantf58f48e4b291218a5cd8f44f3c6a66314d7a1e1b20d0daaeec8e22f382f6e8b6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
