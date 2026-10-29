# Verification target: Requests Namespaced Repo Info

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd81bd18c951748911d7ae56289c5ec095f0c087",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantc7113a36c9db5ac3f746f4e6d5290d6f723c6c9b7c5e8ab7e0a3bddcba19213e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd81bd18c951748911d7ae56289c5ec095f0c087`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantc7113a36c9db5ac3f746f4e6d5290d6f723c6c9b7c5e8ab7e0a3bddcba19213e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantc7113a36c9db5ac3f746f4e6d5290d6f723c6c9b7c5e8ab7e0a3bddcba19213e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Cache.Hashing` — import line 12; external provider; requires a separately pinned dependency.
- `Cache.Infra` — import line 13; external provider; requires a separately pinned dependency.
- `Lake.Load.Manifest` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RepoInfo](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/repoinfo.md) | 26 | `declaration-track:8cbcd562000ac6fd265939f4db9ba07b93171028ac29217c8bc1e61e44557c16` |
| 2 | `def` | [extractRepoFromUrl](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/extractrepofromurl.md) | 33 | `declaration-track:bd8ad0be943186069c30212391401c83dae433434ea76dcf237c0063d118c0b4` |
| 3 | `def` | [isRemoteURL](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/isremoteurl.md) | 40 | `declaration-track:c98d9f9d4400babe43d099ce005263f080b52f1e5f343ecd1a5eedeba50c4fe0` |
| 4 | `def` | [getRepoFromRemote](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/getrepofromremote.md) | 46 | `declaration-track:c6e5124816aab930a72d4df00c8688d2982c31677fe7874ca8f27cd9f175cedb` |
| 5 | `def` | [findMathlibRemote](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/findmathlibremote.md) | 79 | `declaration-track:d9cadf1ad640a7c062827cba78a99e4cf08aff0353a8fc84d347ab49e22e94a2` |
| 6 | `def` | [extractPRNumber](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/extractprnumber.md) | 122 | `declaration-track:dfa4ad72ec0635992cd12b075011cad4eaf36b78c7bf73afadf528448480f0a7` |
| 7 | `def` | [isDetachedAtNightlyTesting](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/isdetachedatnightlytesting.md) | 131 | `declaration-track:55ab1a02e6f06831874a73944fd52e1cbba0213d9148b10e1d685e55294c689b` |
| 8 | `def` | [getRemoteRepoImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/getremoterepoimpl.md) | 156 | `declaration-track:ca4b5cec226fcebe7a6c3daa345f805e7b0740683bb26f09474d72c01d16b2db` |
| 9 | `def` | [getRemoteRepo](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/getremoterepo.md) | 263 | `declaration-track:a753472769528808d10fc4c96c4fa9b0f2f3d5a737028b6bbffd3209953717c7` |
| 10 | `def` | [resolveRepo](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/resolverepo.md) | 283 | `declaration-track:959601e4d27cbe79b78b045806ec6a96dd0828fdb0db0843bfb0ce17082516d4` |
| 11 | `initialize` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/initialize-source-edition-2.md) | 293 | `declaration-track:a17e407884004d192faf3bc26ec7dd2a5abb350d3b04d52b8c81b3f68836a8e9` |
| 12 | `def` | [chainWithGetURLs](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/chainwithgeturls.md) | 297 | `declaration-track:85c07735790a8228a3b221c514be406c5c419e9cc139f4995a25e26df2e23914` |
| 13 | `def` | [effectiveGetURLs](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/effectivegeturls.md) | 319 | `declaration-track:d80143c56f4a855a212d7fbad4b1935de26611ab444209cfbcbff0dc3a4f2e04` |
| 14 | `def` | [curlFollowRedirectArgs](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/curlfollowredirectargs.md) | 347 | `declaration-track:1aca9cf06c9c0c7d85d67a0994a0304ca02b944cbde0c16ec731d0a2564f3fe8` |
| 15 | `def` | [curlRetryArgs](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/curlretryargs.md) | 359 | `declaration-track:1a405a25b8d48c9f1dbdbd0d2c67c03c111dd5c346e7453449716f5de9b2cadc` |
| 16 | `def` | [mkFileURL](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/mkfileurl.md) | 378 | `declaration-track:fceccbfb4b05f9c3af5d4b1a0ea125fc5f67bed797c6fae9e6e7c5b2bdabae62` |
| 17 | `initialize` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/initialize.md) | 386 | `declaration-track:576a426e5c877190b396123f5bbc16678b717dc38ba82cfd6e3b52d973760a90` |
| 18 | `def` | [isValidScope](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/isvalidscope.md) | 396 | `declaration-track:91130bad3c94336ad9502be7ae1a99e182b4c9b66b2189896a023228e78eef76` |
| 19 | `def` | [getRepoScope](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/getreposcope.md) | 407 | `declaration-track:127d5acec9ccec34f3f694adf589f3160b206d2399a0fa185925d9fc3265f9b8` |
| 20 | `def` | [getGitCommitHash](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/getgitcommithash.md) | 417 | `declaration-track:1283382ce2ea03378fa5090d731ee04e66aa327bcfcfc07aeb1c8f88eab96101` |
| 21 | `def` | [mkGetConfigContent](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/mkgetconfigcontent.md) | 426 | `declaration-track:5eb772206f636a3b64fd085d4de65117e88b7a3610fc945b2e71e9b69b69461f` |
| 22 | `def` | [isCacheMissStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/iscachemissstatus.md) | 458 | `declaration-track:e357d33d787fa93dd9ffffc4b80c5a7cb5ca734cfb07d2458fe0e92fc85d0998` |
| 23 | `def` | [isAlreadyPresentStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/isalreadypresentstatus.md) | 469 | `declaration-track:74786f3713b464732355a236c02f95be2c9fa2dc4e211253d61d3898e0a6384a` |
| 24 | `inductive` | [TransferDirection](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/transferdirection.md) | 473 | `declaration-track:3ffaacc08a90383d2547d38fae8882c1ec0f77a55c3d491114a95bc308dd4e65` |
| 25 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/instance.md) | 478 | `declaration-track:3bd12762dd53571869e05887fc5debcb0d5809de5d56557888acdd494d55fe87` |
| 26 | `inductive` | [TransferVerdict](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/transferverdict.md) | 485 | `declaration-track:0247a4fc25cd70b8ff2ebaf2e5321fc31a64f93c6ac25b920d67ad7840dd4b85` |
| 27 | `def` | [classifyDownload](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/classifydownload.md) | 504 | `declaration-track:c40acae6e4f3a95a25fd013180d4a7b1d161169add602fcbbf0e3c85fb40692a` |
| 28 | `def` | [classifyUpload](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/classifyupload.md) | 517 | `declaration-track:6865e0288009db5f3d3bd579acd0491043c17dfc44b29c36fdf6df2d7feee011` |
| 29 | `def` | [downloadFile](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/downloadfile.md) | 528 | `declaration-track:c969b3688d65a66044e7e466d99ffe10bec53f614a3d0c51f0f47507bcf20815` |
| 30 | `def` | [hashFromFileName](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/hashfromfilename.md) | 554 | `declaration-track:bc1c4318900382efb072d80e949972ff391593465f6d0e0348955537043f2a39` |
| 31 | `def` | [decompressBatch](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/decompressbatch.md) | 562 | `declaration-track:fb352abb34978efd99d5ac40181f06b33dbf883bb89ffcd74e5eb922afdbe806` |
| 32 | `structure` | [DecompConfig](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/decompconfig.md) | 584 | `declaration-track:1050a5ac92c8d6ae6a26ca9b361fdb68caa05543ccd7ac455c83acdb34341f6d` |
| 33 | `structure` | [DecompState](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/decompstate.md) | 594 | `declaration-track:6472acdb3d9258085c2df7156dd21881c8f582c7e6c1629b1db9726fa23d25e0` |
| 34 | `structure` | [TransferState](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/transferstate.md) | 606 | `declaration-track:6bb9ddcf8abecfb29b9549e8a06b7c5756843733063d360eafe391ea3abbe2e5` |
| 35 | `def` | [harvestDecompTask](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/harvestdecomptask.md) | 617 | `declaration-track:8d8a94c082bc3a791a9058e5ba44ab514adc672465ac8cae310c2da773c52b70` |
| 36 | `def` | [dispatchDecompBatch](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/dispatchdecompbatch.md) | 624 | `declaration-track:964a4685a6e63b8966016177f7ddc46f8602976d13f5f8947867cf5283aaadda` |
| 37 | `def` | [finalizeDecomp](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/finalizedecomp.md) | 633 | `declaration-track:fee489f34864c6558a31229fe31cc998890da93c50b3e9de5e55141275526866` |
| 38 | `def` | [monitorCurl](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/monitorcurl.md) | 650 | `declaration-track:82618da3817be66e8df2bf2e099e8243635f2c0e30797798d7291d1ab60dbdd8` |
| 39 | `def` | [downloadFilesFromContainer](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/downloadfilesfromcontainer.md) | 788 | `declaration-track:effbaebf7d3eb374193b5d2e58ad4aa05fa176559dba971c6fd41504b007d88b` |
| 40 | `def` | [expandDownloadRounds](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/expanddownloadrounds.md) | 846 | `declaration-track:f10dc7ac98d7418086ee89b509c5f9a03a54e9da5cb98443e78899719fbe9e41` |
| 41 | `def` | [downloadFiles](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/downloadfiles.md) | 871 | `declaration-track:6ba638b51532575ad58ed6128375e6f0bc71515dc3b4bc33bb4b049811e68b4b` |
| 42 | `def` | [checkForToolchainMismatch](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/checkfortoolchainmismatch.md) | 975 | `declaration-track:0b6b6d1172bfb05c030ece6739de8f62336204f57d9774188294a4da7908c58e` |
| 43 | `def` | [packageEntrySrcDesc](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/packageentrysrcdesc.md) | 995 | `declaration-track:95c9d44d5628ee5ceabefa67148b44d8ce8da1ac3b0f7dd29827f1f4549d08b4` |
| 44 | `def` | [packageEntrySrcMatch](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/packageentrysrcmatch.md) | 1001 | `declaration-track:6a53c74958d6ca4a1180ad3b0cc250048802fbad8a31c9d99bdda56eff3dfa32` |
| 45 | `def` | [checkForManifestMismatch](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/checkformanifestmismatch.md) | 1011 | `declaration-track:7f02c7f5901cf6033c7096e2bc49c49c24c8bfa2de604a3a34ba3f398325560d` |
| 46 | `def` | [getFiles](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/getfiles.md) | 1054 | `declaration-track:813904df1cf3eace7d52a507d9f23f2c32c4579aba8b4c05b824d6fda9ad77f9` |
| 47 | `def` | [copyCmd](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/copycmd.md) | 1117 | `declaration-track:8bf96d730f3dd45602a819dfa75a41370aee4797d4ae9ebdb311e2a7363baa2e` |
| 48 | `def` | [stageFiles](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/stagefiles.md) | 1120 | `declaration-track:f8db3e360c8cb52fc91f52a52311993a86e18c26d01cfbc0cb789d431165ae32` |
| 49 | `def` | [unstageFiles](../../../../../ComputerScience/AlgorithmsInComputerScience/RequestsNamespacedRepoInfo.lean/declarations/unstagefiles.md) | 1132 | `declaration-track:f64892d49cfc2a11599a636445db178a3cb35df7d357a5b19a8a0640860dcc42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d280bd819bf6013119f6325c6e425caf553072b9332a63a35e75338c207f27c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantc7113a36c9db5ac3f746f4e6d5290d6f723c6c9b7c5e8ab7e0a3bddcba19213e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantc7113a36c9db5ac3f746f4e6d5290d6f723c6c9b7c5e8ab7e0a3bddcba19213e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
