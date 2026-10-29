# Verification target: Cluster Pt Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32d060a7d214ef1af4f7a3826a5690059e1aa183",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ClusterPt/Variant97256f9659e179ee0327e4601d3d1e01b520f0d5b8981849a0cd0d97b907c848.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ClusterPtPublic.lean/index.md) · [Full source](../../../../GeneralTopology/ClusterPtPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32d060a7d214ef1af4f7a3826a5690059e1aa183`.

Source path: `GRWTSK/Topology/GeneralTopology/ClusterPt/Variant97256f9659e179ee0327e4601d3d1e01b520f0d5b8981849a0cd0d97b907c848.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ClusterPt/Variant97256f9659e179ee0327e4601d3d1e01b520f0d5b8981849a0cd0d97b907c848.lean.json)

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
| 1 | `lemma` | [ClusterPt.top](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/clusterpt-top.md) | 33 | `result-track:43e1f3c918e12690cd991ff1542b476988dbd5e7fa6f69a744dc68bd337ca8cc` |
| 2 | `theorem` | [clusterPt_sup](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/clusterpt-sup.md) | 35 | `result-track:d3832686525c91fafed8b21da4f08d4769aa7d5b61561958223e52391d2349b4` |
| 3 | `theorem` | [ClusterPt.neBot](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/clusterpt-nebot.md) | 38 | `result-track:77215cf144acf53c3fe0290021ad79caa41bbef8b090c57a8f842090d68f82bf` |
| 4 | `theorem` | [Filter.HasBasis.clusterPt_iff](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/filter-hasbasis-clusterpt-iff.md) | 41 | `result-track:12dce2a3ea8a6b551904fac9316c0d6ae8252a78ea31612ef5e340b8c52b606a` |
| 5 | `theorem` | [Filter.HasBasis.clusterPt_iff_frequently](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/filter-hasbasis-clusterpt-iff-frequently.md) | 46 | `result-track:7e8e34e6795ddf6aa391d44fbc2c2fbd0aa43ddf43807747d103356d570dbee1` |
| 6 | `theorem` | [clusterPt_iff_frequently](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/clusterpt-iff-frequently.md) | 51 | `result-track:134c8a8c1938bf12eb49c50c4512a0ba0b17194d8f22105df65bf55193196cfb` |
| 7 | `theorem` | [ClusterPt.frequently](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/clusterpt-frequently.md) | 54 | `result-track:65925f4e4d1c9af63c0e9e5ad1d7f05edec149d55c2533bcfb60e7241668725a` |
| 8 | `theorem` | [Filter.HasBasis.clusterPt_iff_frequently'](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/filter-hasbasis-clusterpt-iff-frequently-source-edition-2.md) | 58 | `result-track:bd463cf740cef1cc74e29e9e6452c2a3c36ce9b8e98618a199422f2aad9faf2c` |
| 9 | `theorem` | [clusterPt_iff_frequently'](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/clusterpt-iff-frequently-source-edition-2.md) | 63 | `result-track:b8f2816051e6a0ac74b836a85189e7d1142af8aa9ede98585522bcd2559bb419` |
| 10 | `theorem` | [ClusterPt.frequently'](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/clusterpt-frequently-source-edition-2.md) | 66 | `result-track:781e4c081b00d0530cea666c07685c10224c730b95b36b42d280dd83fea4a4b9` |
| 11 | `theorem` | [clusterPt_iff_nonempty](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/clusterpt-iff-nonempty.md) | 70 | `result-track:dc2ae0e7f154465e08ec782646c21243d51eb4adad715108dc3859a5aa373712` |
| 12 | `theorem` | [clusterPt_iff_not_disjoint](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/clusterpt-iff-not-disjoint.md) | 74 | `result-track:6db17a9588117cb463ce63178bf92e2bdffe8a39c92957394101d14230a516da` |
| 13 | `theorem` | [Filter.HasBasis.clusterPt_iff_forall_mem_closure](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/filter-hasbasis-clusterpt-iff-forall-mem-closure.md) | 78 | `result-track:a5d2557b810150ec38e7a5e82f9a40a60f13536234b244325b31ee1f2df0bf12` |
| 14 | `theorem` | [clusterPt_iff_forall_mem_closure](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/clusterpt-iff-forall-mem-closure.md) | 84 | `result-track:876b2ef78e5194836115315be392a770524b259ce102775ea5f52d0d097f247d` |
| 15 | `theorem` | [clusterPt_principal_iff](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/clusterpt-principal-iff.md) | 92 | `result-track:52b8380e3d15f67080253cc4150fd1f251e62a9fa8541b391c23264aa2aff5c4` |
| 16 | `theorem` | [clusterPt_principal_iff_frequently](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/clusterpt-principal-iff-frequently.md) | 96 | `result-track:945bbab1aed5130e1c4600ec2713813e4484dc3dc3cc90817633a6c5e39098ee` |
| 17 | `theorem` | [ClusterPt.of_le_nhds](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/clusterpt-of-le-nhds.md) | 100 | `result-track:227c3373a261ecd7d6b761f0b790ba7910775eef53b79d8ba4144b97d2612bf2` |
| 18 | `theorem` | [ClusterPt.of_le_nhds'](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/clusterpt-of-le-nhds-source-edition-2.md) | 103 | `result-track:8febed652e08af88194991c7ad9400df721555240a3315f7fff563eaab90b4f0` |
| 19 | `theorem` | [ClusterPt.of_nhds_le](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/clusterpt-of-nhds-le.md) | 107 | `result-track:42f875478b8a02be6a94054277f06404b21f4c3861368bf44bc89e0c503292a7` |
| 20 | `theorem` | [ClusterPt.mono](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/clusterpt-mono.md) | 110 | `result-track:56e7c032289ff0fd1ddd7dfc60e41528cf67bd164ae9d1ff6ec36509b3c4513b` |
| 21 | `theorem` | [ClusterPt.of_inf_left](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/clusterpt-of-inf-left.md) | 113 | `result-track:708761c1857418a1d1c88ef913ca1788e4dfcd2e5e61c87de25888579378f7fe` |
| 22 | `theorem` | [ClusterPt.of_inf_right](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/clusterpt-of-inf-right.md) | 116 | `result-track:863ebfc133545adc7f15f361002e37fafb88c1d2c53528e8f80567d536a1fde4` |
| 23 | `theorem` | [mapClusterPt_def](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/mapclusterpt-def.md) | 124 | `result-track:497cbcdef56f820b5df30017df21a98e7a6e9592f497977055e0a6e9794c6a19` |
| 24 | `theorem` | [Filter.EventuallyEq.mapClusterPt_iff](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/filter-eventuallyeq-mapclusterpt-iff.md) | 127 | `result-track:d3932b3cba3774b229a8b2b940bbd5debc1e5c1ac66d57e22626091ac8ea80ff` |
| 25 | `theorem` | [MapClusterPt.mono](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/mapclusterpt-mono.md) | 133 | `result-track:f44bef3fc353e22b603f442f340a33f2d6904a53a5b057f15aa94e55322237f3` |
| 26 | `theorem` | [MapClusterPt.tendsto_comp'](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/mapclusterpt-tendsto-comp-source-edition-2.md) | 137 | `result-track:f34d8b3d5afab76eecf33fe52de7fbddf57bc9b59cf759325d92ad3b5b2379dd` |
| 27 | `theorem` | [MapClusterPt.tendsto_comp](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/mapclusterpt-tendsto-comp.md) | 141 | `result-track:8754c70118e5fd7a31d6f95ff56798821eea416bab63d3ba1d9955511d5c3fef` |
| 28 | `theorem` | [mapClusterPt_id_iff](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/mapclusterpt-id-iff.md) | 145 | `result-track:997af72033d16a9a89f9f2d4de760900d673a24dd76b071b7ef51b12a17f82fb` |
| 29 | `theorem` | [MapClusterPt.continuousAt_comp](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/mapclusterpt-continuousat-comp.md) | 150 | `result-track:05076c78fc7db165f051a41afacb8fa87a342c71336e0fa2809ed376b967ecf1` |
| 30 | `theorem` | [ContinuousAt.mapClusterPt](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/continuousat-mapclusterpt.md) | 154 | `result-track:a7f6244d4d10d6d3190a75bc0d5d142040ccd6fbe618d521721c384aed516781` |
| 31 | `theorem` | [Filter.HasBasis.mapClusterPt_iff_frequently](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/filter-hasbasis-mapclusterpt-iff-frequently.md) | 158 | `result-track:4617eee30d4e364b8f6378c4afc6ab89ca33385d36b0d79e18d81cec4861b441` |
| 32 | `theorem` | [mapClusterPt_iff_frequently](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/mapclusterpt-iff-frequently.md) | 162 | `result-track:e2918fcec4b54c2ee40401ccd00285b4bc0c63a6121bbfaee8b3058c88771f2f` |
| 33 | `theorem` | [MapClusterPt.frequently](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/mapclusterpt-frequently.md) | 165 | `result-track:2ba61e9b5e2c2fd49d6ebf1734e69c55452231ff40bf2c322994142405bd00df` |
| 34 | `theorem` | [mapClusterPt_comp](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/mapclusterpt-comp.md) | 169 | `result-track:ccba0c28442bc6dab82772367877be19552f01acceb0b7b7abc2a49046dd6533` |
| 35 | `theorem` | [Filter.Tendsto.mapClusterPt](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/filter-tendsto-mapclusterpt.md) | 172 | `result-track:9e88092af4a532d52a0cc0218266b05ad103a5cdd46ca641d6db67a79025e98f` |
| 36 | `theorem` | [MapClusterPt.of_comp](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/mapclusterpt-of-comp.md) | 175 | `result-track:a0d068a4f3105bf22aa54365b073235b9daddd80a3727f3a86631342850cedd2` |
| 37 | `theorem` | [IsClosed.mem_of_mapClusterPt](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/isclosed-mem-of-mapclusterpt.md) | 179 | `result-track:bb7022729d1ed0cbcfbbc3e7dbb54077fee4df41cd9a9e2eb5f775d638d7d3f3` |
| 38 | `theorem` | [mapClusterPt_atTop_iff_forall_mem_closure](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/mapclusterpt-attop-iff-forall-mem-closure.md) | 185 | `result-track:aeae480806553c50dba02c6040e26a1b0502d0b189f4487b119a5119daabbc13` |
| 39 | `theorem` | [accPt_sup](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/accpt-sup.md) | 192 | `result-track:7b57ed9e62d7cfd30966b821d512f2e107f43eda287c30c5b82abcd5ed8c13e0` |
| 40 | `theorem` | [accPt_iff_clusterPt](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/accpt-iff-clusterpt.md) | 196 | `result-track:c8b04222f0d24d29b71fcdeb096aeb2b0f399fbf04a637952791f8017f0b8d26` |
| 41 | `theorem` | [accPt_principal_iff_clusterPt](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/accpt-principal-iff-clusterpt.md) | 200 | `result-track:8a8ba90118f3f605fab2b8b1ce044dd67e15c1fe0b1c2ceb8b1acd090c3ad4ca` |
| 42 | `theorem` | [accPt_iff_nhds](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/accpt-iff-nhds.md) | 206 | `result-track:28d3bddc1d9581efa8ae53adc099132439388ce01fcd1e6a1cda9d12d8b686ce` |
| 43 | `theorem` | [accPt_iff_frequently](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/accpt-iff-frequently.md) | 212 | `result-track:d3b19b578c8dfd84846b35a73d47937c64d650859a6a25d2cab93958fd1335b4` |
| 44 | `theorem` | [accPt_iff_frequently_nhdsNE](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/accpt-iff-frequently-nhdsne.md) | 219 | `result-track:92ea4d6ec073db0a9afafebf0426ed22dbf1e4b95fac52cf8d667f30a13fab16` |
| 45 | `theorem` | [accPt_principal_iff_nhdsWithin](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/accpt-principal-iff-nhdswithin.md) | 227 | `result-track:ada94f71fc72c2ca5f26b6e6ed45287c7fbc4cc39d9bf68a1394c7719267118f` |
| 46 | `theorem` | [AccPt.mono](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/accpt-mono.md) | 232 | `result-track:da341eaeae4af007e9e93769b9de434c7d8700594c4869c52ffbb80a9bc9d017` |
| 47 | `theorem` | [AccPt.clusterPt](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/accpt-clusterpt.md) | 235 | `result-track:c66b34d001169aea2a2dfdf5eea9d56da9a3c8f4643c853b64de0c3add50d512` |
| 48 | `theorem` | [clusterPt_principal](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/clusterpt-principal.md) | 238 | `result-track:7515d56bd9cf4c297a39e41cf2cdb3c0645865fc64c7ae2e7402ed9711475703` |
| 49 | `theorem` | [isClosed_setOfPred_clusterPt](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/isclosed-setofpred-clusterpt.md) | 251 | `result-track:aff71290fd35b88dfe48ea3c2c2b748b5f172fd5895c3d11cc1c628198ab5ad8` |
| 50 | `theorem` | [mem_closure_iff_clusterPt](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/mem-closure-iff-clusterpt.md) | 257 | `result-track:481d77d93fd24a84a54a716373c31765227e9bd7c4a0b6961fc51a62654cefa0` |
| 51 | `theorem` | [mem_closure_iff_nhds_ne_bot](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/mem-closure-iff-nhds-ne-bot.md) | 262 | `result-track:6014fbb63fd71032350de50782f11a674acadfa9547aa5d0fd62b1e3fa438315` |
| 52 | `theorem` | [mem_closure_iff_nhdsWithin_neBot](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/mem-closure-iff-nhdswithin-nebot.md) | 265 | `result-track:fc20738032b95f826f3408d1e0bc4e8c41d0e32e0b3e67173b59b44beb6ef79e` |
| 53 | `lemma` | [notMem_closure_iff_nhdsWithin_eq_bot](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/notmem-closure-iff-nhdswithin-eq-bot.md) | 268 | `result-track:5b6b350bbc541fc722ce30f2ac8096d95cdc518c4045199be7c5e659a2423d30` |
| 54 | `theorem` | [mem_interior_iff_not_clusterPt_compl](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/mem-interior-iff-not-clusterpt-compl.md) | 271 | `result-track:dabf7d4f6cc70bdfc15f870f9ee8fad5413311cb86dbc940dadb89297c311183` |
| 55 | `theorem` | [dense_compl_singleton](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/dense-compl-singleton.md) | 276 | `result-track:a8cc918f8d1476a702aa0ad5e47771a7dd3e7e99bdc050d2cfb5f0bcf2e1fa18` |
| 56 | `theorem` | [closure_compl_singleton](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/closure-compl-singleton.md) | 284 | `result-track:dd6c03930e85afc1f90f7dbc3e99c15f59ec16ad13ab8f7ff396758a1e52fea0` |
| 57 | `theorem` | [interior_singleton](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/interior-singleton.md) | 289 | `result-track:19047a79b185718382b1acaf6e355f9b5e6e8aff21c4b9a50257a9a98f7e53cb` |
| 58 | `theorem` | [not_isOpen_singleton](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/not-isopen-singleton.md) | 292 | `result-track:03d2aedda27bcde1dd32f662684e288052e5ed73eeecdc7bc2e525f286565e4c` |
| 59 | `theorem` | [closure_eq_cluster_pts](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/closure-eq-cluster-pts.md) | 295 | `result-track:920b50272ab44854cf3d6b127314ef952a1ba804f94d94d1762fd2f26bf2d668` |
| 60 | `theorem` | [mem_closure_iff_nhds](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/mem-closure-iff-nhds-source-edition-2.md) | 298 | `result-track:df0f972168d7eaf86686626d256ad10b83b18d2700b4a5a03a1428f6394fddc0` |
| 61 | `theorem` | [mem_closure_iff_nhds'](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/mem-closure-iff-nhds.md) | 301 | `result-track:0dd26e6aa68da959ed46f0f41318ce7be587c51b88a5bd251a5633d6a78e52d1` |
| 62 | `theorem` | [mem_closure_iff_comap_neBot](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/mem-closure-iff-comap-nebot.md) | 304 | `result-track:79d820a8660efbb214334fb262c8bb885d44d9db986a8d5511e0fd9ddc5d32b3` |
| 63 | `theorem` | [mem_closure_iff_nhds_basis'](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/mem-closure-iff-nhds-basis.md) | 309 | `result-track:682d34618be88ddde9208ccfb40552e065970312da8d8ab253a3b3555c764e3e` |
| 64 | `theorem` | [mem_closure_iff_nhds_basis](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/mem-closure-iff-nhds-basis-source-edition-2.md) | 314 | `result-track:95cd458c0d4181960a89b5d3e3a5ebab3fa7995e246d10c01076d0ec64be0985` |
| 65 | `theorem` | [clusterPt_iff_lift'_closure](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/clusterpt-iff-lift-closure-source-edition-2.md) | 319 | `result-track:7f0d032d07785ed4359fd1ca5c0526e8012bf85fffe07985ea011b336b071c5e` |
| 66 | `theorem` | [clusterPt_iff_lift'_closure'](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/clusterpt-iff-lift-closure.md) | 325 | `result-track:660f14c0122c2d92fde0a7e2b0d8f1a4b3e48e0bf5a9772c36e2a30a4322ce2a` |
| 67 | `theorem` | [clusterPt_lift'_closure_iff](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/clusterpt-lift-closure-iff.md) | 336 | `result-track:1626bb820d6b71416c67ff681202c0427de035d2bdd913fd778d5cc300a736f8` |
| 68 | `theorem` | [isClosed_iff_clusterPt](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/isclosed-iff-clusterpt.md) | 340 | `result-track:186c2ab7ea552a27b43ea60476e87bd7ff2e402b437bb376830a1cacee029e50` |
| 69 | `theorem` | [isClosed_iff_accPt](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/isclosed-iff-accpt.md) | 345 | `result-track:f9c737293f966bcd233f39796f11b4fffaaab4bd3ad74242f972255248db9677` |
| 70 | `theorem` | [isClosed_iff_nhds](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/isclosed-iff-nhds.md) | 348 | `result-track:dd350c2d52e6efa86d68716c1b819a4dbd14a9bb4d52948c0eea8012e6a7f2a2` |
| 71 | `lemma` | [isClosed_iff_forall_filter](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/isclosed-iff-forall-filter.md) | 352 | `result-track:17941c0b80a70ba82c757a2cabf9ad27074075d2ce80bbd01d23335e25a63792` |
| 72 | `theorem` | [mem_closure_of_mem_closure_union](../../../../GeneralTopology/ClusterPtPublic.lean/declarations/mem-closure-of-mem-closure-union.md) | 358 | `result-track:170c36279a5d7a38f61197c73f25034dd0b7b2c5d64e55cf6b6497f844cb0a20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0499c4a76879ff7abc7565ba51190e5fe1fc80d07fd0d4baacbf6d26b82876d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ClusterPt/Variant97256f9659e179ee0327e4601d3d1e01b520f0d5b8981849a0cd0d97b907c848.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ClusterPt/Variant97256f9659e179ee0327e4601d3d1e01b520f0d5b8981849a0cd0d97b907c848.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
