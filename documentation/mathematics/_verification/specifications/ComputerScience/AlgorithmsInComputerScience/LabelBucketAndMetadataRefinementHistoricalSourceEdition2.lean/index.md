# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LabelBucketAndMetadataRefinement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9e8928571e0ff6ef87651dca0baa00b51fb0b3c",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LabelBucketAndMetadataRefinement.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9e8928571e0ff6ef87651dca0baa00b51fb0b3c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LabelBucketAndMetadataRefinement.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LabelBucketAndMetadataRefinement.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ByteDictionaryAndOutputMaps`](../../../../../ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMaps.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Data.List.Forall2` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [candidateIndices](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/candidateindices.md) | 15 | `declaration-track:a70843bf832ba30efddf2bb2031fb10d56c29b7946e75440925b150e889360c9` |
| 2 | `theorem` | [candidateIndices_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/candidateindices-valid.md) | 21 | `result-track:d3e2d79d8a5815ea735eaab7bd86b54e5f7515140553f78e267e2687f0d72a63` |
| 3 | `theorem` | [candidateIndices_complete](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/candidateindices-complete.md) | 41 | `result-track:550e49c7c57e158f05b292b383ad9c364c0a88570013d53a0d5d7a41cb8f1a2f` |
| 4 | `theorem` | [candidateIndices_append_one](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/candidateindices-append-one.md) | 58 | `result-track:cf7c8d3a56eb94f7a57c972b6a2318988ac7c7ab93595d33ddba606970e2f735` |
| 5 | `structure` | [BucketState](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/bucketstate.md) | 70 | `declaration-track:ca7ebea0826a013c9cb62bda58af064a02111469ff7b7d59bae2d95a7b6434a0` |
| 6 | `def` | [BucketInvariant](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/bucketinvariant.md) | 75 | `declaration-track:8ff908cc54a611ce1a059b0f1f62d44d3e1e626f593fa46533a47e480d169557` |
| 7 | `def` | [emptyBuckets](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/emptybuckets.md) | 78 | `declaration-track:1e544d27aed343b48d000319219b83c502aafafd0690c52fd0386509d0c86421` |
| 8 | `def` | [appendBucket](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/appendbucket.md) | 80 | `declaration-track:d0e894e30cf2f33a71829bf92ea1ab24de2ba397bbdeb58d5c85a8905bf81e43` |
| 9 | `theorem` | [emptyBuckets_invariant](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/emptybuckets-invariant.md) | 85 | `result-track:d4628e7b9fbd04bdc4ea8ee2bdd8ff54c9d8a9216ef8ef673e6eac7c0cc689d8` |
| 10 | `theorem` | [appendBucket_selected](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/appendbucket-selected.md) | 89 | `result-track:fbc4ac73a2981003c03837acf75378415737006d7a34c04d88998bee71bbc4cb` |
| 11 | `theorem` | [appendBucket_other](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/appendbucket-other.md) | 93 | `result-track:79f8e728bb8688d04959b8a07af1722d32fdd391d91145838b9ea60a9f849524` |
| 12 | `theorem` | [appendBucket_preserves_invariant](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/appendbucket-preserves-invariant.md) | 98 | `result-track:3a9c701e61de547f75756c326367d5a004d399c8f714c65327298517a503495b` |
| 13 | `theorem` | [bucket_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/bucket-valid.md) | 107 | `result-track:7bc8c3b50d56381d52543b3bd76da184b3a4b17cd13dbb14cd4d947f0f17ab58` |
| 14 | `theorem` | [bucket_complete](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/bucket-complete.md) | 113 | `result-track:35587d1c7af07e2a3f7b12be8b2e0a8cde62b753a5829d7d15a13667ac7328d8` |
| 15 | `theorem` | [bucket_miss_implies_absent](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/bucket-miss-implies-absent.md) | 119 | `result-track:4e4c9547dcac7477be46d8207f166e53c0e797206b0cb87e5b885747fef9087f` |
| 16 | `theorem` | [bucket_existing_literal_found](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/bucket-existing-literal-found.md) | 125 | `result-track:85ce4881289c3d2817ed25a790cdf172de15e7afb9ec0b29613bb0c66c431129` |
| 17 | `def` | [maintainBuckets](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/maintainbuckets.md) | 134 | `declaration-track:8e55e71349424e63769d909e1d65788870eaebcd00d79816fd1482b8991eefbc` |
| 18 | `theorem` | [maintain_hit](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/maintain-hit.md) | 141 | `result-track:3fc2a00ea743c7fdeab8e2cbe220957c85875fc703ac73ed05ba71a57267ff12` |
| 19 | `theorem` | [maintain_miss](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/maintain-miss.md) | 146 | `result-track:e20e5dffbae00b0abb79a58a5e17cc7c2439278096b56c3bbc8d1cea779e2419` |
| 20 | `theorem` | [maintain_invalid_rejects](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/maintain-invalid-rejects.md) | 151 | `result-track:8eb54d5aa5c4cc8369b1ee7badcb8d03b75b8e945301bd2a8d754dc50be6a435` |
| 21 | `theorem` | [maintain_preserves_invariant](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/maintain-preserves-invariant.md) | 155 | `result-track:971e3a3fbf74a8c5123068e4aff58e0f6968cef1eafcd4e98e61991edcafb6f6` |
| 22 | `theorem` | [maintain_literal_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/maintain-literal-exact.md) | 173 | `result-track:fccd1026e39b34bc59561e1e615376b600b8fee1615f6dfd13b4e14a223560c1` |
| 23 | `theorem` | [maintain_old_slots](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/maintain-old-slots.md) | 191 | `result-track:5299c9301e8073c605d83fdcaee763153f75d5ea9831a5a857e371369746823d` |
| 24 | `theorem` | [maintain_preserves_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/maintain-preserves-nodup.md) | 212 | `result-track:bb089c1b0737f630c0640b87e01a466e3a21ed4d68f15dcf1fae1027e051d682` |
| 25 | `theorem` | [maintain_existing_never_appends](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/maintain-existing-never-appends.md) | 233 | `result-track:5ca0731574c62d06c0192524f6e9679a802942f76040ef13b2b43be83756cbd5` |
| 26 | `def` | [maintainMany](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/maintainmany.md) | 239 | `declaration-track:331d65353d63885da5bdcb84669c0a802338376855bd2f6d56270f5222891110` |
| 27 | `theorem` | [maintainMany_preserves_invariant](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/maintainmany-preserves-invariant.md) | 245 | `result-track:08f166fa3e8b66b027b6e93236ce349425cc1af81d9baaf4cc1fe62786764c12` |
| 28 | `theorem` | [constant_label_maintained_collision](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/constant-label-maintained-collision.md) | 262 | `result-track:1e7cf6a66d8db21518c53e1911c88fade515d19c877dfb975524c66635a36d2c` |
| 29 | `abbrev` | [Targets](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/targets.md) | 271 | `declaration-track:bf79f5e210f9336d8294d7406c26e648c5abbdbcd05e57bd81bc0d9142a2fd15` |
| 30 | `def` | [targetLookup](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/targetlookup.md) | 273 | `declaration-track:d547605b950d89ca825ffa730619317de8a6bc25a540d5a71759b8277c94dbdb` |
| 31 | `def` | [targetInsert](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/targetinsert.md) | 279 | `declaration-track:f2ea9f9efb0d8c30dbe80f0e99e66b817d6b1f38eb8b7ae808ce9f7015e46017` |
| 32 | `theorem` | [targetLookup_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/targetlookup-sound.md) | 284 | `result-track:9c0f30a697e9822c2917a9304530d1cbeab63d8ae9f2a7061f439535266c1501` |
| 33 | `theorem` | [targetLookup_none_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/targetlookup-none-iff.md) | 303 | `result-track:d66a91ff1f3871ca48d9d3958df51a7b05df96d300cca9cea99f79293d17ab15` |
| 34 | `theorem` | [targetLookup_append_old](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/targetlookup-append-old.md) | 313 | `result-track:8af827ecd8f492e185a81f9ae6c6987caab838de39fb4ca3c5c00d14e836d059` |
| 35 | `theorem` | [targetLookup_append_new](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/targetlookup-append-new.md) | 331 | `result-track:23184474555e2cbb3d8c5e8b77f843a1705b97d13af33cdb59ba3692137d483b` |
| 36 | `theorem` | [targetInsert_hit](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/targetinsert-hit.md) | 344 | `result-track:fbb6a57775f67a778c62ffa83df34b8faaf98aa0a759df56f3960e12951d449a` |
| 37 | `theorem` | [targetInsert_conflict](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/targetinsert-conflict.md) | 348 | `result-track:aac2f6602bfc3a689662d0151f14189351afac5bf170f43dd59fca27bfc64ae6` |
| 38 | `theorem` | [targetInsert_fresh](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/targetinsert-fresh.md) | 352 | `result-track:253c2c165c15dcdcb61cb8f2cd59b7dd1c0d402895247daa11bcf247abc0b9a5` |
| 39 | `theorem` | [targetInsert_lookup](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/targetinsert-lookup.md) | 357 | `result-track:21add951cf3ed01c3d1615a9d1fa4b4620205d9f79b2fdc65c309ffdcb26be5d` |
| 40 | `theorem` | [targetInsert_stable_slots](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/targetinsert-stable-slots.md) | 374 | `result-track:d67fcaefc01111892e2e51326eca439abd9931ba80fd228ee989b0d22a59b45a` |
| 41 | `theorem` | [targetInsert_unique](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/targetinsert-unique.md) | 393 | `result-track:2f36a2217cee4411c533c52fa684395008e218521007ff42677d39b87cd69f99` |
| 42 | `theorem` | [target_slot_in_range](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/target-slot-in-range.md) | 418 | `result-track:46a621c02dc7810f3236e81f69fc42b8a924b673ffeba4040044fa8d1bead9fe` |
| 43 | `theorem` | [target_slot_injective](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/target-slot-injective.md) | 422 | `result-track:875518fcba4be5bf902881b81dbf55eaef61ae93edaa3c1580b41706049fb1d1` |
| 44 | `structure` | [Route](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/route.md) | 428 | `declaration-track:2a6017f360eb246b5d4be2f32721ef73249014120e021fcec324964dad51efa1` |
| 45 | `structure` | [Lowered](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/lowered.md) | 434 | `declaration-track:e291c6acb6ce82afc673b506f4d5af5f915f4cf2d66a4892a5cc779b21b92d3d` |
| 46 | `def` | [lowerRoute](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/lowerroute.md) | 439 | `declaration-track:f5b088806a597200635e1c4614175d7fb033290a249bf3659202a9aeaa70af17` |
| 47 | `theorem` | [lowerRoute_routes_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/lowerroute-routes-exact.md) | 443 | `result-track:d6d0071c74cb9a03c43e9c9c3d4555a895b2826b9c40059137abb66f75da627c` |
| 48 | `theorem` | [lowerRoute_metadata_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/lowerroute-metadata-exact.md) | 448 | `result-track:61f709af3e19de73744d5d15f3b9bbc8d51b2e9567a4a12b1503815cb02702bf` |
| 49 | `theorem` | [lowerRoute_preserves_alignment](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/lowerroute-preserves-alignment.md) | 452 | `result-track:1205eb211f708488cca351ae8d034167807f4d1571aa0d5356bf9946232bafa6` |
| 50 | `theorem` | [lowerRoute_metadata_slot](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/lowerroute-metadata-slot.md) | 458 | `result-track:39fadceb9728b4523ea47c0e28a60944691ce3f41767570da4b09c1c69044496` |
| 51 | `def` | [attachOutputs](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/attachoutputs.md) | 465 | `declaration-track:ceec571bb228fae1fbf863338d45b989844d67c58336e1243d6631b1631f8fa3` |
| 52 | `theorem` | [attachOutputs_keys_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/attachoutputs-keys-exact.md) | 472 | `result-track:06d0cc554407196ee90d4580559026cc710cbfc27fc4b74aecbd93ba13a21c55` |
| 53 | `theorem` | [attachOutputs_length](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/attachoutputs-length.md) | 490 | `result-track:68dff4a2bb740173caa22c1f9afb1d5bea6c221506f6503aa47ed8e38a022b05` |
| 54 | `theorem` | [attachOutputs_missing_rejects](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/attachoutputs-missing-rejects.md) | 496 | `result-track:46620634d6eac73f66f1e82fc9fdcc178b0898832990d709cd15b34e5f75c062` |
| 55 | `theorem` | [attachOutputs_exact_records](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/attachoutputs-exact-records.md) | 500 | `result-track:e36fdd7e9fc68bb8d548d04a536903d7adeff6617a6e1a78af54b882c2bddd31` |
| 56 | `def` | [attachOccurrences](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/attachoccurrences.md) | 511 | `declaration-track:576727eb477b072c3773f6132a943eb385f3cd06f73fba57a8685cacd2873a5a` |
| 57 | `theorem` | [attachOccurrences_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/attachoccurrences-exact.md) | 520 | `result-track:bb7adf43b9afde90454d362b5390377bf0a3b2663d9b668e1ad3d0feb0d41a38` |
| 58 | `theorem` | [attachOccurrences_length](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/attachoccurrences-length.md) | 541 | `result-track:5842efa7b321138fc5cf810da176b582f2120c7fd9b5616128c4255bc82a5881` |
| 59 | `theorem` | [attachOccurrences_missing_rejects](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/attachoccurrences-missing-rejects.md) | 546 | `result-track:a25c9af1f756d4345cce34556f5d09d5fbaeb0fdf20f1b62fc04fa192d3d94f2` |
| 60 | `theorem` | [attachOccurrences_unmarked_rejects](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/attachoccurrences-unmarked-rejects.md) | 550 | `result-track:a06583c176270df34149b015e67b57a94543e26ee4dfdd0993ae5aff0e1c1b87` |
| 61 | `theorem` | [attachOccurrences_append](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/attachoccurrences-append.md) | 554 | `result-track:215366658bae288408509784aa5cf5a5df761a97441c1fadccd3aabf04717173` |
| 62 | `theorem` | [attachOccurrences_repetition](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/attachoccurrences-repetition.md) | 573 | `result-track:f4488944c921de9b45005c983ed6cee90c09762aec3ce07f1f289bf9e529c6f5` |
| 63 | `theorem` | [distinct_metadata_shared_output](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/distinct-metadata-shared-output.md) | 578 | `result-track:e2113aacffc4bfbc6a6e4eb790ffe6f9f5b49353de02eedeb3d95238b5bac0e7` |
| 64 | `def` | [markedIndices](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/markedindices.md) | 585 | `declaration-track:cff142bd407407083b9209b1141b8c0e7cd489336c24873104281cb2a629470c` |
| 65 | `def` | [MetadataAligned](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/metadataaligned.md) | 591 | `declaration-track:d15b0a11aa42d1bfed3e559a69391d462289a13f1fe417faec692634ca1c5125` |
| 66 | `theorem` | [empty_lowering_aligned](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/empty-lowering-aligned.md) | 594 | `result-track:50035776b687accec30311267bd25f4da5504cf9b3ad88b9c33a727c7a0816c1` |
| 67 | `theorem` | [lowerRoute_flags_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/lowerroute-flags-exact.md) | 597 | `result-track:bb30edf97ab3c6095359e17a6f4c8bb471cbb9b07f07ee728e64c671e0973a22` |
| 68 | `theorem` | [alignment_includes_lengths](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/alignment-includes-lengths.md) | 602 | `result-track:b8b5dec369c5ac086fc071480f02fa27a50ba7811622cef8dc79ea3a240df1b3` |
| 69 | `theorem` | [attachOccurrences_shift](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/attachoccurrences-shift.md) | 607 | `result-track:3e1d93118a72cce07222c98bfb59bd591b06f351278e197ea83aff1ffc1368c4` |
| 70 | `theorem` | [reattach_all_marked_metadata](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/reattach-all-marked-metadata.md) | 619 | `result-track:82d7a135b693a1cac5f216f156813502bea61c41cd5b241ed2710cf5558dcff6` |
| 71 | `theorem` | [lowering_assembly_reattachment_history](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/lowering-assembly-reattachment-history.md) | 635 | `result-track:cf63a04439310ec751ec3eef37035c9402eb7e730c89b3ad2f4b5f501ab3c818` |
| 72 | `theorem` | [lowering_assembly_reattachment_outputs](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/lowering-assembly-reattachment-outputs.md) | 645 | `result-track:a23162be2158fa4ed03f66176a30fc25c469c0fb433d27171fdffde5460833f2` |
| 73 | `theorem` | [reattached_occurrences_are_exact_history](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/reattached-occurrences-are-exact-history.md) | 656 | `result-track:aeb7b0ceae4224d1991f0d4f49286fd8fc923e7aab6815ab33b8e0b58f653bf9` |
| 74 | `theorem` | [repeated_metadata_route_preserves_multiplicity](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/repeated-metadata-route-preserves-multiplicity.md) | 662 | `result-track:e98873c29e7404cd57b6c1e1ad0134b5b20cbf3359b00d8828156f8845854c48` |
| 75 | `theorem` | [candidateIndices_exact_labels](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/candidateindices-exact-labels.md) | 666 | `result-track:c2b6c571468d34ca1ed181eb609b3c3f9a4c709875efb5ce4c07bb3d0a873e46` |
| 76 | `theorem` | [maintained_bucket_labels](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/maintained-bucket-labels.md) | 687 | `result-track:4816c3d4e1c75a24f14b2fd442c7bc3b980aafe4d2e6301981c6bcf950284aba` |
| 77 | `theorem` | [valid_candidates_never_malformed](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/valid-candidates-never-malformed.md) | 694 | `result-track:c3f2fbab010ae0662383ef396b624149838cfac4980644be290bb364256d9682` |
| 78 | `theorem` | [valid_maintained_bucket_total](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/valid-maintained-bucket-total.md) | 704 | `result-track:968709b8c6f5467ec9c8fd231f7f078b7ee9691528f298324ae3c3cddbfb27c8` |
| 79 | `theorem` | [literal_metadata_roundtrip](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/literal-metadata-roundtrip.md) | 716 | `result-track:b2429f0dd2daf31bafcd9de5f593d88fd12ce859e5acaa6e06f7d13adacc4890` |
| 80 | `theorem` | [produced_metadata_roundtrip](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/produced-metadata-roundtrip.md) | 724 | `result-track:db6f68d9e3fe8b8cfb11eb467b2dba9e1b74fe4113f138ce53e6b9ceb4ff5e1f` |
| 81 | `def` | [TargetRepresentation](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/targetrepresentation.md) | 737 | `declaration-track:1b0bee9f3c8a0674213230cc0a7466940830c419c73cb2a06f81c933066801ea` |
| 82 | `theorem` | [targetLookup_append_unrelated](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/targetlookup-append-unrelated.md) | 740 | `result-track:4c8462953c5bc839f1fa701814bbdeda24f11fac524187a154c57ce1dcfc93b4` |
| 83 | `theorem` | [targetInsert_other_lookup](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/targetinsert-other-lookup.md) | 749 | `result-track:21fcae1965df5df2352f255948536a30e1dccd6fc2573164bbbb9a17aba61c5a` |
| 84 | `theorem` | [dictionary_insert_correspondence](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/dictionary-insert-correspondence.md) | 766 | `result-track:03f84982e61a51dd0edd9fcd8f58852d1c19eec85cd645d85acfb4c6e4d6cb6f` |
| 85 | `theorem` | [targetLookup_complete](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/targetlookup-complete.md) | 779 | `result-track:26352e939d085a1a44763c09c491ac7771c45f141a172374094bad5124cfb79b` |
| 86 | `theorem` | [target_slots_dense](../../../../../ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinementHistoricalSourceEdition2.lean/declarations/target-slots-dense.md) | 799 | `result-track:3e72d5f899f9692068819cbc083a38a4c6cab8723bf9b59b61bac8b7f01ba387` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2bcab6972268007776cde86600ad6cb385b0f288e41ca6d98eac2bdf23557a60 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LabelBucketAndMetadataRefinement.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LabelBucketAndMetadataRefinement.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
