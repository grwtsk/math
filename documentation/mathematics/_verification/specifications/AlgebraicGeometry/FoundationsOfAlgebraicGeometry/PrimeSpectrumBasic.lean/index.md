# Verification target: Prime Spectrum Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd06134b7ffd366969ade86989120a086daa99dc",
  "lexical_observation_count": 125,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant97f09d3a811c3c08a0488a1306eb105c7a2818759714ec8de8cb90e660483aad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd06134b7ffd366969ade86989120a086daa99dc`.

Source path: `GRWTSK/Algebra/Basic/Variant97f09d3a811c3c08a0488a1306eb105c7a2818759714ec8de8cb90e660483aad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant97f09d3a811c3c08a0488a1306eb105c7a2818759714ec8de8cb90e660483aad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Finsupp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Over` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Closeds` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sober` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimeSpectrum](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/primespectrum.md) | 61 | `declaration-track:b1ed9d45132185fb59b5ab277b2726595a902120150968036408ccdd04313ae8` |
| 2 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/instance-source-edition-4.md) | 72 | `declaration-track:d0ddcdab9f9d2c749efc99a90fc09cfcb740174148460cc49e72b66b526d8e0e` |
| 3 | `theorem` | [punit](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/punit.md) | 77 | `result-track:cf5c5c006de13d7d7e7f8d79ce87b73c9a08e45e244eb00268255bf5129bc3e7` |
| 4 | `def` | [primeSpectrumProdOfSum](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/primespectrumprodofsum.md) | 85 | `declaration-track:3fa4956e4aebbce974c984829bb31409e60165b77e364a9a9270189eeb56a9c8` |
| 5 | `def` | [primeSpectrumProd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/primespectrumprod.md) | 92 | `declaration-track:4d4d15ada63f6533a97a39d449c2a799d7ef1d77c9b81dcfead17a7c03eaef33` |
| 6 | `theorem` | [primeSpectrumProd_symm_inl_asIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/primespectrumprod-symm-inl-asideal.md) | 112 | `result-track:deea0d9a9c9a6de61dfac49bb4283c57434ddcaf3a29caa556410ae991c34d3a` |
| 7 | `theorem` | [primeSpectrumProd_symm_inr_asIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/primespectrumprod-symm-inr-asideal.md) | 119 | `result-track:4e033ddc7c842f07e9ee0ae24c738abf4aaec64b93f5feba0a400ee3f56dddea` |
| 8 | `def` | [zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus.md) | 133 | `declaration-track:6648f4ef17044d1ee8cbe3922d5503dcc9ebd883a4f7eff8d90d5a2bf1be399c` |
| 9 | `theorem` | [mem_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/mem-zerolocus.md) | 138 | `result-track:ad1e37c365c0185c60d0790c3038f6754e469da7cbb08bb63c08a71d6896b03c` |
| 10 | `theorem` | [zeroLocus_span](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus-span.md) | 143 | `result-track:ec907453ea3c28256014f464975d4d514eb0d7209ad8b8c2713c6e374d050be0` |
| 11 | `def` | [vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/vanishingideal.md) | 156 | `declaration-track:87b18f919c225c638a0f8f3dfc9a2e34045d7a84756804c9034d2c9955d4984e` |
| 12 | `theorem` | [coe_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/coe-vanishingideal.md) | 160 | `result-track:d9720570de447ea9e6221ebaa4b32a25ba2f92bb7ab28df6002fb5e085aa8ff8` |
| 13 | `theorem` | [mem_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/mem-vanishingideal.md) | 168 | `result-track:793443ee9ee342ec311e999244256dfbc0d506bdd40b4675eb48770e95b31b56` |
| 14 | `theorem` | [vanishingIdeal_singleton](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/vanishingideal-singleton.md) | 174 | `result-track:cde54624d0e13810131579c6b21c3bc75b26f00ff7c275d5a9ffbefdbf90c7e7` |
| 15 | `theorem` | [subset_zeroLocus_iff_le_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/subset-zerolocus-iff-le-vanishingideal.md) | 178 | `result-track:ac6ad2332363d47eb0ff3ee17329967cfb0ed32513ef863ce89e6b53a6230549` |
| 16 | `theorem` | [gc](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/gc.md) | 189 | `result-track:70f9995cc281b6807cdc6c75a2dff3be4e228b418775cc23ca367a515cf3b4dd` |
| 17 | `theorem` | [gc_set](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/gc-set.md) | 196 | `result-track:4e13d1fb78157670803c410d33a676c0f3965e1a7203e360c92a3022f9429959` |
| 18 | `theorem` | [subset_zeroLocus_iff_subset_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/subset-zerolocus-iff-subset-vanishingideal.md) | 203 | `result-track:ddfc9afb8d912900a6930832daa3fb0b9c0147acf123b0fd93cbac5970335d38` |
| 19 | `theorem` | [subset_vanishingIdeal_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/subset-vanishingideal-zerolocus.md) | 210 | `result-track:71a8cb4aaa19f21039b7ef3d0661baf29433e372169e65a8a5ebdd809967b911` |
| 20 | `theorem` | [le_vanishingIdeal_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/le-vanishingideal-zerolocus.md) | 214 | `result-track:c90175c1dc71cd3f76368710f0e74c9320948d512dfb5390eaf6610eca25f80d` |
| 21 | `theorem` | [vanishingIdeal_zeroLocus_eq_radical](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/vanishingideal-zerolocus-eq-radical.md) | 219 | `result-track:8cc54806e794bb1546fbea54112a9a2b1731e4c100a6c760bd938b63a0c44f94` |
| 22 | `theorem` | [zeroLocus_radical](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus-radical.md) | 227 | `result-track:c582cea8d0c83af147881d2e322bccbce1b8b2eb611e50f314452369d49f81df` |
| 23 | `theorem` | [subset_zeroLocus_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/subset-zerolocus-vanishingideal.md) | 231 | `result-track:76b7b9dfe37f72fa8599ad4868c8c65ad1f2f57cfb2ee8b07a7092c9c95964fd` |
| 24 | `theorem` | [zeroLocus_anti_mono](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus-anti-mono.md) | 236 | `result-track:a5cc7cd98f68ab303647223962ed6dfa3bed970edaeeb622b82d9321e9b4fb21` |
| 25 | `theorem` | [zeroLocus_anti_mono_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus-anti-mono-ideal.md) | 240 | `result-track:4e6879605cb34eb1f47407cc4312ef311e2bab22401bdc08fa8618656bb5ba50` |
| 26 | `theorem` | [vanishingIdeal_anti_mono](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/vanishingideal-anti-mono.md) | 245 | `result-track:9dae39adce958a6539b0db2e31d4d8d71140efb3159820b151d5f0127e31b081` |
| 27 | `theorem` | [zeroLocus_subset_zeroLocus_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus-subset-zerolocus-iff.md) | 250 | `result-track:e95e2863abacd1dae9b0d8b523c4623ed042541ce45640f683bce31234fde51c` |
| 28 | `theorem` | [zeroLocus_subset_zeroLocus_singleton_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus-subset-zerolocus-singleton-iff.md) | 259 | `result-track:b3d24a944f49ae48e08b69061397ca9f75126bbada6f09a8c8f0fb7adefe5b92` |
| 29 | `theorem` | [zeroLocus_bot](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus-bot.md) | 265 | `result-track:2f1a46a3f15d65fe94c165bc246929de0c2303b91176c82a4425dc105f678337` |
| 30 | `theorem` | [zeroLocus_singleton_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus-singleton-zero.md) | 270 | `result-track:15f1b007b7bf86cd9b3a973a8c665ad04e96b2a0041faba6655be0d144a8b73d` |
| 31 | `theorem` | [zeroLocus_empty](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus-empty.md) | 275 | `result-track:e085d32bb1b4bc73f5c7afc8727f66c122866a8076e6a71c3c0d1ab9e48b0ba4` |
| 32 | `theorem` | [vanishingIdeal_univ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/vanishingideal-univ.md) | 280 | `result-track:5ac3fafd9f6e7384ba1eeda4b405a77fe8a149cdf496c594dafa16b8ad3f1e2d` |
| 33 | `theorem` | [zeroLocus_empty_of_one_mem](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus-empty-of-one-mem.md) | 284 | `result-track:971caf062ef06ef1693fb8f2153a5dab3c152c80d669f1c2fb9d02052c54ec62` |
| 34 | `theorem` | [zeroLocus_singleton_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus-singleton-one.md) | 296 | `result-track:b7a2a0cb958b9308b6978cf3bec7554b03df40f578afb0dc0ea9406dad56977c` |
| 35 | `theorem` | [zeroLocus_empty_iff_eq_top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus-empty-iff-eq-top.md) | 300 | `result-track:b72e4bca88c336f9355b36f6d869478929f484f58457ae154a722375f39e8331` |
| 36 | `theorem` | [zeroLocus_univ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus-univ.md) | 312 | `result-track:a22cc07bf174b3ba392f19e9391b30686a03a90b1e350dc82e2fe55526962850` |
| 37 | `theorem` | [vanishingIdeal_eq_top_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/vanishingideal-eq-top-iff.md) | 316 | `result-track:e174fee68710648b58805ffcba233e939562ff53fb4cdd7a0faeec5d8454056e` |
| 38 | `theorem` | [zeroLocus_sup](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus-sup.md) | 321 | `result-track:6a37b780a959a0edba8e9ce1a1136adae078790ff1899292b09b6c0b15007a2d` |
| 39 | `theorem` | [zeroLocus_union](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus-union.md) | 326 | `result-track:f90442539c21d537bfb61b8712fe6f85d9bd152b5a433d26d732a09f1e214938` |
| 40 | `theorem` | [vanishingIdeal_union](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/vanishingideal-union.md) | 330 | `result-track:56e14f101cd46441672d47b9358c0714ae2b2f611f463be8d88e367d4a605e2e` |
| 41 | `theorem` | [zeroLocus_iSup](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus-isup.md) | 335 | `result-track:e00c49faff943a0496c72aea0f1d389a7deaa1e2a0722efaa18b4df7fa2114c9` |
| 42 | `theorem` | [zeroLocus_iUnion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus-iunion.md) | 340 | `result-track:bc0c27b692b9f22fb320aaf13e8b1620d2e078e67d204b476d6bb3c4721ec21d` |
| 43 | `theorem` | [zeroLocus_bUnion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus-bunion.md) | 345 | `result-track:dee4fdf938d377b650cb15cd69f9054b547154fddd99568cc92feda0a28af525` |
| 44 | `theorem` | [vanishingIdeal_iUnion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/vanishingideal-iunion.md) | 349 | `result-track:b842fd7f9582766b892ec5cdc0347e8bbdea8aa4138a1a15d18bff412bcc4eb9` |
| 45 | `theorem` | [zeroLocus_inf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus-inf.md) | 354 | `result-track:eba70d9c6ddd3ad6a1ffa5ee17d262134258c1e1d436132072960fc8fe1d9b88` |
| 46 | `theorem` | [union_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/union-zerolocus.md) | 359 | `result-track:5ba0c0187b8d6c0c7e3cc368dd4269d46663118c06cc78272abb73779f1a5829` |
| 47 | `theorem` | [zeroLocus_mul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus-mul.md) | 365 | `result-track:2b012db5496d7c0a25bf869c7ec05b822e30b291f15673e9ac4185868ebef3d9` |
| 48 | `theorem` | [zeroLocus_singleton_mul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus-singleton-mul.md) | 370 | `result-track:38a27d1786faf5c34213121d359ec826523b63482dc01126704855be1020fb4c` |
| 49 | `theorem` | [zeroLocus_pow](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus-pow.md) | 376 | `result-track:649b3785734296cd552eafedcb433903591000cddf5dd861d140a0c67d679d22` |
| 50 | `theorem` | [zeroLocus_singleton_pow](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus-singleton-pow.md) | 382 | `result-track:b7e65b684a48bce3d2607bfd124471f79c99c295837ceaec26bbdb65789f85fb` |
| 51 | `theorem` | [sup_vanishingIdeal_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/sup-vanishingideal-le.md) | 387 | `result-track:88637cd7717c6c32edb7b6e283e9a5d147e2958488926d7cac972b6a77919234` |
| 52 | `theorem` | [mem_compl_zeroLocus_iff_not_mem](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/mem-compl-zerolocus-iff-not-mem.md) | 396 | `result-track:128eb8c1ef2a1c24e3c4bf54b839a953cd83db7d132598735c17adcaaac3a200` |
| 53 | `instance` | [zariskiTopology](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zariskitopology.md) | 403 | `declaration-track:88671637944b8d0ee30f00326ae23b22de101aa6e0abcbda2325bd038f76ab65` |
| 54 | `theorem` | [isOpen_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/isopen-iff.md) | 416 | `result-track:f94c2b742f9fe2f37f0a3b2435e69a592800b52798f90999deda95dc94e331a8` |
| 55 | `theorem` | [isClosed_iff_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/isclosed-iff-zerolocus.md) | 420 | `result-track:54281078e509c8b3ebfae240eed617e6ce5f6352523d3378e350ce273a82def2` |
| 56 | `theorem` | [isClosed_iff_zeroLocus_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/isclosed-iff-zerolocus-ideal.md) | 424 | `result-track:dce17bb87457935fe17e9b800bf74fa8daed507687d82c1a7a7f066bb574ceb6` |
| 57 | `theorem` | [isClosed_iff_zeroLocus_radical_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/isclosed-iff-zerolocus-radical-ideal.md) | 430 | `result-track:5fc4a69f9463a7496e2fe992e113c154bdc852ac810d76405a65932b67157b40` |
| 58 | `theorem` | [isClosed_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/isclosed-zerolocus.md) | 437 | `result-track:9cf8f5c217e73f678938c7c2fb4c2b25573dc8f18d1fcb072b4087e01bb7e572` |
| 59 | `theorem` | [isClosed_singleton_iff_isMaximal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/isclosed-singleton-iff-ismaximal.md) | 442 | `result-track:a9cbd33dce9429602d8766383b928abcafa7489747bae93224052bd78dd82619` |
| 60 | `theorem` | [zeroLocus_vanishingIdeal_eq_closure](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/zerolocus-vanishingideal-eq-closure.md) | 461 | `result-track:53f17688eb08e99cd9da96e0bebf6903504bfcf7f4a7f766506c2007b6c33bb0` |
| 61 | `theorem` | [vanishingIdeal_closure](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/vanishingideal-closure.md) | 472 | `result-track:9ca95cc5affc73df611f022247309ec6740027ae7c2f6b436dd10887810fc88e` |
| 62 | `theorem` | [closure_singleton](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/closure-singleton.md) | 477 | `result-track:78364274065144b4240cea064fff20adb33cf33c37be4f1a7d2227542862a788` |
| 63 | `theorem` | [isRadical_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/isradical-vanishingideal.md) | 481 | `result-track:76a77b629aabe8fe059de3f2ec9edb076d32668ccf9ecd2ac65c978566412f17` |
| 64 | `theorem` | [vanishingIdeal_anti_mono_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/vanishingideal-anti-mono-iff.md) | 487 | `result-track:050b5508c7fe697d24350da26c095e75a92f35ad68001c7a8398e1c0fed60cef` |
| 65 | `theorem` | [vanishingIdeal_strict_anti_mono_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/vanishingideal-strict-anti-mono-iff.md) | 494 | `result-track:c6f1db26b0463d09650caf1d830634e027fb7fe95e638e4869e24822690a51dd` |
| 66 | `def` | [closedsEmbedding](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/closedsembedding.md) | 501 | `declaration-track:d921a7d41343b875937e5d39e8e9db31199dd2573e3ce83e0e1b36b433cde9a7` |
| 67 | `theorem` | [t1Space_iff_isField](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/t1space-iff-isfield.md) | 507 | `result-track:5f9e7f4ac6ebc2d260305250d4fefdaf821b2bd09bb64b89174a2b45f7e61fd7` |
| 68 | `theorem` | [isIrreducible_zeroLocus_iff_of_radical](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/isirreducible-zerolocus-iff-of-radical.md) | 526 | `result-track:78b0cd9bfcfddf1d7a34688b6b5f34b21f741974ea84e4fe45e671cd88b687b6` |
| 69 | `theorem` | [isIrreducible_zeroLocus_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/isirreducible-zerolocus-iff.md) | 551 | `result-track:637f45a8fdb08df46b827d6d2a72b97614b3bdc224539cf6cca98e145c4912be` |
| 70 | `theorem` | [isIrreducible_iff_vanishingIdeal_isPrime](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/isirreducible-iff-vanishingideal-isprime.md) | 556 | `result-track:43398cad253a7ac68274d98442302a2d25876b44837591357109f317d91f962f` |
| 71 | `instance` | [irreducibleSpace](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/irreduciblespace.md) | 562 | `declaration-track:7f94fe4e32be4bc3e37d53b3e226acd19ad5ebafa4ba7ba21ea6ad8d979f9bc3` |
| 72 | `instance` | [quasiSober](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/quasisober.md) | 566 | `declaration-track:acb087b6ee913a39ce80a59415c88c271430f2b4b8a0c41c22ea675b6d4ea49d` |
| 73 | `theorem` | [preimage_comap_zeroLocus_aux](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/preimage-comap-zerolocus-aux.md) | 575 | `result-track:57e3d07df214355cb43ba672f29671162108cc84d75f3cfef4e85177a694cfa7` |
| 74 | `def` | [comap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/comap.md) | 585 | `declaration-track:ce64462f9f358662e1233fd5f20e0939ccf050165d243a3f88bfc82e4d270d1b` |
| 75 | `theorem` | [comap_asIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/comap-asideal.md) | 596 | `result-track:7afdb76c8843166b69c04b39bf0232770fdb62cd3fb2642ac709c3fed80ee9af` |
| 76 | `theorem` | [comap_id](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/comap-id.md) | 601 | `result-track:84d7aaf8852d334a6bc0e0d29ec6ef8814df2ac5565fc4d18ecea89c6aa3eceb` |
| 77 | `theorem` | [comap_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/comap-comp.md) | 607 | `result-track:eab1a9c8bd49ab6332936b83a1a66f5800908a31e60889f86425aaaeb37fff22` |
| 78 | `theorem` | [comap_comp_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/comap-comp-apply.md) | 611 | `result-track:6978b05171e8a6ed6fd84d4f5064287a27cfdedf8114d5ca9a51aa4cc5aec2aa` |
| 79 | `theorem` | [preimage_comap_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/preimage-comap-zerolocus.md) | 617 | `result-track:72593d96bdb3792c3f50a7ebb98438ce15396d89e167671a2bc659751bf6b73e` |
| 80 | `theorem` | [comap_injective_of_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/comap-injective-of-surjective.md) | 621 | `result-track:4a0c1e5c330e591f1d0bc8e3b157189171eacb4c7c9625d92fa8bea52962021b` |
| 81 | `theorem` | [comap_singleton_isClosed_of_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/comap-singleton-isclosed-of-surjective.md) | 628 | `result-track:9e2ea1a941ba518fdfc746c7ad6e320284b2c4726e6074683b2ebaf42fdc1f68` |
| 82 | `theorem` | [comap_singleton_isClosed_of_isIntegral](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/comap-singleton-isclosed-of-isintegral.md) | 635 | `result-track:52c201ece2a79339ce94102b58e259a5837928263510725f938475c29665c5e1` |
| 83 | `theorem` | [localization_comap_inducing](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/localization-comap-inducing.md) | 645 | `result-track:0ceb20ff572472c18deb0afc1ea791a55cf3aac6094fe0f6819927faa946c6f2` |
| 84 | `theorem` | [localization_comap_injective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/localization-comap-injective.md) | 665 | `result-track:99e8d3513ee1a7ba3107c3efb3713625b12520faadaad58b53382312c1d18045` |
| 85 | `theorem` | [localization_comap_embedding](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/localization-comap-embedding.md) | 675 | `result-track:e3ee762449c6ee02b2c1e2b653241c90280bbadddca81f9ee3a156b2dcc6b572` |
| 86 | `theorem` | [localization_comap_range](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/localization-comap-range.md) | 680 | `result-track:26e95829af7bcbd71a1dc811f4fcf3998fac17e11d2e1e6136ba966a3119998a` |
| 87 | `theorem` | [comap_inducing_of_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/comap-inducing-of-surjective.md) | 700 | `result-track:0fe187539ecad4446fe6167c37768a513d1a97ed791541f41136faa9c320a8e5` |
| 88 | `theorem` | [image_comap_zeroLocus_eq_zeroLocus_comap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/image-comap-zerolocus-eq-zerolocus-comap.md) | 715 | `result-track:b4ad4b08f8973dfa883cad4154deec6bc6a3e8ba499deb9afb5e6f2434381529` |
| 89 | `theorem` | [range_comap_of_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/range-comap-of-surjective.md) | 734 | `result-track:759dd0de5edfbe5731fae57fb6dee1e7dcfff762a4ae7695264c007985f532b3` |
| 90 | `theorem` | [isClosed_range_comap_of_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/isclosed-range-comap-of-surjective.md) | 741 | `result-track:70b9b7a597f848bb35cb9ed4fe099860de95f4acb88f669165db1613e7d5f5f2` |
| 91 | `theorem` | [closedEmbedding_comap_of_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/closedembedding-comap-of-surjective.md) | 747 | `result-track:8bb8eb7075eb5dfa74b5ef638a02020a5fc34c43c6e891b3188a2e908b436a5a` |
| 92 | `def` | [basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/basicopen.md) | 760 | `declaration-track:2cbd44aeea0db7d98109877ec121792f2c1bf910692d1bbb0edbfccd4c635746` |
| 93 | `theorem` | [mem_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/mem-basicopen.md) | 766 | `result-track:5bb12f68e32058556e1ae3ca9dbbafd5a30381e31b81712a2fa3eb03ca130542` |
| 94 | `theorem` | [isOpen_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/isopen-basicopen.md) | 770 | `result-track:76cc954998eb50a5275085b5464f6bb1efc4b252b45b9687dc05b2bb0a46aee2` |
| 95 | `theorem` | [basicOpen_eq_zeroLocus_compl](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/basicopen-eq-zerolocus-compl.md) | 775 | `result-track:09490865b1d871a6457daa16d5d5925736b0302203e9472c2c589c4ca8b7435f` |
| 96 | `theorem` | [basicOpen_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/basicopen-one.md) | 782 | `result-track:658485414ed82163f5786f54196152bd5308bf043c09824d55a8299d875de3ff` |
| 97 | `theorem` | [basicOpen_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/basicopen-zero.md) | 787 | `result-track:2dcac5a732ff16cbe30a4527a741871a1516aa0f8f89bc4cca2ea657cef1d223` |
| 98 | `theorem` | [basicOpen_le_basicOpen_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/basicopen-le-basicopen-iff.md) | 791 | `result-track:bc647cd96b2b1380568ce7ade4bbccf502cbc62b6818ba55874e9756d16bebda` |
| 99 | `theorem` | [basicOpen_mul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/basicopen-mul.md) | 797 | `result-track:b4c0725038b0e4584c0d94c9779f0651dc3111c50e7e49551c3904a72c1dd98e` |
| 100 | `theorem` | [basicOpen_mul_le_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/basicopen-mul-le-left.md) | 801 | `result-track:bc046e00f51a507a9dc0d7eb360aa12961839ce02f4006fd1a8d73e38b7bd7a8` |
| 101 | `theorem` | [basicOpen_mul_le_right](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/basicopen-mul-le-right.md) | 806 | `result-track:edc9331ce0e26f7384c3193ec331cf306f94833b2cf357b4c272b61f342a268e` |
| 102 | `theorem` | [basicOpen_pow](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/basicopen-pow.md) | 812 | `result-track:ed5eb63579a30b3142f0c3034d9488229e39880b913d4faf991c9d749bec2937` |
| 103 | `theorem` | [isTopologicalBasis_basic_opens](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/istopologicalbasis-basic-opens.md) | 816 | `result-track:2d59a91dd8f4859ef199a7ccbc027e410afc5c6a498ed8691bb418366f0b9250` |
| 104 | `theorem` | [isBasis_basic_opens](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/isbasis-basic-opens.md) | 830 | `result-track:8e076deeceb16cfb035ebb4b909bbf7cef90c337e818bc6b8e8ef880c2eef186` |
| 105 | `theorem` | [isCompact_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/iscompact-basicopen.md) | 837 | `result-track:884961613d653bd3aef2a1f0b3915be0758e76ad22d67e6f6e8cd3c9ae12798f` |
| 106 | `theorem` | [basicOpen_eq_bot_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/basicopen-eq-bot-iff.md) | 865 | `result-track:17711b448f6dd9de7d26cc51c9da518bda491483258940434e6a7a8a23898152` |
| 107 | `theorem` | [localization_away_comap_range](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/localization-away-comap-range.md) | 872 | `result-track:e72ee8f7d3849956bfe723db12cbf4820b48dc0e56e81218824a2896024836b3` |
| 108 | `theorem` | [localization_away_openEmbedding](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/localization-away-openembedding.md) | 885 | `result-track:5d10650f7c7629d5838fd0c17ab7cae155bbfcba9260f60d3023e5774e645671` |
| 109 | `instance` | [compactSpace](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/compactspace.md) | 896 | `declaration-track:1fa4855e7139dac2b82dc37d2c59dec9ed0fb122f7d35e93cb10bc97686d2295` |
| 110 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/instance.md) | 910 | `declaration-track:0196d19938ab48e8d61a83d48b73564fb24cb05cc35998d2426bfa046f8b6b84` |
| 111 | `theorem` | [asIdeal_le_asIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/asideal-le-asideal.md) | 914 | `result-track:424872eb39a947f5cf315f398c35a55232d1bf851229186ada0f08da39acd7e2` |
| 112 | `theorem` | [asIdeal_lt_asIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/asideal-lt-asideal.md) | 919 | `result-track:24a3f0987c6d5337b573637b9b68b6f087b415dc03ddf0042abdfd1072f394db` |
| 113 | `theorem` | [le_iff_mem_closure](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/le-iff-mem-closure.md) | 923 | `result-track:140c48c8f74c751bc6f4e82e408c5f712400ffab342b0e41d64bbc813492a04f` |
| 114 | `theorem` | [le_iff_specializes](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/le-iff-specializes.md) | 929 | `result-track:fee473c1caa189524b836792fb92969cccb8e04fa44d3eee8e05c123270e57c8` |
| 115 | `def` | [nhdsOrderEmbedding](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/nhdsorderembedding.md) | 935 | `declaration-track:efa1690e88a7bd06c4a7ee2bccbcdaf1b47c889a0c4fb80a5e17006ffa0ef857` |
| 116 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/instance-source-edition-2.md) | 939 | `declaration-track:74487215141d209ca99f5c445dfe3ada22762a7e8910560c918d568e0ae5b113` |
| 117 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/instance-source-edition-5.md) | 942 | `declaration-track:d9492c505d0d8ba8c61e71bb550da63213d1e3e4af862d0cdc23a244308c4e11` |
| 118 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/instance-source-edition-3.md) | 946 | `declaration-track:a5cc9c07fd31012374adc0ea594039318d438a4483979044b93a0db4e7fdbab6` |
| 119 | `def` | [localizationMapOfSpecializes](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/localizationmapofspecializes.md) | 954 | `declaration-track:831e269e05f974d41e38b4e0fa47625c19b53a373be85d02c1ca0448108e28b6` |
| 120 | `def` | [closedPoint](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/closedpoint.md) | 973 | `declaration-track:83b8fd31e51c74c039427575b8cd6df2a07026bf6ac38bd635a532f362cc4aa2` |
| 121 | `theorem` | [isLocalRingHom_iff_comap_closedPoint](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/islocalringhom-iff-comap-closedpoint.md) | 979 | `result-track:45c7e340e991f78fad509694200108d495b8a833db42ecd336e20b60166fc77b` |
| 122 | `theorem` | [comap_closedPoint](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/comap-closedpoint.md) | 988 | `result-track:c93be43f32821179aec60673063ab72e1ee4239c9b06357f2ed386e885ffdbc8` |
| 123 | `theorem` | [specializes_closedPoint](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/specializes-closedpoint.md) | 993 | `result-track:21d22cb02244897beb564935ff7fd3ae7571287a2ca06f1895a26ab8bb55d008` |
| 124 | `theorem` | [closedPoint_mem_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/closedpoint-mem-iff.md) | 997 | `result-track:30f62cdacaccab9145276362510fdaae48a4357f3868375bf908745eada2518d` |
| 125 | `theorem` | [PrimeSpectrum.comap_residue](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasic.lean/declarations/primespectrum-comap-residue.md) | 1007 | `result-track:f03e1047352ed33e56a3394793bf94a4bf3642824b1abc11d1f8b50edba7504c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be53a579e33130123d409f732bf79c9f819fe30457e80f22c76601b773be4c2a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant97f09d3a811c3c08a0488a1306eb105c7a2818759714ec8de8cb90e660483aad.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant97f09d3a811c3c08a0488a1306eb105c7a2818759714ec8de8cb90e660483aad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
