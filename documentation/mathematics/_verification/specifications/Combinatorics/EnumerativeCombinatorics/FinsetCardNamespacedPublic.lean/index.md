# Verification target: Finset Card Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae16dc8a4e379463f11277b2f94281a27d0f2d93",
  "lexical_observation_count": 154,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantd6995fcbea82c6838696482df3060a31591bc12545c92837a49726bbf3babbbe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae16dc8a4e379463f11277b2f94281a27d0f2d93`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantd6995fcbea82c6838696482df3060a31591bc12545c92837a49726bbf3babbbe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Card/Variantd6995fcbea82c6838696482df3060a31591bc12545c92837a49726bbf3babbbe.lean.json)

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
| 1 | `def` | [card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card.md) | 55 | `declaration-track:9e1cf6b75c0c8a9ceeb601c2fd2261d40cba3eca869361bd539f0270738fbd85` |
| 2 | `theorem` | [card_def](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-def.md) | 60 | `result-track:7ff2fc2ae30d3e156e83e9821c6bd331b649536001ca34a3924a7d8316d3954d` |
| 3 | `lemma` | [card_val](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-val.md) | 63 | `result-track:337dc3ffd732a1bde6b6a5fd0ba2a560bbec114e5018fc82cedcc3f1321b1802` |
| 4 | `theorem` | [card_mk](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-mk.md) | 66 | `result-track:c587f2256d6d0303285824f3d6c43310179a2b3b2053688f967cd372396fc8f7` |
| 5 | `theorem` | [card_empty](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-empty.md) | 70 | `result-track:861e2875f099dfba5f6b98b202075d56a9fc57388b505a2a907b3e546434c0a8` |
| 6 | `theorem` | [card_le_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-le-card.md) | 74 | `result-track:b1c5651837688492c7e2b0c3943f7cfe382111c830b2ff4932e36ecb94316501` |
| 7 | `theorem` | [card_mono](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-mono.md) | 82 | `result-track:a39b1a9166453bd4c2b5214d0625ac37644b40229f9f2d8e5ca6e918cc033fd4` |
| 8 | `lemma` | [card_eq_zero](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-eq-zero.md) | 84 | `result-track:4a1da93ce9f26ebc59e058553234bd34ba2a12850dcea0a39af6b37719df5a81` |
| 9 | `lemma` | [card_ne_zero](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-ne-zero.md) | 85 | `result-track:1ac0f4d8d79053218fb93e293759ca8f17387227c2ee90bee8124fe854cfcf3c` |
| 10 | `lemma` | [card_pos](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-pos.md) | 86 | `result-track:b4ee829f0c49b17d8e32638a30ff3f40cf520de5188742b3cc86f6b4ccd9edda` |
| 11 | `lemma` | [one_le_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/one-le-card.md) | 87 | `result-track:e385dfbe23a957cd3ca380f513412b122dace710de8199a837278434838f21e5` |
| 12 | `theorem` | [card_ne_zero_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-ne-zero-of-mem.md) | 92 | `result-track:5f155191648491c6694a628c42307bd7863909c399fb9d369f2b6dd30277d926` |
| 13 | `theorem` | [card_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-singleton.md) | 98 | `result-track:22b9c046786912c9b153672a57281d0163e8bbf87e402916795cd37bbeb255cf` |
| 14 | `theorem` | [card_singleton_inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-singleton-inter.md) | 101 | `result-track:25d4fcc6fe068aa1f484ebdd971707c1ee9a2e675f8f8c1bbdf02ecc61485f64` |
| 15 | `theorem` | [card_cons](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-cons.md) | 104 | `result-track:018fecb0831226dd9841f7ae61698189e291fa933ac31cd5aa1ee7b843482fe4` |
| 16 | `theorem` | [card_insert_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-insert-of-notmem.md) | 112 | `result-track:e68f35bff3dd5e0427b744c53111dd8604945c8a22b99f44535dc5ec4aa9e5d8` |
| 17 | `theorem` | [card_insert_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-insert-of-mem.md) | 115 | `result-track:08a161ee50be70ce6fdc0079d5ac96873438b53d5bd8a1c2e1e8d8a710d69621` |
| 18 | `theorem` | [card_insert_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-insert-le.md) | 117 | `result-track:a31f20228f9ce683b862e3f90aebdae76052fb2ae535703e62faf81976a149f1` |
| 19 | `theorem` | [card_le_two](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-le-two.md) | 123 | `result-track:a3af226a363cecefca22aaac6d54796ef30fd0dee258fb20bd5616d456e4766d` |
| 20 | `theorem` | [card_le_three](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-le-three.md) | 125 | `result-track:7ebaf9154dbbc36839827e89c490c18ce33064efd1f84c5e633435646bf99622` |
| 21 | `theorem` | [card_le_four](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-le-four.md) | 128 | `result-track:eeb842b3363b3902c75ede0f1cccf7193203aad89e4be0d12a15eb250576345e` |
| 22 | `theorem` | [card_le_five](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-le-five.md) | 131 | `result-track:b42e8968ce8a49c3fc33c84b41f49d45a261d24dc634e40417f9eaddcd5b5393` |
| 23 | `theorem` | [card_le_six](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-le-six.md) | 134 | `result-track:2e1f5aea723fb1e8875bf516a14be683751aec18dbfc91968a8d8e92514d10e6` |
| 24 | `theorem` | [card_insert_eq_ite](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-insert-eq-ite.md) | 141 | `result-track:40d2183cc6bd75664822bbc33124933df74236abf8727da08544d8a1b8728465` |
| 25 | `theorem` | [card_pair_eq_one_or_two](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-pair-eq-one-or-two.md) | 144 | `result-track:644bf2fb23a91efc5bb841e993dd30d756bd77d2e9c80da091601ee57f7c719e` |
| 26 | `theorem` | [card_pair_eq_two_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-pair-eq-two-iff.md) | 148 | `result-track:28dc7527b7552916a9e5094ac3a3623bb736881cbac11e85f5ced66b35706279` |
| 27 | `theorem` | [card_triple_eq_three_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-triple-eq-three-iff.md) | 155 | `result-track:b4190d32789b95f8e2a0007cd059e844fc3b089017e78a89c34b1505551d493f` |
| 28 | `theorem` | [card_erase_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-erase-of-mem.md) | 160 | `result-track:6dd4180ab6904a79db1326b4c0d50545ca0b60435f5776bf3ced54be9b7c1c24` |
| 29 | `theorem` | [card_erase_add_one](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-erase-add-one.md) | 164 | `result-track:a3cfb772fc539e3e04e347cf0e3755cbc8433de884095c2e845b4451d1e9086b` |
| 30 | `theorem` | [card_erase_lt_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-erase-lt-of-mem.md) | 167 | `result-track:da830d05cf637501aa3d48b2fbe10d6cbf98ab603d239024041073da7a2b2576` |
| 31 | `theorem` | [card_erase_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-erase-le.md) | 170 | `result-track:be0e35d9b927968e9d43e97e44708c51c4f8014920a22a0cb2d107a1b1802db5` |
| 32 | `theorem` | [pred_card_le_card_erase](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/pred-card-le-card-erase.md) | 173 | `result-track:5929825f6efccf35f7006f619e879c908653cdc9b17c3b6d8894ccb8534ea43c` |
| 33 | `theorem` | [card_erase_eq_ite](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-erase-eq-ite.md) | 176 | `result-track:849aa590c263dcc0a90cfe01bccf8c7a9c9d58e7f97b97daf00045ce818e7c12` |
| 34 | `theorem` | [card_range](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-range.md) | 182 | `result-track:5866f3374a11c53ae5f4ea07479bcc31c23b7d3590a47eee36836ee65bf4a12e` |
| 35 | `theorem` | [card_attach](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-attach.md) | 186 | `result-track:cd42c52270fc7c6690470a47872cdf0bfb72b3c648124330af684908e3e0090b` |
| 36 | `theorem` | [Multiset.card_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/multiset-card-tofinset.md) | 197 | `result-track:2cb03c9c8d6192e50bc9aa7802f1205c8f3ec73215450cf6b3aa6568879954a8` |
| 37 | `theorem` | [Multiset.toFinset_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/multiset-tofinset-card-le.md) | 200 | `result-track:27d63bd438c5b13f5549260fc37bbd0efa6aab2aa599a628151a52f38a73aafe` |
| 38 | `theorem` | [Multiset.toFinset_card_of_nodup](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/multiset-tofinset-card-of-nodup.md) | 203 | `result-track:47eaeeee996d27620f4ce9c90390e9830dc70a8f6581b8ad55d542644a436337` |
| 39 | `theorem` | [Multiset.dedup_card_eq_card_iff_nodup](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/multiset-dedup-card-eq-card-iff-nodup.md) | 207 | `result-track:3463ba9ef3354b52779e1b5c2215c5b1ae53d66fd5804906e95c542111c711e8` |
| 40 | `theorem` | [Multiset.toFinset_card_eq_card_iff_nodup](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/multiset-tofinset-card-eq-card-iff-nodup.md) | 211 | `result-track:d9d66c77437336f6014ce34e3eaaf385ff691f601904f077d18174160ba223f5` |
| 41 | `theorem` | [nodup_iff_le_length_dedup](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/nodup-iff-le-length-dedup.md) | 214 | `result-track:0b8149322088c4d56882e2591c0bfa0d58fbd61a00023a3c6b57b7bec976e85e` |
| 42 | `theorem` | [List.card_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/list-card-tofinset.md) | 217 | `result-track:31ed853a5a0440373c414a345fcaba689c6797725a0fbe15673abf63acf90f1c` |
| 43 | `theorem` | [List.toFinset_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/list-tofinset-card-le.md) | 220 | `result-track:1f841b034315b7141466cfbb912f399cc63ba293dbc3e076194facdda437e645` |
| 44 | `theorem` | [List.toFinset_card_of_nodup](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/list-tofinset-card-of-nodup.md) | 223 | `result-track:9e2bca2905334fa78d136293a73665335b507b31121ced02a9a33781ecbdae3b` |
| 45 | `lemma` | [List.Nodup.card_eq_countP](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/list-nodup-card-eq-countp.md) | 226 | `result-track:13f54cbc39b751da72df32e029b1e5ddccd7ce08cab312f1ce4d2a0b0f15abf7` |
| 46 | `theorem` | [length_toList](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/length-tolist.md) | 238 | `result-track:dc6fb8734478735b1fb4d12e1461266edfdd3a747b01e9d9769af7aa72f233c5` |
| 47 | `theorem` | [card_image_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-image-le.md) | 241 | `result-track:5c9573c7ff999f540bf19a8daaaa43be5d039a7a37a27e7299cb7c044bfdbf8d` |
| 48 | `theorem` | [card_image_of_injOn](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-image-of-injon.md) | 247 | `result-track:4e1a73b60e9528b2e9d61997bc21bb5f14c1880d109c6c82c5cb6d88f1793d49` |
| 49 | `theorem` | [injOn_of_card_image_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/injon-of-card-image-eq.md) | 250 | `result-track:a172d2ec4b5b334d57f164d6aa95920e3bcbcd135ea68807cf2d55bf342afea1` |
| 50 | `theorem` | [card_image_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-image-iff.md) | 259 | `result-track:916d0a1cbdf1b440ce43610b1856b00a6fa438e9abc29239009f09dd49b30cc7` |
| 51 | `theorem` | [card_image_of_injective](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-image-of-injective.md) | 265 | `result-track:9bd224e781075d275a780e0a8781f6e63fc25a8836fd59c52e44810c263e1807` |
| 52 | `theorem` | [fiber_card_ne_zero_iff_mem_image](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/fiber-card-ne-zero-iff-mem-image.md) | 269 | `result-track:28a7211b1f3acc20229acf97f8df7d5a822964e3dc32ee1f9b11a11f49d12ba3` |
| 53 | `lemma` | [card_filter_le_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-filter-le-iff.md) | 273 | `result-track:3771e7824174df67c7bfc6d5a716fb407eae1a4668784c322cbb8b1ae64bf04b` |
| 54 | `theorem` | [card_map](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-map.md) | 279 | `result-track:b5e2abe50849656f0a5fb67f45b84dfb6dcca50cc8891e571b20789724aa92e1` |
| 55 | `theorem` | [card_subtype](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-subtype.md) | 283 | `result-track:45fa6db029527e5ee256d27e4f6978e28f8a848365d90ea9e989874011b1d160` |
| 56 | `theorem` | [card_filter_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-filter-le.md) | 286 | `result-track:c53609353bd7580ab27c25fee9b595aff4db77920e5c0f301a7bbc309224048e` |
| 57 | `theorem` | [eq_of_subset_of_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/eq-of-subset-of-card-le.md) | 293 | `result-track:e8a338e84814dbbd6c44ac3823d52302e07b753757ba6d86687c47d1b7dfd837` |
| 58 | `theorem` | [eq_iff_card_le_of_subset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/eq-iff-card-le-of-subset.md) | 296 | `result-track:99f5b5aea4bcd7f7b22285915723b19425f59f409d5391446fb721812f32e8d9` |
| 59 | `theorem` | [eq_of_superset_of_card_ge](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/eq-of-superset-of-card-ge.md) | 299 | `result-track:6d8c0a392dd2e8c2f6712cf2c74f372528bf48e1a869511e78c64115de30fd73` |
| 60 | `theorem` | [eq_iff_card_ge_of_superset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/eq-iff-card-ge-of-superset.md) | 302 | `result-track:317d43d87365f405430f2cd6f959f89fc643e099e8724b97c2a42965e69c5272` |
| 61 | `theorem` | [subset_iff_eq_of_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/subset-iff-eq-of-card-le.md) | 305 | `result-track:e5ffcc733a8ef4375772b44378e733c4242289efd1e93ce2637d0ebd2255a4c9` |
| 62 | `theorem` | [map_eq_of_subset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/map-eq-of-subset.md) | 308 | `result-track:37fa0d2f8d6e08ef2b6e3bdb4d5d454d41fd8ad320af7aa9d344b25e3fe767ce` |
| 63 | `theorem` | [card_filter_eq_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-filter-eq-iff.md) | 311 | `result-track:115d38c8b459648bd8644d57cad190a80825db5005604d8a802b31f09ce56062` |
| 64 | `theorem` | [card_filter_eq_zero_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-filter-eq-zero-iff.md) | 318 | `result-track:f21303a7b24305d32ad8814e216c61983b729f106836787c64e75569b59b688e` |
| 65 | `lemma` | [card_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-lt-card.md) | 323 | `result-track:cdaf2fedb7afca06af8ab0f0143e2ef604b9b9c851c18ddbad571f0661a22299` |
| 66 | `lemma` | [card_strictMono](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-strictmono.md) | 325 | `result-track:2e3d645a4f049143910da4a0b7052faf6aad6344fb4d882440d3b99d342add10` |
| 67 | `theorem` | [card_eq_of_bijective](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-eq-of-bijective.md) | 334 | `result-track:bfeeae3da97800859454023837c5ebf64ce4b130fb336d21001e2f77d2d1f9ed` |
| 68 | `lemma` | [card_bij](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-bij-source-edition-2.md) | 364 | `result-track:47d7f7a32d2b5fbc78514a51cbf144ed922aee7739164aa0ebfb8735b6d56570` |
| 69 | `lemma` | [card_bij'](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-bij.md) | 389 | `result-track:3fde6343e0f5b737b32662eb93c307ee0624498f1d483350ee48b2258da5090c` |
| 70 | `lemma` | [card_nbij](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-nbij.md) | 404 | `result-track:58bb209756c476103d11a0625041de7fae2bec0286e2e05607605458ca8cbda3` |
| 71 | `lemma` | [card_nbij'](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-nbij-source-edition-2.md) | 419 | `result-track:e148053c5ed1cba20bacdb93dd611cfea6d8344fdff87626456f05e0a42dc01f` |
| 72 | `lemma` | [card_equiv](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-equiv.md) | 426 | `result-track:fcbbec97a3ca7cc32c8b000b1ecf31d0652683cbacee51d2c14d650d318fed14` |
| 73 | `lemma` | [card_bijective](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-bijective.md) | 432 | `result-track:96e02c7640c1b55a7e3ffd07731e8e60103556a0f1f5d1eef10668039a31d689` |
| 74 | `lemma` | [Finset Card Namespaced Public](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/finsetcard-eq.md) | 435 | `result-track:1aa5c52b93f7ec708fa8da7934e565b1a7cf65f0e12420894d05159b46f56087` |
| 75 | `lemma` | [card_le_card_of_injOn](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-le-card-of-injon.md) | 438 | `result-track:b76059b299aea2abffd92c9d13f315d1ca617d0b122312d549432f3a5120c376` |
| 76 | `lemma` | [card_le_card_of_injective](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-le-card-of-injective.md) | 445 | `result-track:50a96b862adf76977f027f1efc33f37ad83157aae5858babc8703223ee0231c5` |
| 77 | `lemma` | [card_le_card_of_surjOn](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-le-card-of-surjon.md) | 460 | `result-track:a90fc5d820be1b1cce527250ab68a8d67201e8862f7ff6d6bd77d2b713b31f9d` |
| 78 | `lemma` | [card_le_card_of_surjective](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-le-card-of-surjective.md) | 463 | `result-track:e93bf66296bf30867d1e122c1fc09bbaddaef1d92f189dbb4769be228954620e` |
| 79 | `theorem` | [exists_ne_map_eq_of_card_lt_of_maps_to](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/exists-ne-map-eq-of-card-lt-of-maps-to.md) | 478 | `result-track:157f58820dc87aea801af6948f0c033da70389ac5d3e2f2a0ff7e1b75720f85c` |
| 80 | `theorem` | [exists_ne_map_eq_of_card_image_lt](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/exists-ne-map-eq-of-card-image-lt.md) | 487 | `result-track:df0f3086f79158f88d732769f0cc96d9f525d1c71cbd6ea737519dd7023f830b` |
| 81 | `theorem` | [not_injOn_of_card_image_lt](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/not-injon-of-card-image-lt.md) | 492 | `result-track:3d4dec9e9226beb5e1eb2ec6df011db798da71fae80c24c66ab5f1e109efc0e0` |
| 82 | `lemma` | [le_card_of_inj_on_range](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/le-card-of-inj-on-range.md) | 500 | `result-track:751f98baf3fc1b5cd7fd75893be221c89c25fa47c015c19ef81830da829a5eb3` |
| 83 | `lemma` | [surjOn_of_injOn_of_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/surjon-of-injon-of-card-le.md) | 511 | `result-track:f16e811a4e3f8bdbc4c3ee39076ce1e3755f35150635f37b9fb30ff44affcc22` |
| 84 | `lemma` | [surj_on_of_inj_on_of_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/surj-on-of-inj-on-of-card-le.md) | 523 | `result-track:2d8453c568cb644e03422cf26062795e44920a15eaa0349f55b3b1e861d0a16b` |
| 85 | `lemma` | [injOn_of_surjOn_of_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/injon-of-surjon-of-card-le.md) | 538 | `result-track:efbf318c1bb063c1de88c5c55a6d97eeef5b0a4c8160729a0facc844626e202a` |
| 86 | `theorem` | [inj_on_of_surj_on_of_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/inj-on-of-surj-on-of-card-le.md) | 552 | `result-track:661ec98503329852fcae2e1665bf0256f55c0e8354b0412b474b8a67d6f405af` |
| 87 | `lemma` | [image_eq_iff_bijOn_of_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/image-eq-iff-bijon-of-card.md) | 560 | `result-track:46c74bef1f6446f622e56ac013215d0e15366ed8421f19e47830a81e9f7ea618` |
| 88 | `theorem` | [card_disjUnion](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-disjunion.md) | 567 | `result-track:2b41675da124298cdc8e17073e186e0c55f8cd01371f13c09e8a0a60570abda2` |
| 89 | `theorem` | [card_union_add_card_inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-union-add-card-inter.md) | 580 | `result-track:dc3f3cdd18aefd855a1bc51e58438565a6a0c471ab86f564dc131ae5e71d4d56` |
| 90 | `theorem` | [card_inter_add_card_union](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-inter-add-card-union.md) | 591 | `result-track:8a7b3a93b9ea67970aff9fc395b23df89d3c328d49ce3a1a998c976912d9df77` |
| 91 | `lemma` | [card_union](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-union.md) | 594 | `result-track:7df23ad84e6a3f024a8b59a14d0778c3a6de5b58154f5ec2a4657786a6b8ae20` |
| 92 | `lemma` | [card_inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-inter.md) | 596 | `result-track:77bf2c73864c40017e3954ae97a4835b3879cf75bc4a2803ce1a65d895d55264` |
| 93 | `theorem` | [card_union_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-union-le.md) | 598 | `result-track:62842f918e88f3d1d7af3ebcae3a72c72cc7d9c4ebbc0dbcda8a04b9e9c6282a` |
| 94 | `lemma` | [card_union_eq_card_add_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-union-eq-card-add-card.md) | 600 | `result-track:5bc7c8ec8d37fd574d1527f84c4ba9ca33d04f9da537587e006f4f4d6acea228` |
| 95 | `theorem` | [card_sdiff_of_subset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-sdiff-of-subset.md) | 606 | `result-track:37eac4e3d8ca11975433da4234f322abd620db7545254b54560ba7ec021aa2f0` |
| 96 | `theorem` | [card_sdiff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-sdiff.md) | 611 | `result-track:8c363e4097a46e997d7780597d37358853a39d23cdb76d0278195b229592f766` |
| 97 | `theorem` | [card_sdiff_add_card_eq_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-sdiff-add-card-eq-card.md) | 614 | `result-track:c6e0b15bb076cfa9c2e4609c209ac083e98455b84cae4430283502801af118cd` |
| 98 | `lemma` | [card_sub_card_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-sub-card-eq.md) | 616 | `result-track:11a423e9ab35ff3f61924bf976c6d4702d7edb0fb1dcfd019c234ffaacbab774` |
| 99 | `theorem` | [le_card_sdiff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/le-card-sdiff.md) | 622 | `result-track:bf8fe77bf3d5cb5ba6cf2dcf8b6f2a8b542927830ea96301157e78d0d15f14b6` |
| 100 | `theorem` | [card_le_card_sdiff_add_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-le-card-sdiff-add-card.md) | 627 | `result-track:737a7abe4084c6ec6a1a377386661ab4548629cf05a0c3b30bbc2b4ba8eecb9a` |
| 101 | `theorem` | [card_sdiff_add_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-sdiff-add-card.md) | 629 | `result-track:5eb82f8d0d6b3516eb8c1644a0c0adc0df6dba41ca83065f1e8479d5c1c227d6` |
| 102 | `theorem` | [sdiff_nonempty_of_card_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/sdiff-nonempty-of-card-lt-card.md) | 632 | `result-track:b4791e1b919c47fceccafd58823c87ce77f6556aa23888b55f4091599ddeed69` |
| 103 | `theorem` | [exists_mem_notMem_of_card_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/exists-mem-notmem-of-card-lt-card.md) | 636 | `result-track:3dfd88724f116a8dc9ea34b4de72753cb50f1fd548ac0c535e6a363a250aaa9f` |
| 104 | `lemma` | [card_sdiff_add_card_inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-sdiff-add-card-inter.md) | 640 | `result-track:48351e4842c8b5eeb7cbd88dd9e89635e6eae780f3e1bcd7a54dc30b258b503a` |
| 105 | `lemma` | [card_inter_add_card_sdiff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-inter-add-card-sdiff.md) | 648 | `result-track:bacfa9014805b9d80049fe0809ef94f3b3e22540ce8a46d3e86edc8c3c5b7757` |
| 106 | `lemma` | [card_sdiff_le_card_sdiff_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-sdiff-le-card-sdiff-iff.md) | 651 | `result-track:e9e1209e4362abad39d4e43422e80ef7825da580cb0a70a57d9a86aa16ae9bb3` |
| 107 | `lemma` | [card_sdiff_lt_card_sdiff_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-sdiff-lt-card-sdiff-iff.md) | 653 | `result-track:b3ebeef34ccb6fa35d89cda9865054fcc7d40f712fafcd73119b40aa2f72d36d` |
| 108 | `lemma` | [card_sdiff_eq_card_sdiff_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-sdiff-eq-card-sdiff-iff.md) | 655 | `result-track:8c1120226c603b3e7f7917decd136f6e261b05b19e6e21599239072ffa114cbb` |
| 109 | `theorem` | [inter_nonempty_of_card_lt_card_add_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/inter-nonempty-of-card-lt-card-add-card.md) | 660 | `result-track:80555f15c4755b64007cc7e75c3867531ea9535c6cc92b7ea2ddab22b6ff4273` |
| 110 | `theorem` | [card_filter_add_card_filter_not](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-filter-add-card-filter-not.md) | 669 | `result-track:79c5a73f0e27cb98cd0edf5feec17624344282c8a93d251a58704bc124300b4d` |
| 111 | `lemma` | [exists_subsuperset_card_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/exists-subsuperset-card-eq.md) | 677 | `result-track:ad4d66370578cb1bb5590dc54068b2b777a7db8c8ad9a47246c9ca466b00c85e` |
| 112 | `lemma` | [exists_subset_card_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/exists-subset-card-eq.md) | 686 | `result-track:1485d7f1bb65b43f4316c45250a2dc91a1420713e936a24059e5bae737f09929` |
| 113 | `theorem` | [le_card_iff_exists_subset_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/le-card-iff-exists-subset-card.md) | 689 | `result-track:a2fd5572993d1682760cc32c0edc360ac8314a99efabb055297082abcb7ad313` |
| 114 | `theorem` | [exists_subset_or_subset_of_two_mul_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/exists-subset-or-subset-of-two-mul-lt-card.md) | 693 | `result-track:7c986ef55e62c7ffd27de42806cd5477278dfac20ecf93ec9008e557da86cb65` |
| 115 | `theorem` | [card_eq_one](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-eq-one.md) | 702 | `result-track:717eac335ea7b34959b8cb52a24d9fd1399a793b8eac937661c19ca819c45af2` |
| 116 | `theorem` | [card_eq_one_iff_existsUnique](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-eq-one-iff-existsunique.md) | 706 | `result-track:df40b0c1d834f26847c354bd1b5933085ee659393a11562e5ec88e57b0050cd7` |
| 117 | `theorem` | [exists_eq_insert_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/exists-eq-insert-iff.md) | 709 | `result-track:1b0810e03fd3374331dad11af1737514b8599f188af400852ee3ec247e4ec9bb` |
| 118 | `theorem` | [card_le_one](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-le-one.md) | 721 | `result-track:7088d5db78338484fbc0c8f79d978e04dbcb7da3eb74abb7e12fac383f8f55b7` |
| 119 | `theorem` | [card_le_one_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-le-one-iff.md) | 728 | `result-track:f42e4e928dd2f05189df7261b7a0b79ade68065fa67b9a77c094baea2695fe65` |
| 120 | `theorem` | [card_le_one_iff_subsingleton_coe](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-le-one-iff-subsingleton-coe.md) | 731 | `result-track:4265e0dc2d8ced09f009506d32fbab7bffe296f816c8ad9b159917826c7f3a62` |
| 121 | `theorem` | [card_le_one_iff_subsingleton](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-le-one-iff-subsingleton.md) | 735 | `result-track:bc12bbb7b83a010559f75af5b089130dcca472b7ff79c8d8b7d8525e66a42027` |
| 122 | `theorem` | [card_le_one_iff_subset_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-le-one-iff-subset-singleton.md) | 738 | `result-track:ea080e9d01745ae3fd72ce8f509e4eb1cf8371a2edc3197a1536f03806d8cf63` |
| 123 | `lemma` | [exists_mem_ne](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/exists-mem-ne.md) | 747 | `result-track:3c838abd7cd0bb92bf693720e564832346bfce1b3fb433ebb216a92b521c8789` |
| 124 | `theorem` | [card_le_one_of_subsingleton](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-le-one-of-subsingleton.md) | 753 | `result-track:2fae9fc69a2d009a7ec0e6dcda9f075c0617240dc52c9dbdca5362a1b05ec759` |
| 125 | `theorem` | [one_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/one-lt-card.md) | 756 | `result-track:afebeadb62b9b504120338378c71f9f8cffc2ee71c26930a0b41b23c792648ba` |
| 126 | `theorem` | [one_lt_card_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/one-lt-card-iff.md) | 759 | `result-track:06a58be1261847b2c0eea654cc413112db9b7445054de9a0f30acda409f374f8` |
| 127 | `theorem` | [one_lt_card_iff_nontrivial](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/one-lt-card-iff-nontrivial.md) | 763 | `result-track:7b01a7cb2244505c26f1a33063d1138918fb1be862c6d30436f37a5fc71c640d` |
| 128 | `lemma` | [Nontrivial.one_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/nontrivial-one-lt-card.md) | 767 | `result-track:360b15e04edb41e2e3833a64141211222865cc311f1950816ee49af51602be8f` |
| 129 | `lemma` | [Nontrivial.two_le_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/nontrivial-two-le-card.md) | 769 | `result-track:253c4d9c7cc6d67cdc6a4ec79c4dc6a2e4ab10fb70f4b6bc1e38c5e887fc3e6c` |
| 130 | `theorem` | [existsUnique_notMem_image_of_injOn_of_card_eq_add_one](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/existsunique-notmem-image-of-injon-of-card-eq-add-one.md) | 773 | `result-track:637446a6a0abf49b27d0fe05046b27caad2e36f322a27946ccafe98f057eae8f` |
| 131 | `lemma` | [exists_of_one_lt_card_pi](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/exists-of-one-lt-card-pi.md) | 784 | `result-track:0fa3a43c9ba623355b21935e5a0c19b152dbafe058bd7e798ee49ac1f48ed522` |
| 132 | `theorem` | [card_eq_succ_iff_cons](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-eq-succ-iff-cons.md) | 794 | `result-track:98ca100513a1675c26a1f014e8753d68b8acc613c62319637d24df6ca4c40b33` |
| 133 | `theorem` | [card_eq_succ](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-eq-succ.md) | 802 | `result-track:c530fbf8f0b4648766e85f4ce2fc0df77019cb0f29897498bde828e5d9fd99b8` |
| 134 | `theorem` | [card_eq_two](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-eq-two.md) | 809 | `result-track:07dd42e51e82b0e9a13b31265ed3d7c818c18fc052d1642e6ad2a982bcdb1a69` |
| 135 | `theorem` | [card_eq_three](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-eq-three.md) | 815 | `result-track:7cc91189f130f0570f91a73c5b00be92befe432c747a975ae809f716d29dfddf` |
| 136 | `theorem` | [card_eq_four](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/card-eq-four.md) | 821 | `result-track:68322c727e7d9cd2f85b25e289370fc43b6ad83a4a1101950f480c09bd629e6c` |
| 137 | `theorem` | [two_lt_card_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/two-lt-card-iff.md) | 830 | `result-track:4ce9304667932d7b7071eb0e136741239caaf5f30b353884c5be89a9927d3e53` |
| 138 | `theorem` | [two_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/two-lt-card.md) | 840 | `result-track:e6a3523910a7620202d3a0cb5a4ddb99b1b63fbb98e560d79a836591db38909e` |
| 139 | `theorem` | [three_lt_card_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/three-lt-card-iff.md) | 843 | `result-track:9c6da2dee461be98801a7635a9fd062ddf0931941ae5f6f13001d6745df6efe0` |
| 140 | `theorem` | [three_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/three-lt-card.md) | 855 | `result-track:5bf607f4d43a5f5aa4c4a6bf978fdb5fb27793d6195a87ab8e0731708989485e` |
| 141 | `def` | [strongInduction](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/stronginduction.md) | 865 | `declaration-track:11d78c4ca53acef6b14227a0b8d3c934f98556055469533d5372c25f5b30b9a1` |
| 142 | `theorem` | [strongInduction_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/stronginduction-eq.md) | 873 | `result-track:2acd4ec60660b4bab5d194dbfcb035c3dd586a8864c1af9666a9077fc183c666` |
| 143 | `def` | [strongInductionOn](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/stronginductionon.md) | 879 | `declaration-track:4e3ee1a77a0b9024156f1544b652ee91e5457406259df4ca77e56612ba7de92b` |
| 144 | `theorem` | [strongInductionOn_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/stronginductionon-eq.md) | 882 | `result-track:a6ec475655cb10d57d6f9338955c36fb6b10571811f78468964cbb294c7add69` |
| 145 | `theorem` | [case_strong_induction_on](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/case-strong-induction-on.md) | 889 | `result-track:e3d7dbb6312eb997d24aae36f5e05422c9441b9604cafd0700178b842c502b0f` |
| 146 | `lemma` | [Nonempty.strong_induction](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/nonempty-strong-induction.md) | 903 | `result-track:b5fb53f3ffd546715448154449051831827c508758f0317fe2c196d5f61a5692` |
| 147 | `def` | [strongDownwardInduction](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/strongdownwardinduction.md) | 919 | `declaration-track:c7c7e8d2e7316493eb98c13e038aac34b0deb6f662f8c1833d677e67c130f518` |
| 148 | `theorem` | [strongDownwardInduction_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/strongdownwardinduction-eq.md) | 929 | `result-track:2fb1e9545528c139c01bc203d22fbb6fef89e642e3194ac200c98bd9911030d6` |
| 149 | `def` | [strongDownwardInductionOn](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/strongdownwardinductionon.md) | 937 | `declaration-track:468fd80fa8ddd66bbba349ade5fc2c349fe3540af861318d147e638b9d44b5a8` |
| 150 | `theorem` | [strongDownwardInductionOn_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/strongdownwardinductionon-eq.md) | 942 | `result-track:a098cfdf166af9aa2ac46ded3f5b8c2274c8cc7ddd448117b3677103694a3f9b` |
| 151 | `theorem` | [lt_wf](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/lt-wf.md) | 948 | `result-track:d36f3fc34840eb8f15fff20a5a17dfc71e05fca956c8b7f43d2a6fd1be8396b3` |
| 152 | `theorem` | [eraseInduction](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/eraseinduction.md) | 962 | `result-track:39b388afc6b71f6cc0fa03d6c0f6ce32b938667d7fb1f6463f26c39ae35f3451` |
| 153 | `theorem` | [image_iterate_stabilises_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/image-iterate-stabilises-lt-card.md) | 971 | `result-track:46ac0caf0b9bf483a8b3ba3109b5ac6db295d14ce21d8f510b0e17eef058bafb` |
| 154 | `theorem` | [image_iterate_stabilises_le_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedPublic.lean/declarations/image-iterate-stabilises-le-card.md) | 992 | `result-track:b7fb84fce739f87798d7b697ac0fc42d0fe52d4fab9c87d155bd0e657c0beca9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f9d83ddfa43399a4ecc958a1b9c419476286131a49b9b76df74115fde01bc5f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantd6995fcbea82c6838696482df3060a31591bc12545c92837a49726bbf3babbbe.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Card/Variantd6995fcbea82c6838696482df3060a31591bc12545c92837a49726bbf3babbbe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
