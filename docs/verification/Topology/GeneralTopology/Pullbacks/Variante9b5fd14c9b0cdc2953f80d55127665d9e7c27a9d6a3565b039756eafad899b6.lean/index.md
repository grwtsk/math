# Verification target: GRWTSK.Topology.GeneralTopology.Pullbacks.Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6046e580c381b8b72dfed57006c09fb974a994b1",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6046e580c381b8b72dfed57006c09fb974a994b1`.

Source path: `GRWTSK/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.Limits.Products` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [pullbackFst](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/pullbackfst--5718d4b599938aece50c1505.md) | 31 | `declaration-track:5718d4b599938aece50c15056cb6ad580237afb31ce19d2dcc2313c47c942f45` |
| 2 | `lemma` | [pullbackFst_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/pullbackfst-apply--2b06e589a1fc19cd8a01bf86.md) | 34 | `result-track:2b06e589a1fc19cd8a01bf86e1c6568e6d63505a0e86e76bfc3063d942d1663c` |
| 3 | `abbrev` | [pullbackSnd](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/pullbacksnd--0ff5cc7c239b9e6e59e7701a.md) | 37 | `declaration-track:0ff5cc7c239b9e6e59e7701ae8009a7804031e76ef584eb98308ad842c86714c` |
| 4 | `lemma` | [pullbackSnd_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/pullbacksnd-apply--ae6cb037bf87a498f66f1308.md) | 40 | `result-track:ae6cb037bf87a498f66f1308cbc1b94055866d3ec3b9ddbed83598f69cde6841` |
| 5 | `def` | [pullbackCone](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/pullbackcone--e486dab5c6120bc912c0686b.md) | 43 | `declaration-track:e486dab5c6120bc912c0686bf469930f1a5156d5c1fa4f958e9536d64bba20e2` |
| 6 | `def` | [pullbackConeIsLimit](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/pullbackconeislimit--a120f4ca30073d96dfabe3d0.md) | 51 | `declaration-track:a120f4ca30073d96dfabe3d098deef0e9f0b22d97ef4cc2cb7b3893daab5a95f` |
| 7 | `def` | [pullbackIsoProdSubtype](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/pullbackisoprodsubtype--04cfbe1f1add00145d2d5348.md) | 76 | `declaration-track:04cfbe1f1add00145d2d53482e9e2f805589672d0d774c19bd2eac8a69361f9a` |
| 8 | `theorem` | [pullbackIsoProdSubtype_inv_fst](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/pullbackisoprodsubtype-inv-fst--134c8d42c3c32aada17b7b77.md) | 81 | `result-track:134c8d42c3c32aada17b7b775e245a3414ec41a5fcf35688cd063b9ed7a2a7f0` |
| 9 | `theorem` | [pullbackIsoProdSubtype_inv_fst_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/pullbackisoprodsubtype-inv-fst-apply--f8af606f1336896423e39a26.md) | 85 | `result-track:f8af606f1336896423e39a2696c28efa5643c5d50e53d32aabb5fe18445fdad2` |
| 10 | `theorem` | [pullbackIsoProdSubtype_inv_snd](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/pullbackisoprodsubtype-inv-snd--cb4f572393890ef52ee7e96a.md) | 91 | `result-track:cb4f572393890ef52ee7e96a6a4c4e8af97a667c43a1c5f3b7d3d68a95f15e22` |
| 11 | `theorem` | [pullbackIsoProdSubtype_inv_snd_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/pullbackisoprodsubtype-inv-snd-apply--b27735087caede91396c404f.md) | 95 | `result-track:b27735087caede91396c404fdd67b397035aea7e2a1258ce752c40fa313bd7b7` |
| 12 | `theorem` | [pullbackIsoProdSubtype_hom_fst](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/pullbackisoprodsubtype-hom-fst--8493f883b4ccc670b5f093a8.md) | 100 | `result-track:8493f883b4ccc670b5f093a8f3a5072dde17528d176248a4b3cbff05d73f7461` |
| 13 | `theorem` | [pullbackIsoProdSubtype_hom_snd](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/pullbackisoprodsubtype-hom-snd--5ec905061cdbd61a11ff755b.md) | 104 | `result-track:5ec905061cdbd61a11ff755b803f8a1a2cb2088eea4db3ab8cf25676ab8df743` |
| 14 | `theorem` | [pullbackIsoProdSubtype_hom_apply](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/pullbackisoprodsubtype-hom-apply--ab5cd4440ad198fa60949e4a.md) | 108 | `result-track:ab5cd4440ad198fa60949e4a5d10aa2a30b1b6b98b475f74013951a15da9665b` |
| 15 | `theorem` | [pullback_topology](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/pullback-topology--b84960efd3ae33676234ca4a.md) | 117 | `result-track:b84960efd3ae33676234ca4a3d59c3681a2caf7c813366c048e70da1951a5cb6` |
| 16 | `theorem` | [range_pullback_to_prod](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/range-pullback-to-prod--5e054775837adfd553b88589.md) | 127 | `result-track:5e054775837adfd553b885893b832d3fa015aa066e9c50fbef757c4eca767fca` |
| 17 | `def` | [pullbackHomeoPreimage](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/pullbackhomeopreimage--9308ea480900c9a855e91444.md) | 145 | `declaration-track:9308ea480900c9a855e914447c8928b686452503f687a76618fe772bcbe71738` |
| 18 | `theorem` | [isInducing_pullback_to_prod](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/isinducing-pullback-to-prod--702d91dc61cc0ce7d71e6507.md) | 166 | `result-track:702d91dc61cc0ce7d71e650757da2771b30a1cb945f1ea03a0f63831a294334d` |
| 19 | `theorem` | [isEmbedding_pullback_to_prod](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/isembedding-pullback-to-prod--c3be0e3c34680267f5dd449a.md) | 172 | `result-track:c3be0e3c34680267f5dd449a7e1ed2630505783888444aa809562742866ac2ff` |
| 20 | `theorem` | [range_pullback_map](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/range-pullback-map--0bc895d22cde6431334bdf3a.md) | 180 | `result-track:0bc895d22cde6431334bdf3ae8863b5a3b219e19a836b11b79f0640a5818a5f6` |
| 21 | `theorem` | [pullback_fst_range](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/pullback-fst-range--981034a9d4868ed1fe49dd5c.md) | 206 | `result-track:981034a9d4868ed1fe49dd5ca03c9975d9e565700cf52e967cf761ff658d3d1d` |
| 22 | `theorem` | [pullback_snd_range](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/pullback-snd-range--971698148b403646cdcfcfb1.md) | 217 | `result-track:971698148b403646cdcfcfb10053866244e78ca4d2ad60fa5d72eb7df3a9d117` |
| 23 | `theorem` | [pullback_map_isEmbedding](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/pullback-map-isembedding--5e198a3055764b687135f273.md) | 239 | `result-track:5e198a3055764b687135f2739a323dd77ded2aeb64277779dee0cb8e25421f1e` |
| 24 | `theorem` | [pullback_map_isOpenEmbedding](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/pullback-map-isopenembedding--742c94f6913ecc05eed29cd1.md) | 267 | `result-track:742c94f6913ecc05eed29cd1d881f050aa2602e7110c37ff7d048876c0f75a92` |
| 25 | `lemma` | [snd_isEmbedding_of_left](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/snd-isembedding-of-left--d597cd5f0a77df24d29ee1f6.md) | 282 | `result-track:d597cd5f0a77df24d29ee1f6a51c7089637caf450a11077c7a46bf428336c63c` |
| 26 | `theorem` | [fst_isEmbedding_of_right](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/fst-isembedding-of-right--8da92d40762a6d204b8435b0.md) | 292 | `result-track:8da92d40762a6d204b8435b0b3f623c50eddffcab9c146a1fb902ce74191a513` |
| 27 | `theorem` | [isEmbedding_of_pullback](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/isembedding-of-pullback--50bd8322e3e0679ccc943496.md) | 302 | `result-track:50bd8322e3e0679ccc943496b32013f89cfce1c6f699f8d50ddfaac1f56abba0` |
| 28 | `theorem` | [snd_isOpenEmbedding_of_left](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/snd-isopenembedding-of-left--a9af06a1902c5685b490775a.md) | 311 | `result-track:a9af06a1902c5685b490775a71c07673e1b5287ba558448d69d8337abf436a77` |
| 29 | `theorem` | [fst_isOpenEmbedding_of_right](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/fst-isopenembedding-of-right--a4ae5dc33f1b1eb0c8dc9408.md) | 318 | `result-track:a4ae5dc33f1b1eb0c8dc9408e2ba93b099058bc1d36c37e21ad7deb5014762bb` |
| 30 | `theorem` | [isOpenEmbedding_of_pullback](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/isopenembedding-of-pullback--3b38fafdeae5682c9a7bec05.md) | 326 | `result-track:3b38fafdeae5682c9a7bec059ac0d1ba1a3b33a30b061fb0568f7cc9c4984ec1` |
| 31 | `theorem` | [fst_iso_of_right_embedding_range_subset](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/fst-iso-of-right-embedding-range-subset--91272612ad6be5b5a6d8559b.md) | 336 | `result-track:91272612ad6be5b5a6d8559bfcf1056980761d265d291b6e704101a5bacf67b6` |
| 32 | `theorem` | [snd_iso_of_left_embedding_range_subset](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/snd-iso-of-left-embedding-range-subset--b326a617de511af1633a7cce.md) | 350 | `result-track:b326a617de511af1633a7ccef6d0a82ab648560ec5177e8669478033c9503c5c` |
| 33 | `theorem` | [pullback_snd_image_fst_preimage](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/pullback-snd-image-fst-preimage--69b4850a2044721617b181c5.md) | 363 | `result-track:69b4850a2044721617b181c5e011ea7e85bbbbdd255886c020b89d708be2bdd3` |
| 34 | `theorem` | [pullback_fst_image_snd_preimage](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/pullback-fst-image-snd-preimage--d78fc0c78458d9063bd17082.md) | 380 | `result-track:d78fc0c78458d9063bd1708212140ce6f9358d40ba06842e9b1c756ee0df4fe6` |
| 35 | `lemma` | [isOpen_iff_of_isColimit_cofork](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/isopen-iff-of-iscolimit-cofork--b3706d5c5d7785403b3f891a.md) | 405 | `result-track:b3706d5c5d7785403b3f891ac0ab247fbe4f1bbbe2ad9a18567a469a4efc29a2` |
| 36 | `lemma` | [isQuotientMap_of_isColimit_cofork](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/isquotientmap-of-iscolimit-cofork--acefa94621a86167e50d176b.md) | 416 | `result-track:acefa94621a86167e50d176b2c8d813dd50017549f372a89e5683ff92d75ea01` |
| 37 | `theorem` | [coequalizer_isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/declarations/coequalizer-isopen-iff--038018d0c328a01017c19011.md) | 423 | `result-track:038018d0c328a01017c19011a6edbbc12ac6b8135aebb8d5f6e0ee10d9126b6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
