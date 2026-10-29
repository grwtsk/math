# Verification target: XYZRoute Fixture Namespaced Public Edition6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db0affee91f037073a5d9a154fb544606f24ed93",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant7b02605729b7eea3e31cc9312c66331adf12bd265e80f741224e991baf0dbc00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db0affee91f037073a5d9a154fb544606f24ed93`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant7b02605729b7eea3e31cc9312c66331adf12bd265e80f741224e991baf0dbc00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant7b02605729b7eea3e31cc9312c66331adf12bd265e80f741224e991baf0dbc00.lean.json)

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
| 1 | `abbrev` | [FixtureHost](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/fixturehost.md) | 31 | `declaration-track:bd9a907b638e78a78e33881dd2640bb7fbf75f1ed17ef5b49252ee21442e6a9f` |
| 2 | `abbrev` | [FixtureEdgeId](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/fixtureedgeid.md) | 32 | `declaration-track:bd81e41a6fdd3d9debe8892f70914360e4cd4b3bcd14742e9bf9ab872b9be2e5` |
| 3 | `def` | [fixtureHostCode](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/fixturehostcode.md) | 34 | `declaration-track:a49d41fb93dd45ae4a0ad7c5f3be7294203f2afe364f26fc70773b4f17a906a1` |
| 4 | `def` | [fixtureEdgeCode](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/fixtureedgecode.md) | 39 | `declaration-track:955130d00523cc20856fde38b57a40ceca3ab43e4e342b28dbba6062d8cae5e1` |
| 5 | `def` | [fixtureEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/fixtureedge.md) | 44 | `declaration-track:e815ca87bd3b393b4e8b5bcc9f1182338af10a43d7502184afd08c181d9168f1` |
| 6 | `def` | [fixtureInsertionEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/fixtureinsertionedges.md) | 50 | `declaration-track:d3b1ba36d33a877d1d9687a8349c7046594aeb08436a59c5a1865bb0dc822200` |
| 7 | `def` | [fixtureCanonicalEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/fixturecanonicaledges.md) | 69 | `declaration-track:bc8d132d64631997e32a0f9932c57b0225dd334b02aa4f4574bdedbabc49eaa6` |
| 8 | `def` | [fixtureEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/fixtureedges.md) | 88 | `declaration-track:6d294861c03e6ecacbcd3481dbc0f1e7d779a56e3da94ec5a8bf7f532d46f601` |
| 9 | `def` | [fixtureContractHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/fixturecontracthash.md) | 92 | `declaration-track:4caa0d6a8f8cbf53b0a93a4abacf3bcc0423cbe179022757091f8dd0edb8a10b` |
| 10 | `def` | [fixtureSnapshotHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/fixturesnapshothash.md) | 96 | `declaration-track:c46e06af7ac05b1b85fe67886a167d93b7cab1d884a3b21e48630cea8bf54fca` |
| 11 | `def` | [fixtureWrongContractHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/fixturewrongcontracthash.md) | 100 | `declaration-track:f4672325bd65610f348e9400da3f0553d7a84e32a743d9edad72a0db44d5d09e` |
| 12 | `theorem` | [fixtureContractHash_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/fixturecontracthash-valid.md) | 105 | `result-track:aaf45fbde43b0717767ede8fecc5695628b015ed8b9712b88823718e9be701da` |
| 13 | `theorem` | [fixtureSnapshotHash_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/fixturesnapshothash-valid.md) | 110 | `result-track:b5342d48a15704260381eb7605c1ecb27c1b6cf11a8cba590b619e479db5c1eb` |
| 14 | `theorem` | [fixtureWrongContractHash_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/fixturewrongcontracthash-valid.md) | 115 | `result-track:0358de962e653cdda7eb26cfb037f0fed5bebd1d06d958d8e24f3c8b460844c0` |
| 15 | `def` | [fixtureContract](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/fixturecontract.md) | 119 | `declaration-track:ee2890324225301d70b121699764f9e36a78813cdfe572fb3043772d2479c045` |
| 16 | `theorem` | [fixtureContract_contractHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/fixturecontract-contracthash.md) | 137 | `result-track:96c7b753e49040db0d54bea50ee6bb56f27a0b7801e28a3d5b71e93b6b46fc9b` |
| 17 | `theorem` | [fixtureContract_algorithmVersion](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/fixturecontract-algorithmversion.md) | 141 | `result-track:de20a4fb7bb0a1d46366241932a78101668294a5285769e840674222de17f956` |
| 18 | `theorem` | [fixtureEdgeFinsets_equal](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/fixtureedgefinsets-equal.md) | 144 | `result-track:e50e344e49fca61ac19be6c30e7c21871f96465acd4a3f884274d65eabfbfd66` |
| 19 | `theorem` | [fixtureContract_sortedCanonicalEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/fixturecontract-sortedcanonicaledges.md) | 153 | `result-track:a2c14d4a93e6d35c4e7aa3796787b71789255ea54e9c18b23237962064465c55` |
| 20 | `theorem` | [fixtureContract_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/fixturecontract-valid.md) | 167 | `result-track:1d63bf17d6359688d521ff26d89799a6ae1137541adc4a2d974625f989b62d4d` |
| 21 | `theorem` | [ordered_edge_sorting](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/ordered-edge-sorting.md) | 179 | `result-track:3bb5644ad6378fd93f907f85ec31d8718503e98049826274458f30d9929c7469` |
| 22 | `theorem` | [bfs_route_through_cycle](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/bfs-route-through-cycle.md) | 185 | `result-track:fff3bcad404d277972e05f3c2739986f56e2e711219a2808cc10679ab7ccfd67` |
| 23 | `theorem` | [self_loop_ignored_after_visit](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/self-loop-ignored-after-visit.md) | 195 | `result-track:7025d4d72c0d1b9a228b825ad4e539d8ee5304ef8023c1f107cfdc037a34aeb6` |
| 24 | `theorem` | [disconnected_empty_route](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/disconnected-empty-route.md) | 201 | `result-track:fb51f0d1a6f907f7a8f77298b00c8fdb9042ed724ebf9d470bc70e0a58bab742` |
| 25 | `def` | [equalEnergyWhite](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/equalenergywhite.md) | 211 | `declaration-track:0fc1c9a73526863a4a41b02b395f69c62f998bb3fdad019185347a1817c192fb` |
| 26 | `def` | [primaryX](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/primaryx.md) | 216 | `declaration-track:46cb86700a0b09ad817b3733e02b5995a5f36ec33e82e591f45b326466dd39eb` |
| 27 | `def` | [primaryY](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/primaryy.md) | 221 | `declaration-track:fd495dc7b4d5bee7bdd8f3b97a1fad713b631909f6fa02f914b1c4181afd9a5a` |
| 28 | `def` | [primaryZ](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/primaryz.md) | 226 | `declaration-track:5e84cef8377c22a448c1fe101b754810d325a8bf639dc76453280de6b026b653` |
| 29 | `def` | [asymmetricNormalized](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/asymmetricnormalized.md) | 231 | `declaration-track:4e991b36e0390e69c62199ef08dade8a7fe907ba92c7d87fc1e178f0f56b54ac` |
| 30 | `def` | [revisioned](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/revisioned.md) | 236 | `declaration-track:df1f3f5a11f84ac1640c765e95ae23abb3f91f75a154604ccc2d6674fe39f4b7` |
| 31 | `def` | [whiteAt0](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/whiteat0.md) | 241 | `declaration-track:e22ac326d7b2233033b7707f26808d518909c76a6e6b5033abff990d1acce598` |
| 32 | `def` | [primaryXAt1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/primaryxat1.md) | 244 | `declaration-track:4e6d5f9e516090189794a567124dfc81bd0590941e9824ca7549989f38b81454` |
| 33 | `def` | [primaryYAt2](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/primaryyat2.md) | 247 | `declaration-track:b8eb868a32ea9482ced1223cfc0d87ca9298469c977c0d4cf7a1363b47eb6cac` |
| 34 | `def` | [primaryZAt3](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/primaryzat3.md) | 250 | `declaration-track:e187b7f2595860bbef659eda041134f6f15d4a105f934f306de490b595b546b0` |
| 35 | `def` | [primaryYAt4](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/primaryyat4.md) | 253 | `declaration-track:f9530354501b4c9cc1dfc2b5f47ee95710de63c35af0ba09c4be0c882bb4b302` |
| 36 | `def` | [asymmetricAt42](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/asymmetricat42.md) | 256 | `declaration-track:5671ad58439b665d568023dd57ce8b85a9478a2be4413cea19700f94a7221731` |
| 37 | `def` | [whiteAtMaxRevision](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/whiteatmaxrevision.md) | 259 | `declaration-track:2b58a039f22e8e737d4707c1a590be0dbace1dd45efbc9cbe39b8f90847885db` |
| 38 | `theorem` | [identity_expected_update](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/identity-expected-update.md) | 263 | `result-track:05da203da153e0fe48089e1be41d30ffbdced821ca23ad2eb206e1f7382d36b3` |
| 39 | `theorem` | [equal_energy_normalized_invariant](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/equal-energy-normalized-invariant.md) | 268 | `result-track:70d17171bb1bfdb55fb5aa57f2871b07ec51526124a6e017243ba2c1bdf3ba75` |
| 40 | `structure` | [RustExpectedUpdateCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/rustexpectedupdatecertificate.md) | 275 | `declaration-track:903b01f718b015066c866d2dd130d697ed93cec11f09e95d90a2bb37659c6f82` |
| 41 | `def` | [rustExpectedUpdate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/rustexpectedupdate.md) | 286 | `declaration-track:6602f775c0ea474c11ca5a41e72d41563de9cf2a135084be782814c115297a36` |
| 42 | `def` | [RustExpectedUpdateConforms](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/rustexpectedupdateconforms.md) | 291 | `declaration-track:1d254ede21f05aa88600a92a53cecd29eee4bdd7baad5d1e17e914c724a3a2ee` |
| 43 | `theorem` | [rustExpectedUpdate_eq_leanExpectedUpdate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/rustexpectedupdate-eq-leanexpectedupdate.md) | 297 | `result-track:01cacdca4a17939d34966c47ebff57fa515347ed007887839facb127e91adc92` |
| 44 | `def` | [identityCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/identitycertificate.md) | 307 | `declaration-track:441f41455e8fb648d079c3323f8022a32c6a812bf0af6678535e41cccf92e285` |
| 45 | `def` | [whiteCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/whitecertificate.md) | 315 | `declaration-track:65921cf505bd4ce5bd73d55f05a3640845b4d606a3f45813661d5d1b5d2935e5` |
| 46 | `def` | [primaryXCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/primaryxcertificate.md) | 316 | `declaration-track:2c6a8f6964edd8d4881fbc2886815c44c0592cac5f4634fac6810fa4ac5a6099` |
| 47 | `def` | [primaryYCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/primaryycertificate.md) | 317 | `declaration-track:f06fc343728d5f8181880919c3c1beec66a8dd9018c9c681e0c609ac5793d53d` |
| 48 | `def` | [primaryZCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/primaryzcertificate.md) | 318 | `declaration-track:8bec303f777871172a466007cc2e943a2815625f680aa41b84c56887333fe942` |
| 49 | `def` | [minMaxCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/minmaxcertificate.md) | 319 | `declaration-track:47ed565c26675d14254ee9e8dfaab54495dacd702b4e31a7fdbee73ce47a13ae` |
| 50 | `def` | [asymmetricCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/asymmetriccertificate.md) | 320 | `declaration-track:7f0c9059e895cdc2a3adef566c0dc9b789a75061a22f5349eab28accd0fbb887` |
| 51 | `def` | [maxRevisionCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/maxrevisioncertificate.md) | 321 | `declaration-track:38dd697a763fab2f482aed44d7ab1cf2748922d84082af473ff224b79ec71539` |
| 52 | `theorem` | [golden_update_certificates_checked](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/golden-update-certificates-checked.md) | 325 | `result-track:85cc00a49677b26573e9a812dbe71c16c16e10aa1e19f4e067984fa0a7a1b857` |
| 53 | `def` | [sourceSnapshot](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/sourcesnapshot.md) | 340 | `declaration-track:d2c78de1905f27da6a8256bd401105c7ff57cb36e725ec4de84e93c3d4f089d1` |
| 54 | `def` | [baseRegister](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/baseregister.md) | 348 | `declaration-track:f98d10214cca3c2749d214ae8b67a065dd09a972dbebf35ae989d2033edaba6b` |
| 55 | `def` | [baseProposal](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/baseproposal.md) | 351 | `declaration-track:6f08ea50a69924be96d9056865e8f9ca28766d787b4e23a624bd5829a0385d07` |
| 56 | `def` | [replayRegister](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/replayregister.md) | 364 | `declaration-track:5c529d8122aad09c7780f334285047f915fcabc0f4443e45b3b27069b29d85e3` |
| 57 | `def` | [staleRegister](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/staleregister.md) | 367 | `declaration-track:640a4a9217d518ac0dfdc71ab7230eed74cb2651378f7c2d4ae0ad95318d6fab` |
| 58 | `def` | [conflictRegister](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/conflictregister.md) | 370 | `declaration-track:7faf16232b70d349ab412f5fd363fadfbf211dc8cbe5ae8391d1ca6b2ac33dee` |
| 59 | `inductive` | [FixtureVerificationStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/fixtureverificationstatus.md) | 374 | `declaration-track:6858633bb80452fe37d57a90669286a68655ac0c5bfad440229033acf1de9672` |
| 60 | `def` | [verificationStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/verificationstatus.md) | 380 | `declaration-track:6db8612a303aee50eff800d75d0d2bc9979b2364cf2b5a889e14cda1d1051a06` |
| 61 | `theorem` | [accepted_newer_revision](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/accepted-newer-revision.md) | 391 | `result-track:8937a38e824442466a4867e15284d4c1a5b40983a927a07378da74753a70aac0` |
| 62 | `theorem` | [identical_replay_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/identical-replay-observed.md) | 406 | `result-track:2624aefc6ab7712da7fcae7534af21716ad6f94f6dfd27f439ad2f3a01a836b3` |
| 63 | `theorem` | [stale_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/stale-rejection-observed.md) | 413 | `result-track:5012c20eaeacd27eb6b2c9792b7989afb2da941f889c2bf9b87183035366b262` |
| 64 | `theorem` | [equal_revision_conflict_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/equal-revision-conflict-rejection-observed.md) | 420 | `result-track:f7306735d527c5bdf3b477ef65f25fbdb505aad41386e4681e5b24e1cd1f1fdb` |
| 65 | `theorem` | [wrong_edge_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/wrong-edge-rejection-observed.md) | 427 | `result-track:e9a88848f78d45c432d26afb5b09a0604dfac01a202f4242d34e090499fe67da` |
| 66 | `theorem` | [wrong_hash_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/wrong-hash-rejection-observed.md) | 434 | `result-track:003b8d07d7d200f6d4aeec0539559ac06447d610696a6deaf197591afe8c09e1` |
| 67 | `theorem` | [wrong_proposed_value_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition6.lean/declarations/wrong-proposed-value-rejection-observed.md) | 441 | `result-track:74000da3725ff7deb3ff5569e85c2b85d48ec0369b2d036ce92e420e97df9260` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ca241f8bda977c0560a67986703da3ed9351f03b83d074f81f0acd691ecfae0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant7b02605729b7eea3e31cc9312c66331adf12bd265e80f741224e991baf0dbc00.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant7b02605729b7eea3e31cc9312c66331adf12bd265e80f741224e991baf0dbc00.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
