# Verification target: Connectivity Subgraph To Subgraph

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19ffc80dc494ae5c89f9ef5cf63cbdc2693c442b",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantac0731d262823ab6996f7c5ddb50517623a20f9ec6e78507948416c8ec3b5663.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19ffc80dc494ae5c89f9ef5cf63cbdc2693c442b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantac0731d262823ab6996f7c5ddb50517623a20f9ec6e78507948416c8ec3b5663.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantac0731d262823ab6996f7c5ddb50517623a20f9ec6e78507948416c8ec3b5663.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Path` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Card` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Preconnected](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/preconnected.md) | 29 | `declaration-track:6a614cb79eaa878685e7774838a10ddcdc9ef2b64178274a72409c94be06faa4` |
| 2 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/instance-source-edition-3.md) | 32 | `declaration-track:94f811ad9553c3ba90cad9b0eaa2ab5d6507b52e183b092b9f847839c5bc542d` |
| 3 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/instance-source-edition-2.md) | 34 | `declaration-track:544fc555d0be7afd2029e8353315773c8daff7e749d13ebe3dbc42480323bc7f` |
| 4 | `lemma` | [preconnected_iff](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/preconnected-iff.md) | 37 | `result-track:6d76f3a3d7fd96e94ec605fc23ce05fcf0bf4170ff5f07cf7dcc839bea29a3dd` |
| 5 | `structure` | [Connected](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/connected.md) | 43 | `declaration-track:1f20dc55dbca5c545486b0717f9f449c2a604fc2eab78147cf6805f04c1b5e27` |
| 6 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/instance-source-edition-4.md) | 46 | `declaration-track:da519012319f530378b64026e6c3747e564036e83bb367b1298fdc3276a979a8` |
| 7 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/instance.md) | 48 | `declaration-track:471f335d7496ebc1a2d0ea7620189f809a5735ea76228a410cea2c128de95b58` |
| 8 | `lemma` | [connected_iff'](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/connected-iff-source-edition-2.md) | 51 | `result-track:d7e0c5d26df7799e67857221c2c9db8cdfe91741359e81dfe52c40c1012450c3` |
| 9 | `lemma` | [connected_iff](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/connected-iff.md) | 54 | `result-track:ba4e035249dbf71b0562d80e44320c30a175e9fe184a2bb97e840d5baf8c70b3` |
| 10 | `lemma` | [Connected.preconnected](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/connected-preconnected.md) | 58 | `result-track:3165e86bacb0084f346d694cce281ec0a9d3644c18c3d93bbdb087b16ae0d285` |
| 11 | `lemma` | [Connected.nonempty](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/connected-nonempty.md) | 61 | `result-track:b934235e8f904ba01f52e4d90c0038ecd671710152698c63884f56f939caac8f` |
| 12 | `theorem` | [singletonSubgraph_connected](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/singletonsubgraph-connected.md) | 64 | `result-track:db5c96f40033408317a463ffc339ac251abea66b274173de2ea0eddfbee89d5d` |
| 13 | `theorem` | [subgraphOfAdj_connected](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/subgraphofadj-connected.md) | 72 | `result-track:bfeb3e47754722f956c90aca9a67132090dc2a1060f17755ff2c9a84ce74c5cf` |
| 14 | `lemma` | [top_induce_pair_connected_of_adj](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/top-induce-pair-connected-of-adj.md) | 79 | `result-track:f8b490194348371f7f9e24f89e351c6c7ac2f351edde9f50bd6ba80a2c3d7608` |
| 15 | `lemma` | [Connected.mono](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/connected-mono.md) | 85 | `result-track:7f59692444f47fb415dcf43023c5d6eeecf5895e37a32b5be2b78790972d848d` |
| 16 | `lemma` | [Connected.mono'](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/connected-mono-source-edition-2.md) | 92 | `result-track:a08cbe1c6c3b7593fe0a394e92cbbc2f0a664b80ffc7cb35042882ec61e93dc9` |
| 17 | `lemma` | [Connected.sup](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/connected-sup.md) | 97 | `result-track:d45158af2e1113e3ff5b61f98f605dc5e6e5eae13233d07e44bfd2c46addd600` |
| 18 | `lemma` | [Connected.exists_verts_eq_connectedComponentSupp](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/connected-exists-verts-eq-connectedcomponentsupp.md) | 111 | `result-track:e9e6505e3e5c1444d3e38cad5c7c10596f5853a780e11d3e741ff90ab4bf1718` |
| 19 | `def` | [toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/tosubgraph.md) | 132 | `declaration-track:f2799cdba9f978439a590a3d28255223531dafa77025d7ee044439228a023940` |
| 20 | `theorem` | [toSubgraph_cons_nil_eq_subgraphOfAdj](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/tosubgraph-cons-nil-eq-subgraphofadj.md) | 136 | `result-track:d380b04bd4075bfa91f784e698bb9e041d316618b06a927777a499ce4d0adcd9` |
| 21 | `theorem` | [mem_verts_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/mem-verts-tosubgraph.md) | 139 | `result-track:ce663004e1f4a10a0a88ecf00f88a74fc137640c84285a29095124ee6ee32269` |
| 22 | `lemma` | [not_nil_of_adj_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/not-nil-of-adj-tosubgraph.md) | 148 | `result-track:50833b2efc7a952a8acb2b23d4c5e5152f3b36d731d99614a21834e389b5892f` |
| 23 | `lemma` | [start_mem_verts_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/start-mem-verts-tosubgraph.md) | 152 | `result-track:704bcbeeef5960db381118fe07419547e1e4854b0b6e0c6acfa5f16e85733a60` |
| 24 | `lemma` | [end_mem_verts_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/end-mem-verts-tosubgraph.md) | 155 | `result-track:653a0ff19a074571d2fca8a4118c2d26b4175cf114d65f01175c24fc47227901` |
| 25 | `theorem` | [verts_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/verts-tosubgraph.md) | 159 | `result-track:9cbd4a55a8eac8ad44c8ed92aeaca46f4658ffb7565c8c120bd3199a228ac8ff` |
| 26 | `theorem` | [mem_edges_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/mem-edges-tosubgraph.md) | 162 | `result-track:c0c41d0f84951d07a095470d90e9f16ba10bf687d8755f0c013b4b5e4b6b5e99` |
| 27 | `theorem` | [edgeSet_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/edgeset-tosubgraph.md) | 166 | `result-track:d4a2a33255cf6f1a17e23236e7467c311d3b618deb4a702c724ca96b3d220187` |
| 28 | `theorem` | [toSubgraph_append](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/tosubgraph-append.md) | 170 | `result-track:107e93817375c8a7feabea756e7ee48265e384f3df37d5bbf1c62bdbf9b3debe` |
| 29 | `theorem` | [toSubgraph_reverse](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/tosubgraph-reverse.md) | 174 | `result-track:6512f07f00f0106c1b1d2788b41d0200bdcb5e6703a77d3e46dfb0df56dd4e1d` |
| 30 | `theorem` | [toSubgraph_rotate](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/tosubgraph-rotate.md) | 184 | `result-track:2e1b9b2812ebc537fbcabe9b4d9e9f407335ded992c5f4f64e764a6f892524fa` |
| 31 | `theorem` | [toSubgraph_map](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/tosubgraph-map.md) | 189 | `result-track:81028daf47ba5f828b203ead2db9118a74e01c1cf1b07c32658d0a0447b3bc61` |
| 32 | `lemma` | [adj_toSubgraph_mapLe](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/adj-tosubgraph-maple.md) | 192 | `result-track:e31e72cc981f587bc7eb904e277fb23d79543f9448f9b58d5975f308b75a0d94` |
| 33 | `theorem` | [finite_neighborSet_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/finite-neighborset-tosubgraph.md) | 199 | `result-track:183a5abcb33135f788acf75f858fbd6cd225a5720a92e73d9172e2d4435c9c9f` |
| 34 | `lemma` | [toSubgraph_le_induce_support](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/tosubgraph-le-induce-support.md) | 210 | `result-track:a37494159264ed47bac395dd98004d940335ecfbbc79861d428cd7ff356244de` |
| 35 | `theorem` | [toSubgraph_adj_getVert](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/tosubgraph-adj-getvert.md) | 215 | `result-track:59b6f6ced9b92c4b86acc7fb7e819aa06c01fb334d587c377cfb3ed73a6a50b0` |
| 36 | `theorem` | [toSubgraph_adj_snd](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/tosubgraph-adj-snd.md) | 228 | `result-track:eca6c2bb13c2d096128fc868188ac4b7aec71bef6333213c456fc62a040a8706` |
| 37 | `theorem` | [toSubgraph_adj_penultimate](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/tosubgraph-adj-penultimate.md) | 231 | `result-track:1bb30c174ad1fecad418a6083c7f4b76a9b98e2c4b9d08394a1733af08608fb4` |
| 38 | `theorem` | [toSubgraph_adj_iff](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/tosubgraph-adj-iff.md) | 237 | `result-track:fcd0da3174b12276360f9684a1ec9ad417602d0ba50ef2b0711dfdba4dca0677` |
| 39 | `lemma` | [mem_support_of_adj_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/mem-support-of-adj-tosubgraph.md) | 269 | `result-track:c16b8718f930f7282b42472b0c30a82babc28065cd6a2e76e3f60995d5622843` |
| 40 | `lemma` | [neighborSet_toSubgraph_startpoint](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/neighborset-tosubgraph-startpoint.md) | 274 | `result-track:f69054ffc85de87e7d757e81bae9a8b0db2355fbde4c07e1bfc04397cf083361` |
| 41 | `lemma` | [neighborSet_toSubgraph_endpoint](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/neighborset-tosubgraph-endpoint-source-edition-2.md) | 291 | `result-track:a03498f6817e2b767b584035bd0310ff7c22b2c4cd3d243afa02552de9a14ba8` |
| 42 | `lemma` | [neighborSet_toSubgraph_internal](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/neighborset-tosubgraph-internal.md) | 297 | `result-track:1b886e992957f6e2a7bb1606dc1ed6314c1586ffddc3d22a5660fa4e9e2f85a6` |
| 43 | `lemma` | [ncard_neighborSet_toSubgraph_internal_eq_two](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/ncard-neighborset-tosubgraph-internal-eq-two.md) | 311 | `result-track:2f9ea12c20341630636b6f7a2eef2e79a95ba5fae0711c5b594be8ec86f43049` |
| 44 | `lemma` | [snd_of_toSubgraph_adj](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/snd-of-tosubgraph-adj.md) | 321 | `result-track:eb8d75871d1cd86f832025d8cd5cf0a65b620583b8086b6058f9247325b93c93` |
| 45 | `lemma` | [neighborSet_toSubgraph_endpoint](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/neighborset-tosubgraph-endpoint.md) | 339 | `result-track:9889c5829e8a8a3f3c6d27cc0413488f5dd5679eb469ead0a7bc7d836e597afb` |
| 46 | `lemma` | [neighborSet_toSubgraph_internal](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/neighborset-tosubgraph-internal-source-edition-2.md) | 355 | `result-track:dffe24a7854bdbd82a26914fd0073d9dc8d9883750f68fd5df9223788ab44d2d` |
| 47 | `lemma` | [ncard_neighborSet_toSubgraph_eq_two](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/ncard-neighborset-tosubgraph-eq-two.md) | 374 | `result-track:db91a8d0a1be26224c546e418356b718dee994f63d6d2cb0e1082330815a7197` |
| 48 | `lemma` | [exists_isCycle_snd_verts_eq](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/exists-iscycle-snd-verts-eq.md) | 386 | `result-track:c3d1e3e164ff23f4fd0e13c129535866524c250fc6bdfe9a3304f21386156a2e` |
| 49 | `lemma` | [exists_mem_support_mem_erase_mem_support_takeUntil_eq_empty](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/exists-mem-support-mem-erase-mem-support-takeuntil-eq-empty.md) | 410 | `result-track:c958a18e9c291d9217cccadd6f956a273723355c436f68b680a6761a75967cb2` |
| 50 | `lemma` | [exists_mem_support_forall_mem_support_imp_eq](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/exists-mem-support-forall-mem-support-imp-eq.md) | 430 | `result-track:e3ca8875668e3adfe1e9a63174f5111a216f71c20e5055640b6df1f51b200b2d` |
| 51 | `lemma` | [_root_.SimpleGraph.Walk.toSubgraph_connected](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/root-simplegraph-walk-tosubgraph-connected.md) | 443 | `result-track:139600e2fab5c7c27e7d4f1152e442d98d0c123b1e766e3864bbbfd67d79361f` |
| 52 | `lemma` | [induce_union_connected](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/induce-union-connected-source-edition-2.md) | 452 | `result-track:9142fa3b5661c4d37a10945208d34ef0709454a8e41d514c98456b29a18c3acb` |
| 53 | `lemma` | [Connected.adj_union](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/connected-adj-union.md) | 460 | `result-track:ba93de21b2087b56650a4d9c5f0c54155f8532a17472a7c81535439fe2dbe812` |
| 54 | `lemma` | [preconnected_iff_forall_exists_walk_subgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/preconnected-iff-forall-exists-walk-subgraph.md) | 468 | `result-track:229512b9a855615a8467f62fe079f62d79fefc45207fd6fd2e6c5aed0bf40c8c` |
| 55 | `lemma` | [connected_iff_forall_exists_walk_subgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/connected-iff-forall-exists-walk-subgraph.md) | 482 | `result-track:61c11295c15673435b7be542c7e0580585f754501d2e9c7ee87e370a1594f8a6` |
| 56 | `lemma` | [connected_induce_iff](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/connected-induce-iff.md) | 492 | `result-track:7ec8481e9f0c7ab8bc06485521d9c727b82f6e477ebfdbb26061c6dd90617153` |
| 57 | `lemma` | [induce_union_connected](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/induce-union-connected.md) | 496 | `result-track:4d8a3038041a353565f3cfe6e1fbc78abf29fe460ab33e88e7ffa83650117134` |
| 58 | `lemma` | [induce_pair_connected_of_adj](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/induce-pair-connected-of-adj.md) | 503 | `result-track:a600b9f88f8959f41a3b749049018abeeb963b42c02dbf2eea382c76ed4a819f` |
| 59 | `lemma` | [Subgraph.Connected.induce_verts](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/subgraph-connected-induce-verts.md) | 508 | `result-track:47fb85f67833085f8ff4b797d67a656214a01bb9a2b4e981dd1f741ac12287b9` |
| 60 | `lemma` | [Walk.connected_induce_support](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/walk-connected-induce-support.md) | 513 | `result-track:364c8e6cc875b7468dfd58e3bbc53c0d0f0eb97d5a9a85002d4acdacfc6f84e5` |
| 61 | `lemma` | [induce_connected_adj_union](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/induce-connected-adj-union.md) | 518 | `result-track:e9a3afc012e16576edfe9c7c146b673f59423a7aaeeecb98eab757e24c881189` |
| 62 | `lemma` | [induce_connected_of_patches](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/induce-connected-of-patches.md) | 532 | `result-track:e7b8fb3727eb8bbe695c1da23a52ec24d1448c8e17822a2b715937aa3d0447d9` |
| 63 | `lemma` | [induce_sUnion_connected_of_pairwise_not_disjoint](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/induce-sunion-connected-of-pairwise-not-disjoint.md) | 541 | `result-track:3ecddbcc2cc3ff038f8ba7fe0640426ca7d4c4f5c760afe94a98d9f68dc89763` |
| 64 | `lemma` | [extend_finset_to_connected](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/declarations/extend-finset-to-connected.md) | 554 | `result-track:83cdaaeb7bee7fb5e5d5a21a47f94cd981af4b460486b007bf9c469192f30f62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bfcced2cb324c0e4231fe4b8fd9c528bef241c2f736782897e402acc2137499a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantac0731d262823ab6996f7c5ddb50517623a20f9ec6e78507948416c8ec3b5663.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantac0731d262823ab6996f7c5ddb50517623a20f9ec6e78507948416c8ec3b5663.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
