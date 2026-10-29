# Verification target: Sum Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75291901cd9c235beb2173e9688fb37d580d41e2",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variant0657b9816f0186358952bd14303eed467723ff94eb3ed00602ccafaecbbc0350.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/SumPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/SumPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75291901cd9c235beb2173e9688fb37d580d41e2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variant0657b9816f0186358952bd14303eed467723ff94eb3ed00602ccafaecbbc0350.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variant0657b9816f0186358952bd14303eed467723ff94eb3ed00602ccafaecbbc0350.lean.json)

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
| 1 | `def` | [sum](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/sum.md) | 36 | `declaration-track:312197cbc0502d78ca338e58834c8b8118497c61edeca035aeedb5f2b3f8c98c` |
| 2 | `theorem` | [sum_adj_inl](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/sum-adj-inl.md) | 50 | `result-track:860e81067fbfdf298fea77c526061e5f617d8247c586d799ca15091b1841c234` |
| 3 | `theorem` | [sum_adj_inr](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/sum-adj-inr.md) | 53 | `result-track:3c1b9cc89307042dc4e00acf2a5c22bd843f5c94e00f09d54fad996d1d6f1450` |
| 4 | `theorem` | [map_inl_sup_map_inr](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/map-inl-sup-map-inr.md) | 56 | `result-track:2cd0505c0cf0ef0634887e84e98f6afd4f3894ab4d0b0c686d287effd6c520cb` |
| 5 | `theorem` | [map_inl](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/map-inl.md) | 59 | `result-track:b5960592311ba16342b0d7109d600740b281cabbbf20983874301315a547948b` |
| 6 | `theorem` | [map_inr](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/map-inr.md) | 62 | `result-track:72e4618f85893b84f8d55cc7a866b34224fd82477eb1480cd766dc91a57f983a` |
| 7 | `def` | [Iso.sumComm](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/iso-sumcomm.md) | 67 | `declaration-track:9ce22a1891c3060c525436e7d2533d9b14b5db12c08a5a348749c70036bf7257` |
| 8 | `def` | [Iso.sumAssoc](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/iso-sumassoc.md) | 72 | `declaration-track:5acd006194743466f5ae7306b2048b77305a220964205eafbb0a74880a8364e8` |
| 9 | `def` | [Embedding.sumInl](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/embedding-suminl.md) | 79 | `declaration-track:0d47defaad288299acff3a50e4caa92920487bb360150524991e1ed788a6e357` |
| 10 | `def` | [Embedding.sumInr](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/embedding-suminr.md) | 87 | `declaration-track:b653829eb8eb426c7c1a8bc8b6893e45580363331cc26827d9e06932c6c22d59` |
| 11 | `def` | [Hom.sum](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/hom-sum.md) | 95 | `declaration-track:706e149c6c683536e451cbc9afdb8d0515b660d22a0e38f78545fbfc9f0ef95a` |
| 12 | `lemma` | [Hom.sum_comp_sumComm](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/hom-sum-comp-sumcomm.md) | 99 | `result-track:42f144b474f2ff966784a95ca244cc2537716fa5b352bb83784b9849f9bbf6ec` |
| 13 | `lemma` | [Hom.sum_sum_comp_sumAssoc](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/hom-sum-sum-comp-sumassoc.md) | 103 | `result-track:bb5bf6c89b7e2eb847af662b414e7112f89986e9c1f789374d7714a1702ddc04` |
| 14 | `def` | [Embedding.sum](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/embedding-sum.md) | 111 | `declaration-track:25cf91ac95c0a79aa0069bdadfcf3431951eb0700bd93138d234339dae7cd09e` |
| 15 | `lemma` | [Embedding.toHom_sum](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/embedding-tohom-sum.md) | 116 | `result-track:cb0edc90b1d313a08dca9dc4524157ec960afb3f86ad999a007acecd74515f79` |
| 16 | `lemma` | [Embedding.sum_comp_sumComm](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/embedding-sum-comp-sumcomm.md) | 119 | `result-track:fbb1773789eaf342450a13577e4fc4003e3a9b8d89b8996db934e01a215eaf6c` |
| 17 | `lemma` | [Embedding.sum_sum_comp_sumAssoc](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/embedding-sum-sum-comp-sumassoc.md) | 123 | `result-track:32b76d8492a7a301489c6f1479db960aecbac84910e4d235967372480bcd09e3` |
| 18 | `def` | [Iso.sumCongr](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/iso-sumcongr.md) | 131 | `declaration-track:d7f3b7e682a68ca1cece23b18b03cbd2bbab166312188b24c884cf372b3ecc35` |
| 19 | `lemma` | [Iso.toHom_sumCongr](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/iso-tohom-sumcongr.md) | 135 | `result-track:fe35eac97299388301c23cf2ce5339ed1ce4b444bbd73249c22f87d1364fece5` |
| 20 | `lemma` | [Iso.toEmbedding_sumCongr](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/iso-toembedding-sumcongr.md) | 138 | `result-track:d169133e43d3c1921308b3f953dd568c29ac99342d4550aac397b022f6e7dddf` |
| 21 | `lemma` | [Iso.sumComm_comp_sumCongr](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/iso-sumcomm-comp-sumcongr.md) | 141 | `result-track:26cac2bd2ae8ef6753212acd250922199cd3dd9420fe4c3eadc3134a0b49ec75` |
| 22 | `lemma` | [Iso.sumAssoc_comp_sumCongr](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/iso-sumassoc-comp-sumcongr.md) | 145 | `result-track:ec7c958eebd8ed36028893f290dcbfecfd4d3a7f73dc749e72aef3340468a8ac` |
| 23 | `def` | [edgeSetSumEquiv](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/edgesetsumequiv.md) | 152 | `declaration-track:74e8c4eeab4a9cdb9d3a10973bae0dd74984c5bed329a6392186156db0f7533e` |
| 24 | `lemma` | [not_adj_sum_inl_inr](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/not-adj-sum-inl-inr.md) | 168 | `result-track:47f38814942f7ae6041c738b0d09c18634f04ed88af19a2295fdbd9e9f52496c` |
| 25 | `lemma` | [not_reachable_sum_inl_inr](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/not-reachable-sum-inl-inr.md) | 170 | `result-track:c7cf5f1cab56c61a48511ffbc1f68948628b2d3104554dffd836704a18306f02` |
| 26 | `lemma` | [not_preconnected_sum](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/not-preconnected-sum.md) | 180 | `result-track:c3ea286162481ac81827ad337c6aeefc3127e013f109a9abcc4a5941a25969ef` |
| 27 | `lemma` | [not_connected_sum](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/not-connected-sum.md) | 183 | `result-track:e2bc6c23e92c47183eb7e08af33bbd4951cccd721ce96db45ffd249e92350b8f` |
| 28 | `lemma` | [Reachable.sum_sup_edge](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/reachable-sum-sup-edge.md) | 186 | `result-track:7dc3221b170db238d68a298a5e2db8e75ffa546b0b60fdb29122410082270eee` |
| 29 | `lemma` | [Preconnected.sum_sup_edge](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/preconnected-sum-sup-edge.md) | 191 | `result-track:af690e1d76794e17b92893e659282251ae0555136b73c0be10f05c38b12e347b` |
| 30 | `lemma` | [Connected.sum_sup_edge](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/connected-sum-sup-edge.md) | 199 | `result-track:e89db893f0677882b9a7fd7ba72e2155c9c027be71205e69107294ee36001b8c` |
| 31 | `def` | [Coloring.sum](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/coloring-sum.md) | 204 | `declaration-track:2b44bf2fbc40592234f0cc7f85aee995ecc4bc1f46243668a315773671e85d4a` |
| 32 | `def` | [Coloring.sumLeft](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/coloring-sumleft.md) | 209 | `declaration-track:c4500e976628022467f1460b10bd31c1401df112941f10c069697bd12bbb6c7f` |
| 33 | `def` | [Coloring.sumRight](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/coloring-sumright.md) | 212 | `declaration-track:012ce134c719af5e6fd2538ae53834373b135f11de658011643c96f50eda8349` |
| 34 | `theorem` | [Coloring.sumLeft_sum](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/coloring-sumleft-sum.md) | 215 | `result-track:21cc2e926bfbdebc44cf90107dcf07856b1e86b62c462bc64cbedac1f97428b3` |
| 35 | `theorem` | [Coloring.sumRight_sum](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/coloring-sumright-sum.md) | 219 | `result-track:ddceea14959acaef9dc64cb9fcf44733762677cb2a0b0228f28883b4f8b26f74` |
| 36 | `theorem` | [Coloring.sum_sumLeft_sumRight](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/coloring-sum-sumleft-sumright.md) | 223 | `result-track:f82b690f40959a01ee89e4cd0922e8f2222c8df76b0c66823a5b3d3c28b32efa` |
| 37 | `def` | [Coloring.sumEquiv](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/coloring-sumequiv.md) | 227 | `declaration-track:941293c43be82aa9f8b806dbc26a18dcfe5830931487ee3f1c61cbd9710752b3` |
| 38 | `def` | [Coloring.sumFin](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/coloring-sumfin.md) | 234 | `declaration-track:93401205b872be5e3a2f371fdeb7f6fe34853f51b561fcaeba75dc42b36aba54` |
| 39 | `theorem` | [Colorable.sum_max](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/colorable-sum-max.md) | 239 | `result-track:f858af0ef0a1af44c1f014f47cdda5e41923e25cc06590ff2849ee26d0a9e8d1` |
| 40 | `theorem` | [Colorable.of_sum_left](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/colorable-of-sum-left.md) | 242 | `result-track:73d4cfda896c3a6738e64b4d88ae07275e06d041cff72763101b18452aea41d9` |
| 41 | `theorem` | [Colorable.of_sum_right](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/colorable-of-sum-right.md) | 245 | `result-track:04a82f036f2265caf13b763376c2166a5a4d43266cdad2472859beac9fa495d4` |
| 42 | `theorem` | [colorable_sum](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/colorable-sum.md) | 249 | `result-track:1c52294fdc91281fa8f4872e2817efb33d661e019d77cc6ed3fcc373e145fe4c` |
| 43 | `theorem` | [chromaticNumber_le_sum_left](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/chromaticnumber-le-sum-left.md) | 253 | `result-track:405f051147b11765b0d0d29956c5279869ba4ae88aa9d177d685e63f60212a8d` |
| 44 | `theorem` | [chromaticNumber_le_sum_right](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/chromaticnumber-le-sum-right.md) | 256 | `result-track:5b16e3c9a94186a09f2731589ca9fd3ba46029add5da12ceaa70dc5a70070dd9` |
| 45 | `theorem` | [chromaticNumber_sum](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/chromaticnumber-sum.md) | 260 | `result-track:7871163fb0dee5607383299fa1b650dd88d68f067d399e6f8cc91ead1d2241ca` |
| 46 | `lemma` | [neighborSet_sum_inl](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/neighborset-sum-inl.md) | 270 | `result-track:648954452f0f0c9dc0d8430c34181152823284e88bb13b29d11b7cfbfadcfb51` |
| 47 | `lemma` | [neighborSet_sum_inr](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/neighborset-sum-inr.md) | 273 | `result-track:1b5585358b5a4d5297fab4a436a2879226412fd5c382e50fa8e8e3e5743e8ce0` |
| 48 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SumPublic.lean/declarations/instance.md) | 276 | `declaration-track:111f7262dc5f08337337fa57b971a07c66b82a0b1c82ed10c4d105ee7112befe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ceebc2a427e0a2b7f0e522ec8c30493ae270ae39c10cab39ec85a0f6628d02f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variant0657b9816f0186358952bd14303eed467723ff94eb3ed00602ccafaecbbc0350.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variant0657b9816f0186358952bd14303eed467723ff94eb3ed00602ccafaecbbc0350.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
