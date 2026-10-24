# Verification target: GRWTSK.Topology.MetricTopology.HolderNorm.Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65c1f765c13d5f583ca2777a35e127fd924bcada",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65c1f765c13d5f583ca2777a35e127fd924bcada`.

Source path: `GRWTSK/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eHolderNorm](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/eholdernorm--82ffd09039119d3eac1943b7.md) | 51 | `declaration-track:82ffd09039119d3eac1943b7efe7f4ecc139974d889b168f364491070748512e` |
| 2 | `def` | [nnHolderNorm](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/nnholdernorm--054f8ffd76734602e108c9cc.md) | 55 | `declaration-track:054f8ffd76734602e108c9cc52e10953b9a590bc13f93c00735063f8baa1111e` |
| 3 | `def` | [MemHolder](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/memholder--a8d5fe43243b09c8f077f021.md) | 60 | `declaration-track:a8d5fe43243b09c8f077f0219874d1767152661698c9ff18610a6384b4fb83b8` |
| 4 | `lemma` | [HolderWith.memHolder](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/holderwith-memholder--0385ae67d89907cc18908385.md) | 62 | `result-track:0385ae67d89907cc18908385a962cdbb691dcdf3ffd14176c392c725988f518e` |
| 5 | `lemma` | [eHolderNorm_lt_top](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/eholdernorm-lt-top--f02a7d501358a01f94294f3c.md) | 64 | `result-track:f02a7d501358a01f94294f3c2ca67f0b2248595c735fe039ee5636afbb8b0022` |
| 6 | `lemma` | [eHolderNorm_ne_top](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/eholdernorm-ne-top--3dd90a4b26b30cb40fa039a1.md) | 71 | `result-track:3dd90a4b26b30cb40fa039a11632c2dba4039c6d57dcb758cf9fbc12f6a5031a` |
| 7 | `lemma` | [eHolderNorm_eq_top](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/eholdernorm-eq-top--2463a8440d7cc1e0a9787c50.md) | 74 | `result-track:2463a8440d7cc1e0a9787c50a8d201630bad58bd7af373149612c7b00c4c3df1` |
| 8 | `lemma` | [coe_nnHolderNorm_le_eHolderNorm](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/coe-nnholdernorm-le-eholdernorm--cf4cd7f546b313834e502ab4.md) | 80 | `result-track:cf4cd7f546b313834e502ab436dec07f169cb92cc18d9d444c65ca4ced799cf4` |
| 9 | `lemma` | [eHolderNorm_const](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/eholdernorm-const--133e47fc87494574d66a6be6.md) | 86 | `result-track:133e47fc87494574d66a6be6dfa2c419e99ca8580f39135c58e8c91fa5669f52` |
| 10 | `lemma` | [eHolderNorm_zero](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/eholdernorm-zero--011130d0efbc4333419d99ce.md) | 92 | `result-track:011130d0efbc4333419d99cebaeac77856042bc7ab7239adbb9ddb6c06fdaf1d` |
| 11 | `lemma` | [nnHolderNorm_const](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/nnholdernorm-const--1ee7edb82b53692b034fa26f.md) | 97 | `result-track:1ee7edb82b53692b034fa26f7dfe9f6b107d590673800a5debcefb99ba6dba46` |
| 12 | `lemma` | [nnHolderNorm_zero](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/nnholdernorm-zero--888c4acbe754b326eae48007.md) | 103 | `result-track:888c4acbe754b326eae4800712ba02e6148bf40cc5a81f4ae075415f4aaf6258` |
| 13 | `lemma` | [eHolderNorm_of_isEmpty](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/eholdernorm-of-isempty--f2bf5212a3a65b55cd505d8a.md) | 108 | `result-track:f2bf5212a3a65b55cd505d8a501ff46a3d7123e60537e7cc0749aa78f1b58532` |
| 14 | `lemma` | [HolderWith.eHolderNorm_le](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/holderwith-eholdernorm-le--92587ffa41e6a6d6300c0db1.md) | 113 | `result-track:92587ffa41e6a6d6300c0db1d1cae493ddd2352054a3f409654785bbb133e738` |
| 15 | `lemma` | [memHolder_const](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/memholder-const--c1d707fd926618b535be1df8.md) | 119 | `result-track:c1d707fd926618b535be1df827283b110b4bb091287f737a8c205ca829bb903a` |
| 16 | `lemma` | [memHolder_const'](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/memholder-const--9c301a0051dbe64ef3870d32.md) | 124 | `result-track:9c301a0051dbe64ef3870d32e390fe994c1c1316811f0e1bc37bb0ccdf62a39e` |
| 17 | `lemma` | [memHolder_zero](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/memholder-zero--5455a1f4c35ee18380649106.md) | 128 | `result-track:5455a1f4c35ee18380649106bfce0ee91b442513d89250f21798160625e42304` |
| 18 | `lemma` | [MemHolder.of_le](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/memholder-of-le--928b1e29d780013c1d320919.md) | 137 | `result-track:928b1e29d780013c1d320919b07bf8d5a5e4db9c6b76168b31da3efa2af0a000` |
| 19 | `lemma` | [MemHolder.of_le'](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/memholder-of-le--57231a239f9db72133607ad5.md) | 147 | `result-track:57231a239f9db72133607ad5143663b012d7ce5e2d33f34b30ca466f0dbbe6fa` |
| 20 | `lemma` | [HolderOnWith.exists_holderOnWith_of_le](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/holderonwith-exists-holderonwith-of-le--3374852df82a62e52ae99a2e.md) | 159 | `result-track:3374852df82a62e52ae99a2ed8da10c643e701d7d6cc2c1ec56c817970307438` |
| 21 | `lemma` | [HolderOnWith.exists_holderOnWith_of_le'](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/holderonwith-exists-holderonwith-of-le--098558200fdcc77fa6f656fc.md) | 169 | `result-track:098558200fdcc77fa6f656fc55d9787305d395a4458c5654675629024631936d` |
| 22 | `lemma` | [HolderOnWith.exists_holderOnWith_of_le_of_le](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/holderonwith-exists-holderonwith-of-le-of-le--b5d48546c178548e62b1f20b.md) | 181 | `result-track:b5d48546c178548e62b1f20b194760f59bc77ce853e043782c0481f1a1853856` |
| 23 | `lemma` | [MemHolder.memHolder_of_le_of_le](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/memholder-memholder-of-le-of-le--18aeefbb83fc39d67f9f8a9e.md) | 189 | `result-track:18aeefbb83fc39d67f9f8a9e1a3b250583ef227dc884a2f1217c9f00e9cebe2b` |
| 24 | `lemma` | [eHolderNorm_eq_zero](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/eholdernorm-eq-zero--d1d7464663356544871c4040.md) | 202 | `result-track:d1d7464663356544871c4040170e4e0fe7c9e74b20621d1dfd226eb9a065705f` |
| 25 | `lemma` | [MemHolder.holderWith](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/memholder-holderwith--92126cc0fc352253c1d623f5.md) | 222 | `result-track:92126cc0fc352253c1d623f5233fc452795cc745e7df6b595c894019ff26c026` |
| 26 | `lemma` | [memHolder_iff_holderWith](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/memholder-iff-holderwith--b37ccd4230e57a086b531c03.md) | 238 | `result-track:b37ccd4230e57a086b531c039f5262a3c4167af6b05ad2d281b85aebde9164d1` |
| 27 | `lemma` | [MemHolder.coe_nnHolderNorm_eq_eHolderNorm](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/memholder-coe-nnholdernorm-eq-eholdernorm--75ff8dfd09e422738d3fa2b3.md) | 242 | `result-track:75ff8dfd09e422738d3fa2b355b4bbb9f7479429d5e3569ce8071415c1472ac1` |
| 28 | `lemma` | [HolderWith.nnholderNorm_le](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/holderwith-nnholdernorm-le--cd66d233be7e0c3d2aa206f1.md) | 248 | `result-track:cd66d233be7e0c3d2aa206f1b57f9d85f0a5b20cef81149b4db6caeb5686d484` |
| 29 | `lemma` | [MemHolder.comp](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/memholder-comp--0afb60060f54e68137b689fa.md) | 253 | `result-track:0afb60060f54e68137b689fa78bf700cbb5875f8117f0244d90c0714c949f9e0` |
| 30 | `lemma` | [MemHolder.nnHolderNorm_eq_zero](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/memholder-nnholdernorm-eq-zero--b8788d96f838620170fdaab0.md) | 257 | `result-track:b8788d96f838620170fdaab0a65bf7e78d7575fa7f1004dd54e444a9764e6863` |
| 31 | `lemma` | [MemHolder.add](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/memholder-add--7a1c551688b1fce549d2e6c4.md) | 268 | `result-track:7a1c551688b1fce549d2e6c45928f583b063e65ee6fdf20ec516ea254f68dc76` |
| 32 | `lemma` | [MemHolder.smul](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/memholder-smul--690f16a055cb38c967802e70.md) | 271 | `result-track:690f16a055cb38c967802e70d734f0d09b1aafeaf7f94f725f9d268a5f27d40f` |
| 33 | `lemma` | [MemHolder.smul_iff](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/memholder-smul-iff--3322e83afa921eb5525f084f.md) | 275 | `result-track:3322e83afa921eb5525f084fd822eb966ee865a721b896424e484f1c016c1756` |
| 34 | `lemma` | [MemHolder.nsmul](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/memholder-nsmul--e2f9910032b7281a527d6823.md) | 281 | `result-track:e2f9910032b7281a527d682395986873b82a58be836fafc15629cd77bef3cffe` |
| 35 | `lemma` | [MemHolder.nnHolderNorm_add_le](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/memholder-nnholdernorm-add-le--c7dd31b3e4778be96f075a6b.md) | 285 | `result-track:c7dd31b3e4778be96f075a6b8795f22a1ff30f835fec869697e6350559b40456` |
| 36 | `lemma` | [eHolderNorm_add_le](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/eholdernorm-add-le--a18b2a9a374f75dd9fb3e1c4.md) | 289 | `result-track:a18b2a9a374f75dd9fb3e1c477607f5b4285fd8ef0661f844e150f765ecf5b07` |
| 37 | `lemma` | [eHolderNorm_smul](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/eholdernorm-smul--87327b296932c270dc2e594e.md) | 300 | `result-track:87327b296932c270dc2e594ebab389dca4acc157492ed8d00d0bbcbb1b3dd33d` |
| 38 | `lemma` | [MemHolder.nnHolderNorm_smul](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/memholder-nnholdernorm-smul--b43a9cff019beedf13b8c010.md) | 321 | `result-track:b43a9cff019beedf13b8c01026fceb74e12b6dea995e90c9453555db30e6b8a5` |
| 39 | `lemma` | [eHolderNorm_nsmul](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/eholdernorm-nsmul--c1102cca910f5f430caed6d3.md) | 327 | `result-track:c1102cca910f5f430caed6d39eb1434d00859b382b4e1613f5b0cc059d9082d6` |
| 40 | `lemma` | [MemHolder.nnHolderNorm_nsmul](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/declarations/memholder-nnholdernorm-nsmul--b57f8eebd48c52e2a665ef08.md) | 331 | `result-track:b57f8eebd48c52e2a665ef087d79bf8fd1002879345a8b391329ef6237966d81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
