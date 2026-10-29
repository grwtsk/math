# Verification target: Connected Path Connected

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0178f8796b28d415eff41b94d90a20167bb59ddd",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PathConnected/Variante6dc7afb8a9ff7929836908cfba6a78b65c03933a84a8dd96ca310f22c78733d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ConnectedPathConnected.lean/index.md) · [Full source](../../../../GeneralTopology/ConnectedPathConnected.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0178f8796b28d415eff41b94d90a20167bb59ddd`.

Source path: `GRWTSK/Topology/GeneralTopology/PathConnected/Variante6dc7afb8a9ff7929836908cfba6a78b65c03933a84a8dd96ca310f22c78733d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PathConnected/Variante6dc7afb8a9ff7929836908cfba6a78b65c03933a84a8dd96ca310f22c78733d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Path` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Joined](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joined.md) | 56 | `declaration-track:9518bbb4955ce6d2aea8bcbcc20538ca9b74369529a2476e91194fa099614c9e` |
| 2 | `theorem` | [Joined.refl](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joined-refl.md) | 60 | `result-track:fb0b1afad69526468fe9e45e881fb5ce44f6b3086b54e38133d25e5817b64380` |
| 3 | `def` | [Joined.somePath](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joined-somepath.md) | 64 | `declaration-track:37c40d46ac16c135b8b73524d6bf9c788462e7c4e1f8717f66998542b1008f74` |
| 4 | `theorem` | [Joined.symm](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joined-symm.md) | 68 | `result-track:30c26c411f1914214f43297ac7a21751a52503adc9b950a416811c1ea77756dd` |
| 5 | `theorem` | [Joined.trans](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joined-trans.md) | 72 | `result-track:f53d918a4fb5b71b01794f1d2e03d551216618366b4f4e4ae021b3f7e9a5fda8` |
| 6 | `theorem` | [Joined.mul](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joined-mul.md) | 76 | `result-track:7d42c646746e13367ca5cf0ff2335d4f9bd524be927560af939d6824773ed53d` |
| 7 | `def` | [pathSetoid](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/pathsetoid.md) | 83 | `declaration-track:bbdf0c65bde4b0f056ac597036951da9775622582d68ff5159c1b9e140f4144b` |
| 8 | `def` | [ZerothHomotopy](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/zerothhomotopy.md) | 88 | `declaration-track:8c4c7dda169ceb34e884f0b005870bad23ed40e1f1729bedd61060c423c93636` |
| 9 | `instance` | [ZerothHomotopy.inhabited](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/zerothhomotopy-inhabited.md) | 91 | `declaration-track:0878835f3f75ea76607153146503ad64c89ade0293375fae3dfd9854e4bc2c80` |
| 10 | `def` | [JoinedIn](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joinedin.md) | 101 | `declaration-track:65cf779290f22ffa6bd9c1976da7dbe01508ce40c678d3f3f04366de4e4cd47e` |
| 11 | `theorem` | [JoinedIn.mem](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joinedin-mem.md) | 106 | `result-track:cbf35d0c352de2a3e60f72fd95cf5132e5c3532ad391264e202a2732dfd4110a` |
| 12 | `theorem` | [JoinedIn.source_mem](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joinedin-source-mem.md) | 111 | `result-track:09e9550160e02ea62b8baa0fd8870fd077370531c888f4e0e74932d072b1451f` |
| 13 | `theorem` | [JoinedIn.target_mem](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joinedin-target-mem.md) | 114 | `result-track:52dc17b193b9382393577f6c8af211247d5e15253fd5fcb633be71dbde7df817` |
| 14 | `def` | [JoinedIn.somePath](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joinedin-somepath.md) | 118 | `declaration-track:cd664e693f5cbdd612fe36150ddfbc96b692f919bc397c08056721e3049b0e19` |
| 15 | `theorem` | [JoinedIn.somePath_mem](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joinedin-somepath-mem.md) | 121 | `result-track:f9550915d677d104f3e1574530bbba7e8635320b68fef3b6cd83f731fd73a488` |
| 16 | `theorem` | [JoinedIn.joined_subtype](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joinedin-joined-subtype.md) | 125 | `result-track:8b1a7669c8783360d0430bc5da3d56048b2f173d3c3d2616d789a0e16c6e57ad` |
| 17 | `theorem` | [JoinedIn.ofLine](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joinedin-ofline.md) | 132 | `result-track:0d2384fd11d6764337dcbdca117ac4317d5aee5f38be0edc1843d4ee5cd9aa24` |
| 18 | `theorem` | [JoinedIn.joined](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joinedin-joined.md) | 136 | `result-track:c59315b11ea76400f5dea5f0510c0fd289473f5d495fa2de58c1530812e28a12` |
| 19 | `theorem` | [joinedIn_iff_joined](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joinedin-iff-joined.md) | 139 | `result-track:5f14e6fe2cae6961833de79113c9aa7130a3af9b3ed0339e8838e66cc45bcf95` |
| 20 | `theorem` | [joinedIn_univ](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joinedin-univ.md) | 144 | `result-track:1fedf605c7e6ebfee7cc654fca164a20c14922dd3021d131990cfb51f60afbdb` |
| 21 | `theorem` | [JoinedIn.mono](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joinedin-mono.md) | 147 | `result-track:154b7bc7d501de23e830080a8bad76fa5fa2f4bb2dd61cc5a3e9b2369bdbb2df` |
| 22 | `theorem` | [JoinedIn.refl](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joinedin-refl.md) | 150 | `result-track:db64dab70c0f5e6909b77d658e2692a08be7ec8c8b6d486a281f4dac404aa7f8` |
| 23 | `theorem` | [JoinedIn.symm](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joinedin-symm.md) | 154 | `result-track:3f1c58e678c06bf73b65c1a902d7198345f441db2c28af09a2af0ca1d1f79169` |
| 24 | `theorem` | [JoinedIn.trans](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joinedin-trans.md) | 159 | `result-track:ac921d8c53fa3df1095540669452e83a9efce2aa9e5aac5910798be287a7eca4` |
| 25 | `theorem` | [Specializes.joinedIn](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/specializes-joinedin.md) | 165 | `result-track:5ce14bbd5797b7cef77be3c04a6f5206afe53d12fee24ad5a1e2480b7b6c2b21` |
| 26 | `theorem` | [Inseparable.joinedIn](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/inseparable-joinedin.md) | 172 | `result-track:b73161b5bbd6efafc0be2d33a8b9b16930f92167c7eab7bb94acd22c76040fb0` |
| 27 | `theorem` | [JoinedIn.map_continuousOn](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joinedin-map-continuouson.md) | 175 | `result-track:a33c69fe6ff3e0a0d60e0ebfbedb337ac4052c9e161af01a9d5ee23df2c4d3fb` |
| 28 | `theorem` | [JoinedIn.map](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joinedin-map.md) | 180 | `result-track:973b44c497ca7eb20b52c7b6dae0d84813605fb62b94f1a69896637c72d23021` |
| 29 | `theorem` | [Topology.IsInducing.joinedIn_image](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/topology-isinducing-joinedin-image.md) | 184 | `result-track:ff7184ee9c85b7b1f0a1a9b54052c2775e290b5b918156bdfb6d785979de9ebb` |
| 30 | `theorem` | [JoinedIn.mul](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joinedin-mul.md) | 199 | `result-track:0101fad8307a9a9505a1f49c7549fd9c2acffa2b15c217d828616763a7f06ccc` |
| 31 | `def` | [pathComponent](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/pathcomponent.md) | 207 | `declaration-track:9e5832346327a22a5b1e6645f93257cab1258e4c0a68c2e1904e5e3d8715ff24` |
| 32 | `theorem` | [mem_pathComponent_iff](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/mem-pathcomponent-iff.md) | 210 | `result-track:795e795513f2a26d7c9e42e704a5028389c83cc11f88f1f7325bc5ec5ffc5dc4` |
| 33 | `theorem` | [mem_pathComponent_self](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/mem-pathcomponent-self.md) | 213 | `result-track:9e9cbdb8858f002ec497f7393fae973e0d6db9d8396fba271396ac025e4b54bf` |
| 34 | `theorem` | [pathComponent.nonempty](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/pathcomponent-nonempty.md) | 217 | `result-track:07f47758cb7c817d4746db222d4abc2772c65acb5183dfcbd6ca29f8ae32246d` |
| 35 | `theorem` | [mem_pathComponent_of_mem](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/mem-pathcomponent-of-mem.md) | 220 | `result-track:5ed4b4530a148d0a98a22124eb2e6ec49afa47443f1d361c5bd746780a015358` |
| 36 | `theorem` | [pathComponent_symm](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/pathcomponent-symm.md) | 223 | `result-track:fe6b677e852350bad636da5bcaf24ea30338ae891214b81c26fec6d0824e2778` |
| 37 | `theorem` | [pathComponent_congr](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/pathcomponent-congr.md) | 226 | `result-track:1260cf0b90cd7d97f5553543355dbb09f61c7d450d2469ab7fff0e0ac8b5961b` |
| 38 | `theorem` | [pathComponent_subset_component](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/pathcomponent-subset-component.md) | 236 | `result-track:b4bb9de16e150112d9d19fb8774e0ac641f09bd4aab5209ca0ac4bd5c73dc02f` |
| 39 | `def` | [pathComponentIn](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/pathcomponentin.md) | 241 | `declaration-track:1183238d43581d864c3ee67f4dfa51a3cd2cf24ccbbd348d1a7974a25901fc81` |
| 40 | `theorem` | [pathComponentIn_univ](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/pathcomponentin-univ.md) | 245 | `result-track:1451c97cd0ec7ddf5f17e2bf7e25937fe30743a7e2d3dc81b80ef2ef2a8c80c7` |
| 41 | `theorem` | [Joined.mem_pathComponent](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/joined-mem-pathcomponent.md) | 248 | `result-track:6df822c047d10f68dda31e429c317d1f64e6df224e1cf1f92b6273382ac98c38` |
| 42 | `theorem` | [mem_pathComponentIn_self](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/mem-pathcomponentin-self.md) | 252 | `result-track:67effb8a932c584594b37aa38413ee446bae4b9504987dee7e045c89ab8ed02b` |
| 43 | `theorem` | [pathComponentIn_subset](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/pathcomponentin-subset.md) | 255 | `result-track:6eb9e6c6af752514267c0975ba9aac5d031c55ecde51f9046394b1b679277773` |
| 44 | `theorem` | [pathComponentIn_nonempty_iff](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/pathcomponentin-nonempty-iff.md) | 258 | `result-track:62e0dac504dce5009c3b3474fc6315086613cc49fcd1f556aafbc83fd3972175` |
| 45 | `theorem` | [pathComponentIn_congr](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/pathcomponentin-congr.md) | 261 | `result-track:fc67dcdb4d671f15eecf3e885f719fc853e21e22e7dde5efa998b096e99b85fe` |
| 46 | `theorem` | [pathComponentIn_mono](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/pathcomponentin-mono.md) | 266 | `result-track:1b6217e5b8a34d4b193ea396446e8375200203257e7d8a7fe3b0efc2e9336717` |
| 47 | `def` | [IsPathConnected](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/ispathconnected.md) | 274 | `declaration-track:5d520010b0667fd23536b3417ba6e305bfc88147387eca8578f9e35b515e5869` |
| 48 | `theorem` | [isPathConnected_iff_eq](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/ispathconnected-iff-eq.md) | 277 | `result-track:bda61ead405c6200a016063a472ea424e64ffe223cd58c7c9ce37a5bd129bb05` |
| 49 | `theorem` | [IsPathConnected.joinedIn](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/ispathconnected-joinedin.md) | 284 | `result-track:b09e015ce3f7ed4ecc82f7798affa7fbcd561caa67400315ba2cdd9695168021` |
| 50 | `theorem` | [isPathConnected_iff](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/ispathconnected-iff.md) | 289 | `result-track:615a0f80a49e322ce05370d8f642c04a48c50058b8ee00c6a9aec42cc742791d` |
| 51 | `theorem` | [IsPathConnected.image'](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/ispathconnected-image-source-edition-2.md) | 296 | `result-track:113975b6729ddd28be089ca28869027c5a6727d8288660e45ae65e31d81ad372` |
| 52 | `theorem` | [IsPathConnected.image](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/ispathconnected-image.md) | 305 | `result-track:0e342bf6861633e2e39d8d1d8e82904e242e677c0acb794012f289920230fdda` |
| 53 | `theorem` | [IsPathConnected.mul](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/ispathconnected-mul.md) | 310 | `result-track:36ae7c213e9104ee45abd7ca42228edbd03be680c0db99a3e30de2bf3cab13b1` |
| 54 | `theorem` | [Topology.IsInducing.isPathConnected_iff](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/topology-isinducing-ispathconnected-iff.md) | 317 | `result-track:e66eaf9ecf9cac9fee97674cb94176b43cff394a40582435dcc8dd7c9f273a71` |
| 55 | `theorem` | [Homeomorph.isPathConnected_image](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/homeomorph-ispathconnected-image.md) | 328 | `result-track:6ba7e27a29e62276496743f9b3f846040797f3a19b5ca29426f5802018700099` |
| 56 | `theorem` | [Homeomorph.isPathConnected_preimage](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/homeomorph-ispathconnected-preimage.md) | 334 | `result-track:f27384aad1ed3a2549ab8767c18031c6d239db7cafc928b108299b38cd8eccc4` |
| 57 | `theorem` | [IsPathConnected.mem_pathComponent](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/ispathconnected-mem-pathcomponent.md) | 338 | `result-track:fc66cd564645fea6eae392cab56f4cffae68405da279fb559df2d6b0c193d707` |
| 58 | `theorem` | [IsPathConnected.subset_pathComponent](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/ispathconnected-subset-pathcomponent.md) | 342 | `result-track:f8d8cf60342b8ae8719116b46b2980b50a35c95addf57375949915d54d4d16d6` |
| 59 | `theorem` | [IsPathConnected.subset_pathComponentIn](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/ispathconnected-subset-pathcomponentin.md) | 345 | `result-track:08a9a30e93659bae8023f570d84c6abc837cae3771b8c69f79334e2477935c33` |
| 60 | `theorem` | [isPathConnected_singleton](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/ispathconnected-singleton.md) | 349 | `result-track:e40405ec209e88fdc46d079245bfb420aa9fb1b774a76059a0aff156215c2181` |
| 61 | `theorem` | [isPathConnected_pathComponentIn](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/ispathconnected-pathcomponentin.md) | 354 | `result-track:bc3493c5255550d56cc32c1ab3d06761634a5b274074be0eee29c7e7b351204d` |
| 62 | `theorem` | [isPathConnected_pathComponent](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/ispathconnected-pathcomponent.md) | 361 | `result-track:6ac27608d46fb894f23079accf82239f31c27e7559a4900ec42a87ef5fbdc73a` |
| 63 | `theorem` | [IsPathConnected.union](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/ispathconnected-union.md) | 365 | `result-track:55537ece52343d73a495081e3f18581c51b227a2ac26bf76a46bddf7d18a209b` |
| 64 | `theorem` | [IsPathConnected.preimage_coe](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/ispathconnected-preimage-coe.md) | 375 | `result-track:b06514eaf07fccc144eb5d0bfd94bbe95560e7d4ace19ae74fd30550adec6ea1` |
| 65 | `theorem` | [IsPathConnected.exists_path_through_family](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/ispathconnected-exists-path-through-family.md) | 379 | `result-track:8a9fdc7269ff0095d86176f295172de163d862c750f1923e29dfcc2590a75134` |
| 66 | `theorem` | [IsPathConnected.exists_path_through_family'](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/ispathconnected-exists-path-through-family-source-edition-2.md) | 436 | `result-track:b583e949554eab53b4bea2d207eee18632d0a67a7a04aa1c256bd81551db6538` |
| 67 | `class` | [PathConnectedSpace](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/pathconnectedspace.md) | 452 | `declaration-track:b1a5f72b9b31081705f3d5ea39782fbe175ae636c4ddc63b68fe88d2681467e9` |
| 68 | `theorem` | [pathConnectedSpace_iff_zerothHomotopy](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/pathconnectedspace-iff-zerothhomotopy.md) | 458 | `result-track:da30e901452617a4415421bbcd22a5429a05155081219d80f58bb45674a7dbfc` |
| 69 | `def` | [somePath](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/somepath.md) | 475 | `declaration-track:7b5f6116405f903c91b0e1787ae3cac0086552a5a793d11b35a9d5eaac5e2ac3` |
| 70 | `theorem` | [pathConnectedSpace_iff_univ](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/pathconnectedspace-iff-univ.md) | 480 | `result-track:4a737ea8ea8c50f737ab6fc19490390b2cb717b4b06b664c69e91aa46a5b06aa` |
| 71 | `theorem` | [isPathConnected_iff_pathConnectedSpace](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/ispathconnected-iff-pathconnectedspace.md) | 483 | `result-track:bb07f908b92c7aa303d1c4fd40e5c3acad98f5daaa969ed2e0ad493bd397dc60` |
| 72 | `theorem` | [isPathConnected_univ](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/ispathconnected-univ.md) | 487 | `result-track:2b462fc0cb0f6ee6a8d494abdb2faf0925cef6bb09bc10988e1a00fe62f26296` |
| 73 | `theorem` | [isPathConnected_range](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/ispathconnected-range.md) | 490 | `result-track:a6e1d395faa4142887fab371d561d4e2625e5cd9484a92c51b52481f9c8a14ea` |
| 74 | `theorem` | [Function.Surjective.pathConnectedSpace](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/function-surjective-pathconnectedspace.md) | 495 | `result-track:3761e4560279f757baf1d8e0155277d8fedc371f909b6596cd70b5afa6787cab` |
| 75 | `instance` | [Quotient.instPathConnectedSpace](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/quotient-instpathconnectedspace.md) | 500 | `declaration-track:a329a3e76b9d04b7483784842e93c0d9ff862c77cfe203008931b9906698350e` |
| 76 | `instance` | [Real.instPathConnectedSpace](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/real-instpathconnectedspace.md) | 506 | `declaration-track:6758b2b48ea9d605d8edf3daf3a57346e7b39db359a162813ddb63f43c501051` |
| 77 | `theorem` | [pathConnectedSpace_iff_eq](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/pathconnectedspace-iff-eq.md) | 510 | `result-track:ca136ea14f5e8a75b398b83c751403b7527727adec5acf9ba4ec9546091c9d12` |
| 78 | `instance` | [(anonymous)](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/instance.md) | 514 | `declaration-track:05330625d350675cf372803915e4f0f2f8f23c630a80e2b8cb564b7b4ec31d69` |
| 79 | `theorem` | [IsPathConnected.isConnected](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/ispathconnected-isconnected.md) | 522 | `result-track:54907e62e16432cefe9277bf0063351e1d4f19543343662d4ff3dd6047d638d1` |
| 80 | `theorem` | [exists_path_through_family](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/exists-path-through-family-source-edition-2.md) | 531 | `result-track:b721024646951638882beb598942b42f76c67a1d89ea7cb396ccca1d7fce969b` |
| 81 | `theorem` | [exists_path_through_family'](../../../../GeneralTopology/ConnectedPathConnected.lean/declarations/exists-path-through-family.md) | 537 | `result-track:0b9058881ee5e8930aa1bfba6849f9f4ae7c49b666a4cf5920ff7c4188f26ede` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=651c86c1800d338f8eee9507f8e50bcf5c09138f539160fc47358b56f1b4a551 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PathConnected/Variante6dc7afb8a9ff7929836908cfba6a78b65c03933a84a8dd96ca310f22c78733d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/PathConnected/Variante6dc7afb8a9ff7929836908cfba6a78b65c03933a84a8dd96ca310f22c78733d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
