# Verification target: XYZRoute Fixture Namespaced Public Edition7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9e711f22b909ca9622f86105fcb50fbbd7ed275",
  "lexical_observation_count": 89,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant2a4e12f162229fd383cac5d69d0f03444b2296972b49804bc97d943a3b24bb29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9e711f22b909ca9622f86105fcb50fbbd7ed275`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant2a4e12f162229fd383cac5d69d0f03444b2296972b49804bc97d943a3b24bb29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant2a4e12f162229fd383cac5d69d0f03444b2296972b49804bc97d943a3b24bb29.lean.json)

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
| 1 | `abbrev` | [FixtureHost](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/fixturehost.md) | 31 | `declaration-track:8398b171ad51251d8db88f6faaf1429e471421fbb55e0113c4575ecb93bb1944` |
| 2 | `abbrev` | [FixtureEdgeId](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/fixtureedgeid.md) | 32 | `declaration-track:ceb353b453c96c40c1238a79ed90bf41b526db3349652cfc8046561aafdd417b` |
| 3 | `def` | [fixtureHostCode](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/fixturehostcode.md) | 34 | `declaration-track:970bd7a5cf7c4798dbe0d558c0400ef59684047de1fa73af31c2a630bd0cded8` |
| 4 | `def` | [fixtureEdgeCode](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/fixtureedgecode.md) | 39 | `declaration-track:ba455dea6d2f269c330e317c5687f2c86c23acd4f992489fc09947e084d8e74d` |
| 5 | `def` | [fixtureEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/fixtureedge.md) | 44 | `declaration-track:d7e86696b9fd8fcaa86d134f0903f0e3c344e86d51374f3d30366efa2c0f1b8a` |
| 6 | `def` | [fixtureInsertionEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/fixtureinsertionedges.md) | 50 | `declaration-track:d6dc913f3b1b30ca9ce1ff790d86c9d00bf4a07c137ba2869b810cb4e7b40ad4` |
| 7 | `def` | [fixtureCanonicalEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/fixturecanonicaledges.md) | 69 | `declaration-track:079f2554f6ed227c5e6679df8f4dad13c74c6a090114836286fdfcf0044b39d8` |
| 8 | `def` | [fixtureEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/fixtureedges.md) | 88 | `declaration-track:15894c7f4ad009ea175f27615452e048a51ce0455d5a7f1abe14f62e94d16008` |
| 9 | `def` | [fixtureContractHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/fixturecontracthash.md) | 92 | `declaration-track:172abfa626da67d6a0b2b5a11d97b7de8a31bbe86f4deee26c45e71dd98d8406` |
| 10 | `def` | [fixtureSnapshotHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/fixturesnapshothash.md) | 96 | `declaration-track:454cc14171c42d49c490cf2503e800a702ccbe4d44a9973458b1af58bc00bfb2` |
| 11 | `def` | [fixtureWrongContractHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/fixturewrongcontracthash.md) | 100 | `declaration-track:09726f88e697e1ff9806ace8ebd254dfbdb7b9a39ad058a8c29fcab9c443acc1` |
| 12 | `theorem` | [fixtureContractHash_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/fixturecontracthash-valid.md) | 105 | `result-track:deed7d638222fe2a72cce3ffd408fd9b346642c23677d4e6d7cda8a8ab4a1daa` |
| 13 | `theorem` | [fixtureSnapshotHash_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/fixturesnapshothash-valid.md) | 110 | `result-track:065d7a3ee7432931530e3a25a17efe89323e092fe4766e14526900aa27f1d83b` |
| 14 | `theorem` | [fixtureWrongContractHash_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/fixturewrongcontracthash-valid.md) | 115 | `result-track:f8da7e3fe6c26cd6882b7135197286441864bc9e89f2669393f43d92bdfe41ea` |
| 15 | `theorem` | [fixtureWrongContractHash_ne](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/fixturewrongcontracthash-ne.md) | 120 | `result-track:e7686e28ebd4945f058ae9a65fb07ef581bd9343e2713f47f4668d247c72b54a` |
| 16 | `def` | [fixtureContract](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/fixturecontract.md) | 134 | `declaration-track:30ff530c3b1aa816381725dd7d2e60700aa8dcb0a1174f30a6869e6529554536` |
| 17 | `theorem` | [fixtureContract_contractHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/fixturecontract-contracthash.md) | 152 | `result-track:710d115916426adff9ca7dec521a698d4690406cf1e2077a7c3a9ee390727eaa` |
| 18 | `theorem` | [fixtureContract_algorithmVersion](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/fixturecontract-algorithmversion.md) | 156 | `result-track:da1b6f5dbb192e5acfe1d16bf53010c16080a29e719b3e397e9311145dc540d4` |
| 19 | `theorem` | [fixtureEdgeFinsets_equal](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/fixtureedgefinsets-equal.md) | 159 | `result-track:5598e630340c6eb96c98b8597b815fe55ce4317c53fbae4c0c5cd2b72deb9f4e` |
| 20 | `theorem` | [fixtureContract_sortedCanonicalEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/fixturecontract-sortedcanonicaledges.md) | 168 | `result-track:b20786e6010294c9ca7c4a96a0b62526a6274fd3c49d3c2830db1111913d40f8` |
| 21 | `theorem` | [fixtureContract_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/fixturecontract-valid.md) | 182 | `result-track:a34375e644eb9bb9e1c4ece9133b6917f469d322f54d11f85f471aed0810bdaf` |
| 22 | `theorem` | [ordered_edge_sorting](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/ordered-edge-sorting.md) | 194 | `result-track:98fc32ee324da7e8759e1c94ebdee7806bf6cde317411f136c2276bca5947e14` |
| 23 | `theorem` | [bfs_route_through_cycle](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/bfs-route-through-cycle.md) | 200 | `result-track:f32ecde7e6df09b12a659bd60b3c74a2851bc71cafd603913585151d83a3fdbd` |
| 24 | `theorem` | [self_loop_ignored_after_visit](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/self-loop-ignored-after-visit.md) | 210 | `result-track:16d7af1f74f2a6f250cc9178eb8d0f856945819468d83e391454e47bc3b1137f` |
| 25 | `theorem` | [disconnected_empty_route](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/disconnected-empty-route.md) | 216 | `result-track:bb408d1a73beb074f0821a7e51df0f52e66943b4611f01f638c3691fa72d58a8` |
| 26 | `def` | [proposalEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/proposaledge.md) | 224 | `declaration-track:e843a8755e4ee87e8569233c26697a81a8739505d1e58efefeb60465279829a4` |
| 27 | `theorem` | [findDeclaredEdge_proposalEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/finddeclarededge-proposaledge.md) | 229 | `result-track:0caee7d8eb41c49011c88751f8d7c4bec91eef7fbdbce39049db539ce51a236f` |
| 28 | `theorem` | [findDeclaredEdge_undeclared](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/finddeclarededge-undeclared.md) | 235 | `result-track:3c165ac2c0f2789c91a6a8549fc146710dd056ad9c92598103d15eb89b7f4c12` |
| 29 | `def` | [equalEnergyWhite](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/equalenergywhite.md) | 242 | `declaration-track:a1336b1b957d874ea669fc973b8c94bf08d9b89cf9e966d27fdd5e774a8c52cb` |
| 30 | `def` | [primaryX](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/primaryx.md) | 247 | `declaration-track:b343fb9e10e4cfd6fd5ab84a306ccba908d08a35cc994b609f5b1d8384a87e25` |
| 31 | `def` | [primaryY](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/primaryy.md) | 252 | `declaration-track:df3b8794d9c0f716b0112f3742487daaee22034f1f668c7bbe9a850027a086f2` |
| 32 | `def` | [primaryZ](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/primaryz.md) | 257 | `declaration-track:2208657c061e505f618df4fe62aaee3927db264d29f02eb50fcf68d83dd43d34` |
| 33 | `def` | [asymmetricNormalized](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/asymmetricnormalized.md) | 262 | `declaration-track:6dc0b629d6583f2cb251a7449da4aa8b70a151a6b0ac2a04124695721c9a4f07` |
| 34 | `theorem` | [equalEnergyWhite_ne_asymmetricNormalized](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/equalenergywhite-ne-asymmetricnormalized.md) | 268 | `result-track:15fa3c53518ff02e2faf5b11e924453d15a7e7d76a6510dd4d9ecdb6ddab05f9` |
| 35 | `def` | [revisioned](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/revisioned.md) | 274 | `declaration-track:5827c59d50d619c44f8ea5973c8ce842dc1ad50b6bcce50396cc8e2ce15a60e2` |
| 36 | `def` | [whiteAt0](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/whiteat0.md) | 279 | `declaration-track:443571639a070286ee295d6c592068c523fbf983d4f43987a4e294c2e7d111e0` |
| 37 | `def` | [primaryXAt1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/primaryxat1.md) | 282 | `declaration-track:b1d6a877ce4e8b24dbe8194d7d92ae9bd4e50d9432d53a4c71f5a0be76a55686` |
| 38 | `def` | [primaryYAt2](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/primaryyat2.md) | 285 | `declaration-track:5e1acce570e031aec2a4cf6fdd52bfd973a6c96c02161141cab3ec17a9cc15ac` |
| 39 | `def` | [primaryZAt3](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/primaryzat3.md) | 288 | `declaration-track:535f2673a37f60f5001f73d7584277d15c544c19d0c48f9784b6c58197bd8006` |
| 40 | `def` | [primaryYAt4](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/primaryyat4.md) | 291 | `declaration-track:c27a8f07b5b768a254376d56a03c0854a0976cc14074f886f6a95123bf8e4055` |
| 41 | `def` | [asymmetricAt42](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/asymmetricat42.md) | 294 | `declaration-track:501a2a2567e1732066f9ba0e6ebda2b4052a5849c34bfe8744ba47f03f5d7939` |
| 42 | `def` | [whiteAtMaxRevision](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/whiteatmaxrevision.md) | 297 | `declaration-track:741d362cfd6d711c5afc692a62e33b8e1ce6376d10ec7cf81fcb0dd71494bd37` |
| 43 | `theorem` | [identity_expected_update](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/identity-expected-update.md) | 301 | `result-track:aab4e5fa69a62b125f083bb0f4f06b1bdb419b462867261ee5e1b18b960b75f3` |
| 44 | `theorem` | [equal_energy_normalized_invariant](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/equal-energy-normalized-invariant.md) | 306 | `result-track:db70516e08ce0ef3f0752aee141320ee45f261b1470589f490a6f0367f4a4edd` |
| 45 | `structure` | [RustExpectedUpdateCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/rustexpectedupdatecertificate.md) | 313 | `declaration-track:b0694afe0e539b1d827bf9ba4033f9bd6e9d3062ef86725d575d127508a5e97f` |
| 46 | `def` | [RustExpectedUpdateCertificate.conformanceClaim](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/rustexpectedupdatecertificate-conformanceclaim.md) | 321 | `declaration-track:38a1e221e4579f066898a0c3778e5de18411c10a87f10e08863c689982a99520` |
| 47 | `def` | [rustExpectedUpdate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/rustexpectedupdate.md) | 328 | `declaration-track:c4a706680ed6f749aeb9a50bed4529d27d100eca4206fc5092df7d2bab7b4c8b` |
| 48 | `def` | [RustExpectedUpdateConforms](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/rustexpectedupdateconforms.md) | 333 | `declaration-track:2d66928779c875dbfe69c716d6fa8480113d856a6ba1bcaad9864437f63577da` |
| 49 | `theorem` | [rustExpectedUpdate_eq_leanExpectedUpdate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/rustexpectedupdate-eq-leanexpectedupdate.md) | 339 | `result-track:166099e2523b0dd5756798b005e1f1ced16dd1ada8520593bd3721e716bcc161` |
| 50 | `def` | [identityCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/identitycertificate.md) | 347 | `declaration-track:b7bc25d9ab9a97b4bfe5d6afd1f0df02f2426b746516a6b1985ff173d2910a4b` |
| 51 | `def` | [whiteCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/whitecertificate.md) | 353 | `declaration-track:e1152a3419ef498f48be36f90ab8d5738230a1f52d39f1991852b01af98b1142` |
| 52 | `def` | [primaryXCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/primaryxcertificate.md) | 354 | `declaration-track:8876d7e44851a0383affcf19b0a1475f55c0e36073922b5cbf453f7469227ca4` |
| 53 | `def` | [primaryYCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/primaryycertificate.md) | 355 | `declaration-track:ede223636284960cf5c618d8de1e1fb5f4e29d73821ebbfa2b8677870f10f2d1` |
| 54 | `def` | [primaryZCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/primaryzcertificate.md) | 356 | `declaration-track:b1cef67a09e775ee51ffe47594a4443206f962779936147fa06f7d69ee4999d5` |
| 55 | `def` | [minMaxCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/minmaxcertificate.md) | 357 | `declaration-track:2dd2938601183d227fcbe13f41553e44ad3fc5552f4e50a1798f08f460f0e504` |
| 56 | `def` | [asymmetricCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/asymmetriccertificate.md) | 358 | `declaration-track:c828b66c60c11760ecc69d0ed07781985cdbc19521852a5f9914a05c890f84e8` |
| 57 | `def` | [maxRevisionCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/maxrevisioncertificate.md) | 359 | `declaration-track:2ec46e025119318f01e68af76567b7568ce5b3aff0418dd3d6d183906db59689` |
| 58 | `theorem` | [golden_update_certificates_checked](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/golden-update-certificates-checked.md) | 363 | `result-track:87342ee6bfb20a417e2129f98e45b672b38a5fd501218a42bfc7a9ce49bc3d73` |
| 59 | `def` | [sourceSnapshot](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/sourcesnapshot.md) | 380 | `declaration-track:3405ed03b1de878bff1566157d6c1a37b6bfa73de0e364586a48dcae38bb9ccf` |
| 60 | `def` | [baseRegister](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/baseregister.md) | 388 | `declaration-track:bfc14870a8e6c6ef25fcf487186c404554c76b84809eb136bb6d20ae0973b745` |
| 61 | `def` | [baseProposal](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/baseproposal.md) | 391 | `declaration-track:c43ae100d5f672fd8943b567151613c1d03f48765eabc1fa3ff74cf5b28165e6` |
| 62 | `def` | [replayRegister](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/replayregister.md) | 404 | `declaration-track:95626399a2ca0aefba4e44fa5888b5b062e861fca900a95abda997bd89838e9d` |
| 63 | `def` | [staleRegister](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/staleregister.md) | 407 | `declaration-track:a379f3a09c73ea15cb646716e7df961f8837e0f8fe7e02ad67c15b5d7b5e9e0f` |
| 64 | `def` | [conflictRegister](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/conflictregister.md) | 410 | `declaration-track:dcf19e522083dc00ba7f70194841709956d9d91aed34263cc2b9b6f439cc5343` |
| 65 | `def` | [wrongEdgeProposal](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/wrongedgeproposal.md) | 413 | `declaration-track:09eb7c03a36274aafd0a717d196e7fceb929600d333214cedb31535d0c2a2f92` |
| 66 | `def` | [wrongHashProposal](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/wronghashproposal.md) | 417 | `declaration-track:18f4b8602a4001890bde7ca26cb6a1f5cc73963f11f146a79aeec855593f1caa` |
| 67 | `def` | [wrongProposedValueProposal](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/wrongproposedvalueproposal.md) | 421 | `declaration-track:8507ca692b7b4ec6352b53b6f4a4d93dfaae195fe631314451c6c389a43d38bb` |
| 68 | `inductive` | [FixtureVerificationStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/fixtureverificationstatus.md) | 426 | `declaration-track:2499a202cc1c3fedbe4f73f50ffce8a68fdb5d6eca9b9713c832358ae0565d9b` |
| 69 | `def` | [verificationStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/verificationstatus.md) | 432 | `declaration-track:ec86c790799ec90de1e5cf7013b9214b3240f5f72641cc2c58ad9f3c37ed7975` |
| 70 | `def` | [mergeStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/mergestatus.md) | 442 | `declaration-track:87d17084635f965959feaab5bfc9e60f6d1fd8750ab88101575e3b4f540ef1f5` |
| 71 | `theorem` | [baseProposal_verificationStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/baseproposal-verificationstatus.md) | 450 | `result-track:e357fb4209a57014b67e0ee8a0c29aa5252c88eb93ea5e157fd888a32d41687f` |
| 72 | `theorem` | [accepted_newer_revision](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/accepted-newer-revision.md) | 478 | `result-track:ddc6172cd7a0a7a2c0c24b6eb0ad08b74adf0d9148143d46d45d8f8b403d1b82` |
| 73 | `theorem` | [identical_replay_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/identical-replay-observed.md) | 487 | `result-track:f695cfc336598709946fcb99eed15f15480eca53a83b12f700334abb6b1439ab` |
| 74 | `theorem` | [stale_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/stale-rejection-observed.md) | 496 | `result-track:5dff88306bf8549f724f6bae6fc43f6c7c39e2198241eb1c1013c38ea476c3f3` |
| 75 | `theorem` | [equal_revision_conflict_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/equal-revision-conflict-rejection-observed.md) | 505 | `result-track:b1d8be91b1735ffd2fd51c045845a7a8e2a5d4d818d294e245833d180838c40c` |
| 76 | `theorem` | [wrong_edge_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/wrong-edge-rejection-observed.md) | 515 | `result-track:46e399e7cf5ef279d60a49a32584240aa822f56705029a60221bd4109bfadbf3` |
| 77 | `theorem` | [wrong_hash_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/wrong-hash-rejection-observed.md) | 529 | `result-track:af2dd10a3a102196a5338e6c6bacd2e5ffcd34695cb6a474a7dfc004fc7761d9` |
| 78 | `theorem` | [wrong_proposed_value_rejection_observed](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/wrong-proposed-value-rejection-observed.md) | 538 | `result-track:3c61de6fb8dca944f95c1aadf4d92d3a177e2344a905b599bf76ce80afbf3d96` |
| 79 | `def` | [sabHeaderBytesV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/sabheaderbytesv1.md) | 567 | `declaration-track:67934c933a9b5ec847b4f72dacb611e3d13b247a0141e6c47d18eea9a5dc1c5b` |
| 80 | `def` | [sabControlWordsV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/sabcontrolwordsv1.md) | 568 | `declaration-track:93c140dcebb562c52fd9cbe33adbc5c727c0caa9bc633d3fc3a2c04e1832c774` |
| 81 | `def` | [sabSlotCountV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/sabslotcountv1.md) | 569 | `declaration-track:857d157c0a3aef23aff5d05afd8909ca6a424ae4f172b739003e5f1a37a65f84` |
| 82 | `def` | [sabSlotBytesV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/sabslotbytesv1.md) | 570 | `declaration-track:1ef14fafe069085a28491fe41beeba15f6788c7b4214b6df2b44fa3b9dcd9e34` |
| 83 | `def` | [sabTotalBytesV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/sabtotalbytesv1.md) | 571 | `declaration-track:7c4cbe0d89c1d582cd3726fbe6cdef1e4fdd708253f44149321f9a2817127b79` |
| 84 | `def` | [sabSlotOffsetsV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/sabslotoffsetsv1.md) | 573 | `declaration-track:52d1cf4bf0a4786b35fbe0240580772ab27f64e3ff5c6181a823b47da810aa9e` |
| 85 | `def` | [sabMagicUnsignedV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/sabmagicunsignedv1.md) | 576 | `declaration-track:f7f378423f259d8a7def17569f51c8fad9db424099a53e20cd7627dda54fe2b6` |
| 86 | `def` | [sabAbiVersionV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/sababiversionv1.md) | 577 | `declaration-track:ff407ed53ac168a28f6884a3422e66bd2a2e16142b964e510d0c67a09cf62127` |
| 87 | `def` | [sabWordIndicesV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/sabwordindicesv1.md) | 580 | `declaration-track:a06940cda87f8471d4c5516f1444f9b478ca6262262fba6840e2a69fcf3d34d5` |
| 88 | `def` | [sabStateCodesV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/sabstatecodesv1.md) | 584 | `declaration-track:26ea9331ff024b501467baabc5775d252c12407ab394391ce573cf4f2b58948f` |
| 89 | `theorem` | [sabLayoutV1_checked](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition7.lean/declarations/sablayoutv1-checked.md) | 588 | `result-track:b829b86325e92bb3cfb2ef3c38cd98ee38787bce1a5b59d85876d2b2787138df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d96db845726d6573a99babfb922877a32a27c12f6009e782ed6599599020e4a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant2a4e12f162229fd383cac5d69d0f03444b2296972b49804bc97d943a3b24bb29.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant2a4e12f162229fd383cac5d69d0f03444b2296972b49804bc97d943a3b24bb29.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
