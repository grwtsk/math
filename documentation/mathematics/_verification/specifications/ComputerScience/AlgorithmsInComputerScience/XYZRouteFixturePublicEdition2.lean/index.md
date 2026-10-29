# Verification target: XYZRoute Fixture Public Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "283fd74d0ce481cc6998dc0329134b69f37d02b1",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `283fd74d0ce481cc6998dc0329134b69f37d02b1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FixtureHost](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/fixturehost.md) | 23 | `declaration-track:42b677588c204879848f977ea9ff3c8f74f81c302fae0335e673ae3272d41c30` |
| 2 | `abbrev` | [FixtureEdgeId](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/fixtureedgeid.md) | 24 | `declaration-track:b6bc69d1d7e335b483e4e87491c69e09ee8195eedba6fb3aba02ab8bf286042b` |
| 3 | `def` | [fixtureHostCode](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/fixturehostcode.md) | 26 | `declaration-track:e5beac8deabe309a1114086f6c6e0003e1d7d7da1857fdbe027f2bd705cbae7a` |
| 4 | `def` | [fixtureEdgeCode](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/fixtureedgecode.md) | 31 | `declaration-track:d39fa81a31fe1ab73a22911bb38dd8a6a40ea081d95043e95fb53843c14bc4ff` |
| 5 | `def` | [fixtureEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/fixtureedge.md) | 36 | `declaration-track:b894b175d55422336ed22e62334a188abc1464bbf49661e66f79da785ceccd96` |
| 6 | `def` | [fixtureInsertionEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/fixtureinsertionedges.md) | 42 | `declaration-track:e73effbf14d5d394aa962395883ad3483d37a817061d988c2142530145787ce3` |
| 7 | `def` | [fixtureCanonicalEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/fixturecanonicaledges.md) | 61 | `declaration-track:cfb26307570a35e5c36ad60634ec63bdfcedce1bca9f022eff9632ce334aa05d` |
| 8 | `def` | [fixtureEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/fixtureedges.md) | 80 | `declaration-track:6014cdc87042933bd763ba715d33cdaf2a98b105e1e35c8876fe81a5b8932ec3` |
| 9 | `def` | [fixtureContractHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/fixturecontracthash.md) | 84 | `declaration-track:80d7e3f43489140c8b5e67b9c0cd4fdd83cb5519366ce42d8264ea81cbca9f37` |
| 10 | `def` | [fixtureSnapshotHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/fixturesnapshothash.md) | 88 | `declaration-track:c49585be4e042a972448cf9bc9563ae480dff26bfdfd9cdc752f77081a7e7153` |
| 11 | `def` | [fixtureWrongContractHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/fixturewrongcontracthash.md) | 92 | `declaration-track:f645d07307438a278184b8414acd8c5763a5d412a68dc078d31b85557d7ea69f` |
| 12 | `theorem` | [fixtureContractHash_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/fixturecontracthash-valid.md) | 97 | `result-track:0085a9d948d846db1578f32aa33cf0e7ca6dd0f3a8071113eaffa212d1dd1c4c` |
| 13 | `theorem` | [fixtureSnapshotHash_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/fixturesnapshothash-valid.md) | 102 | `result-track:133dc72539ee782b1425abebb4af48ccfe15fb5d8bcc688675034bdc4c6e7684` |
| 14 | `theorem` | [fixtureWrongContractHash_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/fixturewrongcontracthash-valid.md) | 107 | `result-track:525e350c9118ccbe70c09c407c15d7d2f94d21806049b19324186c7f46f98493` |
| 15 | `theorem` | [fixtureWrongContractHash_ne](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/fixturewrongcontracthash-ne.md) | 112 | `result-track:f1f3e526db4ded417867b3fbb539c09caab043a4b3f4a82a432377675943c79b` |
| 16 | `def` | [fixtureContract](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/fixturecontract.md) | 126 | `declaration-track:9c0839f1d06a8747d4b106d01b648e4302bb3671d5578e920faa489f8e1d667a` |
| 17 | `theorem` | [fixtureContract_contractHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/fixturecontract-contracthash.md) | 144 | `result-track:a48f1dd95676fa0e38d39bc985fe4029e7ba7444393f0a99dbe23461924f9a3e` |
| 18 | `theorem` | [fixtureContract_algorithmVersion](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/fixturecontract-algorithmversion.md) | 148 | `result-track:89c9eb4190de2c54c2081cadf35e0c76c4ae7a3524a8a9a4bdcc6c6498036510` |
| 19 | `theorem` | [fixtureEdgeFinsets_equal](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/fixtureedgefinsets-equal.md) | 151 | `result-track:463325455a5b0957f0320985e5ef020dd6e943056db2884e14d6e5c48ce531fb` |
| 20 | `theorem` | [fixtureContract_sortedCanonicalEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/fixturecontract-sortedcanonicaledges.md) | 160 | `result-track:c082078e4399533ea0eaca7103057f1310f09b52a59ee433877009d220e24423` |
| 21 | `theorem` | [fixtureContract_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/fixturecontract-valid.md) | 174 | `result-track:e0a56b07657f86cc5b770087a3ca81876ea3edebcfa156eabe8bd950ac729e01` |
| 22 | `theorem` | [ordered_edge_sorting](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/ordered-edge-sorting.md) | 186 | `result-track:53e2d7104b79030f23076d21afbde20d3dad90ed181a0edaeef5e1fba4cdbfd3` |
| 23 | `theorem` | [bfs_route_through_cycle](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/bfs-route-through-cycle.md) | 192 | `result-track:fb16f133a46bc7d5c01c9c8bda69cb9ef04ba5a009948f2f00773a07b7dc28cf` |
| 24 | `theorem` | [self_loop_ignored_after_visit](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/self-loop-ignored-after-visit.md) | 202 | `result-track:a9b80e106fcccb1366232732f405aabc4871c18c13eb95ba8a1180f4ce70d8fb` |
| 25 | `theorem` | [disconnected_empty_route](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/disconnected-empty-route.md) | 208 | `result-track:28e4309bd80f18abf267028aae5bb83ede3b425b5fdf378dfca71055a1c2c810` |
| 26 | `def` | [proposalEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/proposaledge.md) | 216 | `declaration-track:47bc1fcfdcfa0f59f880fd5a7207decf8005a3e6af98629909653e5da9d669e0` |
| 27 | `theorem` | [findDeclaredEdge_proposalEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/finddeclarededge-proposaledge.md) | 221 | `result-track:c06b9bfe0844c54a73c4ad9e6f618f56fe9988d1e33a14054b4813d9cd5a2ff9` |
| 28 | `theorem` | [findDeclaredEdge_undeclared](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/finddeclarededge-undeclared.md) | 227 | `result-track:49cca9b7d40deb46bec9002c3354a06ac3900c7627b83efd967c2d0241acf0f1` |
| 29 | `def` | [equalEnergyWhite](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/equalenergywhite.md) | 234 | `declaration-track:e249f263b77d547b858aabca6d1be7ec1ec6e711aed6640ec7140da22a6f918e` |
| 30 | `def` | [primaryX](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/primaryx.md) | 239 | `declaration-track:db89744cfa4c8d84a2e2193ba4855022e517e043f3971333b3b843c380eaef96` |
| 31 | `def` | [primaryY](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/primaryy.md) | 244 | `declaration-track:264a217f13213ad25409a10325f23e002528f89bb982808d75bb138fc5792623` |
| 32 | `def` | [primaryZ](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/primaryz.md) | 249 | `declaration-track:5d208e4c273f285b945fd862d6d1cc3009fbea979ba99573c37d5ee7ae7fa891` |
| 33 | `def` | [asymmetricNormalized](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/asymmetricnormalized.md) | 254 | `declaration-track:047dedb256420fd71b62ff4e9f7d4744b83a717b514f0a0fcfcd977e06451635` |
| 34 | `theorem` | [equalEnergyWhite_ne_asymmetricNormalized](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/equalenergywhite-ne-asymmetricnormalized.md) | 260 | `result-track:d2a8d31e7b9f88665af5b37de925724ee6078cbdef0594870e3c36a7495ee8ff` |
| 35 | `def` | [revisioned](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/revisioned.md) | 266 | `declaration-track:e3c0f361d1efac38ff6b49325378799ee239b924d304761e03b5b0cfa85691f5` |
| 36 | `def` | [whiteAt0](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/whiteat0.md) | 271 | `declaration-track:1e045465e8d7360fcac8beabf7b321dc0c6cb3d0ef6c72045f3d662394c3c6be` |
| 37 | `def` | [primaryXAt1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/primaryxat1.md) | 274 | `declaration-track:20b77497580221944681c17a73d2660c3d21ba1d9ce7880b6fbdc747e03106f8` |
| 38 | `def` | [primaryYAt2](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/primaryyat2.md) | 277 | `declaration-track:82174f05955198eea56067c43d06092ba2de3d3f13a948dd8c56d9f07974557a` |
| 39 | `def` | [primaryZAt3](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/primaryzat3.md) | 280 | `declaration-track:0975147172ce992d9142b779fa89be0024cf60121c1ecd3253dc7b36b392f9ad` |
| 40 | `def` | [primaryYAt4](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/primaryyat4.md) | 283 | `declaration-track:50d0819c39ff1635cb9a56ac1bfbe2c905626dc1b59fa147c9879fd6b67ea591` |
| 41 | `def` | [asymmetricAt42](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/asymmetricat42.md) | 286 | `declaration-track:a8404d258521451b4bafca0f1be798c2734bd86e3fa33f5699f1494ef62e0288` |
| 42 | `def` | [whiteAtMaxRevision](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/whiteatmaxrevision.md) | 289 | `declaration-track:be355243a9cc0b7800cc91cbad8a770bd780e2e23bec6fdab804492d640ae9d4` |
| 43 | `theorem` | [identity_expected_update](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/identity-expected-update.md) | 293 | `result-track:08514df8532199eab9635679404d0bf69ac56141aa79f99e0da055c74f475123` |
| 44 | `theorem` | [equal_energy_normalized_invariant](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/equal-energy-normalized-invariant.md) | 298 | `result-track:aa952a1ed14e531a62936c03fa38f3b5ade0378c9f6e07f5f2b54f50eead2426` |
| 45 | `structure` | [RustExpectedUpdateCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/rustexpectedupdatecertificate.md) | 305 | `declaration-track:091131403745dfc31adaa5b787eb15f749f2a893f10b164711d8c2ae3ac75484` |
| 46 | `def` | [rustExpectedUpdate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/rustexpectedupdate.md) | 316 | `declaration-track:a0ab7a092f0af1c494ff63e335f0824c5fe17a94a38b56104024d00275d556a4` |
| 47 | `def` | [RustExpectedUpdateConforms](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/rustexpectedupdateconforms.md) | 321 | `declaration-track:95b01ad70db0a86aae5943f537bf9b7962a286dc6d70f793f6b434abed17e277` |
| 48 | `theorem` | [rustExpectedUpdate_eq_leanExpectedUpdate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/rustexpectedupdate-eq-leanexpectedupdate.md) | 327 | `result-track:7d777c8398d7ba1e08f330c35775a19e8f5b76ef306bff9f4cd92b35b92c96a5` |
| 49 | `def` | [identityCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/identitycertificate.md) | 337 | `declaration-track:c6b3af8271426c07114fed455bfb247ca8d0c57a8091229c8e77425d9d1976a1` |
| 50 | `def` | [whiteCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/whitecertificate.md) | 345 | `declaration-track:f9dd97402267e7b8b6e001d867a4d10b5b67cc05967e343d5821844196feab91` |
| 51 | `def` | [primaryXCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/primaryxcertificate.md) | 346 | `declaration-track:3ba548dde8c6455b55137d77f8c63021fb4d90e08ca079226523214d37c76c0b` |
| 52 | `def` | [primaryYCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/primaryycertificate.md) | 347 | `declaration-track:0604afbab5ac67f43cc42541a1b292576069b8bbb22e991ec53556dd40279269` |
| 53 | `def` | [primaryZCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/primaryzcertificate.md) | 348 | `declaration-track:c3aae7f361da1e7c42b3ab1bd5a04de40a42c66f0eed2156c7c61c211adefc79` |
| 54 | `def` | [minMaxCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/minmaxcertificate.md) | 349 | `declaration-track:a183c6a2061b237a017ed434388e9f20c558d11c4f8fb39c093027d5ceb111f2` |
| 55 | `def` | [asymmetricCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/asymmetriccertificate.md) | 350 | `declaration-track:64e20c4d2e21ae846ccf49b02f1da9c195418140792258ebfa735ae555c7eb44` |
| 56 | `def` | [maxRevisionCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/maxrevisioncertificate.md) | 351 | `declaration-track:2212b9381158977661322cc6195f79ba98e8fe7240944753dcc5f2e64d7e40d0` |
| 57 | `theorem` | [golden_update_certificates_checked](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/golden-update-certificates-checked.md) | 355 | `result-track:c69daa292cf32147991b1208161d7fabdad669e02d255599d321b0524baf3e65` |
| 58 | `def` | [sourceSnapshot](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/sourcesnapshot.md) | 370 | `declaration-track:afbde5be20a52c1fafde1b3df519b09ace2cd4f96b536af71ae483aea2d1f18d` |
| 59 | `def` | [baseRegister](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/baseregister.md) | 378 | `declaration-track:6fd3e2b13a77af0032ab9130a83db9a88a520201ae44624776033977fe98d1b7` |
| 60 | `def` | [baseProposal](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/baseproposal.md) | 381 | `declaration-track:61c5c3e17e10ae86c0b017b4181d1e75bfd5015862e94ed58e7e01c5087120ab` |
| 61 | `def` | [replayRegister](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/replayregister.md) | 394 | `declaration-track:71a32acccdf08eeb1f74ea9d64bc6c4b4d1e10556d398d81ceebd7c4989e3ed0` |
| 62 | `def` | [staleRegister](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/staleregister.md) | 397 | `declaration-track:870c57b7820eeb0694028b26bda3bd9b7e2af05fb9668682d379c6e8642469e3` |
| 63 | `def` | [conflictRegister](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/conflictregister.md) | 400 | `declaration-track:d31d11327ccc2ac978b3a00cd930e09c6f293555ea97b6680971143c5a1fbb65` |
| 64 | `def` | [wrongEdgeProposal](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/wrongedgeproposal.md) | 403 | `declaration-track:7d76e32c1bc7a9fe23e391fcb0b8049a90caea231a06ae07d5aef1e12faa7ed1` |
| 65 | `def` | [wrongHashProposal](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/wronghashproposal.md) | 407 | `declaration-track:841aa037b0164361e38186b416df4982c5c79f7393df977bf2a67262f7c76735` |
| 66 | `def` | [wrongProposedValueProposal](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/wrongproposedvalueproposal.md) | 411 | `declaration-track:ddb9c535e723ccd660ec39fd95fa4335f07578278b8072177efd125ba4390b51` |
| 67 | `inductive` | [FixtureVerificationStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/fixtureverificationstatus.md) | 416 | `declaration-track:51d6e10cd590259a83dc50beb23988ad3647b7a9e54551e7a784d7eb8edd70e1` |
| 68 | `def` | [verificationStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/verificationstatus.md) | 422 | `declaration-track:2ea56630060eb6fc2be44e3d1e79165f5e231df0c3dbb20debf591e753869ee6` |
| 69 | `def` | [mergeStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/mergestatus.md) | 432 | `declaration-track:f205c491ca51c5576412d722af1f5c4c6dfd6ba2d5a075764ef7b5d341f4e6a9` |
| 70 | `theorem` | [baseProposal_verificationStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/baseproposal-verificationstatus.md) | 440 | `result-track:ebc7fe1230edd61b3610cadcf324ee00eda4beac7ce8647bd404aa8995def30c` |
| 71 | `theorem` | [accepted_newer_revision](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/accepted-newer-revision.md) | 468 | `result-track:7d51f6c3d101008ef7252ee8f2e1059ba50abcc5fc1041b10a4cd1872ec3ee96` |
| 72 | `theorem` | [identical_replay_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/identical-replay-observed.md) | 477 | `result-track:ae2b0b79b972049e137542f93664507c1c60c362e6227e13ab2f5761785c8141` |
| 73 | `theorem` | [stale_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/stale-rejection-observed.md) | 486 | `result-track:1e8a46a0c1240d0dcdd9c23d5a4b1c0ab79c549b8568550109b3ba625a121e1d` |
| 74 | `theorem` | [equal_revision_conflict_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/equal-revision-conflict-rejection-observed.md) | 495 | `result-track:9d7d2ac72d170b2e786099e8fe114a7427f6633ea1903a3e594a21f4ce0d7c73` |
| 75 | `theorem` | [wrong_edge_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/wrong-edge-rejection-observed.md) | 505 | `result-track:a194c6075c995eb226f6f5a0bc1b7455ad3e5753c2d0333671cdf945d9d1d3bc` |
| 76 | `theorem` | [wrong_hash_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/wrong-hash-rejection-observed.md) | 519 | `result-track:07d54053ec911eb352b34d48ba8c65f3feddbf86be57beabd0e3fe79d1594248` |
| 77 | `theorem` | [wrong_proposed_value_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/wrong-proposed-value-rejection-observed.md) | 528 | `result-track:995a88c11b2a9ebdf7a4da20db02e4e33165445236bbe7a26cf39e1453e901b5` |
| 78 | `def` | [sabHeaderBytesV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/sabheaderbytesv1.md) | 557 | `declaration-track:0e93b0e46c5378384fe41e3a317cdc94c1d1c17c830a1e798322a4fca5a549b1` |
| 79 | `def` | [sabControlWordsV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/sabcontrolwordsv1.md) | 558 | `declaration-track:e34edca56ad0d081ced7a529a7de9177d36ee461f15c5aaf1547e6711c82bce2` |
| 80 | `def` | [sabSlotCountV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/sabslotcountv1.md) | 559 | `declaration-track:0156dc0cda6182f795709945a258970d7ec51f98e291752cfbd77f004946059b` |
| 81 | `def` | [sabSlotBytesV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/sabslotbytesv1.md) | 560 | `declaration-track:7d3ed8b13a627f2c9a0e60a9fb861048a46bbba3cf913fe79c99eff5db0cfb29` |
| 82 | `def` | [sabTotalBytesV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/sabtotalbytesv1.md) | 561 | `declaration-track:fe0e4cda0a8617307d5949ec5d29fcdb75fd85772f75e1dd85bf619025019d05` |
| 83 | `def` | [sabSlotOffsetsV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/sabslotoffsetsv1.md) | 563 | `declaration-track:24d9b53026691295e5fa906409514403b784d245f5c95b01b79fe4e4e75059f3` |
| 84 | `def` | [sabMagicUnsignedV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/sabmagicunsignedv1.md) | 566 | `declaration-track:eee5f2c2974794f7bcaf7b5915824a19a0db78ea268c4806d984237ab7513b32` |
| 85 | `def` | [sabAbiVersionV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/sababiversionv1.md) | 567 | `declaration-track:004f0599d4eb9c9ac643bb73954909435c10897a07f07663ff8c21494e465756` |
| 86 | `def` | [sabWordIndicesV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/sabwordindicesv1.md) | 570 | `declaration-track:ea8d73cab570b045f4a76db13e85c11c62fe54a08249761470384058dabe17fc` |
| 87 | `def` | [sabStateCodesV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/sabstatecodesv1.md) | 574 | `declaration-track:75460a9a9bb9fd9ecdbd33b9a11006519f6e48c7d53ca46918fafc3db53b7bfa` |
| 88 | `theorem` | [sabLayoutV1_checked](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition2.lean/declarations/sablayoutv1-checked.md) | 578 | `result-track:badefdb13935e55bfef63b4650e52a2427e47747c6da22911ee5a13f94f54fb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bdbfc8122588dc8b24020064912485a5cda11c109590b73901e98f2b3d18e23d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
