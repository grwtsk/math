# Verification target: Comparable Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42f9b355f4cfe3e4486bc74387d90a0e4ff6896e",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Comparable/Variante9b8cbe83d903822793de3b52ac9dccdff358b8cbda355f54cba235520926f54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42f9b355f4cfe3e4486bc74387d90a0e4ff6896e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Comparable/Variante9b8cbe83d903822793de3b52ac9dccdff358b8cbda355f54cba235520926f54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Comparable/Variante9b8cbe83d903822793de3b52ac9dccdff358b8cbda355f54cba235520926f54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Antisymmetrization` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CompRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/comprel.md) | 54 | `declaration-track:c63f20aa7147514f014af3c20426459c73f9d4b6caa4c7f9d8b2ec6371c88017` |
| 2 | `theorem` | [CompRel.of_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/comprel-of-rel.md) | 57 | `result-track:9bb634995cde46b58888254cdf845dabe36e4af51416c719a31ea88419bde401` |
| 3 | `theorem` | [CompRel.of_rel_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/comprel-of-rel-symm.md) | 60 | `result-track:51eb9e8c3ebdef3ea34e0c51aef5ed226ea0d1c4196f07d56aa5fb3a3c0df98e` |
| 4 | `theorem` | [compRel_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/comprel-swap.md) | 63 | `result-track:a4bae99be1c0ae95a597ad228f3af9c3ecea58f8c01e54ba62c1ebaf1ed1ae16` |
| 5 | `theorem` | [compRel_swap_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/comprel-swap-apply.md) | 66 | `result-track:cade49ce9fb4ee65d11cc2a95a98b3deaf82c9ec1de430fb8ed61f7b7bd5a6c3` |
| 6 | `theorem` | [CompRel.refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/comprel-refl.md) | 70 | `result-track:a169b748984ebbbc24d6f4edc0bc7cb5cbad9c053ed9e5a45b2a2724a064c286` |
| 7 | `theorem` | [CompRel.rfl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/comprel-rfl.md) | 73 | `result-track:c75a82f8798a4fe17ce78d1514008c46dcb2397752d5d7ba06677d59bcb18b25` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/instance-source-edition-4.md) | 75 | `declaration-track:3b2094d6ea285375f362f1f80b8ff6513910f0feb7376ed9c6e0a5c5166744a6` |
| 9 | `theorem` | [CompRel.symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/comprel-symm.md) | 79 | `result-track:dfe45b34216b84bd63f989be37a73ffaa017d63e698cc9c8be4967b447bde2c8` |
| 10 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/instance-source-edition-3.md) | 82 | `declaration-track:25a208f835e69344a1fd5ae0d0bf19cf7722057aaf914ab70775306b56fc3a67` |
| 11 | `theorem` | [compRel_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/comprel-comm.md) | 85 | `result-track:c46b45a4773e3c89b6f0718540def45c90b93ed6d511edae73f3c06df0944173` |
| 12 | `instance` | [CompRel.decidableRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/comprel-decidablerel.md) | 88 | `declaration-track:03e38f7c345535f4d3474cf1f5ad40e73f8efc252b0de0fb0e64a7285e334172` |
| 13 | `theorem` | [AntisymmRel.compRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/antisymmrel-comprel.md) | 91 | `result-track:4f47e9515fd255807f305a2a47544c2bfd4d225dac5c15b57081cca03719fbc8` |
| 14 | `theorem` | [IsTotal.compRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/istotal-comprel.md) | 95 | `result-track:c5e4dea251a4a07d2d603c25dfc9c0c84673abffa81b7aeb149c1d9a75d22fc0` |
| 15 | `theorem` | [CompRel.of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/comprel-of-le.md) | 104 | `result-track:5614b87a9b532f90f7430d3e06319fc80ad70060589a6385f14a45e830e573b3` |
| 16 | `theorem` | [CompRel.of_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/comprel-of-ge.md) | 105 | `result-track:4e06c2a5fddc38b3c9545cdd01979dbaaeb90b4f57bc5b0e3b8b0fa5c8f93a25` |
| 17 | `theorem` | [CompRel.of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/comprel-of-lt.md) | 116 | `result-track:c9dee190f545b99e4426aa72c2197ed904bd6ff23ef2a636c95713d77b168c91` |
| 18 | `theorem` | [CompRel.of_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/comprel-of-gt.md) | 117 | `result-track:2ccb5f9f27c53e4047d5f73564856e2bafe3354b226ae4278eba6e98b4c6ee3c` |
| 19 | `theorem` | [CompRel.of_compRel_of_antisymmRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/comprel-of-comprel-of-antisymmrel.md) | 123 | `result-track:c441afc81aac7f3cc63c56872ecde3b52f1cd8edc0623febd88a7427dc69e929` |
| 20 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/instance-source-edition-8.md) | 131 | `declaration-track:de193016e54b097f8db56547f6a57f006293d302f3b6c6ee8b7f6603321e944e` |
| 21 | `theorem` | [CompRel.of_antisymmRel_of_compRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/comprel-of-antisymmrel-of-comprel.md) | 135 | `result-track:c14248383161b31808fb6e459b32a0ef95fcf383b5a404b3f6af25452d8d31aa` |
| 22 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/instance.md) | 141 | `declaration-track:1666bdd1df12010daea34d978e7d76a4e14ddc22b00f2f24c78fc3ab45e37a69` |
| 23 | `theorem` | [AntisymmRel.compRel_congr](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/antisymmrel-comprel-congr.md) | 144 | `result-track:ff8213f1ff1f4d3119f1f4383c06616d58fb4652b4ba291311fd8313bb88911b` |
| 24 | `theorem` | [AntisymmRel.compRel_congr_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/antisymmrel-comprel-congr-left.md) | 149 | `result-track:5deb2cc16a8b0204d0ff2e206cf4e093a8aa29db23bb1a691fe0e1025e005a3a` |
| 25 | `theorem` | [AntisymmRel.compRel_congr_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/antisymmrel-comprel-congr-right.md) | 153 | `result-track:845001005f8725672c6644c68759cc61533be75d55be62afabd5a8e0d8b851d5` |
| 26 | `def` | [linearOrderOfComprel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/linearorderofcomprel.md) | 160 | `declaration-track:564defb184e396207594d4272d9546143ebcb58ae136196b0d71a99f3d3c5199` |
| 27 | `def` | [IncompRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/incomprel.md) | 175 | `declaration-track:dd6c1fa7985415e63ff9d6d004f0bade3e3f7efb2dd5aeac8a39ba4e8f5f7adc` |
| 28 | `theorem` | [antisymmRel_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/antisymmrel-compl.md) | 179 | `result-track:ac6ec3d13f0a43869927b7872a56130ec2fdf13b504d7872a7bed9301986132e` |
| 29 | `theorem` | [antisymmRel_compl_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/antisymmrel-compl-apply.md) | 182 | `result-track:bb4fa98549108990592da886accd0d58f13d0bb7f9cf0719eacf7750caae3b5b` |
| 30 | `theorem` | [incompRel_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/incomprel-compl.md) | 186 | `result-track:0ae9ef776b32216fedb441a99be635fabfe6b2bc0f437bcd6f22b25387c42938` |
| 31 | `theorem` | [incompRel_compl_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/incomprel-compl-apply.md) | 190 | `result-track:eeed56963f8585fcfbe7a446bfec047b587e4aff98201c12f723f6428fbc752d` |
| 32 | `theorem` | [incompRel_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/incomprel-swap.md) | 193 | `result-track:0d88b632032187b676805f7fc19bd7497f5c2fc1f46910a40e3eceb2d20903f8` |
| 33 | `theorem` | [incompRel_swap_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/incomprel-swap-apply.md) | 196 | `result-track:2b122fc503d1e86359cdabf9a447b8f5ac8555c169bd20c8b6209179e2819cee` |
| 34 | `theorem` | [IncompRel.refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/incomprel-refl.md) | 200 | `result-track:227584f82acb3d6946d179cfd5e07550961f7463bb6a1631593b736827d00a55` |
| 35 | `theorem` | [IncompRel.rfl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/incomprel-rfl.md) | 204 | `result-track:a96f9ee008188eb1e21f8e77135c93d4f29108e3a7d2512e3609073baee00981` |
| 36 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/instance-source-edition-2.md) | 206 | `declaration-track:214e370582a7d078a93620cf2a52b139e2ba7ebd2323061cc122b795dfebd963` |
| 37 | `theorem` | [IncompRel.symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/incomprel-symm.md) | 212 | `result-track:2cb096351d220584f90e09be5a4d46ee15465c2157e30d209218bab6294c56cd` |
| 38 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/instance-source-edition-6.md) | 215 | `declaration-track:9389c7fb4897291ef655f3109be5cfbe6e7f3712ad534fc4dfd40219af9996bf` |
| 39 | `theorem` | [incompRel_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/incomprel-comm.md) | 218 | `result-track:36c03b5c27db40a55dc02ebb18c1046eae04645773c2ce7ceecb4967ca08c2b3` |
| 40 | `instance` | [IncompRel.decidableRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/incomprel-decidablerel.md) | 221 | `declaration-track:f83412337df902b5d402bc7cd3833817e9c6be03f50ccd08d280ef3baa29085e` |
| 41 | `theorem` | [IncompRel.not_antisymmRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/incomprel-not-antisymmrel.md) | 224 | `result-track:7310c94fea9e6fe66712658a27ebb91a3c79b0085b3ecc3e27dc000f6a4b6463` |
| 42 | `theorem` | [AntisymmRel.not_incompRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/antisymmrel-not-incomprel.md) | 227 | `result-track:718d11a2dfccddf33838fbc925a4714354c86c60f92096b91a534c5204326e12` |
| 43 | `theorem` | [not_compRel_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/not-comprel-iff.md) | 230 | `result-track:72362991093cfc775a394240f98659802e83dc015b88ba6312819334ea9a26bc` |
| 44 | `theorem` | [not_incompRel_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/not-incomprel-iff.md) | 233 | `result-track:e9b48500ca86b91e9d7463560270baa7ce514c46a08c878bdabe38f7293e1f3a` |
| 45 | `theorem` | [IsTotal.not_incompRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/istotal-not-incomprel.md) | 237 | `result-track:2549f5c8d943632a1132114e68008af30fe2e5b2c30224f80648838d6ff7e542` |
| 46 | `theorem` | [IncompRel.not_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/incomprel-not-le.md) | 247 | `result-track:d71dc4b0e5f751ddba630d21a95b1398301cd6f03892c2280ecc7f157a58dc53` |
| 47 | `theorem` | [IncompRel.not_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/incomprel-not-ge.md) | 248 | `result-track:5b29a2bafbdeeddb8114f623cf8ac06219312eaf956823525862c3f5c7df0e2f` |
| 48 | `theorem` | [LE.le.not_incompRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/le-le-not-incomprel.md) | 249 | `result-track:e582cd1e81e2d6ca4c000e564d3c58811372c8825946a008d68c58a2636ab75b` |
| 49 | `theorem` | [IncompRel.not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/incomprel-not-lt.md) | 257 | `result-track:0f47dae37b1cd673d6491271fd129dc200e35c85df6823894631cfa66d169a32` |
| 50 | `theorem` | [IncompRel.not_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/incomprel-not-gt.md) | 258 | `result-track:8cf856c5baa969fddf0ef7c9e78385af5e6f5acc5940f50357fa10542c6ddb83` |
| 51 | `theorem` | [LT.lt.not_incompRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/lt-lt-not-incomprel.md) | 259 | `result-track:cbcb108a5103a083f748069375ca357e42f0c3b88c7d0908dac997154b8056c4` |
| 52 | `theorem` | [not_le_iff_lt_or_incompRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/not-le-iff-lt-or-incomprel.md) | 261 | `result-track:71fe5cc261da9507afd2f007bf4aba097e3a8e82448c3610d5782a564c6285c3` |
| 53 | `theorem` | [lt_or_antisymmRel_or_gt_or_incompRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/lt-or-antisymmrel-or-gt-or-incomprel.md) | 266 | `result-track:537681b0a837ecf6a4cbca208e7555c922c4efdd69d8ef3663e7f1eab0972358` |
| 54 | `theorem` | [incompRel_of_incompRel_of_antisymmRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/incomprel-of-incomprel-of-antisymmrel.md) | 272 | `result-track:63e3a7fb3a47f8581be81990cf3bf84e9d2f9b0c8b1873cc71124b6aa3019bf9` |
| 55 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/instance-source-edition-7.md) | 278 | `declaration-track:c768e528a23024dd0177400ffb07509ac3c1f6eddbb3a5e281c47dff80f30b89` |
| 56 | `theorem` | [incompRel_of_antisymmRel_of_incompRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/incomprel-of-antisymmrel-of-incomprel.md) | 282 | `result-track:aa29527aab5a686ec7f264d8ff618fb871f7fd122bf029a150d9d8f17d5a8427` |
| 57 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/instance-source-edition-5.md) | 288 | `declaration-track:4135dcc0c1e11a176a6a8327535f86b792abd58912b7b98b15b08de212d3c2a0` |
| 58 | `theorem` | [AntisymmRel.incompRel_congr](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/antisymmrel-incomprel-congr.md) | 291 | `result-track:248d676897984d0cdbed7e3c2a53b31ab6635b31288d5ec7a6bc3121218dec20` |
| 59 | `theorem` | [AntisymmRel.incompRel_congr_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/antisymmrel-incomprel-congr-left.md) | 296 | `result-track:502e4b2951343beb8c3ce45314cbb771c5f892bfaeeb3d701b52591b9f147238` |
| 60 | `theorem` | [AntisymmRel.incompRel_congr_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/antisymmrel-incomprel-congr-right.md) | 300 | `result-track:fffa7664344a55fe816ad8bd50c41c4d5e739a9aba16798bbb735731e458dc3b` |
| 61 | `theorem` | [lt_or_eq_or_gt_or_incompRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ComparableNamespaced.lean/declarations/lt-or-eq-or-gt-or-incomprel.md) | 307 | `result-track:431f6cb454dcd7ee64c9a1f14cbc8b75d68cc5b66e232f4e0ff271dfdb2817e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73eb008c12d1dd20758655d371bfd38c53c88af085e454f548b423b49b9fc30b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Comparable/Variante9b8cbe83d903822793de3b52ac9dccdff358b8cbda355f54cba235520926f54.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Comparable/Variante9b8cbe83d903822793de3b52ac9dccdff358b8cbda355f54cba235520926f54.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
