# Verification target: Requests Repo Info

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1bccf23b6211eb834b69b0220b8949534ec8f48",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1bccf23b6211eb834b69b0220b8949534ec8f48`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Cache.Hashing` — import line 7; external provider; requires a separately pinned dependency.
- `Cache.Infra` — import line 8; external provider; requires a separately pinned dependency.
- `Lake.Load.Manifest` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RepoInfo](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/repoinfo.md) | 18 | `declaration-track:88ece6dbe8d7b659aae7e37039790f7dbae7c8a0439ffbac503337282f5bf9ca` |
| 2 | `def` | [extractRepoFromUrl](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/extractrepofromurl.md) | 25 | `declaration-track:6db75d563370b283e3f9c3aef8d1da25caa353a624d70b93c16f62f2b9fffa87` |
| 3 | `def` | [isRemoteURL](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/isremoteurl.md) | 32 | `declaration-track:09fc1ec1d414037b97d77f7719945d687b8b3cd2950314e5ddf3f12eeb3affbd` |
| 4 | `def` | [getRepoFromRemote](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/getrepofromremote.md) | 38 | `declaration-track:76dfaa70a7de49f937d8ba6cbafdd884e2fae2fb666fa0b17bf786a1c697c933` |
| 5 | `def` | [findMathlibRemote](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/findmathlibremote.md) | 71 | `declaration-track:0f8249b89fe2772350674b7bff09e58767def1b9007ec5f5ba91e91f9e8b2b29` |
| 6 | `def` | [extractPRNumber](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/extractprnumber.md) | 114 | `declaration-track:4fe8810ebc9176de1a019c17c7d86d61c890f9f7f9ad38bc2bbabecf85e4c063` |
| 7 | `def` | [isDetachedAtNightlyTesting](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/isdetachedatnightlytesting.md) | 123 | `declaration-track:3fb60bd0a63302d7054c6ebc3bb820bdbea9629e01c6bde187f0fab3648d6a59` |
| 8 | `def` | [getRemoteRepoImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/getremoterepoimpl.md) | 148 | `declaration-track:6a2fc2311fa18e058d3d39a47e8fb280575f37f030d7239b5b64ea2ac6b06ba5` |
| 9 | `def` | [getRemoteRepo](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/getremoterepo.md) | 255 | `declaration-track:cb7a26a7745cd85b8ceca22c6ebcdc42f644ed8404ca638c886881423458410a` |
| 10 | `def` | [resolveRepo](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/resolverepo.md) | 275 | `declaration-track:bd88e853ffb4f63f6ae66f9f41617e3825e4b10354cd1b9876a04c8dddc4c793` |
| 11 | `initialize` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/initialize-source-edition-2.md) | 285 | `declaration-track:909a022fd20a1cc355228e5ff4e96105fd4fe096f5a9a0a5f7b6df365dbd0df9` |
| 12 | `def` | [chainWithGetURLs](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/chainwithgeturls.md) | 289 | `declaration-track:e54c02486968322a1cda03ef851c0e0dfeea5c3c4c6d5e6c61b413f9aaf4194f` |
| 13 | `def` | [effectiveGetURLs](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/effectivegeturls.md) | 311 | `declaration-track:ca196b43a7df2eca9a1b3535757c740fc504336620259423f53a1a7815605a5f` |
| 14 | `def` | [curlFollowRedirectArgs](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/curlfollowredirectargs.md) | 339 | `declaration-track:c85abc88c616ced2f33741f142877f1c41c59af9d86ee94f5cc38f402452ef56` |
| 15 | `def` | [curlRetryArgs](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/curlretryargs.md) | 351 | `declaration-track:58a606a62bacec84f359f7a55fd7d15d8f9b0fe12737116b8a1d1a34a953f941` |
| 16 | `def` | [mkFileURL](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/mkfileurl.md) | 370 | `declaration-track:ed9481a49ef380c1b8dc734206c7e52210e360d00a255a31e9917fd0933d0fae` |
| 17 | `initialize` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/initialize.md) | 378 | `declaration-track:6c5ab71633b8ab68d826d1eb61faa22a8e200dcb83d9eb69a8bd434d0f289970` |
| 18 | `def` | [isValidScope](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/isvalidscope.md) | 388 | `declaration-track:0d4b7befcbe81291abca15d4b36640dde105751e2482aab2f42c10e9f708e2b6` |
| 19 | `def` | [getRepoScope](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/getreposcope.md) | 399 | `declaration-track:5c4e6ef462d339f176831a41f3e96cf269b76f9a892796c778cef91fb7b2b2c4` |
| 20 | `def` | [getGitCommitHash](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/getgitcommithash.md) | 409 | `declaration-track:432c579be7812cba42e92ee512814662a5543ea7ad84deb1153a2e24ffa4fc4e` |
| 21 | `def` | [mkGetConfigContent](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/mkgetconfigcontent.md) | 418 | `declaration-track:5a60159a5387442e579a3424a1ce8a88c401a0917b14ab5b654fc8a309d25a65` |
| 22 | `def` | [isCacheMissStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/iscachemissstatus.md) | 450 | `declaration-track:401cc0b332cc4b716b2281529c6fa3eb04fafc0a405d82889dde06785ac7faf1` |
| 23 | `def` | [isAlreadyPresentStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/isalreadypresentstatus.md) | 461 | `declaration-track:92fffe8eb77bdf77282000bb1cafde4600249c1a765b512ceb8402155c7d634b` |
| 24 | `inductive` | [TransferDirection](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/transferdirection.md) | 465 | `declaration-track:68e4ceeb81c21b30d4694884557986dd26707c002540ed48e6afa0812f8d47f1` |
| 25 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/instance.md) | 470 | `declaration-track:edc9c85ec46765a102f4be540c530102c04517acbc062ac88feab0342a55f072` |
| 26 | `inductive` | [TransferVerdict](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/transferverdict.md) | 477 | `declaration-track:e3523363461563cd4f41a91981e6d1ef57712ef6cc95a16372adf8593de87beb` |
| 27 | `def` | [classifyDownload](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/classifydownload.md) | 496 | `declaration-track:e9af55a4466730304feee97e46a1ebc85a17aca84a1c57763c0e364078394282` |
| 28 | `def` | [classifyUpload](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/classifyupload.md) | 509 | `declaration-track:3b7ae2c5bc6dc5efbe42fcff0c1d5f88c9b1ebec225fbb5773e4e5599f5b2a5e` |
| 29 | `def` | [downloadFile](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/downloadfile.md) | 520 | `declaration-track:6204bcf8791e3b72bbc96f5a81185882c706b19518577d2c469ba2b34e5b212e` |
| 30 | `def` | [hashFromFileName](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/hashfromfilename.md) | 546 | `declaration-track:90de4f327de5e2dd3e9cadb35e9337e4e7ba4375de211ab304d1796bc0a2452b` |
| 31 | `def` | [decompressBatch](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/decompressbatch.md) | 554 | `declaration-track:77c44bb324299dfe05b5ee8fc653662caddb716b140c81abaa48c59aa6879c3a` |
| 32 | `structure` | [DecompConfig](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/decompconfig.md) | 576 | `declaration-track:9e527343ae51286ff1edabf74654e0b6aae9df09f4dc2507e6ba2f90abc1c187` |
| 33 | `structure` | [DecompState](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/decompstate.md) | 586 | `declaration-track:1e3336c914b965c0f67a22c2be85661ddf169d0179e9e458479a03289004e6e5` |
| 34 | `structure` | [TransferState](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/transferstate.md) | 598 | `declaration-track:a2ca7b92c6c91cd9c7b916c8dd762ae1e55ba9ff49b1b23f3187234e070323d1` |
| 35 | `def` | [harvestDecompTask](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/harvestdecomptask.md) | 609 | `declaration-track:9a232868a411be9d2caaf89ae9fe29c0b117e176912c5ace7c2fde38f7a6d0f1` |
| 36 | `def` | [dispatchDecompBatch](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/dispatchdecompbatch.md) | 616 | `declaration-track:0c7c7f72c8e1944a3d41698782fa65ddd647169c3d5b0e500d4b12c8ae2959f1` |
| 37 | `def` | [finalizeDecomp](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/finalizedecomp.md) | 625 | `declaration-track:982ccf02cc74850f9e749f23c7bd96235d553df497c75dc2c1297545bf8ae39d` |
| 38 | `def` | [monitorCurl](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/monitorcurl.md) | 642 | `declaration-track:466684720a8f6f5f69f115dc6eefb2e15a2a301ab8c3f53197d94f68ca2596b6` |
| 39 | `def` | [downloadFilesFromContainer](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/downloadfilesfromcontainer.md) | 780 | `declaration-track:e698b11bcb2b8cb7532c50ba03be99c8473a40eca9d86ca098ff5a0140c55d5a` |
| 40 | `def` | [expandDownloadRounds](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/expanddownloadrounds.md) | 838 | `declaration-track:5916f772b492e822c726af87c0d1fcaa1a6b5ed8840bf75e5a50a262cb610762` |
| 41 | `def` | [downloadFiles](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/downloadfiles.md) | 863 | `declaration-track:6aae84f72d1b4bcd8adad12f0d6af91c0cec655585a739a61ef1412d2b63af35` |
| 42 | `def` | [checkForToolchainMismatch](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/checkfortoolchainmismatch.md) | 967 | `declaration-track:c9ea91414d51f80863907e572c8246513425f68e52437eb5e1c852c0eabfe54d` |
| 43 | `def` | [packageEntrySrcDesc](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/packageentrysrcdesc.md) | 987 | `declaration-track:2a02e829b61e52f7ca142d3dc9f1583e4812c23be51718aecf6420d8fdb6d481` |
| 44 | `def` | [packageEntrySrcMatch](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/packageentrysrcmatch.md) | 993 | `declaration-track:845c90b0e6bba3e3e677129433df4e4d26d238392f9ad19025ab6e92cc28b0e1` |
| 45 | `def` | [checkForManifestMismatch](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/checkformanifestmismatch.md) | 1003 | `declaration-track:f067b9cd2191b16d0fb8f360b75af3d78e3ccbb99c88e8aa873229417728c2c7` |
| 46 | `def` | [getFiles](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/getfiles.md) | 1046 | `declaration-track:814b9e8e4e1546d4567d6f57bcbd77457d1ef71efe7c03a8c96c527e140e6688` |
| 47 | `def` | [copyCmd](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/copycmd.md) | 1109 | `declaration-track:4626bc9f9154479c407a2a645a8b03a24f0ddfe25f18b13a3f41350cc33396af` |
| 48 | `def` | [stageFiles](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/stagefiles.md) | 1112 | `declaration-track:806eb624b8b5af4f9d8251ba420fff6d067c3f07bcfca5fc3896882cfd80802b` |
| 49 | `def` | [unstageFiles](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsRepoInfo.lean/declarations/unstagefiles.md) | 1124 | `declaration-track:5218a62ca367e53710738f6341d8810011df3fc6ac1f9fbf17b8bc9b35799150` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90d21568d4530c5a0068d33d066f81e61c843da8a2a58dd86919d88daf008e07 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
