# Verification target: Finset Card Namespaced Card Le Card

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed53afe32a81d57228bcb2de64cf59329f758b5e",
  "lexical_observation_count": 132,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantaad6ede904314347ce1f475d47960cf7015ac3bf0c0407d95ee2340d35ef44f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed53afe32a81d57228bcb2de64cf59329f758b5e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantaad6ede904314347ce1f475d47960cf7015ac3bf0c0407d95ee2340d35ef44f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Card/Variantaad6ede904314347ce1f475d47960cf7015ac3bf0c0407d95ee2340d35ef44f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Image` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card.md) | 49 | `declaration-track:270769084e43cf6e12a2c27d227169ef2cdba7f4ce68981ceec32f8172a127c2` |
| 2 | `theorem` | [card_def](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-def.md) | 54 | `result-track:5c6656eec6985bb38b89d6ca7546b6fa23189b6ca73955477bec3e22b197fa9b` |
| 3 | `lemma` | [card_val](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-val.md) | 57 | `result-track:e1f14d8d0c0482a0ba1db184fa42c6726efe6753d1a41ab3b67a1f07b8ce0204` |
| 4 | `theorem` | [card_mk](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-mk.md) | 60 | `result-track:2c375ebd69e7c8eda0f283fc2215ac7b433a86e4695d2b63e63bb963c119f3c2` |
| 5 | `theorem` | [card_empty](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-empty.md) | 64 | `result-track:1884735a21bc264c258f11a62f36aa895dd628dd4ebe0f2c1a0038affb84bf53` |
| 6 | `theorem` | [card_le_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-le-card.md) | 68 | `result-track:7950edb14c077a1ba83d45ba0266ec811ca6c7463ffbab13a295555546e4be23` |
| 7 | `theorem` | [card_mono](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-mono.md) | 72 | `result-track:672a068af13b3d9699c8f0f4c90a3b69423c7d7300ce503f80675bf37d28f6a9` |
| 8 | `lemma` | [card_eq_zero](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-eq-zero.md) | 74 | `result-track:0ad632b63d6f05496763fd5fe90a5ed57856818e732b464dc11cf1b555b0da60` |
| 9 | `lemma` | [card_ne_zero](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-ne-zero.md) | 75 | `result-track:e2bbeaa28015eb61edd1c1403fa207b24d6c7e11fce1f792dbce1d55debba03d` |
| 10 | `lemma` | [card_pos](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-pos.md) | 76 | `result-track:069cd7342a47c3b71434c0ac83f92c62cec45361fac3000a95601cb66ad98bd4` |
| 11 | `lemma` | [one_le_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/one-le-card.md) | 77 | `result-track:03b16e6b67f710ce81a037e647c1d233306c241b840b76e8b5cf007aa6b15361` |
| 12 | `theorem` | [card_ne_zero_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-ne-zero-of-mem.md) | 82 | `result-track:3e7f447629062d3684b35f3327eb8382be47e0a64245ed5c8dbd4c78b0ec1cec` |
| 13 | `theorem` | [card_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-singleton.md) | 86 | `result-track:92637f4aa238ff401f62a3b1467c429453981114688d4b18d125d0a9e0ca28b2` |
| 14 | `theorem` | [card_singleton_inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-singleton-inter.md) | 89 | `result-track:0e95f2e78542a5d96eefd6a31d8a011f2db85cec7f5cdcd3f99cc7ffa2f53c16` |
| 15 | `theorem` | [card_cons](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-cons.md) | 95 | `result-track:35966f4338fb665305c3aa913501ecc8d02e8fd2d8832968bab320d55af30315` |
| 16 | `theorem` | [card_insert_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-insert-of-notmem.md) | 103 | `result-track:a1136441bcc1483610a9f205e7f3dc52f88dc2c260c184d4586ca70e9a4c1c7b` |
| 17 | `theorem` | [card_insert_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-insert-of-mem.md) | 108 | `result-track:898c032967efbc87e2ee5ee5f7dc5742ae66a0bedda12f32ff198c49306ad1ad` |
| 18 | `theorem` | [card_insert_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-insert-le.md) | 110 | `result-track:c2edbd2bf31b1f4f6114a8849002f00af2d0ee3e21395731a20a5c8e10e11e0d` |
| 19 | `theorem` | [card_le_two](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-le-two.md) | 120 | `result-track:92d6df6ebb05eb1bf68d5c542ee56501040ed34bf0648173d5619eb3ca1ddcf7` |
| 20 | `theorem` | [card_le_three](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-le-three.md) | 122 | `result-track:7990dee6076fa97573331f8c334ba13459f2526f8706ae8a4d0f92f27d04be27` |
| 21 | `theorem` | [card_le_four](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-le-four.md) | 125 | `result-track:4dc84887541e328798c9ea4cf31f1e5829de015357d063bf7c8feef0262c4ced` |
| 22 | `theorem` | [card_le_five](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-le-five.md) | 128 | `result-track:63b9b529f943575485ee571a7c761da02664ca8f3ebca1892b4e8f72d2a3eb89` |
| 23 | `theorem` | [card_le_six](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-le-six.md) | 131 | `result-track:8c6cdcd8753d4d7e196f607aac26dfdecf9dec0b1236c73699a7799d703cd6a7` |
| 24 | `theorem` | [card_insert_eq_ite](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-insert-eq-ite.md) | 138 | `result-track:f78e4126ae7248ded0d600a53b6a8650fd4c7a5716d17787924d8edc6e9f8af9` |
| 25 | `theorem` | [card_pair_eq_one_or_two](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-pair-eq-one-or-two.md) | 144 | `result-track:286d93985bafd988375991b5b649f936b286e18fe32eedd9eb7761c39dc84fa3` |
| 26 | `theorem` | [card_pair](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-pair.md) | 148 | `result-track:4dc41a92d064165b60125496d3802fa6ac64b897dfcf1e3a71d7cc95550138d9` |
| 27 | `theorem` | [card_erase_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-erase-of-mem.md) | 153 | `result-track:2f282a4b2b5be1f084b40cbd30668d351962c4f6cd90d6c1f01a2026dcc36f72` |
| 28 | `theorem` | [card_erase_add_one](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-erase-add-one.md) | 157 | `result-track:770e190105bb762aa3506888117dbadbbbd366b136a726f33f5b4b5ddfb7beac` |
| 29 | `theorem` | [card_erase_lt_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-erase-lt-of-mem.md) | 160 | `result-track:5f4a301d5f3008d75f199c10667d8cbc84a7b20152976844f8f064db52894c56` |
| 30 | `theorem` | [card_erase_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-erase-le.md) | 163 | `result-track:26a40e56fb7419a38e1e4b3765fca50af3c23ce99d28d8f451e2b16278c32503` |
| 31 | `theorem` | [pred_card_le_card_erase](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/pred-card-le-card-erase.md) | 166 | `result-track:39c18ed212408bb365c5baae8cc29862b59d1d442e9ee3a25c7e04e3b69f7bba` |
| 32 | `theorem` | [card_erase_eq_ite](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-erase-eq-ite.md) | 173 | `result-track:e6eeebe92b1454239ab767e1d9d961890ae38ac96ace92c157700e8e082cce3c` |
| 33 | `theorem` | [card_range](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-range.md) | 179 | `result-track:3299e6bfef388973287ee1e8560d3847ffa6ba294a123248adc08a991be8abcb` |
| 34 | `theorem` | [card_attach](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-attach.md) | 183 | `result-track:88fad33158a4c721e9a6edb8cb2b5f7186f3221bbd6e33e805e4f55e2f08c92b` |
| 35 | `theorem` | [Multiset.card_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/multiset-card-tofinset.md) | 194 | `result-track:ef90b1df098bc4fde0666bb826096dedff233d252f58d7ebd40d18303602bbe5` |
| 36 | `theorem` | [Multiset.toFinset_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/multiset-tofinset-card-le.md) | 197 | `result-track:9a3245e97808cc07fa0a5281dccf601c8c2ec9320fdf2959450f7be5193f5b33` |
| 37 | `theorem` | [Multiset.toFinset_card_of_nodup](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/multiset-tofinset-card-of-nodup.md) | 200 | `result-track:148ed61d578c8317c631f9abb34d261eaa3951f786acc248ef1718cfd54e1e61` |
| 38 | `theorem` | [Multiset.dedup_card_eq_card_iff_nodup](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/multiset-dedup-card-eq-card-iff-nodup.md) | 204 | `result-track:7383481959289868c6e77df9c7efe93e6546870b57593ce686367d7e43895664` |
| 39 | `theorem` | [Multiset.toFinset_card_eq_card_iff_nodup](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/multiset-tofinset-card-eq-card-iff-nodup.md) | 208 | `result-track:1277fb8d7e87804006274ce323ad87996e155d2d7f9b84afb8ccb8f37fa958f7` |
| 40 | `theorem` | [List.card_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/list-card-tofinset.md) | 211 | `result-track:3636c8605c83676f1085621a89fa88561052f3237b9099d0e275cb0e498b8f60` |
| 41 | `theorem` | [List.toFinset_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/list-tofinset-card-le.md) | 214 | `result-track:cf806488480349e231a965c707c7abd02be0fca104e292a66469732a01f8d356` |
| 42 | `theorem` | [List.toFinset_card_of_nodup](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/list-tofinset-card-of-nodup.md) | 217 | `result-track:f747bae4ba28676077b2cea90dcd3c671e30c2ed421e0dc5f0d8ba496eb87076` |
| 43 | `theorem` | [length_toList](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/length-tolist.md) | 227 | `result-track:6f73407e243ea9e531410a99b304f936922880dafb68b1a932a37c1ab5ed77cc` |
| 44 | `theorem` | [card_image_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-image-le.md) | 230 | `result-track:9bc943fed49b3852d2b16081d31ea9e3629ec290f39f9beb70996e006d9d79d4` |
| 45 | `theorem` | [card_image_of_injOn](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-image-of-injon.md) | 233 | `result-track:116bac309726609c43e788e04452d4a6dbc82d34f3070f4e6c0e4928c721bd22` |
| 46 | `theorem` | [injOn_of_card_image_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/injon-of-card-image-eq.md) | 236 | `result-track:c0aa388c9cb19d99526fea1628a6f764d4ff4aa2b71e65b31f59afe93a37020d` |
| 47 | `theorem` | [card_image_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-image-iff.md) | 245 | `result-track:034c640ec918a41b22906d8548af3aa432fe6f0ff310d6e7f132d1a1b162f925` |
| 48 | `theorem` | [card_image_of_injective](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-image-of-injective.md) | 248 | `result-track:ca21c2bbdcd66e6fd33b4b46635908a3ce633ab9a1549ebaea0d9e78e5dfc951` |
| 49 | `theorem` | [fiber_card_ne_zero_iff_mem_image](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/fiber-card-ne-zero-iff-mem-image.md) | 252 | `result-track:383bfc55a3d59fcabd840f77f6a18b176adba5c186bf853d419316fd5751d4a1` |
| 50 | `lemma` | [card_filter_le_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-filter-le-iff.md) | 256 | `result-track:9e903b55464ae9082bd0f3cbff5a411827d05af8eff677ef372c9b3b8e5c6567` |
| 51 | `theorem` | [card_map](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-map.md) | 262 | `result-track:057891986cfff7b7bba30359f43bc10d97bb184c41a24fc021a35e092667a844` |
| 52 | `theorem` | [card_subtype](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-subtype.md) | 266 | `result-track:511e47514ed5bfde150bd88b08acee5a5e8dec8545ff76ae9472c710b561ab5b` |
| 53 | `theorem` | [card_filter_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-filter-le.md) | 269 | `result-track:fa7f4a4ddc376372ec2ffe9f604def62be2f49597a34ef967399fb4b04689237` |
| 54 | `theorem` | [eq_of_subset_of_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/eq-of-subset-of-card-le.md) | 273 | `result-track:4c02d54280cc2286025fd1acc4353a700d9fda67e859637a688196eb1519f150` |
| 55 | `theorem` | [eq_iff_card_le_of_subset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/eq-iff-card-le-of-subset.md) | 276 | `result-track:777b298bd5a43be775dbc7189ace671665d76a97876acfe0e8680dbc65a44473` |
| 56 | `theorem` | [eq_of_superset_of_card_ge](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/eq-of-superset-of-card-ge.md) | 279 | `result-track:6d6927b39aad03b843a8de8191605a2492f5b947c07c00130fa9c10c48957f8f` |
| 57 | `theorem` | [eq_iff_card_ge_of_superset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/eq-iff-card-ge-of-superset.md) | 282 | `result-track:34051471125e71d7ae9163444d034a790b50c918ae1e3d4a03f0d461444541a6` |
| 58 | `theorem` | [subset_iff_eq_of_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/subset-iff-eq-of-card-le.md) | 285 | `result-track:23857666ac7ed27caee44f4d7a241617175e32ce7f2f35fe1bc38a05175ccef1` |
| 59 | `theorem` | [map_eq_of_subset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/map-eq-of-subset.md) | 288 | `result-track:5168df52fae2eb1e1b53a23b0ec2dddecef179a25547a7cb1c69be8151613c49` |
| 60 | `theorem` | [card_filter_eq_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-filter-eq-iff.md) | 291 | `result-track:e3d2d82fd0352ee4f8bdaa3eb47d357cc66db5b6db32a0fd5b1a6ba3dca93ccc` |
| 61 | `theorem` | [card_filter_eq_zero_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-filter-eq-zero-iff.md) | 298 | `result-track:f3eba5c4fd992748e365d6148b75e39e87e6babed4d4f7dbd27825224862e78d` |
| 62 | `lemma` | [card_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-lt-card.md) | 302 | `result-track:55cd94e02710882d6d9198a08dea6a67ab1ae5c22cb9f9e02655b2b0ba034b24` |
| 63 | `lemma` | [card_strictMono](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-strictmono.md) | 304 | `result-track:8f95644035446528a79c37c547adfccab234fd6d5214bcfc48d8408a98c70030` |
| 64 | `theorem` | [card_eq_of_bijective](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-eq-of-bijective.md) | 306 | `result-track:a24eef531ce36e8dfe5075af97cf40d79b9e91ca2655349eea1286d5529c802f` |
| 65 | `lemma` | [card_bij](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-bij.md) | 336 | `result-track:46c7495614b85a92767d6e145ad12849c74f1a741e782e572dd63985d4e3ebe3` |
| 66 | `lemma` | [card_bij'](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-bij-source-edition-2.md) | 360 | `result-track:5b73332569f61daaba7fccf901520de93daff49b8f150a8a67c5e838299b1490` |
| 67 | `lemma` | [card_nbij](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-nbij.md) | 374 | `result-track:24fc3cec31d861068155230d139a1d2d8cbb4d8a6a01e412d10652e2df74c921` |
| 68 | `lemma` | [card_nbij'](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-nbij-source-edition-2.md) | 388 | `result-track:8625da4f1873df05902fd420b5e4a2f8c499d81d6257e7289b534c4b98918c11` |
| 69 | `lemma` | [card_equiv](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-equiv.md) | 395 | `result-track:eeb327287ddc2012e345fa6282871ddbeb701524b6e780569ebbc514aa2bb55d` |
| 70 | `lemma` | [card_bijective](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-bijective.md) | 401 | `result-track:255f4cc470fc1bbbaa51a086050ad4a5da853bf01a34482ba2b680c743471ba0` |
| 71 | `lemma` | [card_le_card_of_injOn](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-le-card-of-injon.md) | 404 | `result-track:6c1cca8fde67935e14ff7938da09f6a532a3327692ce83d6772ad9b8f356a3ff` |
| 72 | `lemma` | [card_le_card_of_injective](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-le-card-of-injective.md) | 410 | `result-track:982f185239c0f0da3794ee65a9381b0660c2906ddfd1ad02f000508ffda68e6c` |
| 73 | `lemma` | [card_le_card_of_surjOn](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-le-card-of-surjon.md) | 422 | `result-track:1dc85e181b002b17978d11eef24a082b314bfdc337f2e472d2b3c0758a902eb1` |
| 74 | `theorem` | [exists_ne_map_eq_of_card_lt_of_maps_to](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/exists-ne-map-eq-of-card-lt-of-maps-to.md) | 427 | `result-track:8eff76aa4ad87e72e8fcd9523c66422a939590ebc3422254ff169aed18d288c7` |
| 75 | `lemma` | [le_card_of_inj_on_range](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/le-card-of-inj-on-range.md) | 436 | `result-track:0a225077ba69cc10ddcef2528d6321825b97fd69dadd906d171cb809ead663f3` |
| 76 | `lemma` | [surjOn_of_injOn_of_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/surjon-of-injon-of-card-le.md) | 442 | `result-track:5f2594245acf2fcd13f1b9d54c7f13bc7558c371f4c7c778ffbc06de680f43f6` |
| 77 | `lemma` | [surj_on_of_inj_on_of_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/surj-on-of-inj-on-of-card-le.md) | 449 | `result-track:9a82bc9b9e0140e0fe4051cda22ff901a217bb16026af0c2fdc9a08e5b99efb3` |
| 78 | `lemma` | [injOn_of_surjOn_of_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/injon-of-surjon-of-card-le.md) | 459 | `result-track:f76caec99070708d9c025c8847755c7f9d1babe398e5f14a470b312552eb88c8` |
| 79 | `theorem` | [inj_on_of_surj_on_of_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/inj-on-of-surj-on-of-card-le.md) | 468 | `result-track:12545ea084414bd7234afde70849c7dd40806716c0ca6a087ae03514f9fcdc2d` |
| 80 | `theorem` | [card_disjUnion](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-disjunion.md) | 479 | `result-track:4f1f616b823e4469cf0a9955da5e116230a713f6a25f855f155e65ca50fbb6d7` |
| 81 | `theorem` | [card_union_add_card_inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-union-add-card-inter.md) | 489 | `result-track:559521f97e39300bb72d7d67694445a02fa8e48833dc0289aef50a2b6925cd17` |
| 82 | `theorem` | [card_inter_add_card_union](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-inter-add-card-union.md) | 494 | `result-track:6fd7cc475c4d75d851e92facdddf186cbba9172022aaa6a5ad96a913bf59b7f0` |
| 83 | `lemma` | [card_union](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-union.md) | 497 | `result-track:a738edc5d974ba6258aa366f4a5a3ba66626b6e406aeef1afc54befacffc2e49` |
| 84 | `lemma` | [card_inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-inter.md) | 500 | `result-track:39a5237faf2277e29ba35945ddd334c2a18e6f1d39ddfdc019776673e0b4830c` |
| 85 | `theorem` | [card_union_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-union-le.md) | 503 | `result-track:c19895144de4c979d48005f38683033e2f5f6989490eb3392148129ab05d41a2` |
| 86 | `lemma` | [card_union_eq_card_add_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-union-eq-card-add-card.md) | 506 | `result-track:54ea868e18c9368606f1bcad44e6748124a466dab39e92418c57ee3eb9117ea9` |
| 87 | `theorem` | [card_sdiff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-sdiff.md) | 511 | `result-track:343d5f854b2f8ee1fa2681e3e720e048c86b153e54f911cbfdd5be4fd33662af` |
| 88 | `theorem` | [card_sdiff_add_card_eq_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-sdiff-add-card-eq-card.md) | 515 | `result-track:f307b295202628c88f8e66ce57db424201079e9d88fd6adeda027e0efd38f49c` |
| 89 | `theorem` | [le_card_sdiff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/le-card-sdiff.md) | 518 | `result-track:c8d1053402fd5328d7ff67a1ce6e5119e4ed6085e348c46ac2b43effd5e09fb3` |
| 90 | `theorem` | [card_le_card_sdiff_add_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-le-card-sdiff-add-card.md) | 525 | `result-track:6f9bc43d8ebced73a697c0cdb0752ebac5bb2dac70e33b41e8b47897e91e5d64` |
| 91 | `theorem` | [card_sdiff_add_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-sdiff-add-card.md) | 528 | `result-track:92e5c0f3fe035458e6b718996022cac6a28f7316cdde4352231cacfc6ae73295` |
| 92 | `lemma` | [card_sdiff_comm](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-sdiff-comm.md) | 531 | `result-track:52144670d7313fe4fef3717fb2a1c7992375ff12bc9741d8c9cbb7a81cb4fd3e` |
| 93 | `theorem` | [sdiff_nonempty_of_card_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/sdiff-nonempty-of-card-lt-card.md) | 535 | `result-track:e8a5b432cb322c2c5d40cbf89629ba9bcc35438599c1cb7468e4a84abb4baeb4` |
| 94 | `theorem` | [exists_mem_notMem_of_card_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/exists-mem-notmem-of-card-lt-card.md) | 540 | `result-track:91c91074fc716ef0fe540e8367b276daee1ac31349e3005b61d5921cf807d6af` |
| 95 | `lemma` | [card_sdiff_add_card_inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-sdiff-add-card-inter.md) | 547 | `result-track:d15f2d3af19ade9459178f861eb583d6db07a1875da817e1548faf99975736d1` |
| 96 | `lemma` | [card_inter_add_card_sdiff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-inter-add-card-sdiff.md) | 552 | `result-track:800a7aab299d14d41626f3001627eaac8a58178789fa20b994978556babeb760` |
| 97 | `theorem` | [inter_nonempty_of_card_lt_card_add_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/inter-nonempty-of-card-lt-card-add-card.md) | 557 | `result-track:59b81b5f6041851fad21687f03f78407542b10a72e46bb57d317038d9f1f3efe` |
| 98 | `theorem` | [filter_card_add_filter_neg_card_eq_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/filter-card-add-filter-neg-card-eq-card.md) | 566 | `result-track:037adfc51db005f9a3fb6bf8da6331dd16274abacea9aad1a135f1018e730e82` |
| 99 | `lemma` | [exists_subsuperset_card_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/exists-subsuperset-card-eq.md) | 574 | `result-track:07d3124fd8cea0df83347b7f8c506f9422c598b1c40a36e8f797321a90270d1f` |
| 100 | `lemma` | [exists_subset_card_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/exists-subset-card-eq.md) | 584 | `result-track:40a70a1d5eaa3b46b3720a136441bc7210df231072cd5f95b7f26624a427b381` |
| 101 | `theorem` | [le_card_iff_exists_subset_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/le-card-iff-exists-subset-card.md) | 587 | `result-track:23c1ee137159f9b5b4f9b25b3f495604703eed835fac91de5d88cee56b8ca7fd` |
| 102 | `theorem` | [exists_subset_or_subset_of_two_mul_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/exists-subset-or-subset-of-two-mul-lt-card.md) | 591 | `result-track:e9dc797eb5f856cc99d77af14e5c2b05303bbef84c3b0f2b09dcc28a9b52557e` |
| 103 | `theorem` | [card_eq_one](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-eq-one.md) | 604 | `result-track:f77255fba42bccc5ffa764312a2fb428d2298c6e5af9cc93115ae409d9cee484` |
| 104 | `theorem` | [exists_eq_insert_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/exists-eq-insert-iff.md) | 608 | `result-track:cc033e1957548bf4d3b0cec5b59001ee8beeb22d413cff33441b5b85510e596d` |
| 105 | `theorem` | [card_le_one](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-le-one.md) | 622 | `result-track:b0c59ce2c3480ba88301d0fa2b241b870e836c5f8be1953794039e1071b16328` |
| 106 | `theorem` | [card_le_one_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-le-one-iff.md) | 630 | `result-track:1544410438624ddda2a67e8d9c0194087113e27e1315c30a1e79fd03ea3af9a3` |
| 107 | `theorem` | [card_le_one_iff_subsingleton_coe](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-le-one-iff-subsingleton-coe.md) | 634 | `result-track:0cb304d1939123c103196aa757a798987b231d22f3feeaa4593c5ae18f2e3ff3` |
| 108 | `theorem` | [card_le_one_iff_subset_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-le-one-iff-subset-singleton.md) | 637 | `result-track:45feed3676f914eb068f9930018712931afe35b3c17859ccfcdf034f05f8cd25` |
| 109 | `lemma` | [exists_mem_ne](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/exists-mem-ne.md) | 646 | `result-track:1ce7579cb5751ccd89c609c33859a2b0c7c6282085c72cca800b7a55e974854c` |
| 110 | `theorem` | [card_le_one_of_subsingleton](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-le-one-of-subsingleton.md) | 652 | `result-track:72b3a3e0a0972162430ad63320b32d9afaf29852b99dea030ca97a3c29a9d88e` |
| 111 | `theorem` | [one_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/one-lt-card.md) | 655 | `result-track:1dd9d2aa485fac93c2d8f9a93b2ac4e58296dc98631d024a58bcd5c2c8c6eed8` |
| 112 | `theorem` | [one_lt_card_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/one-lt-card-iff.md) | 660 | `result-track:091e00fb3fb366f0b6dd674c077fd72b269c746c7e419b5a2851cb29b73486db` |
| 113 | `theorem` | [one_lt_card_iff_nontrivial](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/one-lt-card-iff-nontrivial.md) | 664 | `result-track:3900b30aedf3f0739001948ed2810d7f1fb4293eb611b0c823096c0e49209cf4` |
| 114 | `theorem` | [exists_ne_of_one_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/exists-ne-of-one-lt-card.md) | 668 | `result-track:b7fe852eba4f9d7f81fe44fc1960e0df3217dd6346027f0e980ef38454bc667c` |
| 115 | `lemma` | [exists_of_one_lt_card_pi](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/exists-of-one-lt-card-pi.md) | 677 | `result-track:e73bd559e4aa5e358c3d098c2fb40c13ecb43b60242f5a18b4551d0e8930ca18` |
| 116 | `theorem` | [card_eq_succ_iff_cons](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-eq-succ-iff-cons.md) | 687 | `result-track:199b9c4ba70247809f341d657dd2281830785f4d458ad6699fced49c24c7d19a` |
| 117 | `theorem` | [card_eq_succ](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-eq-succ.md) | 695 | `result-track:24df4df581ec7bb9541158bc30d72cb128e5856e83818257b3880f1376c690ee` |
| 118 | `theorem` | [card_eq_two](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-eq-two.md) | 702 | `result-track:99e22a197d065e2a7a644874b368457d09cb2cf8d229285d5661fb7b9436615d` |
| 119 | `theorem` | [card_eq_three](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/card-eq-three.md) | 711 | `result-track:42cf6a13f3825973b678d44370bf0eda27ecd3993a471f0365d021dcf1285964` |
| 120 | `theorem` | [two_lt_card_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/two-lt-card-iff.md) | 724 | `result-track:27b4b2cd8950295402a11d2de100cc6ef68fe9fd858b5feea5e726be24972cd5` |
| 121 | `theorem` | [two_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/two-lt-card.md) | 734 | `result-track:a81b4243cc2744b34d14375f1956ba0b664544aafdaef02157cfbae2335b6bb0` |
| 122 | `def` | [strongInduction](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/stronginduction.md) | 743 | `declaration-track:b1f3cdcb43b4fca2e88bc74908c083bd4e961493896480af945024c449a45f33` |
| 123 | `theorem` | [strongInduction_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/stronginduction-eq.md) | 752 | `result-track:ce86b15d57aae6a30f07f3d6ef82337d70f50369bdb4a432fdf0d206905eba00` |
| 124 | `def` | [strongInductionOn](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/stronginductionon.md) | 758 | `declaration-track:48854e807360b1e09025bd86f07c6869c669511414a9fccebf1f9d8c476a929e` |
| 125 | `theorem` | [strongInductionOn_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/stronginductionon-eq.md) | 762 | `result-track:da917711688ada079695fa3473b902981c90335c4c35cb2579c261fda448e558` |
| 126 | `theorem` | [case_strong_induction_on](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/case-strong-induction-on.md) | 769 | `result-track:36609c75ff21905860950df9834ad8b48ea50715c78b300af4404ea470653c46` |
| 127 | `lemma` | [Nonempty.strong_induction](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/nonempty-strong-induction.md) | 783 | `result-track:8f3b441ef58a0c02aa61a6432de28ca6929e6c8fcf8672ecaa060d3f9c07a54a` |
| 128 | `def` | [strongDownwardInduction](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/strongdownwardinduction.md) | 799 | `declaration-track:2d7c65cf3cc2c064bb435ed8bc85c9b58a159be1c265f26b5af9c68a16d42dcf` |
| 129 | `theorem` | [strongDownwardInduction_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/strongdownwardinduction-eq.md) | 810 | `result-track:9cbd5043d7f66e38eeafe2021d081cf2d93a63c709b1d9584e7b44e4649fa67c` |
| 130 | `def` | [strongDownwardInductionOn](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/strongdownwardinductionon.md) | 818 | `declaration-track:eb394878d558ab2ff656ff197b111f4d6732c14656510f39d231d3e9eedbd93f` |
| 131 | `theorem` | [strongDownwardInductionOn_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/strongdownwardinductionon-eq.md) | 824 | `result-track:043684dce8dca87736e3ea97ab0d3394c1bc80bcfce7c04bf74ff582e3f91779` |
| 132 | `theorem` | [lt_wf](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardNamespacedCardLeCard.lean/declarations/lt-wf.md) | 830 | `result-track:189ef44b0ea6c2e2bf526b420c88b7c627ef3b7884347f61cc7fbe2749bec340` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cfb2839e038639ecdfabac35bdd77345c1474e2f4a08e627cd3d6249992a1129 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantaad6ede904314347ce1f475d47960cf7015ac3bf0c0407d95ee2340d35ef44f8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Card/Variantaad6ede904314347ce1f475d47960cf7015ac3bf0c0407d95ee2340d35ef44f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
