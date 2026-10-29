# Verification target: XYZRoute Fixture Namespaced Public Edition4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01c8856b6b40540129b706f43537cd3bdd4023a6",
  "lexical_observation_count": 89,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variantc68512db118b1a69d80b2eef8b5990dc5df4e892c3624ef80849e59d1263a3ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01c8856b6b40540129b706f43537cd3bdd4023a6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variantc68512db118b1a69d80b2eef8b5990dc5df4e892c3624ef80849e59d1263a3ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variantc68512db118b1a69d80b2eef8b5990dc5df4e892c3624ef80849e59d1263a3ad.lean.json)

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
| 1 | `abbrev` | [FixtureHost](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/fixturehost.md) | 31 | `declaration-track:9947643c1cab3e757d02d9e437c9f5e57c57d7fb791222882dbfdb974aa876c4` |
| 2 | `abbrev` | [FixtureEdgeId](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/fixtureedgeid.md) | 32 | `declaration-track:d0ca2390f1f59405f98ce1266f1ddf0706b88c6f9fb90a3c49689e4010f039a0` |
| 3 | `def` | [fixtureHostCode](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/fixturehostcode.md) | 34 | `declaration-track:a74e04c761cfb88faf7eb792218d590e41a0df1784bc324490ffa19d62fd1e46` |
| 4 | `def` | [fixtureEdgeCode](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/fixtureedgecode.md) | 39 | `declaration-track:c4ac16878fae84a52fbe1284da105deaf5ff8600fc9c926dd50c8ffb986ebfca` |
| 5 | `def` | [fixtureEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/fixtureedge.md) | 44 | `declaration-track:ff3cbdd82ccde40cd72a111211320b6e6779ccb956f60299863fa57bd47014a4` |
| 6 | `def` | [fixtureInsertionEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/fixtureinsertionedges.md) | 50 | `declaration-track:d1f15f3e4447ecffd14326043935a2b4d55022b400c5816360bfc1e5492e2e9b` |
| 7 | `def` | [fixtureCanonicalEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/fixturecanonicaledges.md) | 69 | `declaration-track:6cae09c652307179de347db341a73e495f1498f58e7f74e1422451881b84509b` |
| 8 | `def` | [fixtureEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/fixtureedges.md) | 88 | `declaration-track:a24a23a60521c7b7904c688abf584dad284d1501bdffeeca4fefae94204930b9` |
| 9 | `def` | [fixtureContractHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/fixturecontracthash.md) | 92 | `declaration-track:0689e2b24c9d3be79dd528c6f22b07349ff21e03ed6776d62563b15fe6dc538d` |
| 10 | `def` | [fixtureSnapshotHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/fixturesnapshothash.md) | 96 | `declaration-track:a78a01c61fca5073bea16b2f25444d937a1d1c31c8a8bdc51b7311328d0230fe` |
| 11 | `def` | [fixtureWrongContractHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/fixturewrongcontracthash.md) | 100 | `declaration-track:79d0f0634e489c4fcf8d502db14a5dc98915f4e60d28045f67c4f2e8fc4000b2` |
| 12 | `theorem` | [fixtureContractHash_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/fixturecontracthash-valid.md) | 105 | `result-track:16bf0f80e14903eccd7f79552b1237c1beb042fc4fa37134ea5bd691e8279898` |
| 13 | `theorem` | [fixtureSnapshotHash_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/fixturesnapshothash-valid.md) | 110 | `result-track:e19b3ff7264e59430eddd1af3b8828f852cda81a5e0fbd4da3dd0df02ff6e0a0` |
| 14 | `theorem` | [fixtureWrongContractHash_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/fixturewrongcontracthash-valid.md) | 115 | `result-track:b61aa7c730149601dc3c083db403e61bd3dc98c4ae133b56142cbb79d65f748b` |
| 15 | `theorem` | [fixtureWrongContractHash_ne](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/fixturewrongcontracthash-ne.md) | 120 | `result-track:e3754c78d1ecedb73f15b2fef2250b3395e931b507ee2a73e78acb8c31297901` |
| 16 | `def` | [fixtureContract](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/fixturecontract.md) | 134 | `declaration-track:782296f3985a2950eccdb21438f11f727b41ff6fb3ee53307302ae8912199813` |
| 17 | `theorem` | [fixtureContract_contractHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/fixturecontract-contracthash.md) | 152 | `result-track:76460a734e8f136e55737a531a98f6891639561e5c17ece473daed50a8ed006d` |
| 18 | `theorem` | [fixtureContract_algorithmVersion](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/fixturecontract-algorithmversion.md) | 156 | `result-track:59e092207978837fdbd7f42913309df5d935db09ae4e3a41bcc34587f81d4a8c` |
| 19 | `theorem` | [fixtureEdgeFinsets_equal](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/fixtureedgefinsets-equal.md) | 159 | `result-track:e8991251619b999230f836224fbb6565f45b4840ad1a446db7d1621abc303788` |
| 20 | `theorem` | [fixtureContract_sortedCanonicalEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/fixturecontract-sortedcanonicaledges.md) | 168 | `result-track:46c3315eacd7f8d890248e2e96d646b6ea4f921b5cec50f451ba4d712a098335` |
| 21 | `theorem` | [fixtureContract_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/fixturecontract-valid.md) | 187 | `result-track:2adc7c6445d515e4a2e440af4d20def9be746d59d65eaa5448f190d136c4fe71` |
| 22 | `theorem` | [ordered_edge_sorting](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/ordered-edge-sorting.md) | 201 | `result-track:5cb363c4a79740a381038dc53988b9731378afab4bb47b2531cbbdc6125cc5bf` |
| 23 | `theorem` | [bfs_route_through_cycle](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/bfs-route-through-cycle.md) | 207 | `result-track:5aaa80256f6e06c167e2c99235620aa56ef8e92fb26f769fe0b7c72575b66f30` |
| 24 | `theorem` | [self_loop_ignored_after_visit](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/self-loop-ignored-after-visit.md) | 225 | `result-track:abcf2c7cbe7d47a484f348ba5cdca5bfa4d5ff63f66976b3f8f51d019e465cda` |
| 25 | `theorem` | [disconnected_empty_route](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/disconnected-empty-route.md) | 231 | `result-track:c7dcdc688a085fa98fc3ac9385004d0da51f40544d6946519572a9a646bcc120` |
| 26 | `def` | [proposalEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/proposaledge.md) | 247 | `declaration-track:2d5819ece07200adaf15095fb90a560cb54486ebca9aec3d6776a55cb9de5665` |
| 27 | `theorem` | [findDeclaredEdge_proposalEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/finddeclarededge-proposaledge.md) | 252 | `result-track:65af201588ad54e965ac2004b42fb5f4489ebe9329b1e132c6024580670999bf` |
| 28 | `theorem` | [findDeclaredEdge_undeclared](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/finddeclarededge-undeclared.md) | 258 | `result-track:c35a58f3180bbb3d061e69f0fc51a15dcda9c06bbc167e4de3f5ccd4e82c2f8a` |
| 29 | `def` | [equalEnergyWhite](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/equalenergywhite.md) | 265 | `declaration-track:764cf26cf2e5c43512df10f8fcf28b5fe2aa273df1d5dcd07500280a55236925` |
| 30 | `def` | [primaryX](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/primaryx.md) | 270 | `declaration-track:aa9f62019683be346a7ca30a3b37d62330b657fa01310dedffa8f2f741f22ec6` |
| 31 | `def` | [primaryY](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/primaryy.md) | 275 | `declaration-track:5d9a5fc186b193786e487ffd26e279437d6219d488ee562436661f2fa5c60717` |
| 32 | `def` | [primaryZ](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/primaryz.md) | 280 | `declaration-track:5844b02f945907e42785e32cfe1449ef61f439ecf905660f08d2659390b9eff1` |
| 33 | `def` | [asymmetricNormalized](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/asymmetricnormalized.md) | 285 | `declaration-track:3a71fe67eef5c671333a0b12c7d3f6fb24c1d5ceeefede46aab18ecf4ffc47e1` |
| 34 | `theorem` | [equalEnergyWhite_ne_asymmetricNormalized](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/equalenergywhite-ne-asymmetricnormalized.md) | 291 | `result-track:ab5d276fa5986b1c3ad35741484f3658d3b08107a65b29fe086c2fb150c3e3a0` |
| 35 | `def` | [revisioned](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/revisioned.md) | 297 | `declaration-track:37df1cbbe167c7971d05fadc1e968702f959e11d6e8251240412e6abf62d5d56` |
| 36 | `def` | [whiteAt0](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/whiteat0.md) | 302 | `declaration-track:174e9b5f3fac4190fef90ba41299f0724fe2d4a19a5ad4b86ee87a6ebc2975b2` |
| 37 | `def` | [primaryXAt1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/primaryxat1.md) | 305 | `declaration-track:0b3e89ee00f884456e6b8ff953fef3fae37ce0edd97dcd70759fcd965811f4bd` |
| 38 | `def` | [primaryYAt2](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/primaryyat2.md) | 308 | `declaration-track:6584753a6b753ec013b62499b41dacb5725684b17da08ac442073761c40223f3` |
| 39 | `def` | [primaryZAt3](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/primaryzat3.md) | 311 | `declaration-track:6613de4bd4e9410e24fdf702d4a319c4f099aad93b13b844c6f19840096a1ca4` |
| 40 | `def` | [primaryYAt4](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/primaryyat4.md) | 314 | `declaration-track:b4c1b164a5be3195bd54daf787dc119f979a5d57d30af4e972e283d898713152` |
| 41 | `def` | [asymmetricAt42](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/asymmetricat42.md) | 317 | `declaration-track:9fffa2341f5d3700603b22314ea6f4710c5296222629bce488ef0cb4b262bcaa` |
| 42 | `def` | [whiteAtMaxRevision](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/whiteatmaxrevision.md) | 320 | `declaration-track:fd0f1e638209e6e6c1096dbd6021a8af1c2b04d16aed52cfebff585d717eea66` |
| 43 | `theorem` | [identity_expected_update](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/identity-expected-update.md) | 324 | `result-track:811f6a9eb2533fdb8882c87b0f3eb206e7a9240ebb0f30706dc6a78cb8d34c82` |
| 44 | `theorem` | [equal_energy_normalized_invariant](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/equal-energy-normalized-invariant.md) | 329 | `result-track:d27b56219ab452902aa4647dfb38d13f3e688d08b989fca65fb125b0c0c99524` |
| 45 | `structure` | [RustExpectedUpdateCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/rustexpectedupdatecertificate.md) | 336 | `declaration-track:b88b8296a74d94ad9dd0210fcfe524670ce49b36168211fc482e3966fbd0ae14` |
| 46 | `def` | [RustExpectedUpdateCertificate.conformanceClaim](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/rustexpectedupdatecertificate-conformanceclaim.md) | 344 | `declaration-track:ffd50990fd7aaf425d918a4e3294269cdda438cd85d2b182b72a57a3f404e8e4` |
| 47 | `def` | [rustExpectedUpdate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/rustexpectedupdate.md) | 351 | `declaration-track:6d54f957ea713a521884fc5927f077349b9da73c6b237d7e7aef8e9c10f62155` |
| 48 | `def` | [RustExpectedUpdateConforms](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/rustexpectedupdateconforms.md) | 356 | `declaration-track:81d07906c72f048dc1b8f88d2e2fd65a6c04edc316578b5adb54297caf0a882a` |
| 49 | `theorem` | [rustExpectedUpdate_eq_leanExpectedUpdate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/rustexpectedupdate-eq-leanexpectedupdate.md) | 362 | `result-track:a6883ea67b3c62f5ab55449b297da2f10ff5bfe5250b8e89d90317b4124fc0d8` |
| 50 | `def` | [identityCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/identitycertificate.md) | 370 | `declaration-track:42c53e733b3664bdcfc8137cb98350fc0db9b974577edcfdba630c73bfa4564f` |
| 51 | `def` | [whiteCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/whitecertificate.md) | 376 | `declaration-track:b957eda444773b10cc3f941082a3d7f234d9f9124ec64b0f4684c666a4b70149` |
| 52 | `def` | [primaryXCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/primaryxcertificate.md) | 377 | `declaration-track:27b3c0c7a7c8944e605cfb00c8b70e0b1135bec5e1eea87b2fc766a645494a5f` |
| 53 | `def` | [primaryYCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/primaryycertificate.md) | 378 | `declaration-track:b20ec66d84efb14dd69c8e186b463057cf2a20dca008ff094ad6adb5da265c5d` |
| 54 | `def` | [primaryZCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/primaryzcertificate.md) | 379 | `declaration-track:78a99d8ad551432e2f1921ec0c3b713d36c42b6c28b799073a19fd64bc6d3077` |
| 55 | `def` | [minMaxCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/minmaxcertificate.md) | 380 | `declaration-track:982bfbdaf7a15b9f37e8f52764766cdb92cf685e0ae6642aa6e5fe1d8ba795f7` |
| 56 | `def` | [asymmetricCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/asymmetriccertificate.md) | 381 | `declaration-track:3495ccccd775fb95fc7cf9c2a8992909a1fab2840cca07e63022d510b8f19590` |
| 57 | `def` | [maxRevisionCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/maxrevisioncertificate.md) | 382 | `declaration-track:447eda531806af04e0e948a80b468f931857cc29f152434b17bcfba4dfa9f167` |
| 58 | `theorem` | [golden_update_certificates_checked](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/golden-update-certificates-checked.md) | 386 | `result-track:732d74cfe5d1a1d7472a17de8bea90c3c0ea3731848869c0739c7b206ee0f832` |
| 59 | `def` | [sourceSnapshot](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/sourcesnapshot.md) | 403 | `declaration-track:c6a5f1b1981fc4f5e60f446dbe14d1c57931910073b51f8c7a0244b552759eb7` |
| 60 | `def` | [baseRegister](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/baseregister.md) | 411 | `declaration-track:81db99579a4b4437b2e6109e41408a58df81154c2b58fc9cce8bfc50b29f6794` |
| 61 | `def` | [baseProposal](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/baseproposal.md) | 414 | `declaration-track:68e57392b538be4a904b3ff4c09d9a3a6f1b4ce3f63e1e1a44250bbfe8592691` |
| 62 | `def` | [replayRegister](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/replayregister.md) | 427 | `declaration-track:46cc22d84a773ffa777982f943e90e20aca2d7b4ca07e3c687ed5d19493fb219` |
| 63 | `def` | [staleRegister](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/staleregister.md) | 430 | `declaration-track:eae4e88b842b4d4fc6b8d9d66f257e0363bd96629524c49de9911e8a2d315b4d` |
| 64 | `def` | [conflictRegister](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/conflictregister.md) | 433 | `declaration-track:06f9d7bdddaf503b4d2fed716d67c19849f847fd6f34e88988aeca8c0fae0669` |
| 65 | `def` | [wrongEdgeProposal](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/wrongedgeproposal.md) | 436 | `declaration-track:245c4804d55729c877ab45423c9c54b1cf5344267a8f25002c47fc624f4e9da6` |
| 66 | `def` | [wrongHashProposal](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/wronghashproposal.md) | 440 | `declaration-track:47f7ec26e8c849d5648bd5f2c308b37f507120ad4573987aba47e70dfaa8b595` |
| 67 | `def` | [wrongProposedValueProposal](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/wrongproposedvalueproposal.md) | 444 | `declaration-track:d1b0e204864fdd77cc2f2b368f680f3e6293dedf2647f840fa2b50b8b4f9694a` |
| 68 | `inductive` | [FixtureVerificationStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/fixtureverificationstatus.md) | 449 | `declaration-track:04d891e5b2147ee6cd18d008876342f8852a5bf646348be486a6a08003131db6` |
| 69 | `def` | [verificationStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/verificationstatus.md) | 455 | `declaration-track:657771977217ae10938a7dbe14f455238639f7289763652c1f132254e0503578` |
| 70 | `def` | [mergeStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/mergestatus.md) | 465 | `declaration-track:8ce0ca8989956b321e69b658e274977ce25589d4c66d1018b0a2b93062aaeb40` |
| 71 | `theorem` | [baseProposal_verificationStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/baseproposal-verificationstatus.md) | 473 | `result-track:4a68e9395542b001a0a326bdfc293bb6415cc5c003471d2f30a297d1aab1be22` |
| 72 | `theorem` | [accepted_newer_revision](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/accepted-newer-revision.md) | 501 | `result-track:53c04fea5318500aff02484b82a4a1fe545c57e02fe33771a8e46e08c4b7a352` |
| 73 | `theorem` | [identical_replay_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/identical-replay-observed.md) | 510 | `result-track:aa687b890dad7c879b1427535fb09e951564cc0bcb6755a6b81db09cba82eebf` |
| 74 | `theorem` | [stale_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/stale-rejection-observed.md) | 519 | `result-track:7b5508e2b75d3d98ae4bb488658b475d954fafb7bd0a07280f4d8dcb8c0ffa35` |
| 75 | `theorem` | [equal_revision_conflict_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/equal-revision-conflict-rejection-observed.md) | 528 | `result-track:cffa729bbf9ae25144d258f6aa38250c6a9d20f43685f39b8968e34887679818` |
| 76 | `theorem` | [wrong_edge_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/wrong-edge-rejection-observed.md) | 538 | `result-track:ad8692725d83ccaaad5c64ba25e1a561da914dce0ca064485a80d4305bac46d8` |
| 77 | `theorem` | [wrong_hash_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/wrong-hash-rejection-observed.md) | 552 | `result-track:5082902c1b8d5b589a7bfdf530c24075bba19fe803dd281f7bd80ea32c255471` |
| 78 | `theorem` | [wrong_proposed_value_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/wrong-proposed-value-rejection-observed.md) | 561 | `result-track:5a1c8d730efff6d11f0cf1d7a930dcc61b6a9a9de3fc9d955d08a7d75abb77c7` |
| 79 | `def` | [sabHeaderBytesV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/sabheaderbytesv1.md) | 590 | `declaration-track:021d0eb29a7a27a1732209fac7b89601a1e2a33b54a5b3820f5d6aeb5ee3a47f` |
| 80 | `def` | [sabControlWordsV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/sabcontrolwordsv1.md) | 591 | `declaration-track:ef773bd0a128911bc646f55ba2f7f7e580ebc0dd3c561cab5cfa6e982db77560` |
| 81 | `def` | [sabSlotCountV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/sabslotcountv1.md) | 592 | `declaration-track:b4e50a1a33bf4be1602f2048cbe420fbe57a12e9abc0d0c69ac9e4c7e46d295c` |
| 82 | `def` | [sabSlotBytesV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/sabslotbytesv1.md) | 593 | `declaration-track:06c1565a012b19de301cdeb3d314b78e2b223538027f29550531cac2cf505874` |
| 83 | `def` | [sabTotalBytesV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/sabtotalbytesv1.md) | 594 | `declaration-track:3feff2808f3227eb6be4f8df59f98c11733d641d20c54114d7717d2818139c70` |
| 84 | `def` | [sabSlotOffsetsV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/sabslotoffsetsv1.md) | 596 | `declaration-track:b559c5eb12c1e684218923f9091827ff910dbcba2e59f4d4cafc985216413bb9` |
| 85 | `def` | [sabMagicUnsignedV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/sabmagicunsignedv1.md) | 599 | `declaration-track:d69f8f0496be00b2c0eeba3964981509fdc5b398502bffffca4c2b09da37406c` |
| 86 | `def` | [sabAbiVersionV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/sababiversionv1.md) | 600 | `declaration-track:b81345ccadd3471514e6123dcbac0e7a9134d9daa3b6f084b4f2c15d971f3eb0` |
| 87 | `def` | [sabWordIndicesV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/sabwordindicesv1.md) | 603 | `declaration-track:9ed8e6197f97c85c7819789180675b6c831a26942251c2dcda7a8625accf89ee` |
| 88 | `def` | [sabStateCodesV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/sabstatecodesv1.md) | 607 | `declaration-track:735da9cabed2fdbd14eaea066f4ee1ccd0852c57520f6e692e127da61a69ff92` |
| 89 | `theorem` | [sabLayoutV1_checked](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition4.lean/declarations/sablayoutv1-checked.md) | 611 | `result-track:e5d213f25cdde0013fbc2c290cc781be10191b408ba95f30acf603b5852648e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ddfd513eea94e90d2d079a3c5606070c681e95f9706239a878e5fe94d0d7e77a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variantc68512db118b1a69d80b2eef8b5990dc5df4e892c3624ef80849e59d1263a3ad.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variantc68512db118b1a69d80b2eef8b5990dc5df4e892c3624ef80849e59d1263a3ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
