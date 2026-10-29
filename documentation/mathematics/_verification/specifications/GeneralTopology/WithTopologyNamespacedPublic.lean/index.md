# Verification target: With Topology Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8b191e3f48ba999546152afbfb1e354c96e4530",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/WithTopology/Varianta3da13797eaac74d7db4fc1301767c98934b164d38ed3982e87b27547580eee1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8b191e3f48ba999546152afbfb1e354c96e4530`.

Source path: `GRWTSK/Topology/GeneralTopology/WithTopology/Varianta3da13797eaac74d7db4fc1301767c98934b164d38ed3982e87b27547580eee1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/WithTopology/Varianta3da13797eaac74d7db4fc1301767c98934b164d38ed3982e87b27547580eee1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ofTopology_toTopology](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/oftopology-totopology.md) | 40 | `result-track:6071f9c294b2c14bbad6bbb50caa9db76b64fba19c014a0a4e6a6cf75abb4c4a` |
| 2 | `lemma` | [toTopology_ofTopology](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/totopology-oftopology.md) | 43 | `result-track:2dcead9dc56b7180a2388ed0f187419fd0eb976830f65ff6d858e7b4f9947454` |
| 3 | `lemma` | [ofTopology_surjective](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/oftopology-surjective.md) | 46 | `result-track:0775691e889c1dcedfc28224a8b27a5c18a38201180b04c8cb04420973cfcfa4` |
| 4 | `lemma` | [toTopology_surjective](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/totopology-surjective.md) | 49 | `result-track:3767dd3269e465896112229f831e0870a2d1df7085cc37d6be4938c2f0515877` |
| 5 | `lemma` | [ofTopology_injective](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/oftopology-injective.md) | 52 | `result-track:661904c0b3686f807f74b6a1c0c87768bcd77dc3eb21f76f578a39c26bfe84c5` |
| 6 | `lemma` | [toTopology_injective](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/totopology-injective.md) | 55 | `result-track:3bea4a14211d587f0e53dd1ed6ba19e3bd2e27aaf71c7d602317355028a73a81` |
| 7 | `lemma` | [ofTopology_bijective](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/oftopology-bijective.md) | 58 | `result-track:111725077eae40c368dd842c351e0848559bad4df50f610fa5496a5366cb1747` |
| 8 | `lemma` | [toTopology_bijective](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/totopology-bijective.md) | 61 | `result-track:0544938c03f98c4c52d7c868f7e48d9a6e7c5f77b5b5cccf53ff612a22da284b` |
| 9 | `lemma` | [toTopology_inj](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/totopology-inj.md) | 68 | `result-track:f51befb55bca38c4e1b3a23297fb92ed66d03364db18847ac2353d717d839242` |
| 10 | `lemma` | [ofTopology_inj](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/oftopology-inj.md) | 71 | `result-track:59d49dfd406d91687fd19971595ad0786f1c7133accae27cbee88f301588aa5d` |
| 11 | `lemma` | [isOpen_iff](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/isopen-iff.md) | 76 | `result-track:3e5b06438ca4b20d860f4f7afe398bd96c8bac30c7d8fcffb333299301cc0e96` |
| 12 | `lemma` | [isClosed_iff](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/isclosed-iff.md) | 80 | `result-track:fc547af04ff40d6704e27056c2d6e063f10419a9551ae9733379e6bffb16a2d5` |
| 13 | `lemma` | [continuous_toTopology](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/continuous-totopology.md) | 85 | `result-track:19f096b4d6d17610a96dfff4d23d2dd0985db74fe7a7c01c43c17de56d0b2bd6` |
| 14 | `lemma` | [continuous_ofTopology](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/continuous-oftopology.md) | 89 | `result-track:66bb0827ae851d52112cef1b78aa2245da39e5d24e820a91b9fd22f7c86440e0` |
| 15 | `lemma` | [image_ofTopology](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/image-oftopology.md) | 96 | `result-track:636090cbb1ed7acd12aa8d9d58dc7873c8b1977e065b3064b9f44341612bcb91` |
| 16 | `lemma` | [preimage_toTopology](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/preimage-totopology.md) | 99 | `result-track:0ce9ac24befc15a5caddfff8c73f4d7d09ef2093826661559d24994d60a9bac0` |
| 17 | `lemma` | [image_toTopology](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/image-totopology.md) | 102 | `result-track:c58a7bb3d9f3fba01da4d4636bb5526fc7bbfe5663a96434f5a8cd6dab0e00d5` |
| 18 | `lemma` | [preimage_ofTopology](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/preimage-oftopology.md) | 105 | `result-track:80528b54f47b1e930ed7aa22467ad611e7b2636f27a8a23cdd405b33d0f5ed66` |
| 19 | `instance` | [(anonymous)](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 114 | `declaration-track:36ac88e2ecdf85970edd05a8f326b407a90f197ceac8d7fbc658a1cb27e73e62` |
| 20 | `instance` | [(anonymous)](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/instance-source-edition-18.md) | 117 | `declaration-track:e2869304f7ff410059644d2bea1cab58863ed2c1b7ec82074c44c11ffa796772` |
| 21 | `instance` | [(anonymous)](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/instance-source-edition-19.md) | 120 | `declaration-track:f449a02f20f12ccce7e054312fe3ca614da273357ab2468f6a5e3d15ada94302` |
| 22 | `instance` | [(anonymous)](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 123 | `declaration-track:81a79c47395b84ad86375bf0416b6813776a4a807911b1bf16c5bf6e2a8bf662` |
| 23 | `instance` | [(anonymous)](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 125 | `declaration-track:b3ec885f57f217ef3080321bee8e3115ef6a1409e7cb8f31abab0ed2293c16b6` |
| 24 | `instance` | [(anonymous)](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 127 | `declaration-track:adcdc22da5f25769404d7b2d626c1646910387e653c569355e1eebb85efef226` |
| 25 | `instance` | [(anonymous)](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 129 | `declaration-track:36f1343685b9987eb8dc0409b2e739133a98d8210edb00dacd9796b7e92ae29c` |
| 26 | `instance` | [(anonymous)](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 134 | `declaration-track:ad9bce176e7cd55c21ade1eb8cee1bb89f413125ba512e08f0f1d1795cad08ba` |
| 27 | `instance` | [(anonymous)](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 137 | `declaration-track:2a5b90ac0f67c34e5c5c484d4b2fed45193d545199179814b41aed87202e11d8` |
| 28 | `instance` | [(anonymous)](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 141 | `declaration-track:c22f3976588fdbca7cbd73f0cf2d4475318e0aa213467db265bfbcd439a19b94` |
| 29 | `instance` | [(anonymous)](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/instance-source-edition-17.md) | 145 | `declaration-track:d21f04bdf504d8141c08e8fe6e383e15c9b196e1a07adf05a556929b7c2c4df8` |
| 30 | `instance` | [(anonymous)](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 148 | `declaration-track:54c3cdebf5968472178f5346a235e7511939c901daeb60521175f2bcc4fc5e1f` |
| 31 | `instance` | [(anonymous)](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/instance.md) | 151 | `declaration-track:06d0c0600e194c9681d2c8053974b88b206a2ea97170d99d98a77ee03b08d91e` |
| 32 | `instance` | [(anonymous)](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 155 | `declaration-track:3a5a348d76093e7302f6a95e0280ba1b4d73aa697bf7b966029b025baa6a3547` |
| 33 | `instance` | [(anonymous)](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 159 | `declaration-track:8ba5cc75ed4564752dc57daf0879f3c8309efb7f8844a270786e9d1750ee4dee` |
| 34 | `instance` | [(anonymous)](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 162 | `declaration-track:5e0ff14e9c10f05ab298fcced814d8241a573a7a8625e23b68a4908a7d3c7ccb` |
| 35 | `instance` | [(anonymous)](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 164 | `declaration-track:7981bd7abf63d7e153df7010be08a3f080a2611d7dbcfaf68f00907e99579e53` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 167 | `declaration-track:5c9a2be81db64782fb5691c7626755fa61c8f0d82298e3f79bc4168a3a61a458` |
| 37 | `instance` | [(anonymous)](../../../../GeneralTopology/WithTopologyNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 170 | `declaration-track:6f2ad563e1d2c68d3ddd20b5da84f681c49154d37cd01b7ff683c58711b4863e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4292f1cbf036a08c3df6fa592211331477bea638516c67bba5cc8673dd99e410 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/WithTopology/Varianta3da13797eaac74d7db4fc1301767c98934b164d38ed3982e87b27547580eee1.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/WithTopology/Varianta3da13797eaac74d7db4fc1301767c98934b164d38ed3982e87b27547580eee1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
