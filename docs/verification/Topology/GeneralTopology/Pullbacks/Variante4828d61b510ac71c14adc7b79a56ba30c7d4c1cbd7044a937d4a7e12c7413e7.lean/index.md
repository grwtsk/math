# Verification target: GRWTSK.Topology.GeneralTopology.Pullbacks.Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db7c2c3fb4b99c1e8c59455fbd7e5e6cd8a650ad",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db7c2c3fb4b99c1e8c59455fbd7e5e6cd8a650ad`.

Source path: `GRWTSK/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.Limits.Products` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [pullbackFst](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/pullbackfst--700f09dc3e81520d7d49b169.md) | 39 | `declaration-track:700f09dc3e81520d7d49b16956b3160ff921d51c9a1cc8c7c6742c9274009846` |
| 2 | `lemma` | [pullbackFst_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/pullbackfst-apply--be9b05abf77f78758ba08f57.md) | 42 | `result-track:be9b05abf77f78758ba08f5707dd4207e6ca1f4915788cf4d18f29eb16eba5d8` |
| 3 | `abbrev` | [pullbackSnd](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/pullbacksnd--27a62a1e61502e865d1acc86.md) | 45 | `declaration-track:27a62a1e61502e865d1acc863e657300993316a821c65cb39bf6a17f7120025c` |
| 4 | `lemma` | [pullbackSnd_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/pullbacksnd-apply--9dc6b76d50c285b1279b6658.md) | 48 | `result-track:9dc6b76d50c285b1279b66586aa80e9b68db425b626c5a5f74faccd065e673c4` |
| 5 | `def` | [pullbackCone](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/pullbackcone--0b88d800b24441d91ead1598.md) | 51 | `declaration-track:0b88d800b24441d91ead1598e9bd31dd1350d9c2886bf0accbe90fa50df815ad` |
| 6 | `def` | [pullbackConeIsLimit](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/pullbackconeislimit--8936befdc324a50c6eabd8c2.md) | 59 | `declaration-track:8936befdc324a50c6eabd8c2c564b2ff69cfd240ade20d016533dfeed5624e0a` |
| 7 | `def` | [pullbackIsoProdSubtype](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/pullbackisoprodsubtype--c9f58f18f10b37f3c1f6465d.md) | 84 | `declaration-track:c9f58f18f10b37f3c1f6465d2a5700209cf97ba02ee734bce1ebca51d71d3d85` |
| 8 | `theorem` | [pullbackIsoProdSubtype_inv_fst](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/pullbackisoprodsubtype-inv-fst--41456a3536a748433c092438.md) | 89 | `result-track:41456a3536a748433c0924388b3bde27ad879d39b6041e178ef66a91909cf68c` |
| 9 | `theorem` | [pullbackIsoProdSubtype_inv_fst_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/pullbackisoprodsubtype-inv-fst-apply--9f37095cb366e5cfd2f608a5.md) | 93 | `result-track:9f37095cb366e5cfd2f608a5f89e78cafd82800dc69d5beeb5ccf23db4869236` |
| 10 | `theorem` | [pullbackIsoProdSubtype_inv_snd](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/pullbackisoprodsubtype-inv-snd--d7161b1b1b7fbb95fad27df9.md) | 99 | `result-track:d7161b1b1b7fbb95fad27df97a01e2d1a02870dc2d2182eae385fcf092961134` |
| 11 | `theorem` | [pullbackIsoProdSubtype_inv_snd_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/pullbackisoprodsubtype-inv-snd-apply--ec95a9169dd121eddd743012.md) | 103 | `result-track:ec95a9169dd121eddd74301227fad4f5ea66cf85e31bda767576c133228fabd2` |
| 12 | `theorem` | [pullbackIsoProdSubtype_hom_fst](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/pullbackisoprodsubtype-hom-fst--c3ec9c35f66eb6201a733083.md) | 108 | `result-track:c3ec9c35f66eb6201a7330834eabf7312fb6d03f0af5889ff7dbd964626b4cb2` |
| 13 | `theorem` | [pullbackIsoProdSubtype_hom_snd](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/pullbackisoprodsubtype-hom-snd--e7ff4f1abb8cddbdbaf02ca2.md) | 112 | `result-track:e7ff4f1abb8cddbdbaf02ca2232ef1b3f30d89a363fc44c8e6fac3d539822bb3` |
| 14 | `theorem` | [pullbackIsoProdSubtype_hom_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/pullbackisoprodsubtype-hom-apply--ce93c2b01bc6d460f37d8382.md) | 116 | `result-track:ce93c2b01bc6d460f37d8382c2237c2b40019463c122c62b09028d3bdfef3cae` |
| 15 | `theorem` | [pullback_topology](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/pullback-topology--3aa9ab159f965d248333bf20.md) | 125 | `result-track:3aa9ab159f965d248333bf204ea4b6c0ee43775256c02000450d32038a22e075` |
| 16 | `theorem` | [range_pullback_to_prod](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/range-pullback-to-prod--2e0c52d175c572d28a238af4.md) | 135 | `result-track:2e0c52d175c572d28a238af490511ecb0d7c7ecc5591f82e4750c86ba90a42d0` |
| 17 | `def` | [pullbackHomeoPreimage](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/pullbackhomeopreimage--7855c64cdbd6460ed2f14fa4.md) | 153 | `declaration-track:7855c64cdbd6460ed2f14fa4a79defcc63194dcdf48ce8a78f7cbae4c4bdd807` |
| 18 | `theorem` | [isInducing_pullback_to_prod](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/isinducing-pullback-to-prod--7b0f6488b236a6bafb31b72b.md) | 174 | `result-track:7b0f6488b236a6bafb31b72b0bf5552d0e2ebbb6fc918dfcb15d898e78a9ef21` |
| 19 | `theorem` | [isEmbedding_pullback_to_prod](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/isembedding-pullback-to-prod--c92a3db147cf89d959e067c4.md) | 180 | `result-track:c92a3db147cf89d959e067c4cbf6185766d2b301a4ab262a1203f2ed82e2ee92` |
| 20 | `theorem` | [range_pullback_map](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/range-pullback-map--57025f0821c74cd16fa03f0f.md) | 188 | `result-track:57025f0821c74cd16fa03f0fc9266de7db15759cec6a46ffa5b7c338cdb3c19f` |
| 21 | `theorem` | [pullback_fst_range](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/pullback-fst-range--5f14943846cacc495a2b3867.md) | 214 | `result-track:5f14943846cacc495a2b38672d1cba82c981b8d9e7024247d095138a1118c7f4` |
| 22 | `theorem` | [pullback_snd_range](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/pullback-snd-range--4812434cadb29174c7450e7c.md) | 225 | `result-track:4812434cadb29174c7450e7c5e1da4629c3b5ac8e739b2c9989eefe5258afec0` |
| 23 | `theorem` | [pullback_map_isEmbedding](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/pullback-map-isembedding--df1e17fca5c72bc981765b21.md) | 247 | `result-track:df1e17fca5c72bc981765b21c5b1a77151eebb543f820f7d647559a1792baf1a` |
| 24 | `theorem` | [pullback_map_isOpenEmbedding](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/pullback-map-isopenembedding--30e054fd24f243f29088fdda.md) | 275 | `result-track:30e054fd24f243f29088fdda4bf785bb8603d0bd668df534c12bde3e48652333` |
| 25 | `lemma` | [snd_isEmbedding_of_left](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/snd-isembedding-of-left--a729527fb81c6e90b849d81a.md) | 290 | `result-track:a729527fb81c6e90b849d81af6ca0d899f6e0f4ca51f134316f64737b16718dd` |
| 26 | `theorem` | [fst_isEmbedding_of_right](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/fst-isembedding-of-right--42ac51277ada70b89b5311d3.md) | 300 | `result-track:42ac51277ada70b89b5311d38370762c1289a20958aa8d8662f14778ce956896` |
| 27 | `theorem` | [isEmbedding_of_pullback](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/isembedding-of-pullback--d591dec7fb943e3f9e8c425a.md) | 310 | `result-track:d591dec7fb943e3f9e8c425ad86a537c7bd1fc539994e33141c1085cd2159c76` |
| 28 | `theorem` | [snd_isOpenEmbedding_of_left](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/snd-isopenembedding-of-left--8fa498f949e447cb90486121.md) | 319 | `result-track:8fa498f949e447cb9048612119188f2d0d53f75b0e8682d5009741917d8ac970` |
| 29 | `theorem` | [fst_isOpenEmbedding_of_right](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/fst-isopenembedding-of-right--62e6fb5313cf6cd11ce6e7f9.md) | 326 | `result-track:62e6fb5313cf6cd11ce6e7f9ab8d036e1561460790127eb1fb5caf57b12083b0` |
| 30 | `theorem` | [isOpenEmbedding_of_pullback](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/isopenembedding-of-pullback--5c5991534a570b7b282a6afb.md) | 334 | `result-track:5c5991534a570b7b282a6afb411ed4d3843757d576847e9ebec22f544a350759` |
| 31 | `theorem` | [fst_iso_of_right_embedding_range_subset](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/fst-iso-of-right-embedding-range-subset--34bec06792d3df37062a85a7.md) | 344 | `result-track:34bec06792d3df37062a85a70c12fa712cc37f72f3473c722c5d40c146988c19` |
| 32 | `theorem` | [snd_iso_of_left_embedding_range_subset](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/snd-iso-of-left-embedding-range-subset--5b19244ee14203a4bb776b77.md) | 358 | `result-track:5b19244ee14203a4bb776b77a2ba3abd7cabb0e5677226586d356d9bafddd6ea` |
| 33 | `theorem` | [pullback_snd_image_fst_preimage](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/pullback-snd-image-fst-preimage--3c04b477c7a92fe8e0e475d5.md) | 371 | `result-track:3c04b477c7a92fe8e0e475d5f245caa5ff892f1b85382d2edcfb215e2607408b` |
| 34 | `theorem` | [pullback_fst_image_snd_preimage](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/pullback-fst-image-snd-preimage--e9081b94e5f68e0f4f4bdb20.md) | 388 | `result-track:e9081b94e5f68e0f4f4bdb20cce43ef7025addaea4593ef77168343bea77dd4c` |
| 35 | `lemma` | [isOpen_iff_of_isColimit_cofork](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/isopen-iff-of-iscolimit-cofork--bfebd12d2e71c998da2c9f48.md) | 413 | `result-track:bfebd12d2e71c998da2c9f48a154bd787e5e14a3afb35cea21ae07df3fb9a5c3` |
| 36 | `lemma` | [isQuotientMap_of_isColimit_cofork](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/isquotientmap-of-iscolimit-cofork--55e71f7260566e4f69c0db06.md) | 424 | `result-track:55e71f7260566e4f69c0db06b3307fa559eb14b94afc15d9238f62e20fac4f8b` |
| 37 | `theorem` | [coequalizer_isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/declarations/coequalizer-isopen-iff--170270145ff6740ae176503f.md) | 431 | `result-track:170270145ff6740ae176503f5c575887daea876c86eaca2861851149a0e6e6b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
