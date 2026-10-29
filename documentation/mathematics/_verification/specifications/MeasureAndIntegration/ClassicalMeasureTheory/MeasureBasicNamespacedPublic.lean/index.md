# Verification target: Measure Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1db5b135ef957b4ac5c78b343d167163a8f62bb",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variante4c699945a05a75c336fd6cf4044c39cbc245e994515421d677bdf1acb27a831.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1db5b135ef957b4ac5c78b343d167163a8f62bb`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variante4c699945a05a75c336fd6cf4044c39cbc245e994515421d677bdf1acb27a831.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Basic/Variante4c699945a05a75c336fd6cf4044c39cbc245e994515421d677bdf1acb27a831.lean.json)

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
| 1 | `theorem` | [measure_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-union-source-edition-2.md) | 85 | `result-track:c6d4b7ecd1739946240a9be369f07a03de924877fa196751e730969ca3fe0aa8` |
| 2 | `theorem` | [measure_union'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-union.md) | 88 | `result-track:56a784ce34f29bef302d08a10cd9804e14f5f94685d70362e647b0e55e9e776f` |
| 3 | `theorem` | [measure_inter_add_sdiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-inter-add-sdiff.md) | 91 | `result-track:4e7d90351f854f67e5083dd75b962b4e0faa9f3739bd5ec2ca614bea86c97cfe` |
| 4 | `theorem` | [measure_sdiff_add_inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-sdiff-add-inter.md) | 96 | `result-track:9cd692c08bd93ece9e89ba12e8f3fe13cfe3924d0472f310cb71bb0989eb0eb2` |
| 5 | `theorem` | [measure_sdiff_eq_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-sdiff-eq-top.md) | 101 | `result-track:3753a0a99cdf8356dd055b7f34b3afdee24cf5566e7ab18f5185d92564d4f096` |
| 6 | `theorem` | [measure_union_add_inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-union-add-inter.md) | 108 | `result-track:47fad92ae8c1590ea8ab29b5cd2988e5577fe86be97751bcf0b2a3d28ee7229e` |
| 7 | `theorem` | [measure_union_add_inter'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-union-add-inter-source-edition-2.md) | 114 | `result-track:c76f65587bde4b7b46700a7d25daaf4947b49236dd63464e52e9eb2fd6591325` |
| 8 | `lemma` | [measure_symmDiff_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-symmdiff-eq.md) | 118 | `result-track:6d0a146151611604748a0e3e459dd15343a6f1bb981214231a424df2df278103` |
| 9 | `lemma` | [measure_symmDiff_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-symmdiff-le.md) | 123 | `result-track:e75754d4920a730f2644e0e781ce0b06ce82c18b5940ee9b87b230c3426bb009` |
| 10 | `theorem` | [measure_symmDiff_eq_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-symmdiff-eq-top.md) | 127 | `result-track:8b84c83392775ff363110f265b22856b5cfc92efd054a005498ffd37e90d0b35` |
| 11 | `theorem` | [measure_add_measure_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-add-measure-compl.md) | 130 | `result-track:97aff6acf2ae697b695b62778f7cefc331a065d1faacf260f7827a16c51af73c` |
| 12 | `theorem` | [measure_biUnion₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-biunion.md) | 133 | `result-track:86bdc65916bfc8f7ad51205206c2fc67827838c271751ad49b7de571d05096b9` |
| 13 | `theorem` | [measure_biUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-biunion-source-edition-2.md) | 140 | `result-track:a81ac86f8504ebea9e50a5c653385830c957cfc5109b1986f6dc3a81278a6be5` |
| 14 | `theorem` | [measure_sUnion₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-sunion-source-edition-2.md) | 144 | `result-track:f6b942da9adf0cc794f585341cd75c6ef550cfea1269394f7db80d239dbdd4d6` |
| 15 | `theorem` | [measure_sUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-sunion.md) | 148 | `result-track:c297fd596ce386463e17db7f0e4b0fa66e82ff756e385f0445d4d30364b4cfe2` |
| 16 | `theorem` | [measure_biUnion_finset₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-biunion-finset.md) | 152 | `result-track:302906ed4396c443c8c5d1820e3b9adfdaef9428ebf185a93a02347b26c3f2fd` |
| 17 | `theorem` | [measure_biUnion_finset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-biunion-finset-source-edition-2.md) | 158 | `result-track:ae3c6cff287365c845fd416dfbe6dd95e2c9ca51962e2ac4d6ce1245427ab9be` |
| 18 | `theorem` | [tsum_meas_le_meas_iUnion_of_disjoint₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/tsum-meas-le-meas-iunion-of-disjoint-source-edition-2.md) | 164 | `result-track:6ca84e702fde1f8d160668b932d12272c2d2c031197b0364064c3175b59e953c` |
| 19 | `theorem` | [tsum_meas_le_meas_iUnion_of_disjoint](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/tsum-meas-le-meas-iunion-of-disjoint.md) | 175 | `result-track:60e01feaac93edfc9fbe1b40fbafc552d31857182a8740c6eee172b9e4f16334` |
| 20 | `theorem` | [tsum_measure_preimage_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/tsum-measure-preimage-singleton.md) | 183 | `result-track:c2b778ad3c478ba2bd4afbe6975fa8690c42c50a6ddbc5e9c8a5b046f547a4e7` |
| 21 | `lemma` | [measure_preimage_eq_zero_iff_of_countable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-preimage-eq-zero-iff-of-countable.md) | 187 | `result-track:734f705409590e09a6cc77a82d3d0ad697699237ea1720970dcaa701ebc41736` |
| 22 | `theorem` | [sum_measure_preimage_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/sum-measure-preimage-singleton.md) | 193 | `result-track:f367222e474e2df22b4903da207d2c8dd01b423e3e73c4a1609f40829242795a` |
| 23 | `lemma` | [sum_measure_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/sum-measure-singleton.md) | 198 | `result-track:433c32600729d04e443e990e256ea844c695199f784e8c3b5d15694dca719602` |
| 24 | `theorem` | [measure_sdiff_null'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-sdiff-null.md) | 206 | `result-track:b67c3fd4c76b0642d80cdee5bae8a1ca8956709ef133a9ca140625792cb22685` |
| 25 | `theorem` | [measure_add_sdiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-add-sdiff.md) | 211 | `result-track:c6c06153e27840c695df29c86322914f6c499730dbff3cd02a1b852c69943242` |
| 26 | `theorem` | [measure_sdiff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-sdiff-source-edition-2.md) | 217 | `result-track:2627ed7b2ab67195d505119c4fac215f4096fd00e9ecc9940795b6fb57635d9d` |
| 27 | `theorem` | [measure_sdiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-sdiff.md) | 223 | `result-track:0d1e12f041db1b915e6aad2c849873737dce6d8123ef7cb08d0e5b03a55b2fa1` |
| 28 | `theorem` | [le_measure_sdiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/le-measure-sdiff.md) | 228 | `result-track:1754a862de85774d42378cf6312f3f408f9ad0a6b16f651919a6c00afa200f45` |
| 29 | `theorem` | [le_measure_symmDiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/le-measure-symmdiff.md) | 234 | `result-track:3de34ad09e392fb98202a94fc6c9b724c265fe2fea95a2973029eb8eef5d7eb2` |
| 30 | `theorem` | [measure_eq_top_iff_of_symmDiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-eq-top-iff-of-symmdiff.md) | 239 | `result-track:192658a9404f5591a6a2744cad30141d22230c0fef9fd7fd3f79dcc920887666` |
| 31 | `theorem` | [measure_ne_top_iff_of_symmDiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-ne-top-iff-of-symmdiff.md) | 253 | `result-track:d6d2d44c7167e69fbdd9a0881c4ef059751cd4ec3de7991a20973d1395860093` |
| 32 | `theorem` | [measure_sdiff_lt_of_lt_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-sdiff-lt-of-lt-add.md) | 256 | `result-track:4606b3bfd9ef993f56e6f7ec24df276915e92d8830bee9378be219fcade2fda4` |
| 33 | `theorem` | [measure_sdiff_le_iff_le_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-sdiff-le-iff-le-add.md) | 263 | `result-track:3499198217a53cc8dd08d676e7153f36b568ccc63d0a8d5d02cfb7e496fc5fa6` |
| 34 | `theorem` | [measure_eq_measure_of_null_sdiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-eq-measure-of-null-sdiff.md) | 270 | `result-track:f499215d62e59e2dd6c188615b48f2210308cf99d76e639433fd6b971096ed2c` |
| 35 | `theorem` | [measure_eq_measure_of_between_null_sdiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-eq-measure-of-between-null-sdiff.md) | 276 | `result-track:2774ff992bc91c01a6258f0d964151fed948a4434eaa6844d9a6841cb1e7c640` |
| 36 | `theorem` | [measure_eq_measure_smaller_of_between_null_sdiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-eq-measure-smaller-of-between-null-sdiff.md) | 290 | `result-track:11da581509546a19c94eb683c5c8043eb7a00a7584833e9ecacd2adbc35e4aa9` |
| 37 | `theorem` | [measure_eq_measure_larger_of_between_null_sdiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-eq-measure-larger-of-between-null-sdiff.md) | 298 | `result-track:0275b44bc7aeea56fa78124622b5ef3c93d6ef051b4e276881ade62afea07fea` |
| 38 | `lemma` | [measure_compl₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-compl.md) | 306 | `result-track:544560238495442b58a86628a14eba2e28371077ab3cddfb335c455abce5214d` |
| 39 | `theorem` | [measure_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-compl-source-edition-2.md) | 310 | `result-track:d67dc357a585a410af974e31c1ffb01c9c44aaa20f601f00d83d5d569e5a8d3e` |
| 40 | `lemma` | [measure_inter_conull'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-inter-conull.md) | 313 | `result-track:0920d80a0de26c7d1d231c4acfe4de0a55d5ee253adcb5fca1bbc61b05aa1f74` |
| 41 | `lemma` | [measure_inter_conull](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-inter-conull-source-edition-2.md) | 316 | `result-track:1802ca102496bdcb592e727a88f473420003d619628018fbd06ea2288bb55009` |
| 42 | `theorem` | [union_ae_eq_left_iff_ae_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/union-ae-eq-left-iff-ae-subset.md) | 320 | `result-track:2c7040375c5fa572bdb4bbc650b31ad522a32417198324bc74139ec930c9f640` |
| 43 | `theorem` | [union_ae_eq_right_iff_ae_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/union-ae-eq-right-iff-ae-subset.md) | 329 | `result-track:cc6715fcbd7e2dc5f8d313ac50d29de4fd935ab60db432895dbde28582eb1681` |
| 44 | `theorem` | [ae_eq_of_ae_subset_of_measure_ge](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/ae-eq-of-ae-subset-of-measure-ge.md) | 332 | `result-track:4bf4d401a0b6e24ec52e9a86dd1ccef4a701be926035e315975e4624764b2579` |
| 45 | `theorem` | [ae_eq_of_subset_of_measure_ge](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/ae-eq-of-subset-of-measure-ge.md) | 340 | `result-track:3749fdb3b7de78d35ed31ca40ff19225eec90509033362e50f7b938605c13326` |
| 46 | `theorem` | [measure_iUnion_congr_of_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-iunion-congr-of-subset.md) | 344 | `result-track:12e481cb71fd49b88bc1ec4ec5a1559b38e18423459434624257fc6dcb02ac47` |
| 47 | `theorem` | [measure_union_congr_of_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-union-congr-of-subset.md) | 373 | `result-track:1a82e029d01485d298609585fd91d87eb1a554205d3d3663a8f7bf87729ff7da` |
| 48 | `theorem` | [measure_iUnion_toMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-iunion-tomeasurable.md) | 379 | `result-track:6542f1946826a0b5743f7d179eec1e65e9ee19d70e0afc374d19ebfcddb55345` |
| 49 | `theorem` | [measure_biUnion_toMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-biunion-tomeasurable.md) | 384 | `result-track:74cdf818065769e9f8484f5815892f71ebf969ca56e51419c06d88198b174be9` |
| 50 | `theorem` | [measure_toMeasurable_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-tomeasurable-union.md) | 390 | `result-track:8022b26801948594d53005a1508aff548fc009845adcab0f82070e56fb0ae9b8` |
| 51 | `theorem` | [measure_union_toMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-union-tomeasurable.md) | 396 | `result-track:0c8d06b71a66cc7bacf48457fddf9aa836067a21e4cac6eea23b1eebf4833a6e` |
| 52 | `theorem` | [sum_measure_le_measure_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/sum-measure-le-measure-univ.md) | 401 | `result-track:52ad57c9f0e1631fe1ff9a3fe94652f47c833adf5878427060531e55c39b663b` |
| 53 | `theorem` | [tsum_measure_le_measure_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/tsum-measure-le-measure-univ.md) | 407 | `result-track:952fe785e55823d30e21998289ba1a2a009ab227a5e489a242ceb43965de85a5` |
| 54 | `theorem` | [exists_nonempty_inter_of_measure_univ_lt_tsum_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/exists-nonempty-inter-of-measure-univ-lt-tsum-measure.md) | 415 | `result-track:b20fd2d01c4140208e7c356f6906a772c31d031f93a6d95de24d48fa605fcd43` |
| 55 | `theorem` | [exists_nonempty_inter_of_measure_univ_lt_sum_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/exists-nonempty-inter-of-measure-univ-lt-sum-measure.md) | 425 | `result-track:26bf85095a86e6c9bfe1b9490000a7ca14273e323f10e7ad03bd37e841801ec6` |
| 56 | `theorem` | [nonempty_inter_of_measure_lt_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/nonempty-inter-of-measure-lt-add-source-edition-2.md) | 436 | `result-track:bfaa946b2b6863cd8d316a8e10db3ea68589288baeb640a0c942085bf12d7199` |
| 57 | `theorem` | [nonempty_inter_of_measure_lt_add'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/nonempty-inter-of-measure-lt-add.md) | 447 | `result-track:a22236ac72af3ab8eca4333fd302d378800e0f576b2af8bf0f023cf9017e6cf7` |
| 58 | `theorem` | [Measure.measure_inter_eq_of_measure_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-measure-inter-eq-of-measure-eq.md) | 456 | `result-track:ce834b049d25db948665c551748ac8617a2ef30d7a792e824aee0ba23761a5fe` |
| 59 | `lemma` | [Measure.measure_inter_eq_of_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-measure-inter-eq-of-ae.md) | 469 | `result-track:24e9d702a8f7cf6d16962b106a9c8e363b15dfa35d23560a5a3005006405eb06` |
| 60 | `theorem` | [Measure.measure_toMeasurable_inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-measure-tomeasurable-inter.md) | 480 | `result-track:9e3c2af15f23e58910fd52c4746bb212ceeb4d6f9bdca149362081ddc28a66d1` |
| 61 | `theorem` | [measure_if](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/measure-if.md) | 485 | `result-track:b4ffb0ed0b27ab67182737cb10cebf7a3194956af75daf5995911b66de108333` |
| 62 | `lemma` | [ext_of_measurableAtoms](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureBasicNamespacedPublic.lean/declarations/ext-of-measurableatoms.md) | 489 | `result-track:9935b5e4f14c62e7e5193e978db5465b8c266509150dfadf801a5bb3c8d7b482` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6352d7e359eb07da69f4c0adee9b523a622646bfff1530ede0438a8e2ad7bb27 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variante4c699945a05a75c336fd6cf4044c39cbc245e994515421d677bdf1acb27a831.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Basic/Variante4c699945a05a75c336fd6cf4044c39cbc245e994515421d677bdf1acb27a831.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
