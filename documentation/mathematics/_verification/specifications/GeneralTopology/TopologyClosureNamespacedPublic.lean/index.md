# Verification target: Topology Closure Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57e1d26b7e1be608090849561d7ca1ca683f2e76",
  "lexical_observation_count": 129,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Closure/Variant26099c8be1644b0bf6a7081e091bef6b677159a423aaf1e7e791175937c98798.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57e1d26b7e1be608090849561d7ca1ca683f2e76`.

Source path: `GRWTSK/Topology/GeneralTopology/Closure/Variant26099c8be1644b0bf6a7081e091bef6b677159a423aaf1e7e791175937c98798.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Closure/Variant26099c8be1644b0bf6a7081e091bef6b677159a423aaf1e7e791175937c98798.lean.json)

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
| 1 | `theorem` | [mem_interior](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/mem-interior.md) | 47 | `result-track:571cc7e7c22d73d490b2fb0cce012819a01616a202230c5bf0939c620606eceb` |
| 2 | `theorem` | [isOpen_interior](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/isopen-interior.md) | 51 | `result-track:b9d077830827267cb6f696fdd79b13c0bb6fcf3ca5686a31367449212afd2171` |
| 3 | `theorem` | [interior_subset](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-subset.md) | 54 | `result-track:5d6fe0d6ac67b2e770a93d08811b9da9c1673cde8c1127be94bc8ad6b91b2af3` |
| 4 | `theorem` | [interior_maximal](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-maximal.md) | 57 | `result-track:7c1936825c5a0c9e5af452cf185e3f8b7e53c283cd9f06d513c52d1ac6769151` |
| 5 | `theorem` | [IsOpen.interior_eq](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/isopen-interior-eq.md) | 61 | `result-track:bdf994f2ac1ce328693d7217de9543e5456f3e8960599e4aac66da72f9fedf59` |
| 6 | `theorem` | [forall_isOpen_iff](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/forall-isopen-iff.md) | 64 | `result-track:d2fc16fa7ece75bc5989e3047786ff0401286b8c904c1820702be8ff834978fa` |
| 7 | `theorem` | [exists_isOpen_iff](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/exists-isopen-iff.md) | 68 | `result-track:30393ac9e3dc786576375ce831e735f6bbfe71d4b3694343276cb0153a753974` |
| 8 | `theorem` | [interior_eq_iff_isOpen](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-eq-iff-isopen.md) | 72 | `result-track:f3929d40ff0dc58581f022226b61a9cef1ae441f912997628ba36fd1531caef0` |
| 9 | `theorem` | [subset_interior_iff_isOpen](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/subset-interior-iff-isopen.md) | 75 | `result-track:cc2b13022177a65c95b5e1734a78dd9bf01c18eea6af7aa105d71d96ce01df62` |
| 10 | `theorem` | [IsOpen.subset_interior_iff](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/isopen-subset-interior-iff.md) | 78 | `result-track:af5f55fa98e82eb16360d5ee6ec54517af40ac063b2f3f38fe0337e26cb341df` |
| 11 | `theorem` | [subset_interior_iff](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/subset-interior-iff.md) | 81 | `result-track:41c2afebc0360683d071007cc90d71564956a98a17351db49d1d2bb6c68a2033` |
| 12 | `lemma` | [interior_subset_iff](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-subset-iff.md) | 85 | `result-track:1117f414d8442879c86cb8aaf9a1590612b6a4d3aa18ddc036d2902a0cbeb2bb` |
| 13 | `theorem` | [interior_mono](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-mono.md) | 89 | `result-track:ae858a536aa4443be46044c12b287b01e4ad90f307f0dafe13ba31d80bbfb754` |
| 14 | `theorem` | [subset_interior_union](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/subset-interior-union.md) | 92 | `result-track:d279ce3d64d3b2c98bf8ca75fef4ae22a29deda58bdb046524b5a6e2f20f1c88` |
| 15 | `theorem` | [interior_empty](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-empty.md) | 96 | `result-track:df55f3ccc47e2e7c211a54cad113f9b1178423ebabd23f94d280137412f0bdb2` |
| 16 | `theorem` | [interior_univ](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-univ.md) | 100 | `result-track:55b2f49ca3e07c221ceb6bc57cf4498c70e3ea158da02eb082fc58ca69ea0543` |
| 17 | `theorem` | [interior_eq_univ](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-eq-univ.md) | 104 | `result-track:44fff4a32a34c3df7e6c66aacf2c5c67b977940f37428a9d9ea271f0e2c6862e` |
| 18 | `theorem` | [interior_interior](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-interior.md) | 108 | `result-track:98d192ea7866bbbe4bcf94accfeeb0040de6786b0256fadb9d40b6ae8aa2c629` |
| 19 | `theorem` | [interior_inter](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-inter.md) | 112 | `result-track:8a6e34f5184b45c5fe533f5824936edd2ed72fa957a455c343721367b0c51c24` |
| 20 | `theorem` | [Set.Finite.interior_biInter](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/set-finite-interior-biinter.md) | 117 | `result-track:035d97c21204484cd151b42a57e4544e0478b3cee441c6654216d4c1aa39b3f6` |
| 21 | `theorem` | [Set.Finite.interior_sInter](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/set-finite-interior-sinter.md) | 123 | `result-track:19fc3676a0c199a8bf4c8cd008df854f9a42be766eee9bea639a661f9acf578c` |
| 22 | `theorem` | [Finset.interior_iInter](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/finset-interior-iinter.md) | 128 | `result-track:b6135d76f28b6d5587b7f62164f270f62c7b43af87722d21a70644840eee2ec6` |
| 23 | `theorem` | [interior_iInter_of_finite](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-iinter-of-finite.md) | 133 | `result-track:e038059eb89ce1fd801af0cba9db49bbded500914e50f9d31b9c4ea03ec01666` |
| 24 | `theorem` | [interior_iInter₂_lt_nat](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-iinter-lt-nat.md) | 138 | `result-track:4c574b6e92cfd4b19e7b72283899420ecff28fef57f68589afa7002c4fabaa15` |
| 25 | `theorem` | [interior_iInter₂_le_nat](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-iinter-le-nat.md) | 143 | `result-track:2223c208d8f9f637a9b8add54d08511619a50df8455b425473e96c932e7fe5d0` |
| 26 | `theorem` | [interior_union_inter_interior_compl_left_subset](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-union-inter-interior-compl-left-subset.md) | 147 | `result-track:29b30bb8f4b7e4826bc7506e069895fbfd9b43c5e510aaa065a7cfbc02d56064` |
| 27 | `theorem` | [interior_union_inter_interior_compl_right_subset](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-union-inter-interior-compl-right-subset.md) | 151 | `result-track:63137932ca30fc72788564b66026931080ec64e1a1a218aa28d29affef1c19a9` |
| 28 | `theorem` | [interior_union_isClosed_of_interior_empty](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-union-isclosed-of-interior-empty.md) | 155 | `result-track:8670332183699dc8604d1054e7930934993fd2d6295f86826f3501f3c2076a2c` |
| 29 | `theorem` | [isOpen_iff_forall_mem_open](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/isopen-iff-forall-mem-open.md) | 165 | `result-track:b1988e4489f8476ff1887728ebee273914c7106dc303c71830412d46a562fcd1` |
| 30 | `theorem` | [interior_iInter_subset](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-iinter-subset.md) | 169 | `result-track:ad98a1fa41dc9da9e00ccd08beb5bf188bd3d5afa0665c3082299342c2336077` |
| 31 | `theorem` | [interior_iInter₂_subset](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-iinter-subset-source-edition-2.md) | 172 | `result-track:c49004e1c4c3b2b793fb6aeff04c5b475be36562f1d6b2b1c953fd417e9aff68` |
| 32 | `theorem` | [interior_sInter_subset](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-sinter-subset.md) | 176 | `result-track:18cfebb778234ee79cd96daa3e5fa8c41133959aaaf4c488484c1cacd6964e26` |
| 33 | `theorem` | [Filter.HasBasis.lift'_interior](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/filter-hasbasis-lift-interior.md) | 181 | `result-track:d90afc64ed3f3f74851c0497aab0b48882ca78f15f434b559b84e4a01f51dbeb` |
| 34 | `theorem` | [Filter.lift'_interior_le](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/filter-lift-interior-le.md) | 185 | `result-track:93e53d23cbfa84df3f5b47de5c1107b3d5d266f3914f42cbd8adad1398a6b08f` |
| 35 | `theorem` | [Filter.HasBasis.lift'_interior_eq_self](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/filter-hasbasis-lift-interior-eq-self.md) | 188 | `result-track:df5a5bccc8f9b151a10fb0b20006f13b38cded0d44a3cec774c7d27883e7bdf6` |
| 36 | `theorem` | [isClosed_closure](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/isclosed-closure.md) | 198 | `result-track:638ac526c4ba82df89db49436d904b1a7450902d0f9e51fd24a5786365f5daa8` |
| 37 | `theorem` | [subset_closure](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/subset-closure.md) | 201 | `result-track:034fe42e9839c2ea6f9690cfa37c377d3bedb8ed2efe5c8ebbec7e01bd264889` |
| 38 | `theorem` | [notMem_of_notMem_closure](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/notmem-of-notmem-closure.md) | 204 | `result-track:3ac708d47f6210893d934ee3249e8763c3a2ea62e27e74faec3e3180f8cebd66` |
| 39 | `theorem` | [closure_minimal](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/closure-minimal.md) | 207 | `result-track:51f0dd4446c27c1671574e2c82fc6cf2c65ed397c77dd1aeac991d5a85c8528b` |
| 40 | `theorem` | [Disjoint.closure_left](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/disjoint-closure-left.md) | 210 | `result-track:525b8afa55911fecf9d1603d64d95d84621b54519a964fa5c3fe9fcf221d3cc2` |
| 41 | `theorem` | [Disjoint.closure_right](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/disjoint-closure-right.md) | 214 | `result-track:d8c5ba4d9543e220c286437501f7d53f0088560fd45a6621b0a7cb818f7bb6da` |
| 42 | `theorem` | [IsClosed.closure_eq](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/isclosed-closure-eq.md) | 219 | `result-track:9675c38f7df463e8d1a76db7ee1d2a36b136121720d30891a47d5cfdf2891d25` |
| 43 | `theorem` | [forall_isClosed_iff](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/forall-isclosed-iff.md) | 222 | `result-track:f469e5e2348fc5faa31241bdce5e5ffad84b2ab59d8df7bf0a7f5b7eccf580d5` |
| 44 | `theorem` | [exists_isClosed_iff](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/exists-isclosed-iff.md) | 226 | `result-track:e200df0227ffa2461d4b035caa05f30663dea2ff5cd74ceb7f448848f0d423a0` |
| 45 | `theorem` | [IsClosed.closure_subset](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/isclosed-closure-subset.md) | 230 | `result-track:7bce98bebae386388d1ef7896ececced839f16674aba5c23e03dfe79588ad3d9` |
| 46 | `theorem` | [IsClosed.closure_subset_iff](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/isclosed-closure-subset-iff.md) | 233 | `result-track:52dc742f3b90e9f8428805a2b82f4aec992b0286479b7d1995e39c38922a6a38` |
| 47 | `theorem` | [IsClosed.mem_iff_closure_subset](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/isclosed-mem-iff-closure-subset.md) | 236 | `result-track:4faeb81999c9ece91efd9d530e7f572871514217da6065092a5fe3dbad800dfa` |
| 48 | `theorem` | [closure_mono](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/closure-mono.md) | 241 | `result-track:498bdb929bfe84ce7251a65a12baaa6897d0c612c6d3fa8986ff5b4c6922b498` |
| 49 | `theorem` | [monotone_closure](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/monotone-closure.md) | 244 | `result-track:35b3870b2bf46839cf816e9fbb8ede4777c664f57e92e8042b5a1cdee840854e` |
| 50 | `theorem` | [closure_inter_subset](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/closure-inter-subset.md) | 247 | `result-track:99e0547c870945b1c781b195a55f158de0ad1d1472381ab2fd745010f02e739f` |
| 51 | `theorem` | [sdiff_subset_closure_iff](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/sdiff-subset-closure-iff.md) | 250 | `result-track:d50fcc1516bfe7dac514ccfd031b53e766ac0f75d65d42e9c05e42a00fcbbdbf` |
| 52 | `theorem` | [closure_inter_subset_inter_closure](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/closure-inter-subset-inter-closure.md) | 255 | `result-track:79e588bb3a2d0b3e987428cde314735934440a70f79a7d6e67d6c6185fe32450` |
| 53 | `theorem` | [isClosed_of_closure_subset](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/isclosed-of-closure-subset.md) | 259 | `result-track:0e7d468841af68d6e7eaff2b07dab1cf885d7072fd6cba5574e827de1ae76214` |
| 54 | `theorem` | [closure_eq_iff_isClosed](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/closure-eq-iff-isclosed.md) | 262 | `result-track:5b88dca086646e6b0b60febf839faa390f28c8a351ca240473208e9532bedde0` |
| 55 | `theorem` | [closure_subset_iff_isClosed](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/closure-subset-iff-isclosed.md) | 265 | `result-track:244d24a4b893e95d376b1ccb31f69f9ae910a994ec302d406b01aae206abd4e5` |
| 56 | `theorem` | [closure_empty](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/closure-empty.md) | 268 | `result-track:7d5994366b830b570dc7daa2b744b97ba8691602a085b5192128029e24e21eed` |
| 57 | `theorem` | [closure_empty_iff](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/closure-empty-iff.md) | 272 | `result-track:5284d9666267774f8bd08207fa800265ba287489d3a25b3b29abecc22ea210b0` |
| 58 | `theorem` | [closure_nonempty_iff](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/closure-nonempty-iff.md) | 276 | `result-track:7bd0b501c020bad22202c07e3b33c18158e8fb82f5d6897d9b170b3b9141943f` |
| 59 | `theorem` | [closure_univ](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/closure-univ.md) | 281 | `result-track:aee7c4c1dbef805b98df46c8f445a4154485c8a76118c52c1530f0c1430ccd6d` |
| 60 | `theorem` | [closure_closure](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/closure-closure.md) | 284 | `result-track:edf330e89f7063789c1c10deb50238557e2d71aea8c12898da56c2284609a7be` |
| 61 | `theorem` | [closure_eq_compl_interior_compl](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/closure-eq-compl-interior-compl.md) | 287 | `result-track:026fa597ff3a7a68433909812d438b1a2b65a6cf07e13daf39eedfd36f5ae25a` |
| 62 | `theorem` | [closure_union](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/closure-union.md) | 292 | `result-track:5288477a5eef112f296b6aed97f522fd7d23bcc556d15150c1fa343dee14fe30` |
| 63 | `theorem` | [Set.Finite.closure_biUnion](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/set-finite-closure-biunion.md) | 295 | `result-track:d285841aa4494a9b0e092b0fdb67ab9d44711953eb8a71f14a61f074d11e15ee` |
| 64 | `theorem` | [Set.Finite.closure_sUnion](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/set-finite-closure-sunion.md) | 299 | `result-track:9b275fc3a1cfa8c9e6e993f3802c5c2fb36294c0ac4fb8a8c7ea8c99838e8a56` |
| 65 | `theorem` | [Finset.closure_biUnion](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/finset-closure-biunion.md) | 304 | `result-track:0cbce7ae907abec20eec7f9004b49876091d5d50311d837d581012d807525dc1` |
| 66 | `theorem` | [closure_iUnion_of_finite](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/closure-iunion-of-finite.md) | 309 | `result-track:43a7493dc41223ac03a13885a2470c58d5e58a96355958996b5dbf7f2055a565` |
| 67 | `theorem` | [closure_iUnion₂_lt_nat](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/closure-iunion-lt-nat.md) | 314 | `result-track:6ed7d7e60e1ace963f9ef2c2c8f273d6b2589ef21f889ba40b2a8d004afbd47f` |
| 68 | `theorem` | [closure_iUnion₂_le_nat](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/closure-iunion-le-nat.md) | 319 | `result-track:746466462039a10fdbac298d1931597de5f41b9a7bddc95d2e1ee777ab12a5f6` |
| 69 | `theorem` | [subset_closure_inter_union_closure_compl_left](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/subset-closure-inter-union-closure-compl-left.md) | 323 | `result-track:4a5cbbabf742f52cb0fc83a269c8b73089b41bf3d35676bb922d4388d7d74a17` |
| 70 | `theorem` | [subset_closure_inter_union_closure_compl_right](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/subset-closure-inter-union-closure-compl-right.md) | 327 | `result-track:f85201a5a32043469f61d72e255f30436c8dd1e2169e1c1feda98c54d2230c12` |
| 71 | `theorem` | [interior_subset_closure](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-subset-closure.md) | 331 | `result-track:1abe76444683f405c31e3a111998eace44f1b438bb810a94ae4f1e0fa00b3a1e` |
| 72 | `theorem` | [interior_compl](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-compl.md) | 335 | `result-track:d544c26eb49f4cc279c3ae3bf8375e0d351d8bf09d0d48a5f5ef1b4850723495` |
| 73 | `theorem` | [closure_compl](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/closure-compl.md) | 339 | `result-track:3df1c8cafdef7b0cabbcfd33d15964512711a480e2cfed2ac46447a68c120b52` |
| 74 | `theorem` | [interior_eq_compl_closure_compl](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-eq-compl-closure-compl.md) | 342 | `result-track:83a53a5e0c01c91d39f5795c43429bd792d78c5bfe2e8e24d953e98029e0a75a` |
| 75 | `theorem` | [interior_union_of_disjoint_closure](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-union-of-disjoint-closure.md) | 344 | `result-track:6e8ecc16fba336d62b4d08a3d701ae840e93e7e6faddf0f695ddf87ab0598eef` |
| 76 | `theorem` | [closure_inter_of_codisjoint_interior](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/closure-inter-of-codisjoint-interior.md) | 353 | `result-track:103867e177531b28d0b35eb3198cb4e0a1f9e005d63dd8ff2c7f966f7ce74d9f` |
| 77 | `theorem` | [mem_closure_iff](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/mem-closure-iff.md) | 360 | `result-track:da4ed44a07798697dd8f8eb3b775178b39e550e87ffa5ddf5f9effd527a9b051` |
| 78 | `theorem` | [closure_inter_open_nonempty_iff](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/closure-inter-open-nonempty-iff.md) | 371 | `result-track:3ce5d902c90a5d65b445508f633a83e2cec756395f5baa52cc24ce8fdc6c09b3` |
| 79 | `theorem` | [Filter.le_lift'_closure](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/filter-le-lift-closure.md) | 376 | `result-track:65e5ba3de15dc052a5f9e25ca3778c90c2ed37fafa922d62e1c02cc6e0fab98c` |
| 80 | `theorem` | [Filter.HasBasis.lift'_closure](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/filter-hasbasis-lift-closure.md) | 379 | `result-track:8b1f26f0353032224cf664d2d2c678b087822e2752970b0796a3faab78e9f58c` |
| 81 | `theorem` | [Filter.HasBasis.lift'_closure_eq_self](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/filter-hasbasis-lift-closure-eq-self.md) | 383 | `result-track:8e632f1350793c42844d085c3df8a3d5e11a0318f57eb2634fbce89d2b59841e` |
| 82 | `theorem` | [Filter.lift'_closure_eq_bot](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/filter-lift-closure-eq-bot.md) | 389 | `result-track:6495ffe5a7a2be05960c557e42cf0437cf414e2088f2c19380f51657aa73d95e` |
| 83 | `theorem` | [dense_iff_closure_eq](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/dense-iff-closure-eq.md) | 393 | `result-track:216cdd005745fe7400afb5bc77145ef6944dee31b1fe7207395e23e4eb8c06f7` |
| 84 | `theorem` | [interior_eq_empty_iff_dense_compl](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-eq-empty-iff-dense-compl.md) | 398 | `result-track:24d35ec566282d958b1be2708d5b035a4bcece0529494af7717d00412c25a7e8` |
| 85 | `theorem` | [Dense.interior_compl](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/dense-interior-compl.md) | 401 | `result-track:5a945c3720d6bf7b958fdf738f1b19dd2bd9995f66fbc359d71323c3fbfad219` |
| 86 | `theorem` | [dense_closure](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/dense-closure.md) | 406 | `result-track:397dc1f510de9c9738918a42b5aa2c1ea503ea8bfedccc8c765d56d7b466597f` |
| 87 | `theorem` | [dense_univ](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/dense-univ.md) | 413 | `result-track:b888ebbff2450cd5f571a43c3c08e46e442a5eb1cfc5fa2dfae001cee0bed3cf` |
| 88 | `theorem` | [dense_iff_inter_open](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/dense-iff-inter-open.md) | 416 | `result-track:fea226161a8ca1856641fdda6e911421dbd6423780246233c1f91aaaf6c56119` |
| 89 | `theorem` | [Dense.exists_mem_open](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/dense-exists-mem-open.md) | 428 | `result-track:217e689730aecc3c59de841c140d9d6fbde39822c50b71cf4d4490d69cb51f2a` |
| 90 | `theorem` | [Dense.nonempty_iff](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/dense-nonempty-iff.md) | 433 | `result-track:328ad0e7e41828aeb1e8ba3ea4d5d67f04f51f4c579852eb3a9061ddc145c217` |
| 91 | `theorem` | [Dense.nonempty](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/dense-nonempty.md) | 438 | `result-track:15b4fca137ba9b8e9d15620d3d280f67a5ee785ef9cfff7ce852ec1454738f28` |
| 92 | `theorem` | [Dense.mono](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/dense-mono.md) | 442 | `result-track:6dfee6b2a8d5861204d054172cbe68ee048447d2a05f2a5c564357a5c5909d64` |
| 93 | `lemma` | [DenseRange.of_comp](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/denserange-of-comp.md) | 445 | `result-track:7a4576fba2f365a39c9f1060e35a677cadc6d551ad903a1c376f284ca106f163` |
| 94 | `theorem` | [dense_compl_singleton_iff_not_open](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/dense-compl-singleton-iff-not-open.md) | 450 | `result-track:2e698bac60c7b7bce832c4c4c6a010adcbf8a41cb0c76bc8ef4997c8e46b07d8` |
| 95 | `lemma` | [Dense.induction](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/dense-induction.md) | 461 | `result-track:3e3bfa7f20b8e7919e7fde4b545726c114d1917ebeebcad2b7bc893491d66e01` |
| 96 | `theorem` | [IsOpen.subset_interior_closure](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/isopen-subset-interior-closure.md) | 465 | `result-track:9e933a200dfb54289197dca9247548447387f417747dbcf2d5eb70a9cf07c8e2` |
| 97 | `theorem` | [IsClosed.closure_interior_subset](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/isclosed-closure-interior-subset.md) | 468 | `result-track:bfdb81353e94377dd9d264ab4552295ce61b49b8abe53e8f561b2e316bd3097f` |
| 98 | `theorem` | [closure_interior_idem](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/closure-interior-idem.md) | 471 | `result-track:e7c374d23287f7057925a286471be939433469d1f4fd743076e16d56fc75f920` |
| 99 | `theorem` | [interior_closure_idem](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-closure-idem.md) | 476 | `result-track:388b2ab09ee4a942ce513dc56c1fc9d5d7cfe9cfae50a5120867791f8ac054a4` |
| 100 | `theorem` | [closure_sdiff_interior](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/closure-sdiff-interior.md) | 486 | `result-track:53085d81072fa3eaf7026b63d3fc65830cfbb763625b4d805957769f4348de88` |
| 101 | `lemma` | [disjoint_interior_frontier](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/disjoint-interior-frontier.md) | 492 | `result-track:146920f4eb91135fce9043ccf932573bb2da0e6c9e38aecbe0624466e6926453` |
| 102 | `theorem` | [closure_sdiff_frontier](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/closure-sdiff-frontier.md) | 497 | `result-track:502bc30d7455e600608294fd35af8bff3d6239bce23734b5d8740f51621962e8` |
| 103 | `theorem` | [self_sdiff_frontier](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/self-sdiff-frontier.md) | 503 | `result-track:04e96f4db00eb3b2b24e144db75ba388579fe35625862b69d77b2aa99b2c37df` |
| 104 | `lemma` | [mem_interior_iff_notMem_frontier](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/mem-interior-iff-notmem-frontier.md) | 509 | `result-track:49b2b8716ff9ebdd924796aef9e88e9732fa773beed66f74e5241649369bf95d` |
| 105 | `lemma` | [mem_frontier_iff_notMem_interior](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/mem-frontier-iff-notmem-interior.md) | 513 | `result-track:64ade12db76129906debbae636a88357ec54a8b1cdd1135c75775766ff6480e7` |
| 106 | `theorem` | [frontier_eq_closure_inter_closure](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/frontier-eq-closure-inter-closure.md) | 517 | `result-track:e360255c8190c62f8b0061c2632e7eac35fd44a5d0cebababf2c16c84f4eb45e` |
| 107 | `theorem` | [frontier_subset_closure](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/frontier-subset-closure.md) | 520 | `result-track:bce96a07d16cbe8b44cd9f17b489fbde21ad277b12311e1f48fa6f05dec25f16` |
| 108 | `theorem` | [frontier_subset_iff_isClosed](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/frontier-subset-iff-isclosed.md) | 523 | `result-track:b60150dbc300e7005ea030eecd0227f52650848d19a8cc4b52774810b7b4eaf1` |
| 109 | `theorem` | [frontier_closure_subset](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/frontier-closure-subset.md) | 528 | `result-track:a9766a6bf79c74819ee4b24f644a38db325f8ea31e0fee987f5debf5e01c198b` |
| 110 | `theorem` | [frontier_interior_subset](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/frontier-interior-subset.md) | 531 | `result-track:9bf177a7b51a353ef30c589f346805ae6df16bb3cfa0fcafb0ad2463ea1fcca4` |
| 111 | `theorem` | [frontier_compl](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/frontier-compl.md) | 536 | `result-track:055e3a80445a07918fac508abd32b0fe694e81175519321863da5c7390fddbee` |
| 112 | `theorem` | [frontier_univ](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/frontier-univ.md) | 540 | `result-track:8c065ae49a1c7f8f33680e87e53637527358d3aa6293fda7b0991cd1d7c902cc` |
| 113 | `theorem` | [frontier_empty](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/frontier-empty.md) | 543 | `result-track:df4692b1baf627577f69eade61b30f6061288d62dab7d2290f34c4d7d7099fb9` |
| 114 | `theorem` | [frontier_inter_subset](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/frontier-inter-subset.md) | 545 | `result-track:84bd9f9cfbb9115bdba22e75f9acf3fa3c7abb80f3f5e440ec2cd19298eb12ed` |
| 115 | `theorem` | [frontier_union_subset](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/frontier-union-subset.md) | 552 | `result-track:e4e0458482883c17898c15c6118e025f622923c47fcb2dfd058dddd3c8ddba17` |
| 116 | `lemma` | [Finset.frontier_biUnion_subset](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/finset-frontier-biunion-subset.md) | 556 | `result-track:0ba1c440ce662c6bb22c179d92118cd2580b05ddae40a657536eb9a4f6597e14` |
| 117 | `lemma` | [Set.Finite.frontier_biUnion_subset](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/set-finite-frontier-biunion-subset.md) | 565 | `result-track:7c5e4768b426e373680d48889bfb012d693fe32bf3b314213aada40128153ddd` |
| 118 | `theorem` | [IsClosed.frontier_eq](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/isclosed-frontier-eq.md) | 569 | `result-track:4040a9624486f9ba1f80f565f106074b2d67c94066b4e5c1b0cbe7c28d631649` |
| 119 | `theorem` | [IsOpen.frontier_eq](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/isopen-frontier-eq.md) | 572 | `result-track:9897a3e0f061b2cb7989954d1bf2111378bf2c85d1afc4fbadc28ffd0683af5d` |
| 120 | `theorem` | [IsOpen.inter_frontier_eq](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/isopen-inter-frontier-eq.md) | 575 | `result-track:cf1f1718728b0a581ebcbd3ef2ee9a3cdbd23d7f66e49c9a306ed000b3c0674e` |
| 121 | `theorem` | [disjoint_frontier_iff_isOpen](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/disjoint-frontier-iff-isopen.md) | 578 | `result-track:8e19aceb44a331aadc7cad3aa55ded1e2e94f04b9cb45070eab81142960fe118` |
| 122 | `theorem` | [isClosed_frontier](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/isclosed-frontier.md) | 583 | `result-track:5ad1acdc4305055e96bd86d40f5b25a9e5f628ffe5878ef84e49ecb6e98f28cb` |
| 123 | `theorem` | [interior_frontier](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/interior-frontier.md) | 587 | `result-track:ba1bdb425f205b2dc43d6884f34ba0e8f611db1e99fa114cc7e57e825ad81127` |
| 124 | `theorem` | [closure_eq_interior_union_frontier](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/closure-eq-interior-union-frontier.md) | 595 | `result-track:d1dd59ff568cfbe4f25aa77ded7cb0eabefd58012b10a55bc86a9cef5b304e5f` |
| 125 | `theorem` | [closure_eq_self_union_frontier](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/closure-eq-self-union-frontier.md) | 598 | `result-track:b9a82b54ff0d20dfb101e7c8f6ba78572fe5f5127a6aed3ad1615b6a528dc900` |
| 126 | `theorem` | [Disjoint.frontier_left](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/disjoint-frontier-left.md) | 601 | `result-track:889a64efb41fc713a901736fe76339b0d5f252959d54aa1cba35d247bed86809` |
| 127 | `theorem` | [Disjoint.frontier_right](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/disjoint-frontier-right.md) | 605 | `result-track:7462ea33e2ada731d60f01a7c2a9defdc6efb18f1d315a71fd77b60b995a3d72` |
| 128 | `theorem` | [frontier_eq_inter_compl_interior](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/frontier-eq-inter-compl-interior.md) | 608 | `result-track:7f6a0e1aa4bfab94b8dc5b03535d78e8309cac174f77d7ef755dec5727905201` |
| 129 | `theorem` | [compl_frontier_eq_union_interior](../../../../GeneralTopology/TopologyClosureNamespacedPublic.lean/declarations/compl-frontier-eq-union-interior.md) | 611 | `result-track:df8d02337ea8400857b35c83a5bbdb8a4823d058472b5b586cd57c9cc61a237b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=004912006e3a9100c95ac6124dae9551dba865446db744fb48c42e534f0a188b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Closure/Variant26099c8be1644b0bf6a7081e091bef6b677159a423aaf1e7e791175937c98798.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Closure/Variant26099c8be1644b0bf6a7081e091bef6b677159a423aaf1e7e791175937c98798.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
