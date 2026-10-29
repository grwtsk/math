# Verification target: Test Assert True

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b525c0371c69136736e08efcbd51f781e5f36f7",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b525c0371c69136736e08efcbd51f781e5f36f7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Cache.Cli` — import line 7; external provider; requires a separately pinned dependency.
- `Cache.Requests` — import line 8; external provider; requires a separately pinned dependency.
- `Cache.Marker` — import line 9; external provider; requires a separately pinned dependency.
- `Cache.Upload` — import line 10; external provider; requires a separately pinned dependency.
- `Cache.Query` — import line 11; external provider; requires a separately pinned dependency.
- `Cache.Warning` — import line 12; external provider; requires a separately pinned dependency.
- `Cache.Lean` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/initialize.md) | 71 | `declaration-track:70bd8ee7789bce1fcc51e2907ff577b7be2ef594b588792040a86635be9932ed` |
| 2 | `def` | [assertTrue](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/asserttrue.md) | 74 | `declaration-track:60cf9a412e9b6604697c0c6fd5bc2dcdaced2196cd4fe71cfa74538aca99e88f` |
| 3 | `def` | [assertEq](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/asserteq.md) | 82 | `declaration-track:2d7db8a15cbfeba9a60e36c505db2c2c8f83fa480b6c4e57a80541c09eb83459` |
| 4 | `def` | [withSavedScopeOverride](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/withsavedscopeoverride.md) | 92 | `declaration-track:89a5de09ddf7e4b707c07157df543ee5240a155b9962976567bb1996f8305e01` |
| 5 | `def` | [withSuppressedOutput](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/withsuppressedoutput.md) | 100 | `declaration-track:dcd24c19108bc9e5122b34f88271db3b12be1bf0d512729dec40555881ad90ac` |
| 6 | `def` | [test_Container_name](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-container-name.md) | 125 | `declaration-track:75a71f9b8dc2d1f62f5b4139dee0302793423c49dcec7512fc7ff5b4a0585133` |
| 7 | `def` | [test_Container_parse](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-container-parse.md) | 134 | `declaration-track:5851c5618650a8d98529440a783128689497937c71d7a25933e3bad220b68ea4` |
| 8 | `def` | [test_Container_azureURL](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-container-azureurl.md) | 154 | `declaration-track:ed0690810a88239b79e392391ce2a25b5fce012eccab85aefdde0ad5e08f8fca` |
| 9 | `def` | [test_envValueNormalization](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-envvaluenormalization.md) | 180 | `declaration-track:e644704aab808224a00114c79b0d3d74e04b118275d7685cacf3d86bc1081b56` |
| 10 | `def` | [test_getBaseURLFrom](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-getbaseurlfrom.md) | 200 | `declaration-track:4c23b25f64d1feba389c4210b354d67225b23fdf29d5d09c8ee9cddf5972e84d` |
| 11 | `def` | [test_Container_getURL](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-container-geturl.md) | 230 | `declaration-track:c276721d5f97c7045768ed176c00009cc3723e0afbd99a15a8c5840a7e64a3f4` |
| 12 | `def` | [test_Container_flatPath](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-container-flatpath.md) | 257 | `declaration-track:d4eccc4d034ebeb1c46895466cc03bfe41a30c0b4f128fe2f52ef14939c32201` |
| 13 | `def` | [test_defaultContainersForRepo](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-defaultcontainersforrepo.md) | 293 | `declaration-track:425cab1c26522312d2e6c49a9be1c087999c590bef84dab9472dfe9825d742c3` |
| 14 | `def` | [test_effectiveGetURLs](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-effectivegeturls.md) | 315 | `declaration-track:8e01ecd173d4305b35746eedc2a32384befbfb6dc3f9d2e313f7afab7c75da0a` |
| 15 | `def` | [test_mkFileURL](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-mkfileurl.md) | 346 | `declaration-track:43fde421df15b2dc3d6bac0050dc98582120ef7097c3b6f9d8f683faa1a2cf8c` |
| 16 | `def` | [test_parseCacheFromList](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-parsecachefromlist.md) | 412 | `declaration-track:7a84cb2e1469d9b4c0f9eb4750c6cf337bfbfddcacf9fdd4c5a5a83cab82f627` |
| 17 | `def` | [test_extractRepoFromUrl](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-extractrepofromurl.md) | 443 | `declaration-track:f754f2facd4bb61e6fca9d471d789aa16039cc24156bb7438ab6f17d4856e445` |
| 18 | `def` | [test_extractPRNumber](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-extractprnumber.md) | 467 | `declaration-track:6b0853f474a8cc35f812bcc3a9cd854c5062f94872297d9ab015800cd665f9f3` |
| 19 | `def` | [test_hashFromFileName](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-hashfromfilename.md) | 498 | `declaration-track:bc2f81140d5aa6b5afb003770afd2d10701157c65bebcf64693206904be729bb` |
| 20 | `def` | [test_tempFileNames](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-tempfilenames.md) | 529 | `declaration-track:8dbfaf58278c4bffc1da1aef440e4e97cce03aed389330cfc9545403a4418bb3` |
| 21 | `def` | [test_isRemoteURL](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-isremoteurl.md) | 552 | `declaration-track:5006a0ff25a0c58444ca7a3f7480cf48d68654ebd84fe08fff08b181e527c932` |
| 22 | `def` | [test_UInt64_asLTar](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-uint64-asltar.md) | 578 | `declaration-track:d3127c32ac870609447788d1762ddae289370d9fd7ba6dc351d6bc9a24bb757a` |
| 23 | `def` | [test_hash_roundtrip](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-hash-roundtrip.md) | 604 | `declaration-track:cb55d50e89f57e6ddb50b985ae8ec0fe824bf28ad8a6c71ae5544a401e513b94` |
| 24 | `def` | [test_markerURL](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-markerurl.md) | 623 | `declaration-track:54866c4c9b3b036a6491c288cd61467b631544862b7ef4a74e5bbdc20074d44d` |
| 25 | `def` | [test_markerReadURL](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-markerreadurl.md) | 652 | `declaration-track:7204492673087b472263bccd1116549be1b8c12f45a855d3f93b068f67f4ff89` |
| 26 | `def` | [test_getRepoScope](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-getreposcope.md) | 683 | `declaration-track:45c1b878dd5bbaa3a3d5545f114c9f1c25735d35269dec6c21342fc3ed212193` |
| 27 | `def` | [test_shouldWarnNonDefaultScope](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-shouldwarnnondefaultscope.md) | 719 | `declaration-track:2626e50d37af6723f2b0f5bcbbf296af20353e2b4c8d87081c03a5bd1097d1b6` |
| 28 | `def` | [test_getNonDefaultScopeReason](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-getnondefaultscopereason.md) | 782 | `declaration-track:ed1c7a59977dd4d67d267b5db5dc6d962a73e368f5ef90e3c9344c961fb7dfe1` |
| 29 | `def` | [test_findMostRecentSHAWithCache](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-findmostrecentshawithcache.md) | 843 | `declaration-track:0aeeb27c734320f975c0f29e2604faa56129143569ff4040f798ea3b9bde8d14` |
| 30 | `def` | [test_findRecentSHAsWithCache](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-findrecentshaswithcache.md) | 851 | `declaration-track:581d288125d273ac6219dd45eae8e3fe858b7111e21e64dd14d2c7bfa4ba817c` |
| 31 | `def` | [test_getRemoteRepo_gitFallback](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-getremoterepo-gitfallback.md) | 880 | `declaration-track:d63907f1d11c7343c825755d8cf30e4cd2eb3cac12bb5c521ebb9143fdb08a6b` |
| 32 | `def` | [test_headIsAncestorOfMaster_gitFallback](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-headisancestorofmaster-gitfallback.md) | 921 | `declaration-track:7456b3a981f229de7ecd50e6b740ed97c8c05b968d8d08e4c6f36d01f86cbd4a` |
| 33 | `def` | [test_isKnownOpt](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-isknownopt.md) | 947 | `declaration-track:32a0c21fede524c21e77423299ca550078d5ed1b5300613e9c7c53ed66d0becf` |
| 34 | `def` | [test_parseNamedOpt](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-parsenamedopt.md) | 1002 | `declaration-track:714f66006c5a2daa4de10fe6a28152adb7c5830c90666cebb30f1df0d7c8a84a` |
| 35 | `def` | [test_parseFlagOpt](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-parseflagopt.md) | 1036 | `declaration-track:7f4855bdca6fcea82b9dd4ab3cbcfffaebfdca511b3b08af153c1ddef776db60` |
| 36 | `def` | [test_parseEnvFlag](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-parseenvflag.md) | 1062 | `declaration-track:96a3ef3d8b161fca8a3f6e4cb05cb60aec221c425adb76eb3c55c71c6111c4d4` |
| 37 | `def` | [test_curlFollowRedirectArgs](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-curlfollowredirectargs.md) | 1103 | `declaration-track:6bfd9c6e1783e23d686c9de626c12bddd9c3e90511b4bf9525788e70e40a2b05` |
| 38 | `def` | [test_curlRetryArgs](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-curlretryargs.md) | 1116 | `declaration-track:5f11c291899b881c1c72e192b5e6103b5ba671e2829c49ad449234aa5eddc8d0` |
| 39 | `def` | [test_runCmd_showArgsOnError](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-runcmd-showargsonerror.md) | 1131 | `declaration-track:2062d0139d923a3698c148ad81ec8358e2c49582060a5f147b77d1d2788fe244` |
| 40 | `def` | [test_isCacheMissStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-iscachemissstatus.md) | 1156 | `declaration-track:f61c91100a3586d9b1e7b5c7258934d8abd8ac06889ab06080d4f0312acb57b0` |
| 41 | `def` | [test_isAlreadyPresentStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-isalreadypresentstatus.md) | 1179 | `declaration-track:61a39a7418b68e4ecf1feb727f637d0528642660c438261daaad7a2120f49bad` |
| 42 | `def` | [test_classifyDownload](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-classifydownload.md) | 1197 | `declaration-track:1d4a7af3b2da0f457f181c7ff10d007804e2870de6ffb355bbfeba9a16622a31` |
| 43 | `def` | [test_mkPutConfigContent](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-mkputconfigcontent.md) | 1229 | `declaration-track:46aa7aa21d53d8a4c60a4c9a14ba780605a5465dffd5bcdb2751ba03e4821977` |
| 44 | `def` | [test_classifyUpload](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-classifyupload.md) | 1245 | `declaration-track:a88fe7de51cc563a9e7531f8b143e108fefd13e1531547aacdbf9fff9dea61ba` |
| 45 | `def` | [test_uploadBackendParse](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-uploadbackendparse.md) | 1267 | `declaration-track:88189b9ba59a223c0c17cb1f3ba051bea2ce16296541f4da1f26137bb4d7626f` |
| 46 | `def` | [test_azureAuthFrom](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-azureauthfrom.md) | 1275 | `declaration-track:59c32a05e00514f1e2f799f034ce9a87a7f7c2975a50f647bd00ba4edccaa010` |
| 47 | `def` | [test_s3AuthFrom](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-s3authfrom.md) | 1282 | `declaration-track:a8269eaf70fcb8a227a068f7c3f798f71314cb22ee2e45a9ddde3b1019a050f1` |
| 48 | `def` | [test_s3RegionFrom](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-s3regionfrom.md) | 1298 | `declaration-track:12b6a57a084624cd7f58ec90aab98325dd9ac3e0820b8d2b250f9845be88de8b` |
| 49 | `def` | [test_isValidScope](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-isvalidscope.md) | 1309 | `declaration-track:b4388d94f094476484a27be8eb0202f208e58dc5c667e3a26928d2c622bf3c08` |
| 50 | `def` | [test_fileDirPath](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-filedirpath.md) | 1335 | `declaration-track:8a5f8b52fbf66a16c65425c100d3772a06279475641ca7c4385941ad1834cb87` |
| 51 | `def` | [test_stagedUploadDestFrom](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-stageduploaddestfrom.md) | 1356 | `declaration-track:f6b4141cbacc517c2ef1851d395516f2df96eec06ddab09ec97d1ee4aecc2e9c` |
| 52 | `def` | [test_s3CurlArgs](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-s3curlargs.md) | 1484 | `declaration-track:be4f65dd4eb1f6afe8776c473ff464018ac8c309d3afc0d8d29c4c0976522afc` |
| 53 | `def` | [test_s3UploadToolFrom](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-s3uploadtoolfrom.md) | 1506 | `declaration-track:5dc8b4f208462735f81e7095a98306f987fd26be0a8ef80111ba67ce0e1d3101` |
| 54 | `def` | [test_s3EndpointSplit](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-s3endpointsplit.md) | 1516 | `declaration-track:e06a9847a72549e9f9def5caf1745b79efda6d9891df04e8547b971e8a67aff6` |
| 55 | `def` | [test_rcloneArgs](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-rcloneargs.md) | 1536 | `declaration-track:cbda8fcfb639414890df527e1675bd1c02f1246f7f71d55feb330ff6b023971a` |
| 56 | `def` | [test_rcloneEnv](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-rcloneenv.md) | 1567 | `declaration-track:d1255755f5d1883f81086c4c7ae91964e3c1802c129d7ca182c0e169cfb4b7ce` |
| 57 | `def` | [test_putStagedViaRclone](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-putstagedviarclone.md) | 1589 | `declaration-track:2440e3e77d0ec3d9a4b1120342e5cec8d5bd52c489474fd7416beeb450783c47` |
| 58 | `def` | [test_expandDownloadRounds](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-expanddownloadrounds.md) | 1664 | `declaration-track:341151b990d87701d774d6712eddf4eff2242ee7911f342899ab364261ec5840` |
| 59 | `def` | [testDecompConfig](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/testdecompconfig.md) | 1712 | `declaration-track:581ba002b50c1002f78366d3586e8e9fc15ac8bf4453c4836be875b5c4b7ed09` |
| 60 | `def` | [test_finalizeDecomp](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-finalizedecomp.md) | 1721 | `declaration-track:bb286a6e79a5130cb58628aaa8102548587d29ce2c9496c44f67139e792c9cce` |
| 61 | `def` | [test_monitorCurl_carries_decomp_state](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/test-monitorcurl-carries-decomp-state.md) | 1756 | `declaration-track:1b66c103d7e0885081a2db7e2bc042c8c12ca128aa812a927acd2fede34b1013` |
| 62 | `def` | [runAll](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/runall.md) | 1777 | `declaration-track:3d59643ff27ab984e7867e69921c6358b092a36b330d281fdf88313be4c7ad82` |
| 63 | `def` | [main](../../../../../ComputerScience/AlgorithmsInComputerScience/TestAssertTrue.lean/declarations/main.md) | 1837 | `declaration-track:d764e4ebfad197d574401c52b47b325aca61fc08eb3d238357dec17e1af46bfd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e37d2b5aa058541d95d20069e94b2a762bb4e3d66b50928004f60a2c0e6a22a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
