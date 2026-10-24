# Verification target: GRWTSK.Topology.GeneralTopology.Pullbacks.Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06816a9c7b22aef6668186e95cf95efa4af31281",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06816a9c7b22aef6668186e95cf95efa4af31281`.

Source path: `GRWTSK/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.Limits.Products` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [pullbackFst](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/pullbackfst--3ec7c257cf0f6c5935cd11f8.md) | 45 | `declaration-track:3ec7c257cf0f6c5935cd11f886720f68ed7422b40230e32feb43c50b74e6a87d` |
| 2 | `lemma` | [pullbackFst_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/pullbackfst-apply--2753a752eb7fec02b83af729.md) | 49 | `result-track:2753a752eb7fec02b83af729ea93a91a073fec947b59f7fef3fb1b4ada43e000` |
| 3 | `abbrev` | [pullbackSnd](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/pullbacksnd--572c380bdbb9aecef2427968.md) | 52 | `declaration-track:572c380bdbb9aecef242796842e007ae79e5741e27d80a0ae406b4e493492958` |
| 4 | `lemma` | [pullbackSnd_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/pullbacksnd-apply--8da56f55d76bbad8a40a59fb.md) | 56 | `result-track:8da56f55d76bbad8a40a59fb1232ba5261af6de81dc61b5db03ba8810add7433` |
| 5 | `def` | [pullbackCone](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/pullbackcone--10cb3c9017d47ae2ba181713.md) | 59 | `declaration-track:10cb3c9017d47ae2ba181713e1eac328bbc9e21522687515ac4c9486ca367fbe` |
| 6 | `def` | [pullbackConeIsLimit](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/pullbackconeislimit--610efa0828aa59e60cc6967f.md) | 69 | `declaration-track:610efa0828aa59e60cc6967f4e7745d1960ab4e93392a6604d3204c8aee839c1` |
| 7 | `def` | [pullbackIsoProdSubtype](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/pullbackisoprodsubtype--2efdf40542bdb7016a5d5525.md) | 101 | `declaration-track:2efdf40542bdb7016a5d5525206a8bb54d506158988c1fc4fffcf13a81c19b90` |
| 8 | `theorem` | [pullbackIsoProdSubtype_inv_fst](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/pullbackisoprodsubtype-inv-fst--7f598c8fb765eeb428ea7bcf.md) | 107 | `result-track:7f598c8fb765eeb428ea7bcf25b6835241d9bae317da3396e1b5c8c9c64c202d` |
| 9 | `theorem` | [pullbackIsoProdSubtype_inv_fst_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/pullbackisoprodsubtype-inv-fst-apply--d6d1b85cdff38e0b8453bdf2.md) | 113 | `result-track:d6d1b85cdff38e0b8453bdf20e0bce45c3f3250c725f9ce939905d5b45d3c956` |
| 10 | `theorem` | [pullbackIsoProdSubtype_inv_snd](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/pullbackisoprodsubtype-inv-snd--cf3fa9badf0562a8932cc937.md) | 120 | `result-track:cf3fa9badf0562a8932cc93725932c74ee61934ae94bf307f2f5547051fa8237` |
| 11 | `theorem` | [pullbackIsoProdSubtype_inv_snd_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/pullbackisoprodsubtype-inv-snd-apply--665e89543e530ddc8b825b38.md) | 126 | `result-track:665e89543e530ddc8b825b38e7244872870a59bc5371c4e217670cdfbffcc33d` |
| 12 | `theorem` | [pullbackIsoProdSubtype_hom_fst](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/pullbackisoprodsubtype-hom-fst--19855820e6a074e2c8401ba4.md) | 132 | `result-track:19855820e6a074e2c8401ba4e53b34353ea51805600f4d6dbb39257b4415be73` |
| 13 | `theorem` | [pullbackIsoProdSubtype_hom_snd](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/pullbackisoprodsubtype-hom-snd--48148197b8f19b728cd8438a.md) | 137 | `result-track:48148197b8f19b728cd8438afbd3975ffb8f744ffd5ef7da819b516705426e7f` |
| 14 | `theorem` | [pullbackIsoProdSubtype_hom_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/pullbackisoprodsubtype-hom-apply--c27d67a74c298e76164bea36.md) | 144 | `result-track:c27d67a74c298e76164bea3690dd5df6cbc2a249057470ff7e0b82b653acab63` |
| 15 | `theorem` | [pullback_topology](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/pullback-topology--9a8318cb3928e305960a548a.md) | 154 | `result-track:9a8318cb3928e305960a548aaef9fd3e7dc7fc99addcb1bcef536ece7318a655` |
| 16 | `theorem` | [range_pullback_to_prod](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/range-pullback-to-prod--91ba6b3bc8ac2aff71314d27.md) | 165 | `result-track:91ba6b3bc8ac2aff71314d2755d00c422c17ba3f0273261201e85e3ba8d8c829` |
| 17 | `theorem` | [inducing_pullback_to_prod](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/inducing-pullback-to-prod--0a7beb8298a9f6715d980c19.md) | 182 | `result-track:0a7beb8298a9f6715d980c191bb5270fdfa3675040db55fea1809a198341bcbf` |
| 18 | `theorem` | [embedding_pullback_to_prod](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/embedding-pullback-to-prod--84fbf5b0b6de3f0ec883fc10.md) | 187 | `result-track:84fbf5b0b6de3f0ec883fc10ba930572392d3191874e31f02a2c96e57f77220d` |
| 19 | `theorem` | [range_pullback_map](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/range-pullback-map--c09065376ef9937a66e59e69.md) | 193 | `result-track:c09065376ef9937a66e59e6943dcc64fc994d8c891fe6ac26445beb1dce752eb` |
| 20 | `theorem` | [pullback_fst_range](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/pullback-fst-range--dd9c9b8bf8763184d5128fc9.md) | 222 | `result-track:dd9c9b8bf8763184d5128fc97217fc030f452eec6669fb844a6cf509f2309215` |
| 21 | `theorem` | [pullback_snd_range](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/pullback-snd-range--862668c26abdf88c2aeeaf61.md) | 234 | `result-track:862668c26abdf88c2aeeaf613164138d7009c4dd2a9c534b0909676023b0c93e` |
| 22 | `theorem` | [pullback_map_embedding_of_embeddings](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/pullback-map-embedding-of-embeddings--ada60dd07360c30e96a5aece.md) | 255 | `result-track:ada60dd07360c30e96a5aeceb782eb3000ca2cfd8f3d88da5842ac497d1bf1bb` |
| 23 | `theorem` | [pullback_map_openEmbedding_of_open_embeddings](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/pullback-map-openembedding-of-open-embeddings--82b2fbd9c66a69b4a71c326b.md) | 279 | `result-track:82b2fbd9c66a69b4a71c326b03feceaa13561598d9d43f78806cbbaa8c298c41` |
| 24 | `theorem` | [snd_embedding_of_left_embedding](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/snd-embedding-of-left-embedding--dce5cfa34b3a0cc8852be4b9.md) | 294 | `result-track:dce5cfa34b3a0cc8852be4b9e76df4d8fdafa2831f7d0ae666191f961182984e` |
| 25 | `theorem` | [fst_embedding_of_right_embedding](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/fst-embedding-of-right-embedding--03b36a1cea43abc1ff616a5f.md) | 303 | `result-track:03b36a1cea43abc1ff616a5f1cd3391a610c2acb99c26d4c65551930d8842093` |
| 26 | `theorem` | [embedding_of_pullback_embeddings](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/embedding-of-pullback-embeddings--e27e687bdf207a307766b976.md) | 312 | `result-track:e27e687bdf207a307766b9769f56c6bbb86a5dc86bd3c06f9719127db4db765f` |
| 27 | `theorem` | [snd_openEmbedding_of_left_openEmbedding](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/snd-openembedding-of-left-openembedding--2c74b676fc40aa7b063eaa8b.md) | 321 | `result-track:2c74b676fc40aa7b063eaa8bf0d8b61895346f962fec392bcd1dc3e9ddd8716f` |
| 28 | `theorem` | [fst_openEmbedding_of_right_openEmbedding](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/fst-openembedding-of-right-openembedding--4ae418e70c44f2b92f9f83c9.md) | 330 | `result-track:4ae418e70c44f2b92f9f83c95dcce7e5bc6b3d6ed26e93c64c330dddcc475043` |
| 29 | `theorem` | [openEmbedding_of_pullback_open_embeddings](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/openembedding-of-pullback-open-embeddings--16de8159e0f941c811ae5c9c.md) | 340 | `result-track:16de8159e0f941c811ae5c9c312c42007894ed779dc1e8a4e09d3f17cef31ca6` |
| 30 | `theorem` | [fst_iso_of_right_embedding_range_subset](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/fst-iso-of-right-embedding-range-subset--c24af0ba772a1e27f9d60df3.md) | 350 | `result-track:c24af0ba772a1e27f9d60df32b0f42eca86b866c324407d65ec71c726501f154` |
| 31 | `theorem` | [snd_iso_of_left_embedding_range_subset](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/snd-iso-of-left-embedding-range-subset--76a30788489fcb679e98cb61.md) | 365 | `result-track:76a30788489fcb679e98cb6171d2bc448d384b88b283b3a979a9802ea46b16e4` |
| 32 | `theorem` | [pullback_snd_image_fst_preimage](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/pullback-snd-image-fst-preimage--11a6b2ad782b6c3b59df4053.md) | 379 | `result-track:11a6b2ad782b6c3b59df40533bdb382cb99d2f019211982d2e8c8031d771ba3b` |
| 33 | `theorem` | [pullback_fst_image_snd_preimage](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/pullback-fst-image-snd-preimage--f7d34ed0a3edc4c24531f8a2.md) | 391 | `result-track:f7d34ed0a3edc4c24531f8a2c34ae53877e3c5e2b5806dc98ce144f4e796b2f7` |
| 34 | `theorem` | [coinduced_of_isColimit](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/coinduced-of-iscolimit--ff0514fc9cad298a08903341.md) | 407 | `result-track:ff0514fc9cad298a089033410b1965bbd23eadecdab608a81f43479feeb98d12` |
| 35 | `theorem` | [colimit_topology](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/colimit-topology--6c1279e89c9fadaecd05f2af.md) | 415 | `result-track:6c1279e89c9fadaecd05f2af4635f3f9c48886d0ca8b2de518cf4dd2d9e13f37` |
| 36 | `theorem` | [colimit_isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/colimit-isopen-iff--56a03fe2365d2f2ff3576a01.md) | 420 | `result-track:56a03fe2365d2f2ff3576a01866ac4d9f2665bc7c84498d511778423e949034e` |
| 37 | `theorem` | [coequalizer_isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variantba3434db1d134c0ff5824c5d0cd50bc61b98f65036e428f28560458b8a8cef6b.lean/declarations/coequalizer-isopen-iff--88faebf67d703f2da7ad842e.md) | 427 | `result-track:88faebf67d703f2da7ad842e7c484f54e3a1ebd86923b903fd734ec658f9bd57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
