# Verification target: XYZRoute Fixture Namespaced Public Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c03f5b9d0a0c9692bf2ea5a0c979c48614251a2",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant7c58f4614a22fca2a6b9db112b5ae9d1a8da43752197a870b7967fd8d7f75abf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c03f5b9d0a0c9692bf2ea5a0c979c48614251a2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant7c58f4614a22fca2a6b9db112b5ae9d1a8da43752197a870b7967fd8d7f75abf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant7c58f4614a22fca2a6b9db112b5ae9d1a8da43752197a870b7967fd8d7f75abf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FixtureHost](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/fixturehost.md) | 31 | `declaration-track:d33984038ac5f81ca9a55bf49211aebb8892430b5db1069434e2d6ef85fe737b` |
| 2 | `abbrev` | [FixtureEdgeId](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/fixtureedgeid.md) | 32 | `declaration-track:049c7f07edc2bab7046ea3d038b41631ab0d46e244b13e84e6853e09e54f4379` |
| 3 | `def` | [fixtureHostCode](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/fixturehostcode.md) | 34 | `declaration-track:fd31b926ceeadd52a27ef20cf0853dfb452b907f706c49a1235ea664c1609eb9` |
| 4 | `def` | [fixtureEdgeCode](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/fixtureedgecode.md) | 39 | `declaration-track:a7963596debc8033b730107afdf8137166ed67a5f58b90728416dbbb3224d9bf` |
| 5 | `def` | [fixtureEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/fixtureedge.md) | 44 | `declaration-track:ca108abd852271c81ac7c0c19728b25abf653bc64a37b596d3d68659b15c98a7` |
| 6 | `def` | [fixtureInsertionEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/fixtureinsertionedges.md) | 50 | `declaration-track:fc054b47d7cd0823650a81abf2873645235fa4d5f8c61f20afdfb6a8cea73f32` |
| 7 | `def` | [fixtureCanonicalEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/fixturecanonicaledges.md) | 69 | `declaration-track:bf7fdaf8eca4306d706f72e6f8ec99c77c77b5b5beca608c049b4837bbd5012b` |
| 8 | `def` | [fixtureEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/fixtureedges.md) | 88 | `declaration-track:02351d0185c65aad9771a38a9d2d62f8cad73fefa3c193b2b0cac8c157caecf0` |
| 9 | `def` | [fixtureContractHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/fixturecontracthash.md) | 92 | `declaration-track:dc0c3c6f3d8a982781d44809df0fbdb3d1bbb79c86240c5e81292be00237dfee` |
| 10 | `def` | [fixtureSnapshotHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/fixturesnapshothash.md) | 96 | `declaration-track:e7119363d4cceed662db029f88b43e0bf7de54d3e33f166cd2bc02164fd9c790` |
| 11 | `def` | [fixtureWrongContractHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/fixturewrongcontracthash.md) | 100 | `declaration-track:f0264bf009a841da94fa166bf3e89bb09792a7d7aac821f191fb942550bc59d9` |
| 12 | `theorem` | [fixtureContractHash_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/fixturecontracthash-valid.md) | 105 | `result-track:93a3361fae2a03b2957993454ac64cfd4785322951ea8581f5fd2ea441ef0e5b` |
| 13 | `theorem` | [fixtureSnapshotHash_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/fixturesnapshothash-valid.md) | 110 | `result-track:7ac5d3ac69b2c0a72428457884fcc3d373b1bd0de1b16db5722a1bcc290967b9` |
| 14 | `theorem` | [fixtureWrongContractHash_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/fixturewrongcontracthash-valid.md) | 115 | `result-track:803d77d4ad8a898f2bcc50d99076704b7d9a9b2e02fdce6a2a7a3654725b5311` |
| 15 | `def` | [fixtureContract](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/fixturecontract.md) | 119 | `declaration-track:9c952a0345a810412dff99a816f58917648bc235488e3b5ba8ce31659404803d` |
| 16 | `theorem` | [fixtureEdgeFinsets_equal](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/fixtureedgefinsets-equal.md) | 136 | `result-track:c22564ee5ff3d43c017c42c230bfa5860b2dac80125cbeaf3a550fbfeabf4bad` |
| 17 | `theorem` | [fixtureContract_sortedCanonicalEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/fixturecontract-sortedcanonicaledges.md) | 145 | `result-track:51b20f2444f642affc4c25953410ce0534d3e542500713d185128357b16eb7b0` |
| 18 | `theorem` | [fixtureContract_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/fixturecontract-valid.md) | 159 | `result-track:4ca4a10a3a587a12327a081206bb8ad3fcd98032568196f35828ac5f3fa75c80` |
| 19 | `theorem` | [ordered_edge_sorting](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/ordered-edge-sorting.md) | 171 | `result-track:a90a63cf276bb1fe32ea2f6abd0cc49feed82a5c03323147064f48091275b64f` |
| 20 | `theorem` | [bfs_route_through_cycle](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/bfs-route-through-cycle.md) | 177 | `result-track:4bd70d99c857564bb3c63de5114cd7ede5cf367d7e8ff548ddebd6b2f58ea1d5` |
| 21 | `theorem` | [self_loop_ignored_after_visit](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/self-loop-ignored-after-visit.md) | 187 | `result-track:46b025668f2df5e688c38ae719cd13fa3c62dbb009a5b6f4c1a81e8c59043b4c` |
| 22 | `theorem` | [disconnected_empty_route](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/disconnected-empty-route.md) | 193 | `result-track:6faa4a27589cb42921bb02e236518951772599cf9fad868cf20b07d4f250fde6` |
| 23 | `def` | [equalEnergyWhite](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/equalenergywhite.md) | 203 | `declaration-track:e04d3c7098bda98b9c76fa4f56b839a5880681872c299f80c7504975aa6f2344` |
| 24 | `def` | [primaryX](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/primaryx.md) | 208 | `declaration-track:6b522ac119f406dedce1718defd22b8735a44741c7cb2ee38bb1511be2ce4d56` |
| 25 | `def` | [primaryY](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/primaryy.md) | 213 | `declaration-track:d7f2dd4f5b1ffca682de6a6bdfdb1d86362a0e979ac27a8315d13a2812fdf915` |
| 26 | `def` | [primaryZ](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/primaryz.md) | 218 | `declaration-track:72a3fb48cfc9b29edbfe2b5ad4d303679c9b6aceff609b448af9125e703881f0` |
| 27 | `def` | [asymmetricNormalized](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/asymmetricnormalized.md) | 223 | `declaration-track:0528f0f780197e9302061e633edf5a4384c6dd8c9c83621d4319ed36e0494773` |
| 28 | `def` | [revisioned](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/revisioned.md) | 228 | `declaration-track:f0cd3f615309ef7bd99d5c95849b93f75a32327456e99a00c483cd9a87e1b438` |
| 29 | `def` | [whiteAt0](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/whiteat0.md) | 233 | `declaration-track:77e7182b5ff62cf71a80a69df5bdb4b738c37b21143fc9faef11f45a4874f091` |
| 30 | `def` | [primaryXAt1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/primaryxat1.md) | 236 | `declaration-track:26e42f6924082dba9ed7a42046dabc6d5004921d40d8e48f45bf059fe51c4e2e` |
| 31 | `def` | [primaryYAt2](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/primaryyat2.md) | 239 | `declaration-track:f12c3792e55db02b49a6eacaa4195eb6d15052fd002e83b3b8e9d6c53320cb51` |
| 32 | `def` | [primaryZAt3](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/primaryzat3.md) | 242 | `declaration-track:edbeca9dfe51a5c55a0628e7d692ec825f9732dfdb21cf96f8681177cd74594d` |
| 33 | `def` | [primaryYAt4](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/primaryyat4.md) | 245 | `declaration-track:4a2df8514695c21393b2a7af70d499286cb032ca95bc06e65aea05b55844c7f2` |
| 34 | `def` | [asymmetricAt42](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/asymmetricat42.md) | 248 | `declaration-track:6b340987a477f5f2d1876e6267580bf953ef86a079a036ca714222a8af12fdca` |
| 35 | `def` | [whiteAtMaxRevision](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/whiteatmaxrevision.md) | 251 | `declaration-track:3dbfee3ca0b2d2d6c61cfdb332be3718cd8e62d064afcc4c2fe69de86ac18f97` |
| 36 | `theorem` | [identity_expected_update](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/identity-expected-update.md) | 255 | `result-track:fb551ffec96a4faa361668e5282d4ff520c56d8df4d83f9a0e3dc283167a2c8f` |
| 37 | `theorem` | [equal_energy_normalized_invariant](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/equal-energy-normalized-invariant.md) | 260 | `result-track:e0a64b9edffedeae50b13c15e866a019bba4c3e50d33617aa77b6fb7d2453943` |
| 38 | `structure` | [RustExpectedUpdateCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/rustexpectedupdatecertificate.md) | 267 | `declaration-track:3c3c68b30975b83d55c66efe1730b3ac862b3594d13dd84772a871e980de5d0a` |
| 39 | `def` | [rustExpectedUpdate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/rustexpectedupdate.md) | 278 | `declaration-track:d415db3a4c4ad073eb6ac2c7bb1d7131f99faaf325d41291e9f8b9148a1d3d33` |
| 40 | `def` | [RustExpectedUpdateConforms](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/rustexpectedupdateconforms.md) | 283 | `declaration-track:835f18b716eb0b953e5e6016a44ba757bd0a43ca3089510368a91bfbb9f4ea1f` |
| 41 | `theorem` | [rustExpectedUpdate_eq_leanExpectedUpdate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/rustexpectedupdate-eq-leanexpectedupdate.md) | 289 | `result-track:b403dadea712b11621b99b0e9aa415989a83c48076a0bcbe0e6f7c5a5b290373` |
| 42 | `def` | [identityCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/identitycertificate.md) | 299 | `declaration-track:8e3f550a66be5f7d61cff65310deac0f5887322dc2664e2478f9b8c53511f47e` |
| 43 | `def` | [whiteCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/whitecertificate.md) | 307 | `declaration-track:2efbf04ab2a3b833fa56f32bf5e84a2807415a22d6ef5c01aa9013b47beea68c` |
| 44 | `def` | [primaryXCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/primaryxcertificate.md) | 308 | `declaration-track:da078f9f4b5d8022782e0b3a5e37115773181477881a04f7dc4b9053a3497f16` |
| 45 | `def` | [primaryYCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/primaryycertificate.md) | 309 | `declaration-track:5a8ecb41e95d5c6ea46f55aa51090802d7150bce73cbb71762aa2a372bc34c7b` |
| 46 | `def` | [primaryZCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/primaryzcertificate.md) | 310 | `declaration-track:1d56dbd6d5261a989daca5e063156aa3fd9b1dd018a24feb71a7def9f52aad49` |
| 47 | `def` | [minMaxCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/minmaxcertificate.md) | 311 | `declaration-track:37dc01329fd6f9dde0c3d31973d36cd9e378fa09dfc73bed46f4aa4e71f42a19` |
| 48 | `def` | [asymmetricCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/asymmetriccertificate.md) | 312 | `declaration-track:c362963dd3487f600e1facfef271346978cbd13840848b67d41911ca91cafb12` |
| 49 | `def` | [maxRevisionCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/maxrevisioncertificate.md) | 313 | `declaration-track:1299baf42714f910eefab2fa00e985075ff72c508afce9d81fd46cef553a0da1` |
| 50 | `theorem` | [golden_update_certificates_checked](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/golden-update-certificates-checked.md) | 317 | `result-track:88265d552eac00ed171fbd7dab54a36d1217ce32f9288d1dcfde5d2368aab383` |
| 51 | `def` | [sourceSnapshot](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/sourcesnapshot.md) | 332 | `declaration-track:6aff6ee2261d11b81555695fcfc259a0278950c857ce9aeae9a0b801264253aa` |
| 52 | `def` | [baseRegister](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/baseregister.md) | 340 | `declaration-track:cf7a2e5b7d4572db5be1dbe51df4b890ac84eae8694ef575c44091e90e81a0bf` |
| 53 | `def` | [baseProposal](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/baseproposal.md) | 343 | `declaration-track:59a821d4d634d6db2bcd8fff11a934deef2441339836538ef0d945f6bfff46fb` |
| 54 | `def` | [replayRegister](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/replayregister.md) | 356 | `declaration-track:d0f81b08d0506d76f5a157406a4352c891ccda57d21910a22697ea04a09d00cb` |
| 55 | `def` | [staleRegister](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/staleregister.md) | 359 | `declaration-track:819ecaf5a8ed9b3db4b3744895af8082c2f7335a9c71dc7673c5999c728385b4` |
| 56 | `def` | [conflictRegister](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/conflictregister.md) | 362 | `declaration-track:afe2e07ca59aee1aeceb91fddf3633cfd7032bb93ab97768650a2cedb1121b2b` |
| 57 | `inductive` | [FixtureVerificationStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/fixtureverificationstatus.md) | 366 | `declaration-track:4dd20509e9d3fd46dd7db7cb4ca90bdd2517b3fe27037843d0828639e774e769` |
| 58 | `def` | [verificationStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/verificationstatus.md) | 372 | `declaration-track:5798518e2798a7acd9e2d31c047f9fb3da66fd9343007cf70616afcc61d1696e` |
| 59 | `theorem` | [accepted_newer_revision](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/accepted-newer-revision.md) | 383 | `result-track:eb4268fda2911030ebb1df003e43f67b6e2bc781840eabb27351a4a7bfd52723` |
| 60 | `theorem` | [identical_replay_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/identical-replay-observed.md) | 394 | `result-track:c73ef027b24abcc71f7d6a7d11b369f73e30c48fef4d051f52af6d79135a349d` |
| 61 | `theorem` | [stale_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/stale-rejection-observed.md) | 401 | `result-track:e17ebaa6d40c9ee76be94e1e8279328acf272dfa2d7186fa77612cfd0c405391` |
| 62 | `theorem` | [equal_revision_conflict_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/equal-revision-conflict-rejection-observed.md) | 408 | `result-track:9a78a79ab3c25a30619a777ef0431b486858ec77a0e910d9edb7e0513b106661` |
| 63 | `theorem` | [wrong_edge_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/wrong-edge-rejection-observed.md) | 415 | `result-track:d19143e57ef11f638ea132b0598192590ab08c79634f6a77074b17e6e7f32ae0` |
| 64 | `theorem` | [wrong_hash_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/wrong-hash-rejection-observed.md) | 422 | `result-track:6d50bf9c85e7ada02419406e2b5d8f4abad0e5f8e127886318c42bbdf85677f1` |
| 65 | `theorem` | [wrong_proposed_value_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition1.lean/declarations/wrong-proposed-value-rejection-observed.md) | 429 | `result-track:30e5f55514a0d2452ce4e107483369225e903168b34439f5fac425da49c233fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ca86ecd6ba9dc17eeead778442ee718d6305d3ca29f93a4414cbd62ab5ca0ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant7c58f4614a22fca2a6b9db112b5ae9d1a8da43752197a870b7967fd8d7f75abf.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant7c58f4614a22fca2a6b9db112b5ae9d1a8da43752197a870b7967fd8d7f75abf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
