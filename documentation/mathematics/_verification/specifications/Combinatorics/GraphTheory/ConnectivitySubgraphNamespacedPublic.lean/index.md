# Verification target: Connectivity Subgraph Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6adfd918a29f0dfe270ed00c87365521ef60669d",
  "lexical_observation_count": 91,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant4ee6ab7cd9484d807d33982443db5a27830729c28e437a18cc4fe20e6a4d5756.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6adfd918a29f0dfe270ed00c87365521ef60669d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant4ee6ab7cd9484d807d33982443db5a27830729c28e437a18cc4fe20e6a4d5756.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant4ee6ab7cd9484d807d33982443db5a27830729c28e437a18cc4fe20e6a4d5756.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Preconnected](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/preconnected.md) | 42 | `declaration-track:adad5ea03809a4182781fd235fb986ed2cf4fc33641308ebe1e176c8aefce213` |
| 2 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 45 | `declaration-track:b8f930ccc2dd7763b72ccc5c82ceb3536cc16c939c936d8f191dde28466f3873` |
| 3 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/instance.md) | 47 | `declaration-track:39e087ad81d61c5027cdc50296fde1a841c85174ae6290b000b163cdff3878f0` |
| 4 | `lemma` | [preconnected_iff](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/preconnected-iff.md) | 50 | `result-track:dbdfe269c343b0d28654aab5522b51a465d54f8ce548f7dacf1088ba0f2a7266` |
| 5 | `structure` | [Connected](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/connected.md) | 56 | `declaration-track:36904fe3b97a74ce59efd3e8c2c9ed9d1c8f89f18797ea056a18ee65159c7b30` |
| 6 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 59 | `declaration-track:e2e40a7b3904f304bdc86d372373ad022a7dcb2e14ff5bb2e7c53a1e79ae609c` |
| 7 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 61 | `declaration-track:702161888607b134aafd9a1eeebac4dac2973758870d407d49bee0dd13394dbe` |
| 8 | `lemma` | [connected_iff'](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/connected-iff-source-edition-2.md) | 64 | `result-track:219e662dabfc54e990780135259b85d5a7bbb040c12ad2403f9bb249db21e6e0` |
| 9 | `lemma` | [connected_iff](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/connected-iff.md) | 67 | `result-track:1c41ed8c815f117c9ea8b7e878979f0615b2edd033be66c9cb804bcc818e52c0` |
| 10 | `lemma` | [Connected.preconnected](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/connected-preconnected.md) | 71 | `result-track:632265981da67dabe4e82b3124038a5a05726d94ae2f35d2151895c64a4e0a65` |
| 11 | `lemma` | [Connected.nonempty](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/connected-nonempty.md) | 74 | `result-track:867699a7184365c8c7359fd597295b3afd3db84f6c3c4ccd89d43bcac0a47710` |
| 12 | `theorem` | [singletonSubgraph_connected](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/singletonsubgraph-connected.md) | 77 | `result-track:0914efaeeb2bfc3fe12ddfb0c84f9544fe533cab119797b26426b00a5a2550a4` |
| 13 | `theorem` | [subgraphOfAdj_connected](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/subgraphofadj-connected.md) | 81 | `result-track:4cb577638d4bb373d6c3e9fe4e8d059d9056cf8216cc1da3da5ba883e74353fe` |
| 14 | `lemma` | [top_induce_pair_connected_of_adj](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/top-induce-pair-connected-of-adj.md) | 88 | `result-track:e62ec7264d7ab7ff6fe430b3f4a36c33387f698a2b93b39f9879614caa22ae4b` |
| 15 | `lemma` | [Connected.mono](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/connected-mono-source-edition-2.md) | 94 | `result-track:da124c2f7071250199ca9b27f83121b966e1c0f8d826c83cd7250875afd0e2c3` |
| 16 | `lemma` | [Connected.mono'](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/connected-mono.md) | 101 | `result-track:81343240f14b641269a70ec6d7759f361f72bed0587f5554d17934ff8d7a0926` |
| 17 | `lemma` | [connected_sup](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/connected-sup.md) | 106 | `result-track:e0f41ccc6fbc800ca46db7e6b7563a75712fa44f5f679ba2e8843487f116265f` |
| 18 | `lemma` | [Preconnected.degree_zero_iff](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/preconnected-degree-zero-iff.md) | 116 | `result-track:4bf4bf01ab2914b4a46b0c83e560100a62907ddc410a49de801251aa039002f0` |
| 19 | `lemma` | [Preconnected.exists_adj_of_nontrivial](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/preconnected-exists-adj-of-nontrivial.md) | 122 | `result-track:7c33aad1885eda0389423238dbb8681f912bb38db333631056cf48cd8e01a893` |
| 20 | `lemma` | [Connected.exists_verts_eq_connectedComponentSupp](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/connected-exists-verts-eq-connectedcomponentsupp.md) | 131 | `result-track:fad503562c1dffefd6a7668c5ec42751ea1b252a3239622b0d04886090d446a9` |
| 21 | `abbrev` | [toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/tosubgraph.md) | 149 | `declaration-track:73241a888af4b8e3aff0938d9f1ece5a1d10aa0bbdd790bb20bf829204a2e23c` |
| 22 | `lemma` | [coe_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/coe-tosubgraph.md) | 153 | `result-track:222dfc4ce1b8de7f2117cb63403534d855a92fb5165ff26e26e1e1f65af7beff` |
| 23 | `lemma` | [spanningCoe_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/spanningcoe-tosubgraph.md) | 157 | `result-track:70c0b03565a1d18e9bb42eccb7259ce64b48b810cce0d0a714e53208db2f0b63` |
| 24 | `lemma` | [connected_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/connected-tosubgraph-source-edition-2.md) | 160 | `result-track:a4b913a1a74d4027e79d785fb7cfeb41da0020b9afb0d77263fa4de83c0acfcf` |
| 25 | `theorem` | [maximal_connected_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/maximal-connected-tosubgraph.md) | 163 | `result-track:7be3a03865f3984be76f2c513b61c7df3c7f75f6836c92437a3e3441243f0c19` |
| 26 | `theorem` | [maximal_subgraph_connected_iff](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/maximal-subgraph-connected-iff.md) | 169 | `result-track:5988410888086be9ca45e6d635e7e2ffcce2c32f968b5624afaa2f21461ba039` |
| 27 | `def` | [toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/tosubgraph-source-edition-2.md) | 189 | `declaration-track:bb0a1ee6347af5b20d6b7d460589e459d4e5bc0ce0a312ce49b873cc0ec59b6e` |
| 28 | `theorem` | [toSubgraph_cons_nil_eq_subgraphOfAdj](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/tosubgraph-cons-nil-eq-subgraphofadj.md) | 193 | `result-track:e3bd6f1221cccc00d693a43400b8c80729d1c5d5d2279134e30f19b624eb7216` |
| 29 | `theorem` | [mem_verts_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/mem-verts-tosubgraph.md) | 196 | `result-track:ab79a9cdf0ba541bcb1e3a27072904aeed6074d804a7e727b3a5d961af58236a` |
| 30 | `lemma` | [not_nil_of_adj_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/not-nil-of-adj-tosubgraph.md) | 205 | `result-track:f8dd4b11cde4e7cbfdfca612b47cfc7ec3646d4a63407df618a96124433369f1` |
| 31 | `lemma` | [start_mem_verts_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/start-mem-verts-tosubgraph.md) | 209 | `result-track:2dc9a817eb607df7089bb59538c8ea873dd94b73877b9ada9f645fd94f08d17f` |
| 32 | `lemma` | [end_mem_verts_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/end-mem-verts-tosubgraph.md) | 212 | `result-track:a6291bae96ff089b65abb557c100a654a0d0e9d3e2e5959245e22a534f27f1ce` |
| 33 | `theorem` | [verts_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/verts-tosubgraph.md) | 216 | `result-track:6fb56221bd0712b52e0d451eb067828f06859067f6e974e0963e48fd71cde2f6` |
| 34 | `theorem` | [mem_edges_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/mem-edges-tosubgraph.md) | 219 | `result-track:e3ddcbf6c2865683461a68e11545524df939479c88bd9c72c12c4de047527bb6` |
| 35 | `theorem` | [edgeSet_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/edgeset-tosubgraph.md) | 223 | `result-track:7b1e2dffcb09faf8bd8b9632478d069dd269f6986bc18d8af96e178f9e0b20d5` |
| 36 | `theorem` | [Connectivity Subgraph Namespaced Public](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-graphtheory-preconnected.md) | 226 | `result-track:479aa8983658bee21c8ddec4de0d8c5638770de3b47a237c6a054d86ad9e1743` |
| 37 | `theorem` | [toSubgraph_append](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/tosubgraph-append.md) | 231 | `result-track:79ef086fbd238af5bcec465a4ff59fb30c870ec5b57ac01a3e578ae69c343459` |
| 38 | `theorem` | [toSubgraph_reverse](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/tosubgraph-reverse.md) | 235 | `result-track:31c5173bf2e1f238d64e0919004ff825b68cb678c96dd85b746336a7284cc87d` |
| 39 | `theorem` | [toSubgraph_rotate](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/tosubgraph-rotate.md) | 245 | `result-track:a96c3db5bade831cd6432303c68e7caf13863d3507e3a596d83797d4aaf3043a` |
| 40 | `theorem` | [toSubgraph_map](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/tosubgraph-map.md) | 250 | `result-track:073d378dafc4bb6ea68c02c754dd59426cf1ad42699abc74951a95db7ca07e16` |
| 41 | `lemma` | [adj_toSubgraph_mapLe](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/adj-tosubgraph-maple.md) | 253 | `result-track:0aef8f806c5c8a84126558450ff5edbad0845cc234a39867b1fd8f5e3048e57e` |
| 42 | `theorem` | [finite_neighborSet_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/finite-neighborset-tosubgraph.md) | 258 | `result-track:22f7c3915a1f50a2d1f449be96d8214ab0969622e7c41e5db8d13c52c6e6aa41` |
| 43 | `lemma` | [toSubgraph_le_induce_support](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/tosubgraph-le-induce-support.md) | 269 | `result-track:2e0f08d00413bc6c267bd020dbda3e3674e2373537749f90f96264d6e06df128` |
| 44 | `theorem` | [toSubgraph_adj_getVert](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/tosubgraph-adj-getvert.md) | 274 | `result-track:a9339860310d0e810265138afad534a61ff221ae89cf7096da86ad18989270d5` |
| 45 | `theorem` | [toSubgraph_adj_snd](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/tosubgraph-adj-snd.md) | 286 | `result-track:698c708e5c47c77118752068d0c9846aaf985fb751a1a1d07e9b36102d391978` |
| 46 | `theorem` | [toSubgraph_adj_penultimate](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/tosubgraph-adj-penultimate.md) | 289 | `result-track:c9f4412882442b4e563b7d2d00b57554e915326ca6c503144bd58eb1903ab1e2` |
| 47 | `lemma` | [adj_toSubgraph_iff_mem_edges](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/adj-tosubgraph-iff-mem-edges.md) | 295 | `result-track:fde55625f8895ae5757e1030fe86875469d7c21f75d045d1df1d86773f6ac277` |
| 48 | `theorem` | [toSubgraph_adj_iff](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/tosubgraph-adj-iff.md) | 299 | `result-track:2163a9a725bc64924c99a08ab37c7f1183fb898ca3977b972c184bed9b424623` |
| 49 | `lemma` | [mem_support_of_adj_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/mem-support-of-adj-tosubgraph.md) | 304 | `result-track:6a483473139a326a1e3e1202b2b306f0873cb837a1b8a47b33a97182c70e4f25` |
| 50 | `theorem` | [toSubgraph_le_iff](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/tosubgraph-le-iff.md) | 307 | `result-track:5ad5392d07d8f80e55d1fa13745e2d144e53d9a3f74a0bf0b33ef3a97c02fac5` |
| 51 | `lemma` | [toSubgraph_bypass_le_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/tosubgraph-bypass-le-tosubgraph.md) | 315 | `result-track:db77b22b653e38db94d24967d40d4a2ed7f8593cef81b3f5fc0f3f7abc437d14` |
| 52 | `def` | [mapToSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/maptosubgraph.md) | 322 | `declaration-track:4b4c8f3727307c83a0adfa70caa2aabcebbda514ded060b7b76afb58882f80cd` |
| 53 | `theorem` | [map_mapToSubgraph_hom](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/map-maptosubgraph-hom.md) | 332 | `result-track:6c9f392cc0df8f467c9af4603abec6a8cf3801f00aa79f40f7e88e7c2a6d58e9` |
| 54 | `theorem` | [map_mapToSubgraph_eq_induce](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/map-maptosubgraph-eq-induce.md) | 341 | `result-track:545a0ed5a31f39ee579b0fe3b6dc9421e1812540ddd21182d138fdc9b3564f4c` |
| 55 | `theorem` | [map_mapToSubgraph_eq_induce_id](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/map-maptosubgraph-eq-induce-id.md) | 352 | `result-track:476bc4a3d6076de5dc44b9c21523eca6657c57585f4c9565390dae03ca5e012c` |
| 56 | `theorem` | [isInduced_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/isinduced-tosubgraph.md) | 357 | `result-track:358c4e7b1d004b8ceee6a39024953093f2ad3a742b24929a6bcc58abe2eeb4b0` |
| 57 | `lemma` | [neighborSet_toSubgraph_startpoint](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/neighborset-tosubgraph-startpoint.md) | 364 | `result-track:6702094d482972cb110b955c698a0e60c466663b51fce99e5343bc6cb84fb26b` |
| 58 | `lemma` | [neighborSet_toSubgraph_endpoint](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/neighborset-tosubgraph-endpoint-source-edition-2.md) | 372 | `result-track:c9e71956f795e7e101a517165f228824481c5ca2831ea73dff247c8bb846da8c` |
| 59 | `lemma` | [neighborSet_toSubgraph_internal](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/neighborset-tosubgraph-internal.md) | 378 | `result-track:d0eafc110dac6ba8a6123d3ce639e96b02b77c3182ec07bb7e1ce88fc98fe0d6` |
| 60 | `lemma` | [ncard_neighborSet_toSubgraph_internal_eq_two](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/ncard-neighborset-tosubgraph-internal-eq-two.md) | 392 | `result-track:8686231be327b03ab3f67ceb103d0588211f03e180cca3fb931751e1c73ae514` |
| 61 | `lemma` | [snd_of_toSubgraph_adj](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/snd-of-tosubgraph-adj.md) | 402 | `result-track:e94ae9faa7d90f9fca188acaf8e791751bec9488f5bdb9d6578308bfe850e653` |
| 62 | `lemma` | [neighborSet_toSubgraph_endpoint](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/neighborset-tosubgraph-endpoint.md) | 420 | `result-track:3d1c7c3187fbe1417ab1c3d8d1b4e48b129946050fc796462539bd124ea3cea4` |
| 63 | `lemma` | [neighborSet_toSubgraph_internal](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/neighborset-tosubgraph-internal-source-edition-2.md) | 428 | `result-track:e32fcea343dbd74ac7663ef42931617a77d6eadbb75f3fed5dce23ae2039173a` |
| 64 | `lemma` | [ncard_neighborSet_toSubgraph_eq_two](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/ncard-neighborset-tosubgraph-eq-two.md) | 446 | `result-track:5838b00b6de3b4d5c92d200de2ab92334ccbc25f30f73abd536a10be7fd51759` |
| 65 | `lemma` | [exists_isCycle_snd_verts_eq](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/exists-iscycle-snd-verts-eq.md) | 457 | `result-track:6a07e2bba061fcb97ac7bf2557c51390edbad91cf12ad2a26bb63207e90e9936` |
| 66 | `lemma` | [exists_mem_support_mem_erase_mem_support_takeUntil_eq_empty](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/exists-mem-support-mem-erase-mem-support-takeuntil-eq-empty.md) | 481 | `result-track:d8fd4954874df75755314cbe4edbd7a9649071a3d92cec14188ee05294b5ec61` |
| 67 | `lemma` | [exists_mem_support_forall_mem_support_imp_eq](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/exists-mem-support-forall-mem-support-imp-eq.md) | 501 | `result-track:bba8ae1347d39af1ad221b1dc6e287a6e43898080600ba99c77869057a889f9b` |
| 68 | `lemma` | [Connectivity Subgraph Namespaced Public](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-graphtheory-preconnected-source-edition-2.md) | 515 | `result-track:c0e951fdb895d9414a47a4595e9aab69fa1e5e8b5c043b3cf68f6f13d96cbb64` |
| 69 | `lemma` | [induce_union_connected](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/induce-union-connected.md) | 524 | `result-track:81325404351d16c7a8b50f6092b8704e2645731af0c487e46a9cc667827d12bf` |
| 70 | `lemma` | [connected_induce_top_sup](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/connected-induce-top-sup.md) | 530 | `result-track:aee917da5bcb24088a39af8a02b8228e89fe57bd079bb95efa6b07cb3106d2fa` |
| 71 | `lemma` | [preconnected_iff_forall_exists_walk_subgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/preconnected-iff-forall-exists-walk-subgraph.md) | 539 | `result-track:e4f9d5db1272087ff5034fa6facb5a94a720a89dbb69fd4fec5ec390e188d682` |
| 72 | `lemma` | [connected_iff_forall_exists_walk_subgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/connected-iff-forall-exists-walk-subgraph.md) | 553 | `result-track:148157fb861ca82602d8e32209dc0f9dde82175205eccc85b7f0bc611a702ff7` |
| 73 | `lemma` | [preconnected_induce_iff](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/preconnected-induce-iff.md) | 564 | `result-track:e56a56d6b32f46254d5bf46cc1bce8c94a6482afa000090dcc56093cbb8f4212` |
| 74 | `lemma` | [connected_induce_iff](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/connected-induce-iff.md) | 569 | `result-track:a3d6cb73e2f9bb104b30ca11ccbe22d7aa84009ca70db3d428b15749ec30b153` |
| 75 | `lemma` | [induce_union_connected](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/induce-union-connected-source-edition-2.md) | 573 | `result-track:b12a0bbafc22d090e2e1a5d7373ca276aa23fdb8ecf1703c15b2707d71319bb9` |
| 76 | `lemma` | [induce_pair_connected_of_adj](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/induce-pair-connected-of-adj.md) | 581 | `result-track:01e0b0cc6c1e643059c41fbf8bf5a3fc8f6250bf7d63547334e1f28647599682` |
| 77 | `lemma` | [Subgraph.Connected.induce_verts](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/subgraph-connected-induce-verts.md) | 586 | `result-track:debe9166b12a0c8a0c4f14a9b5b6e3a3c7c72f1914a4b955d66d18171a37f805` |
| 78 | `lemma` | [Walk.connected_induce_support](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/walk-connected-induce-support.md) | 591 | `result-track:b2750271e64aaa5ff9f5e67ac06b02df03e3260643ffb70b70d9dfe43b5591c2` |
| 79 | `lemma` | [connected_induce_union](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/connected-induce-union.md) | 596 | `result-track:3980ff4f7ded8739c7505fe01b5265d7d29d171f309fe0411f06fa59500e442a` |
| 80 | `lemma` | [induce_connected_of_patches](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/induce-connected-of-patches.md) | 611 | `result-track:01bfaa7b7fb42ada5b25b64b074af427424d5e8fb50b3c6c7b48174157038b2f` |
| 81 | `lemma` | [induce_sUnion_connected_of_pairwise_not_disjoint](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/induce-sunion-connected-of-pairwise-not-disjoint.md) | 620 | `result-track:0a7e7c7543d6a73ac44a5abd9c9c8594db0b83820f20344e3b09db520f6f3ac3` |
| 82 | `lemma` | [extend_finset_to_connected](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/extend-finset-to-connected.md) | 634 | `result-track:a78f8ab8b2f0dac696b1014755584e3def6a7b2c3d7450775b52796187f23726` |
| 83 | `lemma` | [Reachable.coe_toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/reachable-coe-tosubgraph.md) | 656 | `result-track:0cbbcd9fbcc62134ded73714cdaeb52f39aa95c813a76d1134491e0fa742dcd7` |
| 84 | `lemma` | [Preconnected.toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/preconnected-tosubgraph.md) | 661 | `result-track:12db487238509b520783e45a23daa96bc5de772f6dbfd6a7f61fb086ed28896e` |
| 85 | `lemma` | [Connected.toSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/connected-tosubgraph.md) | 665 | `result-track:4d143b3e82c4ff59dd2f51a1e19efa3140f344d77d39e4afca4adcdfded80620` |
| 86 | `lemma` | [Reachable.coe_subgraphMap](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/reachable-coe-subgraphmap.md) | 669 | `result-track:9543c4676d854c6664ce2eb6c921ef82021f9eb544539ac569e27c31f351add0` |
| 87 | `lemma` | [Reachable.coe_coeSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/reachable-coe-coesubgraph.md) | 678 | `result-track:2a481dceaccde4a117be5ed11c756265b9000aeb1e010627a19c055a798912ce` |
| 88 | `lemma` | [Preconnected.map](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/preconnected-map.md) | 686 | `result-track:70392986464d7bbca575b338c3c52e224fab3553fd8c8ec05dcc897555d82f5d` |
| 89 | `lemma` | [Connected.map](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/connected-map.md) | 693 | `result-track:548450faf46cc688c96a7eb1ec4bccedcd00f42299abd471ede8856ea225a4d8` |
| 90 | `lemma` | [Preconnected.coeSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/preconnected-coesubgraph.md) | 697 | `result-track:e3beb7824c498efeeb3274d69fca964ed68533f6d3058d670103c62c1371e8df` |
| 91 | `lemma` | [Connected.coeSubgraph](../../../../../Combinatorics/GraphTheory/ConnectivitySubgraphNamespacedPublic.lean/declarations/connected-coesubgraph.md) | 701 | `result-track:7f9c690b239316e0d8f4311f6356443ed00f061a833c28c107e47ec6eef5c0bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d07b57a8b49b182eb74c1576cc099db0684f0baf6e6fe35ffc3b7afab99bab5d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant4ee6ab7cd9484d807d33982443db5a27830729c28e437a18cc4fe20e6a4d5756.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant4ee6ab7cd9484d807d33982443db5a27830729c28e437a18cc4fe20e6a4d5756.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
