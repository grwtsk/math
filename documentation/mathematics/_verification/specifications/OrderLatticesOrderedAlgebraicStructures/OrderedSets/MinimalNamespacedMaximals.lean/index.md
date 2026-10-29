# Verification target: Minimal Namespaced Maximals

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a60d6515fb184bb2f9511fa95480bf444b85246",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Minimal/Variante262d24d5b6a4c12044edc0d1bcc401617b86d722c6ce8bf298f457a048e5052.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a60d6515fb184bb2f9511fa95480bf444b85246`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Minimal/Variante262d24d5b6a4c12044edc0d1bcc401617b86d722c6ce8bf298f457a048e5052.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Minimal/Variante262d24d5b6a4c12044edc0d1bcc401617b86d722c6ce8bf298f457a048e5052.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Antichain` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.UpperLower.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [maximals](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/maximals.md) | 43 | `declaration-track:f084fd4c6e202c43883e99fb175b62a6e097d070f7f4c8cfd7bec70771f1f581` |
| 2 | `def` | [minimals](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/minimals.md) | 48 | `declaration-track:c7aa8b8d98c1144b5e29db15e065a39c0c488f8d46dc170102f388c4ed31ba39` |
| 3 | `theorem` | [maximals_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/maximals-subset.md) | 52 | `result-track:88fb007062bc5c7c408211f505f184366f03583089a7b125f26e36bcb120788d` |
| 4 | `theorem` | [minimals_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/minimals-subset.md) | 56 | `result-track:5926e942a829a9191d1fd7453637c84fc7755bc0b2be0eaeec06e79a17d82715` |
| 5 | `theorem` | [maximals_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/maximals-empty.md) | 61 | `result-track:5d75c9cfacb4248624c5eacd6858b12dca18437cea04dc4b42e6fd21675df3e5` |
| 6 | `theorem` | [minimals_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/minimals-empty.md) | 66 | `result-track:5fb481bb2a9f57c2c2cb7e57ac38a357930200264cc9fbd730cb2516dd68fa36` |
| 7 | `theorem` | [maximals_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/maximals-singleton.md) | 71 | `result-track:60b773b0bf2844780b2cc6b946c2537a6255b14c2c43bc590633364cca20308d` |
| 8 | `theorem` | [minimals_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/minimals-singleton.md) | 80 | `result-track:04eb498d78ac01729e6020956ccd2177a03052a033a4995020fa2052de4c2327` |
| 9 | `theorem` | [maximals_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/maximals-swap.md) | 84 | `result-track:ea1cf58972a0af06f0d82db16bc3be85f325490d9c5c063877e96582c0a8d9a1` |
| 10 | `theorem` | [minimals_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/minimals-swap.md) | 88 | `result-track:d9eb4e67aa94866eff0a642caa82d8628ba34f9990e05225d18baf4e530ffce5` |
| 11 | `theorem` | [eq_of_mem_maximals](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/eq-of-mem-maximals.md) | 96 | `result-track:4aecacc0db997d0b11007740591aa0789aacd615735d60494c443ad333d01660` |
| 12 | `theorem` | [eq_of_mem_minimals](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/eq-of-mem-minimals.md) | 100 | `result-track:ab88806f66c459c4a2e118c6756e48d944a66f958b3f178939aa23158b78c5f4` |
| 13 | `theorem` | [mem_maximals_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/mem-maximals-iff.md) | 104 | `result-track:88eba4e5e29f7cf25fcbf9a525e3e671c50cd197cbfbc9137fd0cb14834fa3b1` |
| 14 | `theorem` | [mem_maximals_setOf_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/mem-maximals-setof-iff.md) | 109 | `result-track:d5ef675d9f545dc5ac0b02c4c50cffadb10504ee5e121b90cf849ee5883cb429` |
| 15 | `theorem` | [mem_minimals_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/mem-minimals-iff.md) | 112 | `result-track:1d5a8a32af79f6f1cd97430fe54f8ca876e8dcff1834768ab09c3051ae36336b` |
| 16 | `theorem` | [mem_minimals_setOf_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/mem-minimals-setof-iff.md) | 115 | `result-track:064caa0edb736f0eabd9d5a51436114719391424d573016ac15799514f01ecc1` |
| 17 | `theorem` | [mem_minimals_iff_forall_lt_not_mem'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/mem-minimals-iff-forall-lt-not-mem-source-edition-2.md) | 121 | `result-track:c87c6d7e509db2766cc1c6d7c412bb4d755920e9cd0891b77ccf7675900f1127` |
| 18 | `theorem` | [mem_maximals_iff_forall_lt_not_mem'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/mem-maximals-iff-forall-lt-not-mem.md) | 125 | `result-track:14c05d4d67137312a88862ac6c6b4a7b2145ed6fdf1a34a892181d38a3d98e3e` |
| 19 | `theorem` | [minimals_eq_minimals_of_subset_of_forall](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/minimals-eq-minimals-of-subset-of-forall.md) | 129 | `result-track:e193fb5474c2f1d23e9750c24ff6cd8fc399100b2f2808eed564daa123c6d8a5` |
| 20 | `theorem` | [maximals_eq_maximals_of_subset_of_forall](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/maximals-eq-maximals-of-subset-of-forall.md) | 138 | `result-track:616493549f5b44c1eca26c127d0aec03ba6ba7020d17edbf7eadf137d5a27eda` |
| 21 | `theorem` | [maximals_antichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/maximals-antichain.md) | 144 | `result-track:b196e3d2929512563a1365b67bd89a3ab37ffcca4d98afad888852e754642c03` |
| 22 | `theorem` | [minimals_antichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/minimals-antichain.md) | 148 | `result-track:e0248d6707c6d11c759afa97e90436312db2cb7fcd401577f17358864f31d794` |
| 23 | `theorem` | [mem_minimals_iff_forall_ssubset_not_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/mem-minimals-iff-forall-ssubset-not-mem.md) | 155 | `result-track:01bb972b3e5fab555b9fb224e480c1a2dbd7736bda087eddf705bdd64fb02dd6` |
| 24 | `theorem` | [mem_minimals_iff_forall_lt_not_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/mem-minimals-iff-forall-lt-not-mem.md) | 159 | `result-track:08f7c9ae4cb4b820a7ee3bfe0449d734a86462db50ce3a52cca215b7e57f37c4` |
| 25 | `theorem` | [mem_maximals_iff_forall_ssubset_not_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/mem-maximals-iff-forall-ssubset-not-mem.md) | 163 | `result-track:86b9bbd82146e05b3529a3a75f1e0cfa50f994d11dbea748d7cca5762f1bafa7` |
| 26 | `theorem` | [mem_maximals_iff_forall_lt_not_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/mem-maximals-iff-forall-lt-not-mem-source-edition-2.md) | 167 | `result-track:d5189772ea8fe1db4a2b6853dcad5af588902db2d8e44c2b93fe2eb71f8da004` |
| 27 | `theorem` | [maximals_of_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/maximals-of-symm.md) | 172 | `result-track:8f49780d2c06f0722a3cce1dd169e7a8d7d2899bffc6f5dd785265bd896344bc` |
| 28 | `theorem` | [minimals_of_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/minimals-of-symm.md) | 176 | `result-track:6b48a2c7b7fa53304c77d40509318d8f3b7dd501dad8f3098b84b63bad79beea` |
| 29 | `theorem` | [maximals_eq_minimals](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/maximals-eq-minimals.md) | 179 | `result-track:ce64722e30808f8115ed36117bd23a8c06389fa8e3bba4b19aaaa7363abaf695` |
| 30 | `theorem` | [Set.Subsingleton.maximals_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/set-subsingleton-maximals-eq.md) | 186 | `result-track:43d38621514dbd5d4380212baa016da1c17164632af7d7070d8d0d6127408677` |
| 31 | `theorem` | [Set.Subsingleton.minimals_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/set-subsingleton-minimals-eq.md) | 191 | `result-track:402d08696f8a62efe98dc7dbb3cbf01ecee1241f2997592223412f19fe95c3a4` |
| 32 | `theorem` | [maximals_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/maximals-mono.md) | 195 | `result-track:318fed19bf99c529713bcb8dcfa371ee4c2ac03a7b883dd650d98436079cf1df` |
| 33 | `theorem` | [minimals_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/minimals-mono.md) | 203 | `result-track:1ed1676cfcb360c033d931fe6982e661def3357ba37f73166492fdae14e15ae3` |
| 34 | `theorem` | [maximals_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/maximals-union.md) | 211 | `result-track:f52915385441e7b20b726a85fe37637581c9a20f981b6b87675cb8ac8d4adf43` |
| 35 | `theorem` | [minimals_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/minimals-union.md) | 218 | `result-track:a917019b349e559f0077c4a889d141b1d813cb927aefa4483783de7993e04fc0` |
| 36 | `theorem` | [maximals_inter_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/maximals-inter-subset.md) | 222 | `result-track:db05b1ec35c53ac0d06041879d197612f046826dd80cd7988b1a4bbc0d445084` |
| 37 | `theorem` | [minimals_inter_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/minimals-inter-subset.md) | 226 | `result-track:f071857568c3e4317915fafeff615a75a2b9fcc1e1d19299aeb1b405403daa66` |
| 38 | `theorem` | [inter_maximals_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/inter-maximals-subset.md) | 230 | `result-track:d9796359397f6198639b25c18a07cb35feec243ed144c2f350f5f6c0d294e3b6` |
| 39 | `theorem` | [inter_minimals_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/inter-minimals-subset.md) | 234 | `result-track:4c2585dd522a863bfa214e15bb4eb3d9628f0d2004ccf6ad0515c553be55482e` |
| 40 | `theorem` | [IsAntichain.maximals_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/isantichain-maximals-eq.md) | 238 | `result-track:075725c8227ee9734980e91021b640802ee1e0da2df6f35c35a26ba6aa3b033f` |
| 41 | `theorem` | [IsAntichain.minimals_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/isantichain-minimals-eq.md) | 245 | `result-track:5e7f3e373c10a6260f9d4679754875934c87989f6049674a9dc3d24307c7557f` |
| 42 | `theorem` | [maximals_idem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/maximals-idem.md) | 250 | `result-track:819e267164126eba904f062a64fec4498354b46d3491d87568de93e004785dc0` |
| 43 | `theorem` | [minimals_idem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/minimals-idem.md) | 255 | `result-track:7e3d6901de7cb6af4a686ea4c5d4096a16a64a272e737390bbf6e9001615b865` |
| 44 | `theorem` | [IsAntichain.max_maximals](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/isantichain-max-maximals.md) | 261 | `result-track:8833641aa1b9ce8e6bcb2eefd7ccdd9b4ffeb3a508a5a0a4bd79ca64895f2745` |
| 45 | `theorem` | [IsAntichain.max_minimals](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/isantichain-max-minimals.md) | 270 | `result-track:1c1425af5a29b663eb44e6803dfc1876ce55e0e48632eb1ee66e97d4ac934677` |
| 46 | `theorem` | [IsLeast.mem_minimals](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/isleast-mem-minimals.md) | 279 | `result-track:35e76f9865f4a747aca6db864274518902b6daf62f0a0f23e71fcddcaacc7d10` |
| 47 | `theorem` | [IsGreatest.mem_maximals](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/isgreatest-mem-maximals.md) | 283 | `result-track:2910d9cdfa1bac571b6aea6896aa03c544597898a5e0cd3b414a6ced76049471` |
| 48 | `theorem` | [IsLeast.minimals_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/isleast-minimals-eq.md) | 287 | `result-track:916a4b41c4fa955401b588467b723ee55860c60c5cb33daac650cceaa98017f3` |
| 49 | `theorem` | [IsGreatest.maximals_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/isgreatest-maximals-eq.md) | 291 | `result-track:d7cdb19065e74b59fa511b3cdd9205a8643d9e7a4bee60e7c91891c18d44ae66` |
| 50 | `theorem` | [IsAntichain.minimals_upperClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/isantichain-minimals-upperclosure.md) | 295 | `result-track:5cf52ca1ad42ce077172cae107a086e6b9f21bee1e9722844c242ec68a509716` |
| 51 | `theorem` | [IsAntichain.maximals_lowerClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/isantichain-maximals-lowerclosure.md) | 304 | `result-track:b2177de43a3c00c0f72b2517a75c8b461db8253165af3cff06c0940356552e8d` |
| 52 | `theorem` | [minimals_image_of_rel_iff_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/minimals-image-of-rel-iff-rel.md) | 313 | `result-track:5fc09ef79ccaf75298a78a066786a4b87552f1f5fe894ac4e5e8558055d6b92c` |
| 53 | `theorem` | [maximals_image_of_rel_iff_rel_on](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/maximals-image-of-rel-iff-rel-on.md) | 323 | `result-track:b3df61e95aa574961b681a6c56d29dd47c470e609c4b3e5fd6924448e5cee36b` |
| 54 | `theorem` | [RelEmbedding.minimals_image_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/relembedding-minimals-image-eq.md) | 328 | `result-track:d63ff652c1340c2187212d8ce2509ee17fe47351b146eb2eefa899b861cf8c27` |
| 55 | `theorem` | [RelEmbedding.maximals_image_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/relembedding-maximals-image-eq.md) | 332 | `result-track:5dc4ae7127ae25c1ed2fc74c4d6e4935297b659886d5e8856b1f1cde518b6110` |
| 56 | `theorem` | [inter_minimals_preimage_inter_eq_of_rel_iff_rel_on](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/inter-minimals-preimage-inter-eq-of-rel-iff-rel-on.md) | 336 | `result-track:cf2475d0d186619187d03c9828c45169675947a260335cbbb7f0acc51558302f` |
| 57 | `theorem` | [inter_preimage_minimals_eq_of_rel_iff_rel_on_of_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/inter-preimage-minimals-eq-of-rel-iff-rel-on-of-subset.md) | 347 | `result-track:ada71821d99a85c15b998966624acae83ea09af8b8a3432321adac62149a909b` |
| 58 | `theorem` | [RelEmbedding.inter_preimage_minimals_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/relembedding-inter-preimage-minimals-eq.md) | 353 | `result-track:5fc093b185b0d12d078a5042b46caa6ad51269818e0c28b9c47797c62fd64b3c` |
| 59 | `theorem` | [RelEmbedding.inter_preimage_minimals_eq_of_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/relembedding-inter-preimage-minimals-eq-of-subset.md) | 357 | `result-track:2201297cc704623df450e28d6822745590c6b907cd00d7b941a39c2fa17d9804` |
| 60 | `theorem` | [RelEmbedding.minimals_preimage_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/relembedding-minimals-preimage-eq.md) | 361 | `result-track:c596f1ed34056d6daa91c0b989a225f693b37bf0daba989073c8e303ee95d232` |
| 61 | `theorem` | [inter_maximals_preimage_inter_eq_of_rel_iff_rel_on](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/inter-maximals-preimage-inter-eq-of-rel-iff-rel-on.md) | 365 | `result-track:eaa96a7a757353a174233120639247179f87b8a141c2bac6b6d9064c7be23236` |
| 62 | `theorem` | [inter_preimage_maximals_eq_of_rel_iff_rel_on_of_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/inter-preimage-maximals-eq-of-rel-iff-rel-on-of-subset.md) | 371 | `result-track:7073748ca4c254f1cd5bcdacfdb4b7adeaa60b35c0660c9c42701a138d2515df` |
| 63 | `theorem` | [RelEmbedding.inter_preimage_maximals_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/relembedding-inter-preimage-maximals-eq.md) | 377 | `result-track:9d94da94c0cd2b33fd4999eae36197829883ac217e250a0a42f8b75f85eaefb9` |
| 64 | `theorem` | [RelEmbedding.inter_preimage_maximals_eq_of_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/relembedding-inter-preimage-maximals-eq-of-subset.md) | 381 | `result-track:a88ef1a30ee4376547eecf5c4bf57301f1c1b98184956a477a799d9fa75563e0` |
| 65 | `theorem` | [RelEmbedding.maximals_preimage_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/relembedding-maximals-preimage-eq.md) | 385 | `result-track:5ffa476fbfc27dd223eaff200a6ffd514ab225e32a64307933459f5066a26b10` |
| 66 | `theorem` | [maximals_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/maximals-iic.md) | 395 | `result-track:7cedc8a13f5cfe2651a97bb6792f19a79823eb1b78d9a5d0741ccbba6b382a53` |
| 67 | `theorem` | [minimals_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/minimals-ici.md) | 399 | `result-track:b927366ab707ea76634b8a23b343362aedbfca8924fee30dde1b79c0f909569a` |
| 68 | `theorem` | [maximals_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/maximals-icc.md) | 402 | `result-track:bed6c96a4af7882fc46ae4e011e300f7e7164dda9b801d0c876abeea48e914b1` |
| 69 | `theorem` | [minimals_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/minimals-icc.md) | 406 | `result-track:f651bc21185367582ed6499aa35307b16d17088b1df40b507c24f82877f1b0ef` |
| 70 | `theorem` | [maximals_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/maximals-ioc.md) | 409 | `result-track:b35229e0a5024b733882d6a0ae44b51f7ff36cda3492b56d58ae795004d710ab` |
| 71 | `theorem` | [minimals_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinimalNamespacedMaximals.lean/declarations/minimals-ico.md) | 413 | `result-track:2775094d244491a51a7219b7f20203a0cd1f07af875f08e8322d5f2cb7ebfd8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d94818b18e1aea45291d6c86a16dd858ee22ada3235eb26c2d7119cb785a30e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Minimal/Variante262d24d5b6a4c12044edc0d1bcc401617b86d722c6ce8bf298f457a048e5052.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Minimal/Variante262d24d5b6a4c12044edc0d1bcc401617b86d722c6ce8bf298f457a048e5052.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
