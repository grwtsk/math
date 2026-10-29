# Verification target: Padic Val Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "544f2915c5ba1c70d9a13de107b22ee5fa3eb755",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicVal/Variant23cc7fbb451b1157c6c1d0c5ff86a316e01c6afc20452e2cd7954a1e95624e79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `544f2915c5ba1c70d9a13de107b22ee5fa3eb755`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicVal/Variant23cc7fbb451b1157c6c1d0c5ff86a316e01c6afc20452e2cd7954a1e95624e79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicVal/Variant23cc7fbb451b1157c6c1d0c5ff86a316e01c6afc20452e2cd7954a1e95624e79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Divisors` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Int.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Digits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.MaxPowDiv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Multiplicity` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [padicValNat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/padicvalnat.md) | 80 | `declaration-track:5b12a6cdd4cbf6b8fc083c98718e4864834e7c18d416dca70cfbc22179defa0f` |
| 2 | `theorem` | [zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/zero.md) | 92 | `result-track:1b16cf134adfae027bac637817417385bb6584ca28440515702b96c2b634a11f` |
| 3 | `theorem` | [one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/one.md) | 97 | `result-track:8a404b0f6b25d89736754f26c43a075ac24d1f2bd73cfa62d699b1866d871bb4` |
| 4 | `theorem` | [self](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/self-source-edition-2.md) | 106 | `result-track:b26d1a26a2135946994efc384b3225f44a92645aeb3e4613e46016100623a955` |
| 5 | `theorem` | [eq_zero_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/eq-zero-iff.md) | 113 | `result-track:e7f3ae8a53de74702433d825fb28f842bced6bf0cda46ad01b46b41d6a797815` |
| 6 | `theorem` | [eq_zero_of_not_dvd](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/eq-zero-of-not-dvd.md) | 118 | `result-track:9f2dc7385184d34daa0a9a6f4c61b9ece1699fec523e9525ca7b70bbebbf87b9` |
| 7 | `theorem` | [maxPowDiv_eq_multiplicity](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/maxpowdiv-eq-multiplicity.md) | 124 | `result-track:f11ab4640a66329a30e9df5247aa2473be17cd2054b0aa6815383de5541e66a5` |
| 8 | `theorem` | [maxPowDiv_eq_multiplicity_get](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/maxpowdiv-eq-multiplicity-get.md) | 131 | `result-track:7fb2d10d6b036e9b3f6a88dea396c56b17956748c379fff0853822429ce65287` |
| 9 | `theorem` | [padicValNat_eq_maxPowDiv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/padicvalnat-eq-maxpowdiv.md) | 138 | `result-track:dd97ec032331e52bc640a52fbd5dfdac154ff7d4f113464a4c2ce9911c2e3e8b` |
| 10 | `def` | [padicValInt](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/padicvalint.md) | 157 | `declaration-track:0b138df81ad5fcd0d61749f987652999a18d57e5472a8c2e2477dd596e9a6792` |
| 11 | `theorem` | [of_ne_one_ne_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/of-ne-one-ne-zero.md) | 167 | `result-track:4e64a69d21e23b23c3f1ed1af9e6afff41844b1ff1f606bdfb0e8aa85a4a402f` |
| 12 | `theorem` | [zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/zero-source-edition-3.md) | 179 | `result-track:7033772d8d94c26fd07f4ed35e8e3eee41f3c87544d76eb540e214a4009d89ed` |
| 13 | `theorem` | [one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/one-source-edition-2.md) | 184 | `result-track:c4c0a52e35150133f60bf4127475ef71fee6da7dd473e61d93d5fdd57d240eeb` |
| 14 | `theorem` | [of_nat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/of-nat-source-edition-2.md) | 189 | `result-track:f5c08e4cb268b0a1c6bf055bade83e6bc96b82018eaf115e21ecccfe41eebc1a` |
| 15 | `theorem` | [self](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/self-source-edition-3.md) | 193 | `result-track:c3aff214e38c0b7dc004fc0fd9723f916a099a44f026f995ad6f8c36b3d48d97` |
| 16 | `theorem` | [eq_zero_of_not_dvd](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/eq-zero-of-not-dvd-source-edition-2.md) | 196 | `result-track:bdcea9ffddb8b8f4b052ff65b57021196acd8ff7bfd5acde5048775c3026cf60` |
| 17 | `def` | [padicValRat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/padicvalrat.md) | 205 | `declaration-track:458f090bc03fc3d9af21e82cd8ee41d484d2bad3d7a5d0b617fd5d649b698b22` |
| 18 | `theorem` | [neg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/neg.md) | 217 | `result-track:179628fd44987627007b94b7dcc63b2de97f0feac2078403edeb17a1bc5aa0b8` |
| 19 | `theorem` | [zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/zero-source-edition-2.md) | 223 | `result-track:6ba58ffb7b7e56654dfe8582d79f78030de332b101d610a0f2ebdf00589f4347` |
| 20 | `theorem` | [one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/one-source-edition-3.md) | 228 | `result-track:e660fae8fd529cf156adb3509f1e6141057004832513a014dfcc72d16f253797` |
| 21 | `theorem` | [of_int](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/of-int.md) | 233 | `result-track:1e037652a96d22d91d24ae686468ef92b5c15b5f97b4f7ca92870e20644014ea` |
| 22 | `theorem` | [of_int_multiplicity](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/of-int-multiplicity.md) | 237 | `result-track:8c7b523d445c57dac9539c5c6bd0ecfce165105cb43280f9f87ad9f400d0b274` |
| 23 | `theorem` | [multiplicity_sub_multiplicity](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/multiplicity-sub-multiplicity.md) | 242 | `result-track:1ea100b50def622756b8e3f8a52b644424964f76c7a36cd776b20716cf4c5cb7` |
| 24 | `theorem` | [of_nat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/of-nat.md) | 256 | `result-track:56e31da3c658ec78170af10eaea360518c91e007480f70bca934b9a39df61948` |
| 25 | `theorem` | [self](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/self.md) | 260 | `result-track:7081703e9b25facd3e9b1fdd2f3a7df0fe9112e5553d60e8c2b101dab2ea6c9c` |
| 26 | `theorem` | [zero_le_padicValRat_of_nat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/zero-le-padicvalrat-of-nat.md) | 269 | `result-track:e02b3162f436a2cb6b98bd0f8585a4d5730e7af7958e4d130bb7a9e9e7e775bf` |
| 27 | `theorem` | [padicValRat_of_nat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/padicvalrat-of-nat.md) | 274 | `result-track:e85a3dadde7376cf5ed55950c269572726d6b6ae0b26daafbd0633932aac8470` |
| 28 | `theorem` | [padicValNat_def](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/padicvalnat-def.md) | 279 | `result-track:088e3608586a7710963465ad0fb7b41fa7fa90bf31787bdb13097c539a655f8f` |
| 29 | `theorem` | [padicValNat_def'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/padicvalnat-def-source-edition-2.md) | 284 | `result-track:d38072fafbc4572a8ad7bcd6085eda1f09d06fbe785dfa16ff0d82ac15b4e242` |
| 30 | `theorem` | [padicValNat_self](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/padicvalnat-self.md) | 289 | `result-track:1306855e8905165aa15d6d6744246291b3dc372e29760987fc52b486bf835c77` |
| 31 | `theorem` | [one_le_padicValNat_of_dvd](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/one-le-padicvalnat-of-dvd.md) | 294 | `result-track:cb0f4cf1d51dcf39b06d16ecc1761ad2b94a59e2551567b91101b7d0eb2ea35d` |
| 32 | `theorem` | [dvd_iff_padicValNat_ne_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/dvd-iff-padicvalnat-ne-zero.md) | 300 | `result-track:1217d79d69ec8c00bf1445ff179ee47a57947ad5ec0ec8283c8a6bdc505d3120` |
| 33 | `theorem` | [finite_int_prime_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/finite-int-prime-iff.md) | 315 | `result-track:46d0eaae6c067402e5c01a268b115480f04fac29770bbd12f82e47a344b26763` |
| 34 | `theorem` | [defn](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/defn.md) | 320 | `result-track:a7c99546276190e8afcafb17a202fd83a6fd2ab2da906a9a274e6f760c2406e3` |
| 35 | `theorem` | [mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/mul-source-edition-2.md) | 342 | `result-track:ef4d65e299150737a2b03834a5232da0a9857ae5eba812b7a237db591f5b10cd` |
| 36 | `theorem` | [pow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/pow-source-edition-2.md) | 358 | `result-track:8f7669e24c5f12bfa79facf8c934722f72a5a0ef2b876ff311098db0b77e4e25` |
| 37 | `theorem` | [inv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/inv.md) | 364 | `result-track:9aec4e729f93d933bfa5fc19fc0f08e3606fd7effef02836920fec0809b30278` |
| 38 | `theorem` | [div](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/div-source-edition-3.md) | 372 | `result-track:c30940f5ff58a1029c9d67c6dc6179a024ff55cba2e71b57aa9e633cdfaf6492` |
| 39 | `theorem` | [padicValRat_le_padicValRat_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/padicvalrat-le-padicvalrat-iff.md) | 379 | `result-track:80112666fe485c1dd66dfc9e510da73dfb82f9dd53c11d30d75671d9e8a7205a` |
| 40 | `theorem` | [le_padicValRat_add_of_le](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/le-padicvalrat-add-of-le.md) | 398 | `result-track:b50d92fd392494bb2063c2709962a364f6dd0d09f261372b9453c19d237284d5` |
| 41 | `theorem` | [min_le_padicValRat_add](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/min-le-padicvalrat-add.md) | 431 | `result-track:8e7345b00d419e6ea41b316e50d857aff6a081980c390310cc78314053776926` |
| 42 | `theorem` | [sum_pos_of_pos](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/sum-pos-of-pos.md) | 442 | `result-track:ed4fc49eb53b132221cc3db119208f793b2bda9a36a5bca6a3021683b099a2dd` |
| 43 | `theorem` | [mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/mul.md) | 462 | `result-track:bd591af25d36f8427cff6dbd5314a6e6803c3b9259db866cd57d43ddc0421fc7` |
| 44 | `theorem` | [div_of_dvd](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/div-of-dvd.md) | 466 | `result-track:d5708a06371e33953f9d76635602f44bbb17df4cb69cb645d70fe14d05b502b9` |
| 45 | `theorem` | [div](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/div.md) | 476 | `result-track:1fce30d35c0600e55724d04dbde60f2b7a8c9b6acb89287b1479e252841f32ea` |
| 46 | `theorem` | [pow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/pow.md) | 481 | `result-track:708f962d3455335889fa3da8208306709104da33cb59550ebdbbe75d42268d7a` |
| 47 | `theorem` | [prime_pow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/prime-pow.md) | 486 | `result-track:b2af73f9d945579fb7f3c042affcb8e6df9d2d3eff2523596fee0c92f4a87c47` |
| 48 | `theorem` | [div_pow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/div-pow.md) | 490 | `result-track:df9e2c8cd4e167b4f259f4a5c29ad6f2403d6b258fbb572398993af865a780bd` |
| 49 | `theorem` | [div'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/div-source-edition-2.md) | 494 | `result-track:8473b610917e4592e040423dcf1a6f9e96385606f0079fb92056aa86adf04348` |
| 50 | `theorem` | [dvd_of_one_le_padicValNat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/dvd-of-one-le-padicvalnat.md) | 506 | `result-track:d0151654e73b7c6ea45807fefda286e499a1b0acbb70c0c66349d8992c1f3f90` |
| 51 | `theorem` | [pow_padicValNat_dvd](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/pow-padicvalnat-dvd.md) | 512 | `result-track:60c8bc910eca8596062b8b341345169ce57cc803b63b8e0308cba5e3153bf040` |
| 52 | `theorem` | [padicValNat_dvd_iff_le](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/padicvalnat-dvd-iff-le.md) | 518 | `result-track:2e255456d1eee3fbb37d40f00569d24970cef56d3e5713486e15e2c043e2fee0` |
| 53 | `theorem` | [padicValNat_dvd_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/padicvalnat-dvd-iff.md) | 523 | `result-track:39324fe196e6c619785e9b9895e77727eb0f158cc0a9f00437db9610096bc883` |
| 54 | `theorem` | [pow_succ_padicValNat_not_dvd](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/pow-succ-padicvalnat-not-dvd.md) | 530 | `result-track:1fa86e6ce720596dd3bb903414eb532ee9f465cd1e1b4b485706d6c9320163d3` |
| 55 | `theorem` | [padicValNat_primes](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/padicvalnat-primes.md) | 536 | `result-track:88009861c9fa446514b43ef99ef49f3b10f076cf567efc41878b1ead529856c8` |
| 56 | `theorem` | [range_pow_padicValNat_subset_divisors](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/range-pow-padicvalnat-subset-divisors-source-edition-2.md) | 544 | `result-track:96157863e9776a7af8a5f79db639ba6017d95ce73bfe99fbc4b4a128c8a1ab65` |
| 57 | `theorem` | [range_pow_padicValNat_subset_divisors'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/range-pow-padicvalnat-subset-divisors.md) | 553 | `result-track:28688c9c199aaffb9fa8be1448d1fd3351909ff7384ac1ccd2d7e6977865b28c` |
| 58 | `theorem` | [padicValNat_factorial_mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/padicvalnat-factorial-mul.md) | 566 | `result-track:fb513cd64dfea029269834cc6181d1517b07f12e1275065bb2e534d4af889025` |
| 59 | `theorem` | [padicValNat_eq_zero_of_mem_Ioo](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/padicvalnat-eq-zero-of-mem-ioo.md) | 575 | `result-track:0cd5fdcd7e7e3ae96c3d73998b403b30fcb126b804591e01528b627f6b18e8f8` |
| 60 | `theorem` | [padicValNat_factorial_mul_add](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/padicvalnat-factorial-mul-add.md) | 579 | `result-track:dbe73e2938236e280a3cf08926ebdb3c270b854d663af9c6fd1cc694d98ad785` |
| 61 | `theorem` | [padicValNat_mul_div_factorial](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/padicvalnat-mul-div-factorial.md) | 590 | `result-track:e6ad2b94aaddf0f7294c3938016443d8b953e78ff4aaff0bf76dfd9d194e20ba` |
| 62 | `theorem` | [padicValNat_factorial](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/padicvalnat-factorial.md) | 599 | `result-track:07a0e180e47eb864037635b35f5700e328e1454d6bc2f2b8cc90426905cd38d7` |
| 63 | `theorem` | [sub_one_mul_padicValNat_factorial_eq_sub_sum_digits](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/sub-one-mul-padicvalnat-factorial-eq-sub-sum-digits.md) | 608 | `result-track:04fbfa85076362f09b3dfd5c58c754e1c4b9ece94768633322c5e2d0f4b5703a` |
| 64 | `theorem` | [padicValNat_choose](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/padicvalnat-choose.md) | 618 | `result-track:70e7d3035c502d559801bb4bc27a50c83af0ed441527072054591edd66da6e16` |
| 65 | `theorem` | [padicValInt_dvd_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/padicvalint-dvd-iff.md) | 630 | `result-track:3164178da56dd95ba21f0b4294a25b72993bb8d267d41bbed4956f4460c38fdf` |
| 66 | `theorem` | [padicValInt_dvd](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/padicvalint-dvd.md) | 635 | `result-track:503888ed5954e11a7ccbeddd4ba502dd9e19da95a8822233f3c043ca8d92d23d` |
| 67 | `theorem` | [padicValInt_self](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/padicvalint-self.md) | 640 | `result-track:61292c274d1d801b769f7dce4c01122d4e944cd43d6662c2311042e4c726b714` |
| 68 | `theorem` | [padicValInt.mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/padicvalint-mul.md) | 644 | `result-track:8e52bb2c9e73bc0fc77393f4e560fe30cd3ba1dec675790decbf339eb0a57fdd` |
| 69 | `theorem` | [padicValInt_mul_eq_succ](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicValNamespaced.lean/declarations/padicvalint-mul-eq-succ.md) | 650 | `result-track:8d662bf25af9123a41f003e188f8b7d624f9135148b17a27181a627e4978637b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b325ca049c878df5210b6cd0f6c548263d8d41721d05fcce69c097275677e584 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicVal/Variant23cc7fbb451b1157c6c1d0c5ff86a316e01c6afc20452e2cd7954a1e95624e79.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicVal/Variant23cc7fbb451b1157c6c1d0c5ff86a316e01c6afc20452e2cd7954a1e95624e79.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
