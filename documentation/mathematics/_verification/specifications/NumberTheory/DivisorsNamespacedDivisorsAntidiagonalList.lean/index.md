# Verification target: Divisors Namespaced Divisors Antidiagonal List

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d658d1571b561289403db422386848e60253424",
  "lexical_observation_count": 106,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Divisors/Variant80dba7b780e17ef6e3c5ea3b99c59e44eba18b496f8efe4ba1c90a807ffef58e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/index.md) · [Full source](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d658d1571b561289403db422386848e60253424`.

Source path: `GRWTSK/Topology/GeneralTopology/Divisors/Variant80dba7b780e17ef6e3c5ea3b99c59e44eba18b496f8efe4ba1c90a807ffef58e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Divisors/Variant80dba7b780e17ef6e3c5ea3b99c59e44eba18b496f8efe4ba1c90a807ffef58e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.IsPrimePow` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Interval.Finset.SuccPred` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Int` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.CharZero` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Ring` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PrimeFin` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.SuccPred` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisors.md) | 55 | `declaration-track:e2cdd4dc4ca6366a8e96a083cdeff48f9e97dc1d4bba97919c2690fcc435a4cd` |
| 2 | `def` | [properDivisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/properdivisors.md) | 59 | `declaration-track:716d839a27aedb9210848d85f6d750ccbd267341717e1b9129436c90300d0d70` |
| 3 | `def` | [divisorsAntidiagonal](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisorsantidiagonal.md) | 67 | `declaration-track:55cc5cf37ca01b1a71f92f99cef1d907bbfc862895f97a772566c1b7f2eb17e1` |
| 4 | `def` | [divisorsAntidiagonalList](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisorsantidiagonallist.md) | 76 | `declaration-track:a18f84b4a2941f38d9917806f8dd471aca5e6181b132edc3edeebfadcf6bacae` |
| 5 | `theorem` | [filter_dvd_eq_divisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/filter-dvd-eq-divisors.md) | 83 | `result-track:dfd42cee580de046090ff3dea52d78cc245775c989642cd45e616c5d448f8666` |
| 6 | `theorem` | [filter_dvd_eq_properDivisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/filter-dvd-eq-properdivisors.md) | 89 | `result-track:cbc3ab44bdcf86ac057dae078c7b5285839497e9ac51cb163c85015e7c20725a` |
| 7 | `theorem` | [self_notMem_properDivisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/self-notmem-properdivisors.md) | 94 | `result-track:78b9c8c21bf5d2f35fbb4a58e653c256f81a65e960ddda06cb6141cec762533d` |
| 8 | `theorem` | [mem_properDivisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/mem-properdivisors.md) | 100 | `result-track:d66a77491816a10045eea745881e878fa4e0000ff0834fd1a0a4f7fd3f3f4854` |
| 9 | `theorem` | [insert_self_properDivisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/insert-self-properdivisors.md) | 104 | `result-track:9df3d543c536e52bc385a58283f05f7bc9e883639e0818630aeffc644b2e8ff5` |
| 10 | `theorem` | [cons_self_properDivisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/cons-self-properdivisors.md) | 109 | `result-track:9b846e3d2f66ecfd0954f5dee36971eefe74813f652702ba18223147475f3652` |
| 11 | `theorem` | [mem_divisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/mem-divisors.md) | 114 | `result-track:06f10c1550a660a1d352570b64780ea13ae123b7476a383de30ea38147384376` |
| 12 | `theorem` | [one_mem_divisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/one-mem-divisors.md) | 120 | `result-track:7fc2397cf619092be852e10aa6ee0f048d1b90ada262a4239ae23865dc037d6b` |
| 13 | `theorem` | [mem_divisors_self](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/mem-divisors-self.md) | 122 | `result-track:cb0404fd02decea1c499236c13d4e84e35973204073cd163520506801a7aed5a` |
| 14 | `theorem` | [dvd_of_mem_divisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/dvd-of-mem-divisors.md) | 125 | `result-track:e5c82e9a5812d83d2139e46d958ba949c09ccdbd3f40cb7f13586eb9f9784ee7` |
| 15 | `theorem` | [mem_divisorsAntidiagonal](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/mem-divisorsantidiagonal.md) | 131 | `result-track:89a7a1efbde26d24ed1218e07372aad3899c30e68a65ee78b62e51a8b6d9176f` |
| 16 | `lemma` | [divisorsAntidiagonalList_zero](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisorsantidiagonallist-zero.md) | 144 | `result-track:07fd176228c9d33b1efba72d872706742be7fc9bc6cd508d2dca592f5a9f59ac` |
| 17 | `lemma` | [divisorsAntidiagonalList_one](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisorsantidiagonallist-one.md) | 145 | `result-track:49276d1d4205c90b981529d7867c388a0d7584e123f9c6fe9f5460ac65c5bece` |
| 18 | `lemma` | [toFinset_divisorsAntidiagonalList](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/tofinset-divisorsantidiagonallist.md) | 148 | `result-track:b68e1c63046915604d1e1c1caebbe9b416a5b1adde6aa9f4968a670df89e55ec` |
| 19 | `lemma` | [sorted_divisorsAntidiagonalList_fst](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/sorted-divisorsantidiagonallist-fst.md) | 153 | `result-track:0f1ee73047098c7657790ef38e8a34962f66f462861095925b1417e1ce6b71f7` |
| 20 | `lemma` | [sorted_divisorsAntidiagonalList_snd](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/sorted-divisorsantidiagonallist-snd.md) | 159 | `result-track:665df672a849a54f4b75d34e0c52e837777825d97240bffb518e88b78c10428b` |
| 21 | `lemma` | [nodup_divisorsAntidiagonalList](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/nodup-divisorsantidiagonallist.md) | 169 | `result-track:5e45aea27817f1563752eb2d1b8564223fa0a7150bba3a12c80457f9bc2cd940` |
| 22 | `theorem` | [val_divisorsAntidiagonal](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/val-divisorsantidiagonal.md) | 175 | `result-track:b67fae026420dc9e56a0b71f773e510052eb5ba9a520de5600c98e09088ddc6d` |
| 23 | `lemma` | [mem_divisorsAntidiagonalList](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/mem-divisorsantidiagonallist.md) | 180 | `result-track:028eb9d43a978b131133770549d04a87592be789c26864e5ed7f9a1f207ee731` |
| 24 | `lemma` | [swap_mem_divisorsAntidiagonalList](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/swap-mem-divisorsantidiagonallist.md) | 185 | `result-track:3db69bf08b9b581a92c652d0df5973b66bb8b271c87b3cd36d2f9bb6a6b8f974` |
| 25 | `lemma` | [reverse_divisorsAntidiagonalList](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/reverse-divisorsantidiagonallist.md) | 188 | `result-track:0aa82ae795633f841a5c05b353905b17cb4cafe127d939b7e75f622c422cc4ea` |
| 26 | `lemma` | [ne_zero_of_mem_divisorsAntidiagonal](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/ne-zero-of-mem-divisorsantidiagonal.md) | 196 | `result-track:098ecc8a9bdf0728d1fcfa9337baee18c5fde61d4dc9947ee205677bca54c3b8` |
| 27 | `lemma` | [left_ne_zero_of_mem_divisorsAntidiagonal](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/left-ne-zero-of-mem-divisorsantidiagonal.md) | 201 | `result-track:03091b21dae6b16a3155da64afb5c72ced6cac81fb8d88c9ed40196b4fc1eeb2` |
| 28 | `lemma` | [right_ne_zero_of_mem_divisorsAntidiagonal](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/right-ne-zero-of-mem-divisorsantidiagonal.md) | 205 | `result-track:cd16c44b7f81e3a3c87e522b3f59b61e89b2de6b63d665e30fc53d90805e0042` |
| 29 | `theorem` | [divisor_le](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisor-le.md) | 209 | `result-track:268b7b630a0985582f43bfe5c5b8fb6fad1284286a4544b9801e2c5f33656142` |
| 30 | `theorem` | [divisors_subset_of_dvd](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisors-subset-of-dvd.md) | 215 | `result-track:d3092cc1d271d73b8c17a95f0f2a37e693e95fae8474bc153cb8986c2e53f4df` |
| 31 | `theorem` | [card_divisors_le_self](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/card-divisors-le-self.md) | 218 | `result-track:c425a57213c50ca852b62151f13d9ebc3189cad6327b69d2103ccbc885750810` |
| 32 | `theorem` | [divisors_subset_properDivisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisors-subset-properdivisors.md) | 224 | `result-track:7dd6ac1980c4d6d84d9210285375aee5994465c0482f551aa6eca6a5277ee77b` |
| 33 | `lemma` | [divisors_filter_dvd_of_dvd](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisors-filter-dvd-of-dvd.md) | 234 | `result-track:4f31e6a36b22e4b2d1181890a872f6a11b874fcf0a9826c9db14a491ac5eae25` |
| 34 | `theorem` | [divisors_zero](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisors-zero.md) | 241 | `result-track:552107f27dadf513b19f453e752e7dc493a15234fe01f63338c52b8b1464e8ea` |
| 35 | `theorem` | [properDivisors_zero](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/properdivisors-zero.md) | 246 | `result-track:d2684c573e4509e6673aecc2b6679b1ffdc0d67c758f32e5cf7a62bd42992faa` |
| 36 | `lemma` | [nonempty_divisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/nonempty-divisors.md) | 251 | `result-track:8069fa6a540c38db55b844329aeff914463a932d903154ce1f6562adcd1aeb97` |
| 37 | `lemma` | [divisors_eq_empty](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisors-eq-empty.md) | 255 | `result-track:b2a1687594d256cac5c13859e293d33bceece28913f5f8b67ac4e7674f9e08d6` |
| 38 | `theorem` | [properDivisors_subset_divisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/properdivisors-subset-divisors.md) | 258 | `result-track:3de6613dcce003265079682e022cd2288dd53f2ff11eff6bc06dbb66d826ceae` |
| 39 | `theorem` | [divisors_one](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisors-one.md) | 262 | `result-track:5e14c068d023691f1d2193cb9f0d68bc0672ece6a345f75f068e09c74351464a` |
| 40 | `theorem` | [properDivisors_one](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/properdivisors-one.md) | 267 | `result-track:08e113687dd4ae17c20200d0f5ea4c03e237019da0f6fb45b75f478d894cb424` |
| 41 | `theorem` | [pos_of_mem_divisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/pos-of-mem-divisors.md) | 269 | `result-track:21927a35ee867db208b34d714711a23dfdf8246beefb085daac49b49b848f9f5` |
| 42 | `theorem` | [pos_of_mem_properDivisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/pos-of-mem-properdivisors.md) | 275 | `result-track:eac5153ce1a281ce9bbc38d335611cbf23d074528879a29dca63b5ca4743625a` |
| 43 | `theorem` | [one_mem_properDivisors_iff_one_lt](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/one-mem-properdivisors-iff-one-lt.md) | 278 | `result-track:8da2d71d141f81edc199d1bb966c6b20546c7b893b94367dd981f000c6642916` |
| 44 | `lemma` | [sup_divisors_id](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/sup-divisors-id.md) | 282 | `result-track:3441eacd685cd49997f5ed99ac6083957d963271082817176e800679787355f2` |
| 45 | `lemma` | [one_lt_of_mem_properDivisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/one-lt-of-mem-properdivisors.md) | 288 | `result-track:b8889f86af8b84ad1dcd6af64c8b313f4de34bb3942a3d1b33a60d25ab5fbb2a` |
| 46 | `lemma` | [one_lt_div_of_mem_properDivisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/one-lt-div-of-mem-properdivisors.md) | 291 | `result-track:abb4aaaae00157ad227c9bbe1c64514a43d5b75d60c6ec1458061d825d05fe16` |
| 47 | `lemma` | [mem_properDivisors_iff_exists](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/mem-properdivisors-iff-exists.md) | 297 | `result-track:9d4ea6d0e2e2321b596c918ab392f1ef83d1a6223489e34414ada9fa12f8f168` |
| 48 | `lemma` | [nonempty_properDivisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/nonempty-properdivisors.md) | 306 | `result-track:d01e7594d6e153eb942aec1017299c9d78a11f1e2f2e9d0f99949625fa1ca441` |
| 49 | `lemma` | [properDivisors_eq_empty](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/properdivisors-eq-empty.md) | 311 | `result-track:42eae1516cb0ed61c3442f59c5ce7dbc90f285bf132517cdb19375ad84628f99` |
| 50 | `theorem` | [divisorsAntidiagonal_zero](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisorsantidiagonal-zero.md) | 315 | `result-track:564e106ebb8f3858b7c4b578b0aae79147d9fce9e79b2b7522e5093d08ad4512` |
| 51 | `theorem` | [divisorsAntidiagonal_one](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisorsantidiagonal-one.md) | 320 | `result-track:12a7ff10ee2c8844bf772b2826172349246b518de7fc664eefe7b10b88d6b502` |
| 52 | `theorem` | [swap_mem_divisorsAntidiagonal](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/swap-mem-divisorsantidiagonal.md) | 325 | `result-track:a7b5bb6a3e8d62a05fd94ec3a9340af4c5be0b301ce96f3c86be12a758314822` |
| 53 | `theorem` | [swap_mem_divisorsAntidiagonal_aux](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/swap-mem-divisorsantidiagonal-aux.md) | 331 | `result-track:ca1d4d2cd7d15f09780894856afd3564a5378388172b42619a643debc1c4a746` |
| 54 | `lemma` | [prodMk_mem_divisorsAntidiag](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/prodmk-mem-divisorsantidiag.md) | 335 | `result-track:803d15d32d54917e1315ddf5a180df8cb43aa227a33ee0bdca801e27b205a958` |
| 55 | `theorem` | [fst_mem_divisors_of_mem_antidiagonal](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/fst-mem-divisors-of-mem-antidiagonal.md) | 338 | `result-track:ad3088a9f773dc4b689eff5ac709b74cd170979ae547af608813b197f1fc320c` |
| 56 | `theorem` | [snd_mem_divisors_of_mem_antidiagonal](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/snd-mem-divisors-of-mem-antidiagonal.md) | 343 | `result-track:7a570dddf3549a50aa6356eb4b5500d5b1a1c9f051a14ebc34f1847b76e1b26e` |
| 57 | `theorem` | [map_swap_divisorsAntidiagonal](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/map-swap-divisorsantidiagonal.md) | 349 | `result-track:96ae87377b151ee11a472e5ce45c28ad62ca3dc7b2fa2550141a9fd22e17cc38` |
| 58 | `theorem` | [image_fst_divisorsAntidiagonal](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/image-fst-divisorsantidiagonal.md) | 357 | `result-track:81f791ee82dc9bcdb3c863b83ed0f4c0ee3a543616a6197e150a8a977af3b406` |
| 59 | `theorem` | [image_snd_divisorsAntidiagonal](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/image-snd-divisorsantidiagonal.md) | 362 | `result-track:427717963456568b89338a0c0e9df76af845f87cdf930a5eb5a11cea58e2ee1d` |
| 60 | `theorem` | [map_div_right_divisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/map-div-right-divisors.md) | 366 | `result-track:3cf97acce79d3aa5b32dd5b1550be8f7bf29584ff6b6a89bbee651b177bef0ec` |
| 61 | `theorem` | [map_div_left_divisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/map-div-left-divisors.md) | 379 | `result-track:afeca2fa9ecd0c8db2f1f16033ebbb6730cc2090935a8e261ce23f1d5d904eee` |
| 62 | `theorem` | [sum_divisors_eq_sum_properDivisors_add_self](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/sum-divisors-eq-sum-properdivisors-add-self.md) | 387 | `result-track:9e2a5771ac1c21f7a17d10920064c64b53901932220d2794a8e3c20b9545bb47` |
| 63 | `def` | [Perfect](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/perfect.md) | 395 | `declaration-track:fc4ce931c9691851426b1bc9acec23183a09d5f6c9ba97f6e560060d167a7805` |
| 64 | `theorem` | [perfect_iff_sum_properDivisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/perfect-iff-sum-properdivisors.md) | 398 | `result-track:1478ce84c1a130095b5847703e20f1e0c98cae624a8c18d7c8e877c5d9007d9b` |
| 65 | `theorem` | [perfect_iff_sum_divisors_eq_two_mul](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/perfect-iff-sum-divisors-eq-two-mul.md) | 401 | `result-track:f9d984d190af292928a4c81b92671185a909dd0da9c6288d4258c43bf3e9df7c` |
| 66 | `theorem` | [mem_divisors_prime_pow](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/mem-divisors-prime-pow.md) | 408 | `result-track:8fbd64bbf6d8e71e5dcf4ed47fb22f7c2d5d580f5a959059a4b72a1ce6709e44` |
| 67 | `theorem` | [Prime.divisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/prime-divisors.md) | 412 | `result-track:612f1e18eedfa80061dec691e9a1ce14d1b55a373977185809ea592a217ce365` |
| 68 | `theorem` | [Prime.properDivisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/prime-properdivisors.md) | 416 | `result-track:186ada43afa060326786e3b655a0f99e870c22a433f17a346101879435d092a6` |
| 69 | `theorem` | [divisors_prime_pow](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisors-prime-pow.md) | 420 | `result-track:01aa21b69720ff81a58d8da1c0c390340f91c78d27b4c92add5e5120bfdce860` |
| 70 | `theorem` | [divisors_injective](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisors-injective.md) | 426 | `result-track:579bea351d8e4b8bf878ad662666ca53cc5fda1e8be2b9192f2e165c5ec6d3dd` |
| 71 | `theorem` | [divisors_inj](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisors-inj.md) | 430 | `result-track:4cdaec8fea7af3ed4b73235a752a5c422de325fa0ad990a685388d4bcfe62469` |
| 72 | `theorem` | [eq_properDivisors_of_subset_of_sum_eq_sum](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/eq-properdivisors-of-subset-of-sum-eq-sum.md) | 433 | `result-track:68fb6597e4928f9c85a1c94d9f9be3ba7df318ccdb165efdd0776d1c9874b965` |
| 73 | `theorem` | [sum_properDivisors_dvd](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/sum-properdivisors-dvd.md) | 453 | `result-track:5aed8581f7122eb91a29125c1fef3e87688c63496bf5b2e6ac7925f7002da8ed` |
| 74 | `theorem` | [Prime.prod_properDivisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/prime-prod-properdivisors.md) | 469 | `result-track:21d4ec8cfaa9b6af178c192da2a783b2ff2840e2f30e92322c7d1e3cb6fe19e2` |
| 75 | `theorem` | [Prime.prod_divisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/prime-prod-divisors.md) | 473 | `result-track:3467a002cbc93317d04a7497c337ea9bdeeeeacf5389877a23af2d3fa0a30543` |
| 76 | `theorem` | [properDivisors_eq_singleton_one_iff_prime](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/properdivisors-eq-singleton-one-iff-prime.md) | 477 | `result-track:d5d0ec6b7898baf987648da8de52adad6eb0a928e30362904d6c1624f39f6aa4` |
| 77 | `theorem` | [sum_properDivisors_eq_one_iff_prime](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/sum-properdivisors-eq-one-iff-prime.md) | 493 | `result-track:ad536bbb3bfa1e906a5f27c454a5d975ce6b9f31690670f510414b610da08b76` |
| 78 | `theorem` | [mem_properDivisors_prime_pow](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/mem-properdivisors-prime-pow.md) | 507 | `result-track:5d7a4a13e8eb99c9a9331948d9c6002881d57ead53e4d40f31d91088648b9023` |
| 79 | `theorem` | [properDivisors_prime_pow](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/properdivisors-prime-pow.md) | 521 | `result-track:19a2189e08a747028cbe46aeb5271060215aa404d25005fb061371bdb723b750` |
| 80 | `theorem` | [prod_properDivisors_prime_pow](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/prod-properdivisors-prime-pow.md) | 534 | `result-track:04c703f283beffa121db25e3e96ef286c4d937b6315a4e5424f7f3c28ea93f59` |
| 81 | `theorem` | [prod_divisors_prime_pow](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/prod-divisors-prime-pow.md) | 539 | `result-track:ef77d78b09cce3852753fc86b3e535c69e5ef1bc5b608893c59d85288622959b` |
| 82 | `theorem` | [prod_divisorsAntidiagonal](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/prod-divisorsantidiagonal.md) | 544 | `result-track:5b33cc36297d6174e02183ce4f03b78aec350d3380af256651af783420cea561` |
| 83 | `theorem` | [prod_divisorsAntidiagonal'](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/prod-divisorsantidiagonal-source-edition-2.md) | 550 | `result-track:bf13fb12b8dbb0683729f24a7ae6627edef03123da7815b525c954e97fc368e3` |
| 84 | `theorem` | [primeFactors_eq_to_filter_divisors_prime](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/primefactors-eq-to-filter-divisors-prime.md) | 556 | `result-track:29cc25ae53bfbfeaeb105e281112688f923165cbad2fbd913779b00a386410ee` |
| 85 | `lemma` | [primeFactors_filter_dvd_of_dvd](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/primefactors-filter-dvd-of-dvd.md) | 563 | `result-track:abe4f732e8189744f92f34a05f7bcc620e39ebeeb4b24993997a0c51d54d7210` |
| 86 | `theorem` | [image_div_divisors_eq_divisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/image-div-divisors-eq-divisors.md) | 569 | `result-track:b302a11a21b370589cdff87d1476aefecd8e277da8bdc14ace673c5f6cbc2fc1` |
| 87 | `theorem` | [prod_div_divisors](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/prod-div-divisors.md) | 589 | `result-track:06ea5f5c9009d9802baac445b0528c382cbbdd5eff78fb778c4c39e0c371b357` |
| 88 | `theorem` | [disjoint_divisors_filter_isPrimePow](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/disjoint-divisors-filter-isprimepow.md) | 598 | `result-track:e68808e9e53f714187f055e2c37d7995e4d4824631e015501bc482bc03c07b1d` |
| 89 | `def` | [divisorsAntidiag](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisorsantidiag.md) | 620 | `declaration-track:501842b5dd18ea8709a77b7a922d343f0fd8e7d33d7510a96702b46380df398d` |
| 90 | `lemma` | [mem_divisorsAntidiag](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/mem-divisorsantidiag.md) | 631 | `result-track:9dd7c5a95cb872946dd4f6ed13c68c5d7ae3a1b471735b393483b3f1dcd16bd7` |
| 91 | `lemma` | [divisorsAntidiag_zero](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisorsantidiag-zero.md) | 669 | `result-track:9c4c176268103b59dbb97db1f9aa0831612186515e0ed2d8800d47c906b42e06` |
| 92 | `theorem` | [divisorsAntidiagonal_one](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisorsantidiagonal-one-source-edition-2.md) | 674 | `result-track:607f1e4db09802a0dad0e1b954d005f60578d643d54f9a7d22b099f0642d0e9d` |
| 93 | `theorem` | [divisorsAntidiagonal_two](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisorsantidiagonal-two.md) | 679 | `result-track:5a20dcfda106d5aa19d26926947f191f8072ef27e394477e222bbbb5ea18316b` |
| 94 | `theorem` | [divisorsAntidiagonal_three](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisorsantidiagonal-three.md) | 684 | `result-track:fbc227c490296ef4f5186662b77c4a53472898a56d928b1ebddd4468ebc7b094` |
| 95 | `theorem` | [divisorsAntidiagonal_four](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisorsantidiagonal-four.md) | 689 | `result-track:394606f98edccbabb87e2175b92a90b25cbe2af0fbc2f163dacaba22beb8eb99` |
| 96 | `lemma` | [prodMk_mem_divisorsAntidiag](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/prodmk-mem-divisorsantidiag-source-edition-2.md) | 693 | `result-track:9b25180d630592ab6a283e9752c932d5753a3ee7dc5e6f3ae855ba3d286d9266` |
| 97 | `lemma` | [swap_mem_divisorsAntidiag](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/swap-mem-divisorsantidiag.md) | 697 | `result-track:6232beb1690d71383247be5791b25de8f7a1e04582ded86675ee958c1e89aee5` |
| 98 | `lemma` | [neg_mem_divisorsAntidiag](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/neg-mem-divisorsantidiag.md) | 700 | `result-track:764f824cb4d4217293b77d6a7d749c8ef5cf3be3d0ece6cadc5cc4535cec8543` |
| 99 | `lemma` | [map_prodComm_divisorsAntidiag](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/map-prodcomm-divisorsantidiag.md) | 703 | `result-track:b763dfc7bc99dae50c19ec0b3044fe58ad3a22e6ddbd54d83497466608980e3e` |
| 100 | `lemma` | [map_neg_divisorsAntidiag](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/map-neg-divisorsantidiag.md) | 708 | `result-track:97bb23ea7d613318da3e8558821b6dd7885b7da381244b0f17728266f79a93a6` |
| 101 | `lemma` | [divisorsAntidiag_neg](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisorsantidiag-neg.md) | 712 | `result-track:110a7dd5b10b84d3916e1a74a819f0bd7232d0420de5f3f5dbfaf03c92e8f538` |
| 102 | `lemma` | [divisorsAntidiag_natCast](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisorsantidiag-natcast.md) | 717 | `result-track:f67a11fd65b4188af977bc3f8ca0940d0820566f958788928ee6ce402e8b0730` |
| 103 | `lemma` | [divisorsAntidiag_neg_natCast](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisorsantidiag-neg-natcast.md) | 723 | `result-track:d647cbd7ad65169ac8c4506c88e06c6916940593ce4f86c9b0603d521008a07e` |
| 104 | `lemma` | [divisorsAntidiag_ofNat](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/divisorsantidiag-ofnat.md) | 729 | `result-track:8d98349db8fa6b1d252360d82c141cd37af1760587c8ea85fdb0e59743b77309` |
| 105 | `lemma` | [mul_mem_one_two_three_iff](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/mul-mem-one-two-three-iff.md) | 736 | `result-track:1dff6616ed301ed0d2f9e17853cd0cdf4d8e5e32b24fb8973c1c2c00ce6692e6` |
| 106 | `lemma` | [mul_mem_zero_one_two_three_four_iff](../../../../NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/declarations/mul-mem-zero-one-two-three-four-iff.md) | 746 | `result-track:ea8cbc079a2db7c945e6dae72169d9da7f693b0a61ace50c903cb4a69e787ee1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb15d5f84aadbe7f6ae5b7f9ba4ff2ffe6213d8356c3de53cea3e00c17b54a2a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Divisors/Variant80dba7b780e17ef6e3c5ea3b99c59e44eba18b496f8efe4ba1c90a807ffef58e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Divisors/Variant80dba7b780e17ef6e3c5ea3b99c59e44eba18b496f8efe4ba1c90a807ffef58e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
