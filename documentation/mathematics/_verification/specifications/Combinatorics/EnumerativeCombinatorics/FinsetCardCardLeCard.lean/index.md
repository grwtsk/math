# Verification target: Finset Card Card Le Card

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f5397a36acf986959491a4595020e8e76e9faa7",
  "lexical_observation_count": 132,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantc5ec2d3928c9960b8d9ae607ef6393aeab96beb1c7bc84bfd1cad4bd68a76fd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f5397a36acf986959491a4595020e8e76e9faa7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantc5ec2d3928c9960b8d9ae607ef6393aeab96beb1c7bc84bfd1cad4bd68a76fd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Card/Variantc5ec2d3928c9960b8d9ae607ef6393aeab96beb1c7bc84bfd1cad4bd68a76fd7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Image` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card.md) | 41 | `declaration-track:f1047814fc6b613acad7fe7a4d63c3bdeccd45a9a1fe19e9fa446fb50af51abd` |
| 2 | `theorem` | [card_def](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-def.md) | 46 | `result-track:740ff10d81b90b5820fd6dc841687c19f39cdb580eb2e7add82313581fa86b6b` |
| 3 | `lemma` | [card_val](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-val.md) | 49 | `result-track:8544507f16505c96ab06a89146dc7cac811eeb8df8d0f4da8c7e9cb69203849d` |
| 4 | `theorem` | [card_mk](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-mk.md) | 52 | `result-track:fa8ef7dd954144bc339067878ee326f8489416fc61a141377c6b3f9ae83141c8` |
| 5 | `theorem` | [card_empty](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-empty.md) | 56 | `result-track:a5a1937ec29ea7f545fe2b7e695a0f46d27db8b8c0b68aaf8ac5a108ae1346ab` |
| 6 | `theorem` | [card_le_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-le-card.md) | 60 | `result-track:b208005343c555ef16e95f207fb54493abd7ef214b30ab6177086923e0b863d2` |
| 7 | `theorem` | [card_mono](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-mono.md) | 64 | `result-track:ca59f06fb353b09b85ffd85849b7e3c22f48a34e39356c35508e4e4f9fd28aa0` |
| 8 | `lemma` | [card_eq_zero](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-eq-zero.md) | 66 | `result-track:982c6846f9eaa6dc7d556c8de30a25ad25d955db96a4057e51fb0ec9423ca705` |
| 9 | `lemma` | [card_ne_zero](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-ne-zero.md) | 67 | `result-track:2523ec466cc994c4e4d7b14c7193f1e7eabc2b03150eec611b525061fc576729` |
| 10 | `lemma` | [card_pos](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-pos.md) | 68 | `result-track:14acc9acaf6433808695020eada197dac3b2fc9f523cafefe53537dc6d6299d2` |
| 11 | `lemma` | [one_le_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/one-le-card.md) | 69 | `result-track:37b127db6b8a5bc34eaa7254794c722fdbaf7d1ee6abe462dcf10da940d4b7ae` |
| 12 | `theorem` | [card_ne_zero_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-ne-zero-of-mem.md) | 74 | `result-track:e7be3bdba8b5b6f4df03cf25000503fb911e27a38984d09b1b0f94dfb42543be` |
| 13 | `theorem` | [card_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-singleton.md) | 78 | `result-track:29f28f8eb3be2c3f84407f67f2287f088003c5e039d72deda42e2ed0f7637c30` |
| 14 | `theorem` | [card_singleton_inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-singleton-inter.md) | 81 | `result-track:afa42ec1ce5f195cee6cbb97894b76245d4708c2e417974b8ca90108a9e78b5b` |
| 15 | `theorem` | [card_cons](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-cons.md) | 87 | `result-track:d47f4a74730b5718aabae72724b172c623933b57a23c08822adce65957d4eb8f` |
| 16 | `theorem` | [card_insert_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-insert-of-notmem.md) | 95 | `result-track:9c5f01f7647a15cf9bb28f393923e3fff3cd41809b3ed402baed90f050752b54` |
| 17 | `theorem` | [card_insert_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-insert-of-mem.md) | 100 | `result-track:b8aa5851db3fc14d417045dc246c995c0d620a7dbe7cc3274f1c2b01d2dc5113` |
| 18 | `theorem` | [card_insert_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-insert-le.md) | 102 | `result-track:54d2dbcd7eba69566352247b9a9f4a01c858a35d04e6cca1c7c0d16b725d4294` |
| 19 | `theorem` | [card_le_two](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-le-two.md) | 112 | `result-track:7ff3878c4c1b94b522f304fde9d157d6e95fdf428db497a2db066c38dc455812` |
| 20 | `theorem` | [card_le_three](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-le-three.md) | 114 | `result-track:485e9c5cf8428e396dc377c701db6ba796a7f468612b7eec703e201728060bb2` |
| 21 | `theorem` | [card_le_four](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-le-four.md) | 117 | `result-track:915c9988443188442b965d1000004ffc6af3d2eb99b70c344faac022f0669508` |
| 22 | `theorem` | [card_le_five](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-le-five.md) | 120 | `result-track:857b5bf9dd1cf18f545ac54d70c86c3ad7e37c8de4cbb20629fbf9c73071d3c2` |
| 23 | `theorem` | [card_le_six](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-le-six.md) | 123 | `result-track:ca764c6ba72f67abd8012ba35389ba5bcc333e4741f810f043f0ec8eed9939cf` |
| 24 | `theorem` | [card_insert_eq_ite](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-insert-eq-ite.md) | 130 | `result-track:59bf68cd4f8b7997461d55af236b8c478051e88b2898e690aad633706a41999a` |
| 25 | `theorem` | [card_pair_eq_one_or_two](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-pair-eq-one-or-two.md) | 136 | `result-track:bd7aed1f4cfabae88bd66dc4a414d2b2429ca172efb10f585ef068e339a18dd9` |
| 26 | `theorem` | [card_pair](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-pair.md) | 140 | `result-track:09bc5b477e3e6d3d9b4dfe14272f3e1c5025f8fa450dea5b77dd2b27cf48f6f8` |
| 27 | `theorem` | [card_erase_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-erase-of-mem.md) | 145 | `result-track:e211c8dc763fccd5d54d3b034589dc73c5983dc79f5b6ecd71e958e55f17e5d7` |
| 28 | `theorem` | [card_erase_add_one](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-erase-add-one.md) | 149 | `result-track:b40eafa560b119edd37d417083e1ee02f7045df0960ad6cb1221bad65e41f6cf` |
| 29 | `theorem` | [card_erase_lt_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-erase-lt-of-mem.md) | 152 | `result-track:e0d7e9c483db006e744cc2518d7dcc2693c64f11c9c5a21960959b816d301643` |
| 30 | `theorem` | [card_erase_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-erase-le.md) | 155 | `result-track:a94d7e7e25afa883003ded8f049342da6f4c97422dfe0c660a4528ef798eaa4a` |
| 31 | `theorem` | [pred_card_le_card_erase](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/pred-card-le-card-erase.md) | 158 | `result-track:4d43866da6dc9f91aa93e8046118aef5c9377d617145370dccbc6b1467ef55c0` |
| 32 | `theorem` | [card_erase_eq_ite](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-erase-eq-ite.md) | 165 | `result-track:c82764b492bae5f2d9eda62fd9b9eb782d46b2457aa3c758a22cc02a0cf46c4a` |
| 33 | `theorem` | [card_range](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-range.md) | 171 | `result-track:07b724087d9ae4547411b2f0b24e61ce4b12cd8ae09ba40d5e83b94378dc8bc7` |
| 34 | `theorem` | [card_attach](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-attach.md) | 175 | `result-track:32e59618ff6161eb921d9fca50683200eebd1f35ea72c9d3cab89d72cc55c5e6` |
| 35 | `theorem` | [Multiset.card_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/multiset-card-tofinset.md) | 186 | `result-track:bf4ce0fd7600c9d1c44a5721b63708206873d5e232eb4c1f8c56a9f8c40d6d44` |
| 36 | `theorem` | [Multiset.toFinset_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/multiset-tofinset-card-le.md) | 189 | `result-track:1890a172dd83bfdfb2dd905eafc84af4d465d7aca8a8909d208b579a719d346e` |
| 37 | `theorem` | [Multiset.toFinset_card_of_nodup](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/multiset-tofinset-card-of-nodup.md) | 192 | `result-track:a30c0bafa1849e16fef29a36660c64e8e7e359e3cd1310ef861c7777178c133c` |
| 38 | `theorem` | [Multiset.dedup_card_eq_card_iff_nodup](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/multiset-dedup-card-eq-card-iff-nodup.md) | 196 | `result-track:10a71ccb3b0e6621c0756143d438a6d6878b51ca06d3065e0b58bc5c9091e9f3` |
| 39 | `theorem` | [Multiset.toFinset_card_eq_card_iff_nodup](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/multiset-tofinset-card-eq-card-iff-nodup.md) | 200 | `result-track:6c13afc93491b479b2f3650af86fd690c430060ba1cdd46cab02b67c999b52bd` |
| 40 | `theorem` | [List.card_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/list-card-tofinset.md) | 203 | `result-track:6b843ab64a95ac71b62802492f73eb39ec7121112b37de66a4259026ff39942b` |
| 41 | `theorem` | [List.toFinset_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/list-tofinset-card-le.md) | 206 | `result-track:a88fddf7da6b77709b2f34b06ad180ea193fc76c483f2bb25a41b0b47374ba8b` |
| 42 | `theorem` | [List.toFinset_card_of_nodup](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/list-tofinset-card-of-nodup.md) | 209 | `result-track:fe70a67b02bf6fdcef20c6195ba57340309911d1844a6589dc3ae6eea32bf033` |
| 43 | `theorem` | [length_toList](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/length-tolist.md) | 219 | `result-track:b72df0260303df0170750e7536406a74f8145e36e322bab8869b2f205c728a3c` |
| 44 | `theorem` | [card_image_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-image-le.md) | 222 | `result-track:7ace97fb25357dba67f94868665e0a19f6720a32f3ee4cb476eb3f8eb17f9020` |
| 45 | `theorem` | [card_image_of_injOn](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-image-of-injon.md) | 225 | `result-track:67b46e86761db204d7c579acb8ad69c4997a778849c84dc1fac14cb2dc484a83` |
| 46 | `theorem` | [injOn_of_card_image_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/injon-of-card-image-eq.md) | 228 | `result-track:f6ec5856c61c2b6f9ccd8afbccb5420e03cf81b5013bfbc87c98e5c3edd843f9` |
| 47 | `theorem` | [card_image_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-image-iff.md) | 237 | `result-track:04daf81ec3bdcc72d97a0fa75b0522f02c113b17d2487e4e1e67be4a05c50815` |
| 48 | `theorem` | [card_image_of_injective](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-image-of-injective.md) | 240 | `result-track:3823de86ac188a4249ef77dd6240fbb769fa62c467c6751f0f4e85d1ba3068d4` |
| 49 | `theorem` | [fiber_card_ne_zero_iff_mem_image](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/fiber-card-ne-zero-iff-mem-image.md) | 244 | `result-track:28445bad3e5072fecf0a6110fe9d596c8cb6798e11a9e7465081d479cb9776c4` |
| 50 | `lemma` | [card_filter_le_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-filter-le-iff.md) | 248 | `result-track:81f78141d16ec0f314d9328bef03762c5ac37935fd30b40627ee1d67fa76812f` |
| 51 | `theorem` | [card_map](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-map.md) | 254 | `result-track:05e396489e1aaf5052b6aa40784fd860b7f0783f04c7b13ccf1f5f1cec287e10` |
| 52 | `theorem` | [card_subtype](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-subtype.md) | 258 | `result-track:4ea37819a2f9bc22d314975bedc48e77a56a42581e3c215334caa8ae4f8aee34` |
| 53 | `theorem` | [card_filter_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-filter-le.md) | 261 | `result-track:da12962252669be6f3e7bc12e89a806f45e1fdb35453a228a6645f74e304225d` |
| 54 | `theorem` | [eq_of_subset_of_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/eq-of-subset-of-card-le.md) | 265 | `result-track:c8729f472e2a65418f9fe5f64b244c6486e2bc71f949593632270e3add3155ab` |
| 55 | `theorem` | [eq_iff_card_le_of_subset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/eq-iff-card-le-of-subset.md) | 268 | `result-track:b791e078e1791412ddfd8aeeb7e1dbd2c4d68db15fa22850faaf788b78ab7c27` |
| 56 | `theorem` | [eq_of_superset_of_card_ge](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/eq-of-superset-of-card-ge.md) | 271 | `result-track:175fc2a50858c14ad96cf79565184bf37a44dc29f25d9e6414cfb40da409b81b` |
| 57 | `theorem` | [eq_iff_card_ge_of_superset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/eq-iff-card-ge-of-superset.md) | 274 | `result-track:5b838fc941fcf88de75c43d4435301406344b5f9666e9d3987174212a57a1d6d` |
| 58 | `theorem` | [subset_iff_eq_of_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/subset-iff-eq-of-card-le.md) | 277 | `result-track:7aa1d14863c19a09f3909a4b4af1a3aa41a315f80b4e70cc33e9261eee57e151` |
| 59 | `theorem` | [map_eq_of_subset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/map-eq-of-subset.md) | 280 | `result-track:40d60c565f38726b5696fecfb16f964fb4fdbc28e7c7a0058a9658bca2c0b19d` |
| 60 | `theorem` | [card_filter_eq_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-filter-eq-iff.md) | 283 | `result-track:bf0d3b6b6d555100e50b7a4da9b9f1df25de867afbb374293c10272d42ad629b` |
| 61 | `theorem` | [card_filter_eq_zero_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-filter-eq-zero-iff.md) | 290 | `result-track:e76579943a8c011818ef35e1a61174e3aa7f614bf1fce36dd722ba360d00a4d0` |
| 62 | `lemma` | [card_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-lt-card.md) | 294 | `result-track:800527b76157045657e3b327f4465cd9e611246bdbc7f8748d59c92f0847c21d` |
| 63 | `lemma` | [card_strictMono](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-strictmono.md) | 296 | `result-track:e876af065c85d3208daba68cbae1d3bfabe3d41aa869577483e6125403f3d6fb` |
| 64 | `theorem` | [card_eq_of_bijective](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-eq-of-bijective.md) | 298 | `result-track:993e39becde8af0ddd86d705daf620ba595f8d88513b752a42743902ccc44c9a` |
| 65 | `lemma` | [card_bij](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-bij-source-edition-2.md) | 328 | `result-track:d90dfc0c1f7614080d85bafd345fa25127be894e33daf74b9d1d5b6221c85e76` |
| 66 | `lemma` | [card_bij'](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-bij.md) | 352 | `result-track:cbbbdcd149c911fa7810cc0e082bdb720eeea1169c3d340ae4b9d40c69915794` |
| 67 | `lemma` | [card_nbij](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-nbij-source-edition-2.md) | 366 | `result-track:f7b5cea594d1741578807e3490c2b255ea6cc469a44820ba777824e626be9938` |
| 68 | `lemma` | [card_nbij'](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-nbij.md) | 380 | `result-track:5d0874f48bc97910212738ae9f704296ade6757e6020de4a376f166f2f615267` |
| 69 | `lemma` | [card_equiv](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-equiv.md) | 387 | `result-track:789fb57f1952437a5e9b6ce0bf386d30a040127125f68e3e9fd64db118a04953` |
| 70 | `lemma` | [card_bijective](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-bijective.md) | 393 | `result-track:1cb15e766a6843ef2b8ab66643fdfa0d957565ee55b55c03323b601d182256b2` |
| 71 | `lemma` | [card_le_card_of_injOn](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-le-card-of-injon.md) | 396 | `result-track:b2c813f215bb389f1c21076654104ebf70e82132eb9efb24019e349e5951dbfc` |
| 72 | `lemma` | [card_le_card_of_injective](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-le-card-of-injective.md) | 402 | `result-track:7fca2024801c1610fe85303db34fca8c959e3ccd18d48bc8656a86568f5007e9` |
| 73 | `lemma` | [card_le_card_of_surjOn](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-le-card-of-surjon.md) | 414 | `result-track:93a1758588c59dcdcb75f9dc77cdbb2a4dfa253f7d3f8a6127300e4db4f78acd` |
| 74 | `theorem` | [exists_ne_map_eq_of_card_lt_of_maps_to](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/exists-ne-map-eq-of-card-lt-of-maps-to.md) | 419 | `result-track:61c1f5c1529d8701500873e3700227422ec23d7fcf7b7f15784f77fac097ebd1` |
| 75 | `lemma` | [le_card_of_inj_on_range](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/le-card-of-inj-on-range.md) | 428 | `result-track:0c2cd811c2f9a828159d8d979a7b9a70180f72391b3d6b1870fe66939146c169` |
| 76 | `lemma` | [surjOn_of_injOn_of_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/surjon-of-injon-of-card-le.md) | 434 | `result-track:df0dd6913354e3db35c1a9436e98950abe3f35eeee96163113e866c2f4617e89` |
| 77 | `lemma` | [surj_on_of_inj_on_of_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/surj-on-of-inj-on-of-card-le.md) | 441 | `result-track:3be0f20f7675ef17fcd305cda610df6900beca19ef92569f451f341b747ae463` |
| 78 | `lemma` | [injOn_of_surjOn_of_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/injon-of-surjon-of-card-le.md) | 451 | `result-track:f6906262833c471467f88032d363f57f0894fcc1bb6860e7c071470f5e323984` |
| 79 | `theorem` | [inj_on_of_surj_on_of_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/inj-on-of-surj-on-of-card-le.md) | 460 | `result-track:cbf2fe162b20ee48c13f172895fc1787f62538ab77dc131ab6de38bcb3f39288` |
| 80 | `theorem` | [card_disjUnion](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-disjunion.md) | 471 | `result-track:e9c511dbc621f1d4443036fbffaa0383e1b431ecc48614021076adbb903b2a9e` |
| 81 | `theorem` | [card_union_add_card_inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-union-add-card-inter.md) | 481 | `result-track:4d9159341f7c0d9ded45737564954283ca216afb7c36e7f7652e9d572f11fcdb` |
| 82 | `theorem` | [card_inter_add_card_union](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-inter-add-card-union.md) | 486 | `result-track:57e4af11780bcb036ba1b51e3fb306700ffc7acfdb3b26bba4d9b0861f9a9b30` |
| 83 | `lemma` | [card_union](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-union.md) | 489 | `result-track:6b1de02a4315238fa524131e819dcfbce8d2dc7ff915981b3a9a1952f8449719` |
| 84 | `lemma` | [card_inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-inter.md) | 492 | `result-track:fc8418dc19aa9f91e1d6ea7725b4206f6cfb0cf840c37b2cd768806def4709ba` |
| 85 | `theorem` | [card_union_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-union-le.md) | 495 | `result-track:5524c080bd478a5e33fdcaeb7d41179d30565a1d07d477bbcb4b3772489ef65e` |
| 86 | `lemma` | [card_union_eq_card_add_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-union-eq-card-add-card.md) | 498 | `result-track:fbf2eb485471553ee604517bb7794b5aa787a4fe7bd4e19c9f1c15ab84dbaecd` |
| 87 | `theorem` | [card_sdiff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-sdiff.md) | 503 | `result-track:8742d1fd159e3ad1335ff56f884ade3fb0a13a1393766587d0fca922266f390c` |
| 88 | `theorem` | [card_sdiff_add_card_eq_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-sdiff-add-card-eq-card.md) | 507 | `result-track:36d81aeeb63e367b1bacd14f10325bc26152eeacbb974c925030232ba6db9550` |
| 89 | `theorem` | [le_card_sdiff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/le-card-sdiff.md) | 510 | `result-track:7cc05ed7a50b74bd38022d270e754b7fc218b3a482e7fd5f0331edf6d116b9b4` |
| 90 | `theorem` | [card_le_card_sdiff_add_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-le-card-sdiff-add-card.md) | 517 | `result-track:e6658ea8ffb49b565028e0a356e756323c6b4d58f449bad1c509a0b8acd7c503` |
| 91 | `theorem` | [card_sdiff_add_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-sdiff-add-card.md) | 520 | `result-track:21956b7ec4304056f8763502c79bba28ca4e79af298b523b5625616d3c9d8a17` |
| 92 | `lemma` | [card_sdiff_comm](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-sdiff-comm.md) | 523 | `result-track:2b5c8fd1e94dbeeacf53cb825f73b86b70b011220a2209254da1e64893dfe45c` |
| 93 | `theorem` | [sdiff_nonempty_of_card_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/sdiff-nonempty-of-card-lt-card.md) | 527 | `result-track:fcba0f32b0f320525ebcf3fedd2149ce7aa04eae2b03a0b430ee97d22040efd2` |
| 94 | `theorem` | [exists_mem_notMem_of_card_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/exists-mem-notmem-of-card-lt-card.md) | 532 | `result-track:c791f09b885a3886b4e35f92b982926ee55045a6e935607ce56e9202ba3e3425` |
| 95 | `lemma` | [card_sdiff_add_card_inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-sdiff-add-card-inter.md) | 539 | `result-track:74beb573609e437f8b2fb89a8a16051c675bbf55f2bf8981de9bd52b669c0670` |
| 96 | `lemma` | [card_inter_add_card_sdiff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-inter-add-card-sdiff.md) | 544 | `result-track:f4a01e000017b67f77f3d1c849362c09a71119b362e9b7cdfd0915e0f8fdc8c6` |
| 97 | `theorem` | [inter_nonempty_of_card_lt_card_add_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/inter-nonempty-of-card-lt-card-add-card.md) | 549 | `result-track:dced1967da31d5822c98abf8f969d455388d2e8ab98ccde8d88bd0fd7e8f4bde` |
| 98 | `theorem` | [filter_card_add_filter_neg_card_eq_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/filter-card-add-filter-neg-card-eq-card.md) | 558 | `result-track:0dda478e4fdbd9d371caa283610c4c1f9b4d7e272f77b1e60c2916047d1c2fcc` |
| 99 | `lemma` | [exists_subsuperset_card_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/exists-subsuperset-card-eq.md) | 566 | `result-track:a1af17c1e91e1f15d5e9c1f57c2935f122e07d580ddc0166f725463b240e7471` |
| 100 | `lemma` | [exists_subset_card_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/exists-subset-card-eq.md) | 576 | `result-track:a4d3af50b934969fdd31d4f4b8ec66004099cc5917b48685c87ce56f0e0a1a10` |
| 101 | `theorem` | [le_card_iff_exists_subset_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/le-card-iff-exists-subset-card.md) | 579 | `result-track:1a71447f15959eeaa64fa8362f3830d20a243b62765533507fcd3f1d32ef9b37` |
| 102 | `theorem` | [exists_subset_or_subset_of_two_mul_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/exists-subset-or-subset-of-two-mul-lt-card.md) | 583 | `result-track:6ca04239e174a9d958c856a838587c4a9b614010c28c196fe957062b25beefe4` |
| 103 | `theorem` | [card_eq_one](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-eq-one.md) | 596 | `result-track:795139d01df9b823cb45ce3a612922f494d0d0fc3cf1eee658d01fe765f9b32f` |
| 104 | `theorem` | [exists_eq_insert_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/exists-eq-insert-iff.md) | 600 | `result-track:432bfaafff351c126226c8a5d9084b90a55e7670ced74b09cb200c56bebc00e7` |
| 105 | `theorem` | [card_le_one](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-le-one.md) | 614 | `result-track:e5424a36378cdf75df2e51a508c44e01d83ff3331d357e38010d3cee1ede3b8a` |
| 106 | `theorem` | [card_le_one_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-le-one-iff.md) | 622 | `result-track:840a681a963ded572d0e6ba4a104c54c8d5635607193afb7a0071d5049b26f20` |
| 107 | `theorem` | [card_le_one_iff_subsingleton_coe](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-le-one-iff-subsingleton-coe.md) | 626 | `result-track:7a2012d656e1677871cdc3d99d8abdcc6e63f12f441a80f5125c02d1bbd01bd3` |
| 108 | `theorem` | [card_le_one_iff_subset_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-le-one-iff-subset-singleton.md) | 629 | `result-track:743b1ab74f4dd8bd68fd64e056de2c825c5172b9a8c0963f5199740f90a4e81b` |
| 109 | `lemma` | [exists_mem_ne](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/exists-mem-ne.md) | 638 | `result-track:511c49b394a30f7e62b1bea1b62ff216bb567a71597bb70e0362ebe973fd003d` |
| 110 | `theorem` | [card_le_one_of_subsingleton](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-le-one-of-subsingleton.md) | 644 | `result-track:844f71aacaf3d5b70048f579ebba56e651225d6c28a8f307b31d63ef724d0717` |
| 111 | `theorem` | [one_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/one-lt-card.md) | 647 | `result-track:9f504fd256311c684b2cc5a79b23489fc94165f9e094de7eb408196f6b69784b` |
| 112 | `theorem` | [one_lt_card_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/one-lt-card-iff.md) | 652 | `result-track:abcf5e233f39a727a421c8b60b410355145b6b0735996cfeae1eb3d52c0d05c8` |
| 113 | `theorem` | [one_lt_card_iff_nontrivial](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/one-lt-card-iff-nontrivial.md) | 656 | `result-track:3d5fc5124200ae86c38fb786b905881c5d2759e60aa823f0583b43af6ed15051` |
| 114 | `theorem` | [exists_ne_of_one_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/exists-ne-of-one-lt-card.md) | 660 | `result-track:1ab849f4468f79155acb83162538bf96c3de02c7c952bdd04168074bf4abc7ae` |
| 115 | `lemma` | [exists_of_one_lt_card_pi](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/exists-of-one-lt-card-pi.md) | 669 | `result-track:820ff01fea970df5d4f2ee724418242fb2341629440472abf64816c57fa573b5` |
| 116 | `theorem` | [card_eq_succ_iff_cons](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-eq-succ-iff-cons.md) | 679 | `result-track:9034575d98a6d03607fed9605db1b167e73e199b91a6acbef4eef935c35bc066` |
| 117 | `theorem` | [card_eq_succ](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-eq-succ.md) | 687 | `result-track:8605fa2798be01bb20014b4763902013889badd53d1df66b94d64212ab72d19f` |
| 118 | `theorem` | [card_eq_two](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-eq-two.md) | 694 | `result-track:9af4c08e1560cefb944528b84d8f6c0d5c47b1772c1f908613adf93b75148275` |
| 119 | `theorem` | [card_eq_three](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/card-eq-three.md) | 703 | `result-track:21ecf6f6d798bc7f06a11498513a740556ef34fddc5aef71daf2b23fc43976cf` |
| 120 | `theorem` | [two_lt_card_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/two-lt-card-iff.md) | 716 | `result-track:bd4fdc676381d75b7394e252c8111eff134dea46fb8e72f36cda740d86a28253` |
| 121 | `theorem` | [two_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/two-lt-card.md) | 726 | `result-track:c86784840f6a0d02f0a48c5d2ef7066ab3a518f578db26c049868b80572c07c9` |
| 122 | `def` | [strongInduction](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/stronginduction.md) | 735 | `declaration-track:72ad10a7c8b590f93288b5287f475c42537e3beee2964c2a005058f75b8c37a0` |
| 123 | `theorem` | [strongInduction_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/stronginduction-eq.md) | 744 | `result-track:5c251186e0ee4ff731f04d9ced7415ea0f5d741ddbcdbfb209f389cf0e93d3f6` |
| 124 | `def` | [strongInductionOn](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/stronginductionon.md) | 750 | `declaration-track:ff2782928af7ac44ec182cd3560e2bc7002d7dfa25242750119016d9eb87e0c8` |
| 125 | `theorem` | [strongInductionOn_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/stronginductionon-eq.md) | 754 | `result-track:834181fba5f8fb20e0bf0d87a4aec0480ac87a98ea23d2bd4e0d986e158160a4` |
| 126 | `theorem` | [case_strong_induction_on](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/case-strong-induction-on.md) | 761 | `result-track:af9cb3523a799f2a0d9122da66f882cf4c6fbdca7ed404839ff0ac8a3c7f79d0` |
| 127 | `lemma` | [Nonempty.strong_induction](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/nonempty-strong-induction.md) | 775 | `result-track:0e59e6df7cb0c0be2c8dfce99a725a78dc1a2843004127dd9fb2027805b89313` |
| 128 | `def` | [strongDownwardInduction](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/strongdownwardinduction.md) | 791 | `declaration-track:f33def076b9b7d614c556ae5e7067f4cf037c5001c890b475d06017cc86f2e21` |
| 129 | `theorem` | [strongDownwardInduction_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/strongdownwardinduction-eq.md) | 802 | `result-track:08c97e00fcd1c374c456b3edb11a7dbe057fb6e54856a27c03d620fe9c35ab81` |
| 130 | `def` | [strongDownwardInductionOn](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/strongdownwardinductionon.md) | 810 | `declaration-track:72209eff3e347e09201a31fda1d4349387659c2a09b4a676079148215b6ee190` |
| 131 | `theorem` | [strongDownwardInductionOn_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/strongdownwardinductionon-eq.md) | 816 | `result-track:8701859d159be4e2cd0e04f5d7f6189f57a4a13bac27f2ed93a20ce2616c28b1` |
| 132 | `theorem` | [lt_wf](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetCardCardLeCard.lean/declarations/lt-wf.md) | 822 | `result-track:e8e24320b17f72753a8bb447489b5d49df1c8905b3fb6a5283e3f0900474fa14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5920af5ca256a8ec71aeb31dd3aa7ea943290b85047ba66ad31053488bb26213 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantc5ec2d3928c9960b8d9ae607ef6393aeab96beb1c7bc84bfd1cad4bd68a76fd7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Card/Variantc5ec2d3928c9960b8d9ae607ef6393aeab96beb1c7bc84bfd1cad4bd68a76fd7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
