# Verification target: XYZRoute Fixture Public Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "266eeed3645d905ab60ad63c6c0f1260372d27d5",
  "lexical_observation_count": 89,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant5a56514cef7d51b2158a912445abd250448b77d88b6843330b8a6edca49ff63a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `266eeed3645d905ab60ad63c6c0f1260372d27d5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant5a56514cef7d51b2158a912445abd250448b77d88b6843330b8a6edca49ff63a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant5a56514cef7d51b2158a912445abd250448b77d88b6843330b8a6edca49ff63a.lean.json)

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
| 1 | `abbrev` | [FixtureHost](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/fixturehost.md) | 23 | `declaration-track:c5b5582dab2145e5630c1542510a18eb937abc8bc8b54f7fd2fd24c67c0630d5` |
| 2 | `abbrev` | [FixtureEdgeId](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/fixtureedgeid.md) | 24 | `declaration-track:f10cdabeb605eb772cca02f5136979ffc252cc75464146e6d336dc4245137751` |
| 3 | `def` | [fixtureHostCode](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/fixturehostcode.md) | 26 | `declaration-track:ed70d812118b862b8e3e7146b645992812037e78dad6022035bf2284d257feab` |
| 4 | `def` | [fixtureEdgeCode](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/fixtureedgecode.md) | 31 | `declaration-track:785c8f47d7d1fb747a957c4dcabaaadb461ef1c9cec1a77a2513b90926111ac4` |
| 5 | `def` | [fixtureEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/fixtureedge.md) | 36 | `declaration-track:65226a159ed397565e22b0f9533c06d6001a01352d79e79e6cae55ad10cba9de` |
| 6 | `def` | [fixtureInsertionEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/fixtureinsertionedges.md) | 42 | `declaration-track:2ec23d681d9be6c956995f7749632d459a0f552eed1f3fac492a0d4aa442e158` |
| 7 | `def` | [fixtureCanonicalEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/fixturecanonicaledges.md) | 61 | `declaration-track:86fdd452dd80118d2df71545441f65ebdd6767f81f2181ce1624608461a64694` |
| 8 | `def` | [fixtureEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/fixtureedges.md) | 80 | `declaration-track:0c65a45b475fd410795452776aa81c789e463de28c7055f1a05b330a12723e95` |
| 9 | `def` | [fixtureContractHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/fixturecontracthash.md) | 84 | `declaration-track:396b413df2512333aa1fba975a75c6f722e985dddb40007f60291699af42e13c` |
| 10 | `def` | [fixtureSnapshotHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/fixturesnapshothash.md) | 88 | `declaration-track:354d09f5a6e9766dbd6c8733937d06dfb3a9364f2f609118b5e65f7984f7a850` |
| 11 | `def` | [fixtureWrongContractHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/fixturewrongcontracthash.md) | 92 | `declaration-track:82916ace4f1596fb5a080da2557b6a931c78e95317bb49f27754781bc59f9a21` |
| 12 | `theorem` | [fixtureContractHash_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/fixturecontracthash-valid.md) | 97 | `result-track:b663e7ebf6853b59399e6b30de02f6661d9f6c32508a9de303db51413c62257b` |
| 13 | `theorem` | [fixtureSnapshotHash_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/fixturesnapshothash-valid.md) | 102 | `result-track:416d4394e91d83294911c1e40e393c49ffc239980583c8979d49afe76cd6c801` |
| 14 | `theorem` | [fixtureWrongContractHash_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/fixturewrongcontracthash-valid.md) | 107 | `result-track:1d86129230d9c5f57e1010a77aac50d5cfc78606c523e923aee4dad532fd5733` |
| 15 | `theorem` | [fixtureWrongContractHash_ne](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/fixturewrongcontracthash-ne.md) | 112 | `result-track:405b1a334536d530b201508edfec0777478ac40b078292175832ae37b231fc58` |
| 16 | `def` | [fixtureContract](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/fixturecontract.md) | 126 | `declaration-track:3e0da199aea3d189e1fa4cc55e1ad9835a06b1ca67aac75db57d680a31831516` |
| 17 | `theorem` | [fixtureContract_contractHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/fixturecontract-contracthash.md) | 144 | `result-track:dafb8dd97afe1a4323d8e81f9793bcc9a63f70eaf53346d4e6bf60f5420bb250` |
| 18 | `theorem` | [fixtureContract_algorithmVersion](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/fixturecontract-algorithmversion.md) | 148 | `result-track:d0539d6d40dc5825d3f6d0ff9f706c1d86c53f3d4c160807f1e073ac177ed4fb` |
| 19 | `theorem` | [fixtureEdgeFinsets_equal](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/fixtureedgefinsets-equal.md) | 151 | `result-track:52890627b63d058f44136d85a2a0e14c25c8941369211ad998d5a6f339bc31f4` |
| 20 | `theorem` | [fixtureContract_sortedCanonicalEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/fixturecontract-sortedcanonicaledges.md) | 160 | `result-track:9225b8875589571981ebc0271fb2fdc44180cf8d949be9879fb04655eaf3c31a` |
| 21 | `theorem` | [fixtureContract_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/fixturecontract-valid.md) | 174 | `result-track:dff0dac981e4ba815c92540f36d931c0b76e4ad4e2c7de8c079928bf3860d335` |
| 22 | `theorem` | [ordered_edge_sorting](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/ordered-edge-sorting.md) | 186 | `result-track:2a7e796e401306557d0d5a2c5b5daff8254d73277ca844b6031e7b9d07d469f8` |
| 23 | `theorem` | [bfs_route_through_cycle](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/bfs-route-through-cycle.md) | 192 | `result-track:b4b98d76d81abc67b41f9a29734d3765346a11fd8600f5d5e72af147fb8c4ca2` |
| 24 | `theorem` | [self_loop_ignored_after_visit](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/self-loop-ignored-after-visit.md) | 202 | `result-track:4f035cbb9e20f2aa99fa479bad84132192a11e55e6a88534ffd15575e1f79c38` |
| 25 | `theorem` | [disconnected_empty_route](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/disconnected-empty-route.md) | 208 | `result-track:825820c4e6a7f18733a79ced23dc9a5d4d668d8705cb5aa69641451bb71390ed` |
| 26 | `def` | [proposalEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/proposaledge.md) | 216 | `declaration-track:d5236b535729260d1c2e17bc8274401717d15001d4a65435bca9843100f2345f` |
| 27 | `theorem` | [findDeclaredEdge_proposalEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/finddeclarededge-proposaledge.md) | 221 | `result-track:5e405e7c124660cf6b9d999dc50883b83adc97fbadf21def9530581fe9c31139` |
| 28 | `theorem` | [findDeclaredEdge_undeclared](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/finddeclarededge-undeclared.md) | 227 | `result-track:c87d9ec25a4750b52bece51dbea35bef492120b8abdcf369010f50b639ab5ca6` |
| 29 | `def` | [equalEnergyWhite](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/equalenergywhite.md) | 234 | `declaration-track:7d2593be22d2e1023aa219707d6d30a7b6785fe22dd774dfef3ec7b06e91196d` |
| 30 | `def` | [primaryX](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/primaryx.md) | 239 | `declaration-track:15f6f765a818502d0ed052c42dfda0e60a72127ca5746b8f54da8ff720d821b2` |
| 31 | `def` | [primaryY](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/primaryy.md) | 244 | `declaration-track:797727a94787e26efde2ca34caf49e1fd001e4164a0359e937844e871806357e` |
| 32 | `def` | [primaryZ](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/primaryz.md) | 249 | `declaration-track:f7b00aa39245dfd09b0334452e6232e0a499404ae7419160d2235cb1ca629372` |
| 33 | `def` | [asymmetricNormalized](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/asymmetricnormalized.md) | 254 | `declaration-track:96d50dd4cb0f967fd47311f4e885e128df82b5e4770a6ed232a4aaa3e1c8dd0e` |
| 34 | `theorem` | [equalEnergyWhite_ne_asymmetricNormalized](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/equalenergywhite-ne-asymmetricnormalized.md) | 260 | `result-track:05149ec9790948851c819c318c824325aeca3ec9a99bdfcfb95251c0121d2305` |
| 35 | `def` | [revisioned](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/revisioned.md) | 266 | `declaration-track:2dc1f07c82105dcb449e02d26e66b1ff71a4721de41ff3914a34826881374e22` |
| 36 | `def` | [whiteAt0](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/whiteat0.md) | 271 | `declaration-track:846b1288902f13f10c0d63fb81cc202d8af5d0c0e458f29aa36b412c44e0137c` |
| 37 | `def` | [primaryXAt1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/primaryxat1.md) | 274 | `declaration-track:4c6fced2a3dc51e347703ebb4d14ae5efd708b234e75a53cbe20e188439a816e` |
| 38 | `def` | [primaryYAt2](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/primaryyat2.md) | 277 | `declaration-track:0e6e829e3e43c9a3f6034d8ac7dac26c98efe6b719615d4e8417702138c27d2d` |
| 39 | `def` | [primaryZAt3](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/primaryzat3.md) | 280 | `declaration-track:0d2700daeca4ab09a4ee7009facfbdc9ed857e4aa7650f78efd0d74c0b38f403` |
| 40 | `def` | [primaryYAt4](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/primaryyat4.md) | 283 | `declaration-track:594a1c4748b33fe218a81223d7476934ef1b647e7ad3b3e38f706a27afea96e7` |
| 41 | `def` | [asymmetricAt42](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/asymmetricat42.md) | 286 | `declaration-track:feb4843000476c1b674caa3b4c61c98069e8dabb12fa96a81f3527fc20e1585a` |
| 42 | `def` | [whiteAtMaxRevision](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/whiteatmaxrevision.md) | 289 | `declaration-track:502eb1644fd983cd1a4b47ede1991b49d892dbedbc5ff79331451fa46ca41029` |
| 43 | `theorem` | [identity_expected_update](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/identity-expected-update.md) | 293 | `result-track:e831ed376d6202404386f55a3ea13d82ad76ce4e2695d6d92246eb5ec588e6bd` |
| 44 | `theorem` | [equal_energy_normalized_invariant](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/equal-energy-normalized-invariant.md) | 298 | `result-track:454402b1c9b7849882c2e85321cc51ba50e2c3b90ef13fce4dd082518a5b2adf` |
| 45 | `structure` | [RustExpectedUpdateCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/rustexpectedupdatecertificate.md) | 305 | `declaration-track:3b47fff2577b4cde3a35a4f00ae30d507532bcc61c4f9dbe24239785336ed7f0` |
| 46 | `def` | [RustExpectedUpdateCertificate.conformanceClaim](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/rustexpectedupdatecertificate-conformanceclaim.md) | 313 | `declaration-track:a3346501baeabb0310208e3b124925e25739e2cc09f08855e47ed54637909093` |
| 47 | `def` | [rustExpectedUpdate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/rustexpectedupdate.md) | 320 | `declaration-track:45979fb0ac2336256527f825cce0f0f6ee2ed7c345ce88ced5fbc244e4e69f52` |
| 48 | `def` | [RustExpectedUpdateConforms](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/rustexpectedupdateconforms.md) | 325 | `declaration-track:f0826eca2a9cff0d7d1767acb71df685768971852c4d48392f63b4b1b06366c0` |
| 49 | `theorem` | [rustExpectedUpdate_eq_leanExpectedUpdate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/rustexpectedupdate-eq-leanexpectedupdate.md) | 331 | `result-track:8c4f6da6f83cde387936cad4738bf47e7bed34130d11fba1970ecb1f8200e2bc` |
| 50 | `def` | [identityCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/identitycertificate.md) | 339 | `declaration-track:2b059101f4fd75f78ae6401385ec59e70f63d7703f09c50f58cb0ed041cffed9` |
| 51 | `def` | [whiteCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/whitecertificate.md) | 345 | `declaration-track:14de9a4fa0b3a6651f616426a5c988070c1544f1590424821a79307d45537c4b` |
| 52 | `def` | [primaryXCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/primaryxcertificate.md) | 346 | `declaration-track:3debad167f188bb02f78fee20a77024b1b12a0cdf0032a5225c49701018d9e42` |
| 53 | `def` | [primaryYCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/primaryycertificate.md) | 347 | `declaration-track:3290ba7f5dd9d086772ac41265cdccc296303650ac31629fc23e7a4920eef3c6` |
| 54 | `def` | [primaryZCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/primaryzcertificate.md) | 348 | `declaration-track:3112c8c13a84542e0a77ed6f320f3226c82021209b37f424b1748084d0bdadef` |
| 55 | `def` | [minMaxCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/minmaxcertificate.md) | 349 | `declaration-track:1e9d1183aad536f79fb591b962773a099f8fc619f8ca074bb9389057e877e1c5` |
| 56 | `def` | [asymmetricCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/asymmetriccertificate.md) | 350 | `declaration-track:237c52b6750105ccc35dba4b32b66d80e2211c69e453289049fcc0c5b14f863d` |
| 57 | `def` | [maxRevisionCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/maxrevisioncertificate.md) | 351 | `declaration-track:5d9b980141bdbf6f48980c70492efe8adfd3a99a99e64ecec1e35c93bc4ac163` |
| 58 | `theorem` | [golden_update_certificates_checked](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/golden-update-certificates-checked.md) | 355 | `result-track:c22b65b94c02d074e294efa4d42740c6139c12cbae2b8fef8c5636c1220f92a1` |
| 59 | `def` | [sourceSnapshot](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/sourcesnapshot.md) | 372 | `declaration-track:92110ed8b006718ce537b2234a18cf93d2b3b941793b2ec8a8f8169d53f36894` |
| 60 | `def` | [baseRegister](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/baseregister.md) | 380 | `declaration-track:23d85a8ed28314adf1120670d157b3901165ca448cea86223bfed8310ba2786e` |
| 61 | `def` | [baseProposal](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/baseproposal.md) | 383 | `declaration-track:6ed341b59538ff46e4ce86eeae3d097aea1e8c1d51118f22bd400deab9052967` |
| 62 | `def` | [replayRegister](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/replayregister.md) | 396 | `declaration-track:47872e21817eacddf8e41cb8dbc9ba1c60ced81fdc3f4e79252ed489bed49ed7` |
| 63 | `def` | [staleRegister](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/staleregister.md) | 399 | `declaration-track:ebd18eb1941bd7dc607cbe5f3130e0b544d1bbe5763c8abef325631b0e5facc1` |
| 64 | `def` | [conflictRegister](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/conflictregister.md) | 402 | `declaration-track:97c3a45588d36bef422dea4de21bec71c490741a401b7a2d11f8936c76d2d2d8` |
| 65 | `def` | [wrongEdgeProposal](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/wrongedgeproposal.md) | 405 | `declaration-track:62f2f8f83b37e3f1ba589dd05fa097724634c6519087449e5135f0c122d69744` |
| 66 | `def` | [wrongHashProposal](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/wronghashproposal.md) | 409 | `declaration-track:def3d32b70c5bc6c31af7dac5997a82012a1634b52ec94a57210268177249b42` |
| 67 | `def` | [wrongProposedValueProposal](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/wrongproposedvalueproposal.md) | 413 | `declaration-track:ba35da1e75d1e541c100908a6e95cb2c14ffeb219ee8f78192c2347b7cc6c703` |
| 68 | `inductive` | [FixtureVerificationStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/fixtureverificationstatus.md) | 418 | `declaration-track:a9e650312d407b859712ae2b51172c09edc66528672744eae570384b4f703d72` |
| 69 | `def` | [verificationStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/verificationstatus.md) | 424 | `declaration-track:6849d577ecb61a75d255183493fc69c710cdc4ac919a2b3e56b18ee27db100b1` |
| 70 | `def` | [mergeStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/mergestatus.md) | 434 | `declaration-track:10a5cf0ef6c0d3d4be31b8043c99042e38eec0172f8fa7b912bb145cef061698` |
| 71 | `theorem` | [baseProposal_verificationStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/baseproposal-verificationstatus.md) | 442 | `result-track:5cd786e61ce2aa34ffb3119866f3a0422adfb8bae5029cf81ea39edd30cba310` |
| 72 | `theorem` | [accepted_newer_revision](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/accepted-newer-revision.md) | 470 | `result-track:15ab4468dec9d7d7c95950038d4230e8b5915301c28e32d2b4c7a9fc6ea081b8` |
| 73 | `theorem` | [identical_replay_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/identical-replay-observed.md) | 479 | `result-track:edf96f5c32826570f59897157186125909c35bc3f3e8d1586e0c159fa4878476` |
| 74 | `theorem` | [stale_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/stale-rejection-observed.md) | 488 | `result-track:1813fb929da44c2c88edd83caa156ad5d03932b3c338f6d0ee5a6e83f2e2711f` |
| 75 | `theorem` | [equal_revision_conflict_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/equal-revision-conflict-rejection-observed.md) | 497 | `result-track:4e0ceb190be9cd884374a01cde5ddd6da3c62cc18186402064cc05e23e045bb7` |
| 76 | `theorem` | [wrong_edge_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/wrong-edge-rejection-observed.md) | 507 | `result-track:ef6c25b1d38d9228a3646a76c3bc3a2c0da3cfbb316676482ce37d0eb9c3944a` |
| 77 | `theorem` | [wrong_hash_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/wrong-hash-rejection-observed.md) | 521 | `result-track:c0a0f68e25ac0a79b40c9e84f94e9f21dccff67c6acadba32dad0c8e7e2614c1` |
| 78 | `theorem` | [wrong_proposed_value_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/wrong-proposed-value-rejection-observed.md) | 530 | `result-track:645b409b544d96f54fca29ea426274be10356b9e01d3bda64ce4bd4f40db6d9a` |
| 79 | `def` | [sabHeaderBytesV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/sabheaderbytesv1.md) | 559 | `declaration-track:684905a113a23f07109b4ef1532982c4bbbe2574c0813099747adb9c6495393a` |
| 80 | `def` | [sabControlWordsV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/sabcontrolwordsv1.md) | 560 | `declaration-track:05d0ba59e0387581d6dc079f50307f68f3e4ca8566419cbf2b2be89825790b3c` |
| 81 | `def` | [sabSlotCountV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/sabslotcountv1.md) | 561 | `declaration-track:9d52e7fb9471fa16c8ecd3f5ba2a635dbaf64c008b77d2783573b8e112f46c76` |
| 82 | `def` | [sabSlotBytesV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/sabslotbytesv1.md) | 562 | `declaration-track:85bdde8bb0ab5236f687cdd8860d8fc221bf79609e8c21fe00654d8cd018788d` |
| 83 | `def` | [sabTotalBytesV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/sabtotalbytesv1.md) | 563 | `declaration-track:6a5ba487e3104a5805e6b0ea9fa84bd8fb8604e68a6892f5a4e1c7d633288b44` |
| 84 | `def` | [sabSlotOffsetsV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/sabslotoffsetsv1.md) | 565 | `declaration-track:e53c3c6eff93fffb3b9e499c8d77208b4c70d374f053913f593b4fc0c326a9ff` |
| 85 | `def` | [sabMagicUnsignedV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/sabmagicunsignedv1.md) | 568 | `declaration-track:118049a4812ae0eb8c8eb0a74b51b64325632476e50ed31a19b18059ef2a9338` |
| 86 | `def` | [sabAbiVersionV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/sababiversionv1.md) | 569 | `declaration-track:06e73388890c10710f1c20235a5093c2355038e8d1d5487b0ebfdab128d2afa0` |
| 87 | `def` | [sabWordIndicesV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/sabwordindicesv1.md) | 572 | `declaration-track:137494d1144d812286a2f5f1f74984e0b92ad3478a2a990ed568a62363885d79` |
| 88 | `def` | [sabStateCodesV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/sabstatecodesv1.md) | 576 | `declaration-track:3e5cb9a5bca8b316f305775f896557f724fce96025f3848e20762c41035b074f` |
| 89 | `theorem` | [sabLayoutV1_checked](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition3.lean/declarations/sablayoutv1-checked.md) | 580 | `result-track:38a06b14083c278c69d19184148cebe75d5473834f48d408cb06ed6ecce267c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=161414ee909832e866a9c95533dcd9dbeaa0a47a679a7472a8f9735a689d404d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant5a56514cef7d51b2158a912445abd250448b77d88b6843330b8a6edca49ff63a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant5a56514cef7d51b2158a912445abd250448b77d88b6843330b8a6edca49ff63a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
