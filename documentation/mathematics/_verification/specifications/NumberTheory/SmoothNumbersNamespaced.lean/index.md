# Verification target: Smooth Numbers Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f915e9deb1bfb3812656de52f147382487865e0",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant279f403f383bb277dc931fd9dd86f5eced90156ad50dbfed1ee825512dcd8e26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/SmoothNumbersNamespaced.lean/index.md) · [Full source](../../../../NumberTheory/SmoothNumbersNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f915e9deb1bfb3812656de52f147382487865e0`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant279f403f383bb277dc931fd9dd86f5eced90156ad50dbfed1ee825512dcd8e26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant279f403f383bb277dc931fd9dd86f5eced90156ad50dbfed1ee825512dcd8e26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorization.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Squarefree` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primesBelow](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/primesbelow.md) | 45 | `declaration-track:543a1a740464ff369820ba753a70b5186a6fa5ee2df9cda9595479067e04b754` |
| 2 | `lemma` | [primesBelow_zero](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/primesbelow-zero.md) | 48 | `result-track:268c754d24d98c0d39e36e51434967a490d0878e8086c6596aed2c94eaa0e7dc` |
| 3 | `lemma` | [mem_primesBelow](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/mem-primesbelow.md) | 51 | `result-track:7b049f9550cf4ea77c7feeee575decee51cd3ea2ded366d920024d6b235d087a` |
| 4 | `lemma` | [prime_of_mem_primesBelow](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/prime-of-mem-primesbelow.md) | 54 | `result-track:26b455306dc99bb3c2e62bfc3a0a1163297db01d3db416c45d8ae4f77877eb6b` |
| 5 | `lemma` | [lt_of_mem_primesBelow](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/lt-of-mem-primesbelow.md) | 57 | `result-track:ddb30562517863e0199e80f40d53724f68f03902d3356393d42a6c3daa84b212` |
| 6 | `lemma` | [primesBelow_succ](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/primesbelow-succ.md) | 60 | `result-track:aa16fca5ffceccd165ae5eb76068b4493f91694922d1163ee2554b91100e9de0` |
| 7 | `lemma` | [notMem_primesBelow](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/notmem-primesbelow.md) | 64 | `result-track:e6ce1a7fc42e0ffc35459344040183b927a2e3a8692e7cc2fda1bba3baa45489` |
| 8 | `def` | [factoredNumbers](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/factorednumbers.md) | 76 | `declaration-track:4da038be7790e0713911cc89ef4530cbce6d79692cb0fd33eaf562049bca6856` |
| 9 | `lemma` | [mem_factoredNumbers](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/mem-factorednumbers-source-edition-2.md) | 78 | `result-track:ba079d22cf03a39e348b77061edfbe121e07b3243147fa956651edd65b399acb` |
| 10 | `instance` | [(anonymous)](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/instance-source-edition-2.md) | 83 | `declaration-track:ee9d5efdeebaf105381d37e569b8d0552aa49b93d5974c133fa2e5e09a5030aa` |
| 11 | `lemma` | [mem_factoredNumbers_of_dvd](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/mem-factorednumbers-of-dvd.md) | 87 | `result-track:65d2cbf08e944f086ef8317e7fe170e3abc4e9ff803c77a751dc42ac37bac44d` |
| 12 | `lemma` | [mem_factoredNumbers_iff_forall_le](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/mem-factorednumbers-iff-forall-le.md) | 98 | `result-track:175a446466984ee8f8813c872ca9369c41813fd8b47803f7ab0490d75dcc7de5` |
| 13 | `lemma` | [mem_factoredNumbers'](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/mem-factorednumbers.md) | 106 | `result-track:474b5f076c1663b33f40a33543b04943e7dfd561e9f4ed2c434e396e06e594c7` |
| 14 | `lemma` | [ne_zero_of_mem_factoredNumbers](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/ne-zero-of-mem-factorednumbers.md) | 117 | `result-track:2b8f69818eb3801ba9b3c75390dafd75cbe4ffc9c100a29f374473e5d5359bc7` |
| 15 | `lemma` | [primeFactors_subset_of_mem_factoredNumbers](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/primefactors-subset-of-mem-factorednumbers.md) | 121 | `result-track:f39256f11c8269b03d5ab1bd8c01a6cfdc6201a0cd239025b339f2baa3dd390c` |
| 16 | `lemma` | [mem_factoredNumbers_of_primeFactors_subset](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/mem-factorednumbers-of-primefactors-subset.md) | 129 | `result-track:52a33de8aa370d51cb2a366043b890da58bf2af7d508b464a74f49d44bab4f86` |
| 17 | `lemma` | [mem_factoredNumbers_iff_primeFactors_subset](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/mem-factorednumbers-iff-primefactors-subset.md) | 137 | `result-track:1cbd381160d4de58b6fed7ec7a11dde69458bf3431adb910dbd1bc34c13a6c47` |
| 18 | `lemma` | [factoredNumbers_empty](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/factorednumbers-empty.md) | 143 | `result-track:3c5fbcf5e95d2be779bac4fc8535f6f17915ba90cc134a8c8ba270b5f294f0f2` |
| 19 | `lemma` | [mul_mem_factoredNumbers](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/mul-mem-factorednumbers.md) | 150 | `result-track:d9035897977eccdba0752edc84dbe5e76e0641e4de99d0b8992a47548ca4a3ae` |
| 20 | `lemma` | [prod_mem_factoredNumbers](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/prod-mem-factorednumbers.md) | 159 | `result-track:913541b31204e082e0a4ec86c9913715e5f07dfc31d1a356b4d5bac409edb74d` |
| 21 | `lemma` | [factoredNumbers_insert](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/factorednumbers-insert.md) | 170 | `result-track:199793b7e1c14b4184f08904024cff16eaf404997549df3add0275cc9d3fb651` |
| 22 | `lemma` | [factoredNumbers_mono](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/factorednumbers-mono.md) | 178 | `result-track:4ff1dfe12a30f4ac639896df3887924542426a0099f0ce58dfdba35c62b5f62b` |
| 23 | `lemma` | [factoredNumbers_compl](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/factorednumbers-compl.md) | 183 | `result-track:3d9b568c5cca5fd2c6ecf68a8fd8cd663f4831096e20acd9735f4f36d1e02ed7` |
| 24 | `lemma` | [pow_mul_mem_factoredNumbers](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/pow-mul-mem-factorednumbers.md) | 197 | `result-track:1ecfd029625653d6446e387598eb30974a2d53e4913eaf8db28dacfe66398072` |
| 25 | `lemma` | [Prime.factoredNumbers_coprime](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/prime-factorednumbers-coprime.md) | 209 | `result-track:0ab1ad6c6e1c764edf8ebb24d75d7b20b58cb3f0e60f09234c47fa0a77227aa5` |
| 26 | `lemma` | [factoredNumbers.map_prime_pow_mul](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/factorednumbers-map-prime-pow-mul.md) | 217 | `result-track:1d9e464bed63790eb660ef39fd66e5e33c5569361ec0908b364f0c2d0280a65a` |
| 27 | `def` | [equivProdNatFactoredNumbers](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/equivprodnatfactorednumbers.md) | 227 | `declaration-track:e386ad1e347d698eef56f7809babccb102b84ef6673d079722e23d331bfda335` |
| 28 | `lemma` | [equivProdNatFactoredNumbers_apply](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/equivprodnatfactorednumbers-apply-source-edition-2.md) | 266 | `result-track:30d4105214cbb81459a2b19f39f366eddc911c58a7cdfe0742c4418d08efc06e` |
| 29 | `lemma` | [equivProdNatFactoredNumbers_apply'](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/equivprodnatfactorednumbers-apply.md) | 271 | `result-track:0082c016550c5ba78371356636b8b85f04b1ff8dc224eccc8008787c64142977` |
| 30 | `def` | [smoothNumbers](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/smoothnumbers.md) | 282 | `declaration-track:2a1a0b8a62abd08ab2c0878a30c9f811677cf37e466d7c263ff73bfbb8f10565` |
| 31 | `lemma` | [mem_smoothNumbers](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/mem-smoothnumbers-source-edition-2.md) | 284 | `result-track:25b88f871dab9d6db8db13ba877526250deadb9c31fc4ef86869a0fd87bbdac1` |
| 32 | `lemma` | [smoothNumbers_eq_factoredNumbers](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/smoothnumbers-eq-factorednumbers.md) | 288 | `result-track:3c33ea719e91634632a1759ac9ee459e4fdd510aba4ebe5bfc0667fc2919b840` |
| 33 | `lemma` | [smmoothNumbers_eq_factoredNumbers_primesBelow](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/smmoothnumbers-eq-factorednumbers-primesbelow.md) | 294 | `result-track:1f486dd9fc53aad9cd658423806ebaf047295354845bf7daaea67c579b14136a` |
| 34 | `instance` | [(anonymous)](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/instance.md) | 302 | `declaration-track:ac5d74279c251b49014c74c3cbc2cba9afa4b64e5a00a6c13f8b30eb8dabd3ce` |
| 35 | `lemma` | [mem_smoothNumbers_of_dvd](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/mem-smoothnumbers-of-dvd.md) | 306 | `result-track:c8fa32f3e3f8bc8463f13746616f70ca714e8ff566b996bfe6219dea483f08b4` |
| 36 | `lemma` | [mem_smoothNumbers_iff_forall_le](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/mem-smoothnumbers-iff-forall-le.md) | 313 | `result-track:14ccb1f9adaa11cd56a753a04d422729eb9546941c121cd5665e70e09b0d757e` |
| 37 | `lemma` | [mem_smoothNumbers'](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/mem-smoothnumbers.md) | 318 | `result-track:16dd14a2b90bcbd90f22851c4a61e1e8104469fab6974882ecbdece710443767` |
| 38 | `lemma` | [primeFactors_subset_of_mem_smoothNumbers](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/primefactors-subset-of-mem-smoothnumbers.md) | 323 | `result-track:5d629d5dc47c506389b754a3d6996ebb978acf0e610f97c64297a4567f4c3d13` |
| 39 | `lemma` | [mem_smoothNumbers_of_primeFactors_subset](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/mem-smoothnumbers-of-primefactors-subset.md) | 329 | `result-track:55c6482e56b4db945c80ff599b379522dbc2dc0f96b0e4d584b35d1917203355` |
| 40 | `lemma` | [mem_smoothNumbers_iff_primeFactors_subset](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/mem-smoothnumbers-iff-primefactors-subset.md) | 335 | `result-track:11eb2a68cddd2ca5f4e89d0cfff2a92383ca560f1f005226626ecc403d77a411` |
| 41 | `lemma` | [ne_zero_of_mem_smoothNumbers](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/ne-zero-of-mem-smoothnumbers.md) | 341 | `result-track:884c5fad6b0021da49f1f2cf7549e6308cd494a4f1575b9ef494fac52f84721a` |
| 42 | `lemma` | [smoothNumbers_zero](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/smoothnumbers-zero.md) | 344 | `result-track:c8b9e5522d62b232cfd8a7e1c15fedecc2f2be43e7af2e2e49d045c4688f1b52` |
| 43 | `theorem` | [mul_mem_smoothNumbers](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/mul-mem-smoothnumbers.md) | 348 | `result-track:4c9dcc7151ec76e929a1e65200f33463be015bb2443a60762b632db89e536fcf` |
| 44 | `lemma` | [prod_mem_smoothNumbers](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/prod-mem-smoothnumbers.md) | 354 | `result-track:534b8b388d059a63d4d6ed331998df655a3cb7a867bab67b20bcf94e36e6a6f9` |
| 45 | `lemma` | [smoothNumbers_succ](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/smoothnumbers-succ.md) | 360 | `result-track:a46b89a7ae8a5e377b80f056128e08c9ed15429dc2471ce54d979cfc98e03d32` |
| 46 | `lemma` | [smoothNumbers_one](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/smoothnumbers-one.md) | 363 | `result-track:2922878d828a807fe482d631b1376050c6962b3174dc77e6134ad8307cf401ea` |
| 47 | `lemma` | [smoothNumbers_mono](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/smoothnumbers-mono.md) | 366 | `result-track:da0dfc8b759986a67dce74d3ec7df6bddc395d5d98b6b00530a9ec42a084a777` |
| 48 | `lemma` | [mem_smoothNumbers_of_lt](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/mem-smoothnumbers-of-lt.md) | 370 | `result-track:39ce644b7a0f1f99ef1b3c0b67abc52419b98c7cc0a03d1bd504dcfbc99db785` |
| 49 | `lemma` | [smoothNumbers_compl](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/smoothnumbers-compl.md) | 375 | `result-track:9bf0ee75eadaffb73e2a0205731297c73e2997f28a937e7c17f2a78d090a86d6` |
| 50 | `lemma` | [pow_mul_mem_smoothNumbers](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/pow-mul-mem-smoothnumbers.md) | 380 | `result-track:7567ea27cee411284960b1d0279cbffe318046951fba95c00747216379866061` |
| 51 | `lemma` | [Prime.smoothNumbers_coprime](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/prime-smoothnumbers-coprime.md) | 392 | `result-track:b605990609fdbabffb3da414e3fa5d8595cc0136c44818ffdfd96a208e0493f4` |
| 52 | `lemma` | [map_prime_pow_mul](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/map-prime-pow-mul.md) | 399 | `result-track:f5f76eda2595eb7bfc95c91e100981a8f37a5702b29407f25333d350985146b3` |
| 53 | `def` | [equivProdNatSmoothNumbers](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/equivprodnatsmoothnumbers.md) | 409 | `declaration-track:1cc386bad71b6a755d6f0566e09bafe9e36c6ce72c9dd164aed85d62911cdbc4` |
| 54 | `lemma` | [equivProdNatSmoothNumbers_apply](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/equivprodnatsmoothnumbers-apply.md) | 416 | `result-track:2416ebb1f067382cc015ca4cbe6417e206609b718ee4b79e878d68d6024ff49f` |
| 55 | `lemma` | [equivProdNatSmoothNumbers_apply'](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/equivprodnatsmoothnumbers-apply-source-edition-2.md) | 420 | `result-track:d0c6b6c87ca1971e359202fb8ccea48be2653ddb1a865c7c7f6f3e0da21d9452` |
| 56 | `def` | [smoothNumbersUpTo](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/smoothnumbersupto.md) | 432 | `declaration-track:db366ca300cea9a4035c11c2565cae3ee77273cdd4b8e046cde4e1765fbfa3f9` |
| 57 | `lemma` | [mem_smoothNumbersUpTo](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/mem-smoothnumbersupto.md) | 435 | `result-track:96d15fc7b6bde4680ca0d92a59c70ab0b66b3fa543769602482fc09c497a8bc8` |
| 58 | `def` | [roughNumbersUpTo](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/roughnumbersupto.md) | 440 | `declaration-track:dc5770ac71df3507718ee64619ebeece82650cbc8d648d244b0ed34221fa5c45` |
| 59 | `lemma` | [smoothNumbersUpTo_card_add_roughNumbersUpTo_card](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/smoothnumbersupto-card-add-roughnumbersupto-card.md) | 443 | `result-track:9fcd7ca91ee23d8e48df0ee966fcdcdac948ceaa0abe504d1cc913213c537d82` |
| 60 | `lemma` | [eq_prod_primes_mul_sq_of_mem_smoothNumbers](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/eq-prod-primes-mul-sq-of-mem-smoothnumbers.md) | 458 | `result-track:3e9b225d80fcfb3afd476eb168f1fa5724c2953ab89b83f3d5b583f311b459cc` |
| 61 | `lemma` | [smoothNumbersUpTo_subset_image](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/smoothnumbersupto-subset-image.md) | 474 | `result-track:0b98fcf07758ccdb6893544f21ed0354627b1f67c46d3889df49a8164dc3adba` |
| 62 | `lemma` | [smoothNumbersUpTo_card_le](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/smoothnumbersupto-card-le.md) | 493 | `result-track:4257a20e62bb6a64dde93ab336e5b147239a44734ccbaf0e1c4394940913bb74` |
| 63 | `lemma` | [roughNumbersUpTo_eq_biUnion](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/roughnumbersupto-eq-biunion.md) | 502 | `result-track:8801f2bb87f6c19d8e4e07764c9c56af2e6e3fa1eb4abc50d1624f47ee342452` |
| 64 | `lemma` | [roughNumbersUpTo_card_le](../../../../NumberTheory/SmoothNumbersNamespaced.lean/declarations/roughnumbersupto-card-le.md) | 525 | `result-track:da514398c1b1a2aa9f60771e9be4c214f54286aba9700af441e20d3d2ffd005c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=98aeaea35adc85e31811cb82b8aa0b7b1104fab0aafd040a1677f630507316ff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant279f403f383bb277dc931fd9dd86f5eced90156ad50dbfed1ee825512dcd8e26.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant279f403f383bb277dc931fd9dd86f5eced90156ad50dbfed1ee825512dcd8e26.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
