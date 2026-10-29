# Verification target: Nth Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5eb5218dcb9e8f94c4de3e680c36304ed9aa81b5",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Nth/Variant954bc9f0856dd1915be4d8ca90c736253680041804dff1ca94fca3805fb74a98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5eb5218dcb9e8f94c4de3e680c36304ed9aa81b5`.

Source path: `GRWTSK/Topology/GeneralTopology/Nth/Variant954bc9f0856dd1915be4d8ca90c736253680041804dff1ca94fca3805fb74a98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Nth/Variant954bc9f0856dd1915be4d8ca90c736253680041804dff1ca94fca3805fb74a98.lean.json)

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
| 1 | `def` | [nth](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth.md) | 68 | `declaration-track:9c8122234a53d18f6521e447416456f6b10236ee13dbcc777081f95e869384c6` |
| 2 | `theorem` | [nth_of_card_le](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-of-card-le.md) | 80 | `result-track:e92702700eadceccdd2ac3d28b1f39ade149da833e6e350ca67a0e0af407cf2a` |
| 3 | `theorem` | [nth_eq_getD_sort](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-eq-getd-sort.md) | 83 | `result-track:1ceba6aead2923af964b09fe2e9a0a8982fe68666158a35f2aacf33c7138c3c7` |
| 4 | `theorem` | [nth_eq_orderEmbOfFin](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-eq-orderemboffin.md) | 87 | `result-track:002b27e2b7e7787b87a019e6bed4ea889fe0d036e54d56f862a0a75b09a2717d` |
| 5 | `theorem` | [nth_strictMonoOn](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-strictmonoon.md) | 91 | `result-track:364f5cdf8644422fe06effb5cef9fb90b72f0aa6e681b15466808f314fd021ab` |
| 6 | `theorem` | [nth_lt_nth_of_lt_card](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-lt-nth-of-lt-card.md) | 97 | `result-track:e0cfd2b15c36b31edd5f6fd8014193e1c24bd766c10ae12e4e3778bd999e8a80` |
| 7 | `theorem` | [nth_le_nth_of_lt_card](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-le-nth-of-lt-card.md) | 101 | `result-track:ba5d65957f119a4a574275b066ccc944c794f0c0d8b164887bf267f07760d55e` |
| 8 | `theorem` | [lt_of_nth_lt_nth_of_lt_card](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/lt-of-nth-lt-nth-of-lt-card.md) | 105 | `result-track:f973361102bd37637fb684e65c7a6913d06914ddd532f3e778bd917bdec7ed50` |
| 9 | `theorem` | [le_of_nth_le_nth_of_lt_card](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/le-of-nth-le-nth-of-lt-card.md) | 109 | `result-track:360148810cca5a009a1388079328e4865b6fc741cec5d303b9979856d97d6863` |
| 10 | `theorem` | [nth_injOn](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-injon.md) | 113 | `result-track:3e0d13b480e9e33b35fbc7347f87b90409e5b8645a15baa756bff4e04be3d85d` |
| 11 | `theorem` | [range_nth_of_finite](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/range-nth-of-finite.md) | 116 | `result-track:92c6e9d00402fb32a9fa86af8edd2082dcac7e698cc42a3149c8d14b40f4362c` |
| 12 | `theorem` | [image_nth_Iio_card](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/image-nth-iio-card.md) | 122 | `result-track:2249636f07b50908295f6e5e9e2731c7099c9e3cd5990fb75128a95603acd342` |
| 13 | `theorem` | [nth_mem_of_lt_card](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-mem-of-lt-card.md) | 131 | `result-track:bd63f3fb63369d5b92a6f5a87e93e0516d2b25fd422ca75ff125b9c3fb2e938c` |
| 14 | `theorem` | [exists_lt_card_finite_nth_eq](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/exists-lt-card-finite-nth-eq.md) | 135 | `result-track:c37f1e9f4503f8d98e81c2d3f8a052fa572e811adffdd0b3369d4d8b3f3b0e82` |
| 15 | `theorem` | [nth_apply_eq_orderIsoOfNat](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-apply-eq-orderisoofnat.md) | 144 | `result-track:b35e3f12ceeeaefd917b55d04ca29fb11ffd9f50c206eca0ee714ff8da6f1c6a` |
| 16 | `theorem` | [nth_eq_orderIsoOfNat](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-eq-orderisoofnat.md) | 149 | `result-track:cfd6722899ebebb2bd3824b21cf7262c79e144823f08d07f116401c469cbd60e` |
| 17 | `theorem` | [nth_strictMono](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-strictmono.md) | 153 | `result-track:5c413d3491d030c983a8c09da09039b98557931168826366c51dfa290d6fb1d8` |
| 18 | `theorem` | [nth_injective](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-injective.md) | 157 | `result-track:11c567e8f50f4ed1d772013022406d1ef8463721bccff8fba04e36a620bf603f` |
| 19 | `theorem` | [nth_monotone](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-monotone.md) | 160 | `result-track:31213eaf4edfdb41e7dce9f22ff3fb0081858dfd8ae7b224046e61cf4e24392b` |
| 20 | `theorem` | [nth_lt_nth](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-lt-nth.md) | 163 | `result-track:d102989044a14f22bdbeb821121b5419a2bca756792b784e63471dec024f97b7` |
| 21 | `theorem` | [nth_le_nth](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-le-nth.md) | 166 | `result-track:0a1a0f654cc658a25e906957c2712f1e3ea7d584a9377692efb41e3705675cf3` |
| 22 | `theorem` | [range_nth_of_infinite](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/range-nth-of-infinite.md) | 169 | `result-track:1716dcde8e49133297ec5a12d4230bfc716a3d9637507848a2b25bf37fd40f90` |
| 23 | `theorem` | [nth_mem_of_infinite](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-mem-of-infinite.md) | 175 | `result-track:5b4ca95340b3d44b77e192a1195aaf094a22ed597eb700b6a922745436e70073` |
| 24 | `theorem` | [exists_lt_card_nth_eq](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/exists-lt-card-nth-eq.md) | 182 | `result-track:b3495dfec7badc57bd51f32dc21c3837aee1dcf66ee075a88ab1bb6fa2221809` |
| 25 | `theorem` | [subset_range_nth](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/subset-range-nth.md) | 191 | `result-track:7482ec79c09a8df64e20cdd8a79971cdd83789cbd54f83fed4aa08904dabfa5c` |
| 26 | `theorem` | [range_nth_subset](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/range-nth-subset.md) | 195 | `result-track:87b3f224cd050b9b901fbdb10c0eb9c81f6c331efb1faf8194aca2df25fc9019` |
| 27 | `theorem` | [nth_mem](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-mem.md) | 199 | `result-track:36e29879574a1b054424d8c8263d3bff7102dd8f850391091e25a61bcda6f8d9` |
| 28 | `theorem` | [nth_lt_nth'](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-lt-nth-source-edition-2.md) | 203 | `result-track:d9938b0581bc2bd8fda70a73e8afe5a0ce5af16b42861b29c478af89c79eb7c4` |
| 29 | `theorem` | [nth_le_nth'](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-le-nth-source-edition-2.md) | 208 | `result-track:59b9e4b0cc3755de27489a0e81bbba56e7208b5469b9b37113e3e24f0b20b440` |
| 30 | `theorem` | [le_nth](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/le-nth.md) | 213 | `result-track:b4df3ed72a3a789c63d38090acd9354a3f873e90cd5615955c16416bc2192c94` |
| 31 | `theorem` | [isLeast_nth](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/isleast-nth.md) | 218 | `result-track:ee9a7206eb984fbdaa2d785ec288f96704647d33271f96de64086b40619511db` |
| 32 | `theorem` | [isLeast_nth_of_lt_card](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/isleast-nth-of-lt-card.md) | 224 | `result-track:58a23172996ad2f46166a296a3511ff1640cbc876cdda9886b4964366652184d` |
| 33 | `theorem` | [isLeast_nth_of_infinite](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/isleast-nth-of-infinite.md) | 228 | `result-track:2e3e97400813286b13814392880709fc8e7cefae0f699469f54a04572f3c6416` |
| 34 | `theorem` | [nth_eq_sInf](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-eq-sinf.md) | 236 | `result-track:e495b4b93916dbaaf07a616d5fee5bf0e910239b52793ec0584fd9eb7817830a` |
| 35 | `theorem` | [nth_zero](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-zero.md) | 245 | `result-track:ad56c4f42a4f95046e57a61a6e378fc9ed093b77d4a01d0e52593426bf3eeb08` |
| 36 | `theorem` | [nth_zero_of_zero](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-zero-of-zero.md) | 248 | `result-track:c6b171d79bc68aadb0a77aa45ef0cd57b54fa268861feace36d3be746d814d3a` |
| 37 | `theorem` | [nth_zero_of_exists](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-zero-of-exists.md) | 250 | `result-track:bfc295674127ecd7c459df3b271407598a631ade26ef9f80b5cb3e38dbfbdba9` |
| 38 | `theorem` | [nth_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-eq-zero.md) | 253 | `result-track:2f6f83c2f1ed12493e58c54bad42f33c83cdcdefd5930bb2d7b564212625e45b` |
| 39 | `lemma` | [lt_card_toFinset_of_nth_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/lt-card-tofinset-of-nth-ne-zero.md) | 261 | `result-track:ad2d8e96cf8d04e88bc804be135d00879107078cbd6bdb86c0e52bc71ada2309` |
| 40 | `lemma` | [nth_mem_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-mem-of-ne-zero.md) | 266 | `result-track:bc4a2cd6cddcb634af0309dd2383fbd1c7c4a51c50beafd4819a7b329327857c` |
| 41 | `theorem` | [nth_eq_zero_mono](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-eq-zero-mono.md) | 269 | `result-track:9ba55c4dd12910d651aeddedd40d77f65d8fa042da5e3433cc077707e051949a` |
| 42 | `lemma` | [nth_ne_zero_anti](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-ne-zero-anti.md) | 273 | `result-track:1acac250154cc3fc7f0dc15b226d97923fcb7c34ef71b1c3d16d20fea2388e45` |
| 43 | `theorem` | [le_nth_of_lt_nth_succ](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/le-nth-of-lt-nth-succ.md) | 276 | `result-track:5fe8ee12151d970eb9f5dd3dd4780f807f47dae1f4ff69db5e4056e1a49847e2` |
| 44 | `lemma` | [nth_mem_anti](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-mem-anti.md) | 287 | `result-track:fe656ff633633d44bffa291a9e6ec697a7f1fa3a30cb80221e131556a1cee96e` |
| 45 | `lemma` | [nth_le_of_strictMonoOn_of_mapsTo](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-le-of-strictmonoon-of-mapsto.md) | 301 | `result-track:92f7f4f3cb14bb764e0771fcfac2eb01095ffbeb1bb4ac81c3af61bcb2ed739d` |
| 46 | `lemma` | [le_nth_of_monotoneOn_of_surjOn](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/le-nth-of-monotoneon-of-surjon.md) | 318 | `result-track:28beef573911b4e5bd7a073c90ad4ef703a7228c64e5d4ab74323fdeb658913b` |
| 47 | `lemma` | [eq_nth_of_strictMonoOn_of_mapsTo_of_surjOn](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/eq-nth-of-strictmonoon-of-mapsto-of-surjon.md) | 342 | `result-track:459be55a2b98c5b3c7983677d03b15d54171f39b4aad710b08056858ac6a37f9` |
| 48 | `lemma` | [nth_comp_of_strictMono](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-comp-of-strictmono.md) | 353 | `result-track:a0686fac3d51d5a49401f906d5527e3501a013442e96d2de0cff07e248d48141` |
| 49 | `lemma` | [nth_add](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-add.md) | 380 | `result-track:c7d738a42f9c031f9429f81dfc9b9cab2c395d1a3637c071def399f7e0175323` |
| 50 | `lemma` | [nth_add_eq_sub](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-add-eq-sub.md) | 388 | `result-track:75ec33e2c469d7fa3d15b903ad8e430d6f664b8453f9d17ddb62d0432f42fa10` |
| 51 | `lemma` | [nth_add_one](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-add-one.md) | 392 | `result-track:1ac23373bac1496751bec7fa7dec7684ad24c27627831fd8abc1c44d4bca340a` |
| 52 | `lemma` | [nth_add_one_eq_sub](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-add-one-eq-sub.md) | 396 | `result-track:68e3b2340eafb053407c3e839c0af2fa8371e1becb2fb9fdb876bf6ccd8fa620` |
| 53 | `theorem` | [count_nth_zero](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/count-nth-zero.md) | 405 | `result-track:df086ebf512ef9087634c95f1d857e669c80060aa9470d403103f670bd1f6cc4` |
| 54 | `theorem` | [filter_range_nth_subset_insert](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/filter-range-nth-subset-insert.md) | 409 | `result-track:4ae90bff9f36177749b6f55992da6987b52b88b73a31768538ce645e2bddfc4f` |
| 55 | `theorem` | [filter_range_nth_eq_insert](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/filter-range-nth-eq-insert.md) | 417 | `result-track:9a54bec6ada2248c65ca77a6dff21abd861a3bf0f22d12a76131c473fe7d9069` |
| 56 | `theorem` | [filter_range_nth_eq_insert_of_finite](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/filter-range-nth-eq-insert-of-finite.md) | 427 | `result-track:a5c71a95b3014f9a293cbd66ea924f3752928c5df06fa10d2c75d835c35c988a` |
| 57 | `theorem` | [filter_range_nth_eq_insert_of_infinite](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/filter-range-nth-eq-insert-of-infinite.md) | 432 | `result-track:91bb2a7539f7d45c1ed294f6f6a72656c8b154703df63d935db9b6acb6d392e4` |
| 58 | `theorem` | [count_nth](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/count-nth.md) | 436 | `result-track:3230ed9026001f3180ae3292b9c538b861ef56888d33dc8e105cb18d92779411` |
| 59 | `theorem` | [count_nth_of_lt_card_finite](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/count-nth-of-lt-card-finite.md) | 445 | `result-track:a62901012b7664b337ed0a3a20185793160b533c6f6531b6bda0c315dec5c70d` |
| 60 | `theorem` | [count_nth_of_infinite](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/count-nth-of-infinite.md) | 449 | `result-track:55ccac1cdac4a4f760669d30642f45296ef8660fbaf169e318f2cc0942bed81d` |
| 61 | `theorem` | [surjective_count_of_infinite_setOfPred](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/surjective-count-of-infinite-setofpred.md) | 452 | `result-track:1083c863724fc681ef2bfc2aee64c6bc7c2e7dbb10eff4172d630333068013f1` |
| 62 | `theorem` | [count_nth_succ](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/count-nth-succ.md) | 459 | `result-track:d648a6b1476ee934a11b576fc797e87af4221fb6dac5345f009d82b2102e775e` |
| 63 | `lemma` | [count_nth_succ_of_infinite](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/count-nth-succ-of-infinite.md) | 462 | `result-track:dc28dd5b0373d4dfc306d2dbc9175210bfd60ba46f901ebc91817270c507196a` |
| 64 | `theorem` | [nth_count](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-count.md) | 467 | `result-track:684fc186dfe92a04a87866bef6f526a4fccd860c57ffa8deb2276285bba561e6` |
| 65 | `theorem` | [nth_lt_of_lt_count](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-lt-of-lt-count.md) | 471 | `result-track:4716696d399d86fdaaf32d4aea5e8a61b7b4d73f003af642a61b9d4656ec3d62` |
| 66 | `theorem` | [le_nth_of_count_le](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/le-nth-of-count-le.md) | 476 | `result-track:c00e6daebc39b8b9da245acdda1034e0c32d91999a4a6967cac4a9e363efce78` |
| 67 | `theorem` | [count_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/count-eq-zero.md) | 479 | `result-track:a524e88f22d0359898dca8640a6f8d3801c95e2bf5c5c0650943c1a6d40b60d3` |
| 68 | `theorem` | [nth_count_eq_sInf](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-count-eq-sinf.md) | 483 | `result-track:639b1d2881ffa3f8c66b5f676213d8bbc149a4de47493ea075b8d60697648562` |
| 69 | `theorem` | [le_nth_count'](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/le-nth-count-source-edition-2.md) | 490 | `result-track:c5860ec64735612f7245985c66ffd99cdf206e775c4047919ab4027b09d41ad4` |
| 70 | `theorem` | [le_nth_count](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/le-nth-count.md) | 493 | `result-track:118418aba330d9f8f9f360b07b7331c71532f7c27d56c5346801c378588acb61` |
| 71 | `def` | [giCountNth](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/gicountnth.md) | 499 | `declaration-track:db96d01ef9770248363547e2b6e9fc992c26f8ed888c980af71abcdd0514d0b7` |
| 72 | `theorem` | [gc_count_nth](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/gc-count-nth.md) | 503 | `result-track:62b232dc0f53e5a36af50931f78b9338fdc336d027850ee32ef99eb334a7209e` |
| 73 | `theorem` | [count_le_iff_le_nth](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/count-le-iff-le-nth.md) | 506 | `result-track:8f9f4d12bd3edf9ecab5e29e93376d7f05ce1e3fad0e2ec494c5f4902a8f49ab` |
| 74 | `theorem` | [lt_nth_iff_count_lt](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/lt-nth-iff-count-lt.md) | 510 | `result-track:4c3be3b062a9b8535435e8a8126d067e71d48ff3504fd92f0e2c3c20ec0c2080` |
| 75 | `theorem` | [nth_add_one_le_iff](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-add-one-le-iff.md) | 517 | `result-track:c200aeb24da07856cf8f678a39891c4805e47f79ac30e595e32a49e5e5154469` |
| 76 | `theorem` | [nth_of_forall](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-of-forall.md) | 524 | `result-track:9b0b875a5eb4a560eb5d683ca678c23421dd74f10b69318231fa1a0eea27ea6a` |
| 77 | `theorem` | [nth_true](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-true.md) | 527 | `result-track:bf2b239e05d86688f9ff706069d21d08ab9b292e4d2ed1985d93717d44815bc1` |
| 78 | `theorem` | [nth_of_forall_not](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-of-forall-not.md) | 529 | `result-track:c9ab478ed7c98886fc12c15fb0e8d9849f8e879915eb1b518b8cb57cbdeff87d` |
| 79 | `theorem` | [nth_false](../../../../../NumberTheory/ElementaryNumberTheory/NthNamespacedPublic.lean/declarations/nth-false.md) | 538 | `result-track:60d3e08169136b4190ae483a7afa5f5e6b634d487a2df7feff458e4cc6ba28b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=733ee3c0ffd880966b99f05ea72498db079114ad5f11dda71c7fe689ea528b92 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Nth/Variant954bc9f0856dd1915be4d8ca90c736253680041804dff1ca94fca3805fb74a98.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Nth/Variant954bc9f0856dd1915be4d8ca90c736253680041804dff1ca94fca3805fb74a98.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
