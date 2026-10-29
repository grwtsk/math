# Verification target: Prime Spectrum Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28264c3f984918cdf2cc035f1a92c2286ed2594d",
  "lexical_observation_count": 125,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant4cb453c288bc18be99d928387d8d5927ae438f045e4715c4ef58d9c7532877b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28264c3f984918cdf2cc035f1a92c2286ed2594d`.

Source path: `GRWTSK/Algebra/Basic/Variant4cb453c288bc18be99d928387d8d5927ae438f045e4715c4ef58d9c7532877b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant4cb453c288bc18be99d928387d8d5927ae438f045e4715c4ef58d9c7532877b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Finsupp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Over` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Closeds` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sober` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimeSpectrum](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/primespectrum.md) | 69 | `declaration-track:c185f46984d2c3a5f2f8b93a0538c30f4303f8928201efed3739ff7fedbe2157` |
| 2 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 80 | `declaration-track:f942024277eff4e0d3d81b7350b5f3872719fc192bf877288f6ab02761762c69` |
| 3 | `theorem` | [punit](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/punit.md) | 85 | `result-track:4e7e470c943e1ceae7825727af0dd5cb9c1d1d5a14b55b678532009a08739302` |
| 4 | `def` | [primeSpectrumProdOfSum](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/primespectrumprodofsum.md) | 93 | `declaration-track:98328b8308a500dc0d1e5c619e959b74821acb8b465a0270f94b0e8542db3c42` |
| 5 | `def` | [primeSpectrumProd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/primespectrumprod.md) | 100 | `declaration-track:57f6ccdddb72f91148304f34777d2b6191893a025ba1650ae7ade0bc37835ff0` |
| 6 | `theorem` | [primeSpectrumProd_symm_inl_asIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/primespectrumprod-symm-inl-asideal.md) | 120 | `result-track:87412c1e96481f5596ba37c2245e959427e14642adae40b0a5d1251b6ef775f4` |
| 7 | `theorem` | [primeSpectrumProd_symm_inr_asIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/primespectrumprod-symm-inr-asideal.md) | 127 | `result-track:eca71c34e7068988dba3e356ad98591a0bf7fa4537f6d7b0babf596f360404a5` |
| 8 | `def` | [zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus.md) | 141 | `declaration-track:f51fcb2ceaace8d324f4c6b4e0c61a91b708269a4eb61c308f7d960e6cd54bac` |
| 9 | `theorem` | [mem_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/mem-zerolocus.md) | 146 | `result-track:4ef7aa9b6cafe2d39f19fbae5153b2b7799f30f154a9817c22bac1b096f580c9` |
| 10 | `theorem` | [zeroLocus_span](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus-span.md) | 151 | `result-track:512f1617f8cb53828383bdb3599fa0a93b31e9e3d04bf64d67eae05351183ce9` |
| 11 | `def` | [vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/vanishingideal.md) | 164 | `declaration-track:b03e51f89480345005674a5b60ea338fac5568d2d4f012c2cb0ad864a974088b` |
| 12 | `theorem` | [coe_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/coe-vanishingideal.md) | 168 | `result-track:138d299f104706ae6e2e8f33ab8e76ae6a6b89a5eba76d1f2f5aa2d1ceb58f9d` |
| 13 | `theorem` | [mem_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/mem-vanishingideal.md) | 176 | `result-track:3be197e6db503d953247b888a21d733cca9abf24c50fab21dc4e0cb564620621` |
| 14 | `theorem` | [vanishingIdeal_singleton](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/vanishingideal-singleton.md) | 182 | `result-track:e868afcbabf892fc7638705887aad4660d9ef17e25cb39f10fe992902aa93168` |
| 15 | `theorem` | [subset_zeroLocus_iff_le_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/subset-zerolocus-iff-le-vanishingideal.md) | 186 | `result-track:bedf1767f525045e866c57190680c8fe3b597b7940866b964fdd553fbd6974fd` |
| 16 | `theorem` | [gc](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/gc.md) | 197 | `result-track:ee71d3f179f7ace882c5e97938cfeda999f067cbdf7715005cbee8b0585a101d` |
| 17 | `theorem` | [gc_set](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/gc-set.md) | 204 | `result-track:35decf89cac24a1d5c3cacf4cb8cae40189541b9221b78358193a06d185b6e1b` |
| 18 | `theorem` | [subset_zeroLocus_iff_subset_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/subset-zerolocus-iff-subset-vanishingideal.md) | 211 | `result-track:0681bf66f10187a50da556c9ba350b469993de743ac452bb5a3f2c008c388fe8` |
| 19 | `theorem` | [subset_vanishingIdeal_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/subset-vanishingideal-zerolocus.md) | 218 | `result-track:5a43375aa41b42df2f0001f806650387d88d4fa606fea8ef5d0ab65d8404d256` |
| 20 | `theorem` | [le_vanishingIdeal_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/le-vanishingideal-zerolocus.md) | 222 | `result-track:b6e2baff81f21c953058dc703ebfe3d827517d6e85ff3906bcc1284527071101` |
| 21 | `theorem` | [vanishingIdeal_zeroLocus_eq_radical](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/vanishingideal-zerolocus-eq-radical.md) | 227 | `result-track:4c1f36f7d909ae95795fe0e9c6ca38359c3ddb684281866423b47d35c21d21b2` |
| 22 | `theorem` | [zeroLocus_radical](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus-radical.md) | 235 | `result-track:b57a385e3c6ba5d6d100f601bc0a30b71f10de4bae24aa4cacebf4105403fc8a` |
| 23 | `theorem` | [subset_zeroLocus_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/subset-zerolocus-vanishingideal.md) | 239 | `result-track:11d2a4abeef8a60eb38c51f3c034ad4358bbb30c26291cd03394550a1c572f76` |
| 24 | `theorem` | [zeroLocus_anti_mono](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus-anti-mono.md) | 244 | `result-track:fb0a8315de62ff7719a6c4840deedfd3ee82ea9215bfb5e2e584ddbf42e55bfa` |
| 25 | `theorem` | [zeroLocus_anti_mono_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus-anti-mono-ideal.md) | 248 | `result-track:5a10ad67034c505e182140f47fb89371afd72f8999e12e59a4d793e116b34ef5` |
| 26 | `theorem` | [vanishingIdeal_anti_mono](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/vanishingideal-anti-mono.md) | 253 | `result-track:8f8812ef81fa282d7b9ae788b31cfbd37512beade40f0bd5dc56c0c0ed9be1a9` |
| 27 | `theorem` | [zeroLocus_subset_zeroLocus_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus-subset-zerolocus-iff.md) | 258 | `result-track:6ec22c4884099f2c510ef74906c70f50b7c2d8f3c88cbb6dcf46c5749a6cf9a2` |
| 28 | `theorem` | [zeroLocus_subset_zeroLocus_singleton_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus-subset-zerolocus-singleton-iff.md) | 267 | `result-track:39f9c69a71f9a9492e630ef98c8c8a621001d182fa621dc61d8e7012c14b0bc2` |
| 29 | `theorem` | [zeroLocus_bot](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus-bot.md) | 273 | `result-track:f4faf6eef48c61d4c7d079db69fb8c1d92ac29c43dd46b5ce39087c543931d58` |
| 30 | `theorem` | [zeroLocus_singleton_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus-singleton-zero.md) | 278 | `result-track:3a3e203312dc92513d4457f38bdeeb46758d27bd30a4d91d014828974f65e673` |
| 31 | `theorem` | [zeroLocus_empty](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus-empty.md) | 283 | `result-track:13facf22dd57f6b3fef8cadd5d32468c889121a4ac4921dfbfe0c722b4a4a847` |
| 32 | `theorem` | [vanishingIdeal_univ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/vanishingideal-univ.md) | 288 | `result-track:c5a0c9c0a517d82ed3643646eff8755e490fc45d6d7c6217d0563600cc560d61` |
| 33 | `theorem` | [zeroLocus_empty_of_one_mem](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus-empty-of-one-mem.md) | 292 | `result-track:bb587e97c262d187f7811b28b7052009fda3a1690f1ea2c98f618e756c2b3aaa` |
| 34 | `theorem` | [zeroLocus_singleton_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus-singleton-one.md) | 304 | `result-track:d21b9cd291d8324c60ff014adf44d1b7b47437f82c764ee4c1a3025f9d9dc1bb` |
| 35 | `theorem` | [zeroLocus_empty_iff_eq_top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus-empty-iff-eq-top.md) | 308 | `result-track:cbef0e037dbd784fecc5c2276060dc10d28324f936b452cd42d52abe6a83160c` |
| 36 | `theorem` | [zeroLocus_univ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus-univ.md) | 320 | `result-track:b8530b8f4a5ef99b3275f0395bc253f44623120bfbf7b35e060ce33482797c25` |
| 37 | `theorem` | [vanishingIdeal_eq_top_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/vanishingideal-eq-top-iff.md) | 324 | `result-track:69fad42faab084c943cd608bb28506b65bdf63d3dcfbfcd1c8deb197d3523c4e` |
| 38 | `theorem` | [zeroLocus_sup](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus-sup.md) | 329 | `result-track:24f8ac74414f480e2fa47afa85b31706633c8a6227dac77d2e679e3a82cfb4d9` |
| 39 | `theorem` | [zeroLocus_union](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus-union.md) | 334 | `result-track:72d1271fde73ec271e17cf9771af71c1e30c3aba7394a42c82d96a5e069afcda` |
| 40 | `theorem` | [vanishingIdeal_union](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/vanishingideal-union.md) | 338 | `result-track:6e6f659907552f3091826ca8af8b624792c7d7afd86880a7441555429b08a66e` |
| 41 | `theorem` | [zeroLocus_iSup](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus-isup.md) | 343 | `result-track:e4654e11efc9979b4519cbbcb8302d34d2df56d71a95530a5fa40c0d3c0eb035` |
| 42 | `theorem` | [zeroLocus_iUnion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus-iunion.md) | 348 | `result-track:ed39ab9154af4e808dbe934cc4ef763d838907d548d4c8884a2eea0a15e47126` |
| 43 | `theorem` | [zeroLocus_bUnion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus-bunion.md) | 353 | `result-track:91f82f6c762efcee802b56bc2aa09af1a37c76e1d747307f85ef399d20f2e232` |
| 44 | `theorem` | [vanishingIdeal_iUnion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/vanishingideal-iunion.md) | 357 | `result-track:b9bafc4c8bf39f3e968d8c91d9f924dd142881bf8c4db7b840f1d00b1b4f29be` |
| 45 | `theorem` | [zeroLocus_inf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus-inf.md) | 362 | `result-track:ba841fa2414c1daacbbf2a2bcf01c80d8eff274da340f82c8b49740265dfda2e` |
| 46 | `theorem` | [union_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/union-zerolocus.md) | 367 | `result-track:a1c2fdbe5e4f9334f1a6dc055fc84afeea4f1a6836e195787af2233b09e24e5b` |
| 47 | `theorem` | [zeroLocus_mul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus-mul.md) | 373 | `result-track:737038645bf327f9e52077c0b9cfbd2244f49a721a00ed5fecc52564f7cfd768` |
| 48 | `theorem` | [zeroLocus_singleton_mul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus-singleton-mul.md) | 378 | `result-track:6b40f9abb0f2d2b093c9f5b24016085aadaf19fd38b1d600ee74169b768806e4` |
| 49 | `theorem` | [zeroLocus_pow](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus-pow.md) | 384 | `result-track:39a73e0c554da1b9adc35f348c67000d99f3a3c2b2470fb85582ab177a18244d` |
| 50 | `theorem` | [zeroLocus_singleton_pow](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus-singleton-pow.md) | 390 | `result-track:6c88f1ea43760c532d839430834430a9cb32a967a9ceab95efa9e6c194245ddd` |
| 51 | `theorem` | [sup_vanishingIdeal_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/sup-vanishingideal-le.md) | 395 | `result-track:f78532d7d409d7c616c7b3fb6525afd1cbfcf871a786dac90d775e175ffefb13` |
| 52 | `theorem` | [mem_compl_zeroLocus_iff_not_mem](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/mem-compl-zerolocus-iff-not-mem.md) | 404 | `result-track:3f15b013914193bb0d225f1b00e48cb6ffc375e8df7e160d00d2012cab1fd171` |
| 53 | `instance` | [zariskiTopology](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zariskitopology.md) | 411 | `declaration-track:8931508a38aa991fe36b51ad367e2dc69292b08d1061338cfce702f4a6e57c9f` |
| 54 | `theorem` | [isOpen_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/isopen-iff.md) | 424 | `result-track:98566d76ee485405a57d70e7f688dfa372826bd80c505d7c91fa2c5a859f1baf` |
| 55 | `theorem` | [isClosed_iff_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/isclosed-iff-zerolocus.md) | 428 | `result-track:ef245299bf6dff8dd2acf775629013f8da84cad5a73171fd53f68d7427e03201` |
| 56 | `theorem` | [isClosed_iff_zeroLocus_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/isclosed-iff-zerolocus-ideal.md) | 432 | `result-track:2d0831cafd069645cf002922c3c2c4df8d35010c7e7e343f1cca7abffa364650` |
| 57 | `theorem` | [isClosed_iff_zeroLocus_radical_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/isclosed-iff-zerolocus-radical-ideal.md) | 438 | `result-track:c8cd0e4b57f35c6f0914af8be2501a42265579e3034d5e0fd21d02cf1247bab8` |
| 58 | `theorem` | [isClosed_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/isclosed-zerolocus.md) | 445 | `result-track:e71bb92b83736c517d1d09f286de539d32ef07f1046b28fae26f47133b645fd6` |
| 59 | `theorem` | [isClosed_singleton_iff_isMaximal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/isclosed-singleton-iff-ismaximal.md) | 450 | `result-track:01629b9248a67cb887190cba5e10541c19396b0dd0b98e3f7e06816429411150` |
| 60 | `theorem` | [zeroLocus_vanishingIdeal_eq_closure](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/zerolocus-vanishingideal-eq-closure.md) | 469 | `result-track:828da2cb3722aaf95a5ba0ea8afae87241cdfab9a0dce95bffe75c0e33c750bc` |
| 61 | `theorem` | [vanishingIdeal_closure](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/vanishingideal-closure.md) | 480 | `result-track:0fc7741110d02d9ca2e7b854997720f884c175a6037f9a3c8e70a739483618fa` |
| 62 | `theorem` | [closure_singleton](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/closure-singleton.md) | 485 | `result-track:27792507e906542cbd795c31c860a753aaf78682d87e1d1560ebd54f4a99e378` |
| 63 | `theorem` | [isRadical_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/isradical-vanishingideal.md) | 489 | `result-track:1cf89f5c32d57256b105e7f673757ea5e488690e6db91f43a57875f556f16ad3` |
| 64 | `theorem` | [vanishingIdeal_anti_mono_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/vanishingideal-anti-mono-iff.md) | 495 | `result-track:f49989c69b78c5be66f024ee061d320e6580840d8dbdf32b33f2f59dbd247f67` |
| 65 | `theorem` | [vanishingIdeal_strict_anti_mono_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/vanishingideal-strict-anti-mono-iff.md) | 502 | `result-track:5b4b1839eda466688706fd861468ee4f38a2bfa191a9f399b1be513b05bd668f` |
| 66 | `def` | [closedsEmbedding](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/closedsembedding.md) | 509 | `declaration-track:f048a3f3af4a0839b551cbc5b0978e6898ec092fb5af5758c621469e86a07808` |
| 67 | `theorem` | [t1Space_iff_isField](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/t1space-iff-isfield.md) | 515 | `result-track:146c75b886faf48d3b324fc26ac9bac7d06a96ed74b8a580fb866a2f7123c484` |
| 68 | `theorem` | [isIrreducible_zeroLocus_iff_of_radical](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/isirreducible-zerolocus-iff-of-radical.md) | 534 | `result-track:b3276bc12c514a8e75f5e3ae4ea94d76082c04293b788a221008bc5b5f6532b9` |
| 69 | `theorem` | [isIrreducible_zeroLocus_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/isirreducible-zerolocus-iff.md) | 559 | `result-track:d6a5e80f0d0edbfffbe268d52c5a6a8503ac332fcc3207c9d01aa85b0eb6f41e` |
| 70 | `theorem` | [isIrreducible_iff_vanishingIdeal_isPrime](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/isirreducible-iff-vanishingideal-isprime.md) | 564 | `result-track:fe82255184b0661a3b60f160a557b6edeb2c301dab403128697e3de823fac178` |
| 71 | `instance` | [irreducibleSpace](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/irreduciblespace.md) | 570 | `declaration-track:9c523e0088622e26d656033ebcd4565e45470abd6758b92754fc9e82dae1b847` |
| 72 | `instance` | [quasiSober](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/quasisober.md) | 574 | `declaration-track:1b218d55616c7c0169da486ce7c2a0e860eaeaaa97c7d705b4cfb3af68007ca6` |
| 73 | `theorem` | [preimage_comap_zeroLocus_aux](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/preimage-comap-zerolocus-aux.md) | 583 | `result-track:9a889aa2f6eb2f3bb272b894789c2ad91b6fb3c51abfd26ebaacbfde5f53b68c` |
| 74 | `def` | [comap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/comap.md) | 593 | `declaration-track:9c8560f6889d09a1a3c6d05f27e684586340e3416149b48ceb7a6520c95d366f` |
| 75 | `theorem` | [comap_asIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/comap-asideal.md) | 604 | `result-track:21b19ecff841736634f5ed94711185bb20e097e4bdcd598657a172301891479e` |
| 76 | `theorem` | [comap_id](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/comap-id.md) | 609 | `result-track:d5412d715a5997a4bd48eb38eed7bb45703072a66f7fd79a3a706c51951850dc` |
| 77 | `theorem` | [comap_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/comap-comp.md) | 615 | `result-track:18cb9cf3447f061a87ece0c2f7bca9b4f802f871f035e6be2caf1e92cd2a1361` |
| 78 | `theorem` | [comap_comp_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/comap-comp-apply.md) | 619 | `result-track:7a9dde17ce6bb512f9d0781bd8b08323a2bc5c2de7474dc7dbde60dfb453f6d3` |
| 79 | `theorem` | [preimage_comap_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/preimage-comap-zerolocus.md) | 625 | `result-track:d8b3f8323f0802d11721f452b1cf0cfc338955be38a43a97ab372cfc2bd9d0cb` |
| 80 | `theorem` | [comap_injective_of_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/comap-injective-of-surjective.md) | 629 | `result-track:3ab55491947ee1f225c60a39710e9358eb2ceff029e7c690961024743f5f7007` |
| 81 | `theorem` | [comap_singleton_isClosed_of_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/comap-singleton-isclosed-of-surjective.md) | 636 | `result-track:b1523f12826e09c13795c83f3a9f2b18352637a4d5aa064a2c9ad1c4223c4710` |
| 82 | `theorem` | [comap_singleton_isClosed_of_isIntegral](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/comap-singleton-isclosed-of-isintegral.md) | 643 | `result-track:6a7cf3ff10d1b50ec6ccde6d6e0d21cdb29e8f683d3cfcba21b7a2571ec99670` |
| 83 | `theorem` | [localization_comap_inducing](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/localization-comap-inducing.md) | 653 | `result-track:393820f336bbdba4047b70e3729db8ca7abba991e3b050a886b7b671e1ebe0c1` |
| 84 | `theorem` | [localization_comap_injective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/localization-comap-injective.md) | 673 | `result-track:dce5ddfa5fa219f319b3c01985c651793aba3a9117c2965d404a17ddb353f2a2` |
| 85 | `theorem` | [localization_comap_embedding](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/localization-comap-embedding.md) | 683 | `result-track:2e6b0a8468cc729c8b921111c441ff770a461c09dec243c02f7909c60196bb86` |
| 86 | `theorem` | [localization_comap_range](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/localization-comap-range.md) | 688 | `result-track:e6ce91eb7ea1d998b1ff3d6b12d0346f08ff593711de4952488758844a55c9bd` |
| 87 | `theorem` | [comap_inducing_of_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/comap-inducing-of-surjective.md) | 708 | `result-track:ef3b32b82fe2df00f5584de2a9092aee25a78b94b5d93e52ce661d18201e7da8` |
| 88 | `theorem` | [image_comap_zeroLocus_eq_zeroLocus_comap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/image-comap-zerolocus-eq-zerolocus-comap.md) | 723 | `result-track:a58707070e7d7ba162182e9a7454326ffa12df3010707d37535658378b6f9627` |
| 89 | `theorem` | [range_comap_of_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/range-comap-of-surjective.md) | 742 | `result-track:a84d5c21fba94b714aa555d361d56ac9345265ce2335bf941d3be594e9b12764` |
| 90 | `theorem` | [isClosed_range_comap_of_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/isclosed-range-comap-of-surjective.md) | 749 | `result-track:06bb6df5ce5ebfd78cc48bec8dbbe476289ea3506357a8a878cc6aa85a6938ad` |
| 91 | `theorem` | [closedEmbedding_comap_of_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/closedembedding-comap-of-surjective.md) | 755 | `result-track:f483f4f4c41889d30a920617c6483a17212da31d6005aa720fd9141432585cdc` |
| 92 | `def` | [basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/basicopen.md) | 768 | `declaration-track:265adea2bd5dc2e1a2bd5cc40ae6305f819cd8c3fbc7be3dbd3bd2f222555482` |
| 93 | `theorem` | [mem_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/mem-basicopen.md) | 774 | `result-track:08b938655b51d208b06a975e9146a74a6eafa9c5ae823ab791630a79e25a41b7` |
| 94 | `theorem` | [isOpen_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/isopen-basicopen.md) | 778 | `result-track:78dec0dddf21a653088cdc8a22cac5fa7caa4bdefa6cd38c7930c2ac9253a60a` |
| 95 | `theorem` | [basicOpen_eq_zeroLocus_compl](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/basicopen-eq-zerolocus-compl.md) | 783 | `result-track:0e15fdb552f9b4e0714666423e4fb8719e673084e0d1c0b6cc37a54d5f86f332` |
| 96 | `theorem` | [basicOpen_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/basicopen-one.md) | 790 | `result-track:8d22cb57a2a7e010d26b20ce02ad5eb89de224d753b1ca0d1e7fcb64a6772376` |
| 97 | `theorem` | [basicOpen_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/basicopen-zero.md) | 795 | `result-track:6657a0711e9ac001959d43229f55c37ca0b1ab5a1a03ee169a9708fca3a761d6` |
| 98 | `theorem` | [basicOpen_le_basicOpen_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/basicopen-le-basicopen-iff.md) | 799 | `result-track:6dd0976ede7d7a08cf9e48abec990535fc1ab4749397df85e371e7c1d10c6684` |
| 99 | `theorem` | [basicOpen_mul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/basicopen-mul.md) | 805 | `result-track:6eab18dd6a91d3469a143d045cfd955ed4af84c11b44007669c33914c6cdc1da` |
| 100 | `theorem` | [basicOpen_mul_le_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/basicopen-mul-le-left.md) | 809 | `result-track:23980d31164e765f4adaf28d267bb0a7a33700e094560663353bf9b13bc200dd` |
| 101 | `theorem` | [basicOpen_mul_le_right](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/basicopen-mul-le-right.md) | 814 | `result-track:a9f7f2ec8d975b9a289f79195aa955efa7bd1225ea911b38f437509ffaf5ca78` |
| 102 | `theorem` | [basicOpen_pow](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/basicopen-pow.md) | 820 | `result-track:2cc3f30b51e4c464436f32802d9fe5039185bbaea5a2a0f15d72465cb42bb2aa` |
| 103 | `theorem` | [isTopologicalBasis_basic_opens](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/istopologicalbasis-basic-opens.md) | 824 | `result-track:68fb156400c59a8bd9d3b4cb687e215ecf7df533e0269bfc00516e6379eb03e8` |
| 104 | `theorem` | [isBasis_basic_opens](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/isbasis-basic-opens.md) | 838 | `result-track:52c91ef7a65a5a99fb04960e0d0fa34cd4b81e56973dd110cfcf5c3b8b1e876f` |
| 105 | `theorem` | [isCompact_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/iscompact-basicopen.md) | 845 | `result-track:3e38d0263225b772287b198823594e3ad0e1b6263ce25fa7335a69c3bb366ffe` |
| 106 | `theorem` | [basicOpen_eq_bot_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/basicopen-eq-bot-iff.md) | 873 | `result-track:22d38ec52fd88938f5da1631119986f0d245d3d2ddc2ba08c0376aaad42dd0e5` |
| 107 | `theorem` | [localization_away_comap_range](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/localization-away-comap-range.md) | 880 | `result-track:b4c370b3ffad60aff010a19b91ea307b901876feaba368edefa3bd8d7a4fed3a` |
| 108 | `theorem` | [localization_away_openEmbedding](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/localization-away-openembedding.md) | 893 | `result-track:3122a3d221883ca8c52fa1af99d32af5bf109f1dc64fbef161945b0d7f969d96` |
| 109 | `instance` | [compactSpace](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/compactspace.md) | 904 | `declaration-track:6b90a1fb3eb20601a9a4963eb098a9115b1b001170dcf116b37be3824ff497c2` |
| 110 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 918 | `declaration-track:a9f6afe893977efc69fc4319ead28649eb44dc80a223b27a987350b761150e36` |
| 111 | `theorem` | [asIdeal_le_asIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/asideal-le-asideal.md) | 922 | `result-track:e9fd1dc20e25249bb2ff6ad67d3a01bf767aa502430dc96b447979f1a7a1bd4e` |
| 112 | `theorem` | [asIdeal_lt_asIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/asideal-lt-asideal.md) | 927 | `result-track:49ad2302862e772e2c3e34a4b9669206f3802c612c761af7f440304eadb085a1` |
| 113 | `theorem` | [le_iff_mem_closure](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/le-iff-mem-closure.md) | 931 | `result-track:bb1176d5a19a5c8c652aa2f6b4f52de55339c4ebc55ee38595edfa3ea7676b45` |
| 114 | `theorem` | [le_iff_specializes](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/le-iff-specializes.md) | 937 | `result-track:aec6c0bb34432d724da18bd003158693c7e9ee53e84ff48d1b5317806cf8430f` |
| 115 | `def` | [nhdsOrderEmbedding](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/nhdsorderembedding.md) | 943 | `declaration-track:5a1d25f7ff2d1d4f35e3ffc828e837a71eee415e27c1c57af8d2f693b3bf315d` |
| 116 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 947 | `declaration-track:b5630f9624e6eac78f4cc6ef210b7fec02adadec60751353845ee1ef8e0015ed` |
| 117 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 950 | `declaration-track:b241d7e7357f002817c40acf0d21625aab262bef8736719f2f38e7cd474bc6a1` |
| 118 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/instance.md) | 954 | `declaration-track:0e957fc1cf98b2005c75f6302eb10a43f71701c4f8796877c4b81108e4bc7c93` |
| 119 | `def` | [localizationMapOfSpecializes](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/localizationmapofspecializes.md) | 962 | `declaration-track:a57cb8c4d5d5dece0685592747e7a38d1c4c43a71d4554c845e18d0952782c7d` |
| 120 | `def` | [closedPoint](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/closedpoint.md) | 981 | `declaration-track:2bd096e6c9605c75f7573d5a96f3e2b3207f2ef807f509b6940ee1c710323609` |
| 121 | `theorem` | [isLocalRingHom_iff_comap_closedPoint](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/islocalringhom-iff-comap-closedpoint.md) | 987 | `result-track:0279ba87c323f0afb4a11d22d7fdf993fe1c0b94120e5b6e41547b618411159f` |
| 122 | `theorem` | [comap_closedPoint](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/comap-closedpoint.md) | 996 | `result-track:b3422cc8677339036327576aa2076dfb0599d0d834bbf76e2cf14b46aa74c33f` |
| 123 | `theorem` | [specializes_closedPoint](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/specializes-closedpoint.md) | 1001 | `result-track:1da10cbf95efd8ae76d84cef4c8231fdc0b8d15e57db1b1ea4626d18ab4bf78f` |
| 124 | `theorem` | [closedPoint_mem_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/closedpoint-mem-iff.md) | 1005 | `result-track:beaaf490bfc47aca2d7a893767f9a57be6228978bd64a6b173557d1088e92724` |
| 125 | `theorem` | [PrimeSpectrum.comap_residue](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PrimeSpectrumBasicNamespaced.lean/declarations/primespectrum-comap-residue.md) | 1015 | `result-track:9cd97a95f4000e74f634c4c765c93673605b5aa8ac820a2242f0e5f1bbc71321` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d913d0ed7a6476debbe0cda89c59c6760af1e89c41575a163dbb678553000fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant4cb453c288bc18be99d928387d8d5927ae438f045e4715c4ef58d9c7532877b8.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant4cb453c288bc18be99d928387d8d5927ae438f045e4715c4ef58d9c7532877b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
