# Verification target: Sylow Ext Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9cc54b6af9d7453bedad270fd15b9cc8222d86a",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Sylow/Variant0f04b1d4d1493168c6f559184b8ddd16870c9b7233e4221ddaf6c94b48b758d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9cc54b6af9d7453bedad270fd15b9cc8222d86a`.

Source path: `GRWTSK/Algebra/GroupTheory/Sylow/Variant0f04b1d4d1493168c6f559184b8ddd16870c9b7233e4221ddaf6c94b48b758d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Sylow/Variant0f04b1d4d1493168c6f559184b8ddd16870c9b7233e4221ddaf6c94b48b758d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorization.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Fintype` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.ConjAct` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.PGroup` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.NoncommPiCoprod` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms.Finite` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Sylow](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow.md) | 53 | `declaration-track:cb7accc6416142a199ccd34b6e115a643e18e4a1980682739981029311244404` |
| 2 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/instance.md) | 65 | `declaration-track:166804e40eadb6a3186acb380a5ff160fcdcfb92b0e6d6148b6308eeea076cb1` |
| 3 | `theorem` | [ext](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/ext.md) | 75 | `result-track:ce4729bf7372fa8a2bb9dc197741ce5bccc8e89b3808dd5cda8b1fe587ecc6ff` |
| 4 | `theorem` | [ext_iff](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/ext-iff.md) | 78 | `result-track:68e26fcdb30f09c8869d14cd04842d61ba75d03ce902cecafe6b5e351639bc08` |
| 5 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/instance-source-edition-7.md) | 82 | `declaration-track:d8e35e6a7d670810ba709e05d5755c78df2cfce58dc8307d687d69029e105868` |
| 6 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/instance-source-edition-5.md) | 86 | `declaration-track:49b31185b8639339526d64c34530c5361a6ba12633c3c5d6742bb100ee8815d1` |
| 7 | `instance` | [mulActionLeft](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/mulactionleft.md) | 94 | `declaration-track:bf1f9b8199592c99cc022fab119bf6353fe77fd823d01b459dc8feab2728a4c5` |
| 8 | `def` | [comapOfKerIsPGroup](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/comapofkerispgroup.md) | 101 | `declaration-track:aef4d609b6d71ed58e445a657f36fae25681beb764db554d129b35441d643fc2` |
| 9 | `theorem` | [coe_comapOfKerIsPGroup](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/coe-comapofkerispgroup.md) | 111 | `result-track:87a8979e14df4fedfd8825ffe6192530c82b3f7b61413f5fd359449150ad758e` |
| 10 | `def` | [comapOfInjective](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/comapofinjective.md) | 117 | `declaration-track:e8d03535e3818b16eea8e3dc0eddd983f66e5208ceb233ce8d388e1593b52678` |
| 11 | `theorem` | [coe_comapOfInjective](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/coe-comapofinjective.md) | 122 | `result-track:f9fd5af6c31571ea5f1364065aecc61c9f5709d06b55af9570612a81d30f2dc4` |
| 12 | `def` | [subtype](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/subtype.md) | 128 | `declaration-track:81c75f9c142404288f7f4ebd36387bd380856586dc9b478c0e3176257658af24` |
| 13 | `theorem` | [coe_subtype](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/coe-subtype.md) | 133 | `result-track:d95997c1275f49d155a9c3c55010d92aa0a9cc652837343901da86b7eb94a816` |
| 14 | `theorem` | [subtype_injective](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/subtype-injective.md) | 137 | `result-track:5c1b883908b008575f42d7a94cb282d57e778afac96ec46d5c4cd960533f2f5a` |
| 15 | `theorem` | [IsPGroup.exists_le_sylow](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/ispgroup-exists-le-sylow.md) | 147 | `result-track:b46346eb6fde58859366671853ca634a739f05f16dfc5474ef7b8506e18fa579` |
| 16 | `instance` | [Sylow.nonempty](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-nonempty.md) | 164 | `declaration-track:c5039eda000dbfb7525381ec7904e54295b0abb483f85c2a970d089276f7ed7d` |
| 17 | `instance` | [Sylow.inhabited](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-inhabited.md) | 168 | `declaration-track:5caa8371a1ec15e889c6215470234a4251470488ee5c3f61d703df8780ac4880` |
| 18 | `theorem` | [Sylow.exists_comap_eq_of_ker_isPGroup](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-exists-comap-eq-of-ker-ispgroup.md) | 172 | `result-track:6eb885061c05ab66990c528a45aba6d8fb5e5f13faed7e56658454562c8b2ded` |
| 19 | `theorem` | [Sylow.exists_comap_eq_of_injective](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-exists-comap-eq-of-injective.md) | 178 | `result-track:970644c9bb01fcbb0053cfe11f5cf359180cb0214135615e44a6d999e0a9cf4f` |
| 20 | `theorem` | [Sylow.exists_comap_subtype_eq](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-exists-comap-subtype-eq.md) | 183 | `result-track:d45b1d02689724db30bc0b5ffb653dc30d7dd93a8922fa47fb701412d9a6430c` |
| 21 | `def` | [Sylow.fintypeOfKerIsPGroup](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-fintypeofkerispgroup.md) | 190 | `declaration-track:0b739af4ca7d3c243801ae30f0e5cf69662b1d1e7bb0bf601ed6f0fba8223231` |
| 22 | `def` | [Sylow.fintypeOfInjective](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-fintypeofinjective.md) | 199 | `declaration-track:1b1af44024a711706a5c65bd18d39f3d66174eb4ac0b47f51cb1cfccbef1c61d` |
| 23 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/instance-source-edition-4.md) | 205 | `declaration-track:3216fb351e43ea45ca496f3c11cfa150c97f2bca7c6369e792a49102b5858547` |
| 24 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/instance-source-edition-2.md) | 209 | `declaration-track:171f1a0f21c6ca030a11167ab3febea9849832fa9783323a7b8c2cc370b11ebe` |
| 25 | `instance` | [Sylow.pointwiseMulAction](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-pointwisemulaction.md) | 216 | `declaration-track:12861428fb09376917837213ba4ef5831b6a8228461d4a8f2989cf22797879ee` |
| 26 | `theorem` | [Sylow.pointwise_smul_def](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-pointwise-smul-def.md) | 228 | `result-track:43b63ab812cb5a7007167dfaee85c67d4e58c9329e4c90fb1573be81d032b169` |
| 27 | `instance` | [Sylow.mulAction](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-mulaction.md) | 233 | `declaration-track:0da4526987157aa1768de559aca36bc9eb6b3e707675c6aef28d5c66ca299dd9` |
| 28 | `theorem` | [Sylow.smul_def](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-smul-def.md) | 237 | `result-track:288fe82740184dce689a6451c44f380135a95b8071d85e0dcbbb99b30888e498` |
| 29 | `theorem` | [Sylow.coe_subgroup_smul](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-coe-subgroup-smul.md) | 241 | `result-track:988b646ac68d1991c1f981db7272050b77a410e4fb40310cee37f797f9fac353` |
| 30 | `theorem` | [Sylow.coe_smul](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-coe-smul.md) | 246 | `result-track:207f92d19a9378b793f8988030d4d2db3d611824b818ef98759a03fb0e8b324b` |
| 31 | `theorem` | [Sylow.smul_le](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-smul-le.md) | 250 | `result-track:921b11477353b98007e6bb7d532a67cc32df3fc8d2947496e53666fd85d5453a` |
| 32 | `theorem` | [Sylow.smul_subtype](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-smul-subtype.md) | 254 | `result-track:a939646f32776da85f483e5c00e7e902089e49eaaa33072a4fefe50a226e38e5` |
| 33 | `theorem` | [Sylow.smul_eq_iff_mem_normalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-smul-eq-iff-mem-normalizer.md) | 259 | `result-track:f431a05c78727aa0505efaa7275dbd3ea78f4fb153e1845cbd8ae55f1d64df2f` |
| 34 | `theorem` | [Sylow.smul_eq_of_normal](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-smul-eq-of-normal.md) | 270 | `result-track:9675a4a0b2e3c6df1c214cfc4346a646bcd998ad38f9132280d7241c3cdfb9ff` |
| 35 | `theorem` | [Subgroup.sylow_mem_fixedPoints_iff](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/subgroup-sylow-mem-fixedpoints-iff.md) | 274 | `result-track:e8d5bc11bec0fbfa177df7033163b97c061d08950b3aae030103ddee907a5e1f` |
| 36 | `theorem` | [IsPGroup.inf_normalizer_sylow](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/ispgroup-inf-normalizer-sylow.md) | 279 | `result-track:5a5a98caa4f4c8845e37e8fb388ea55dcd4bf709da0c05ae160324e8317bff3d` |
| 37 | `theorem` | [IsPGroup.sylow_mem_fixedPoints_iff](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/ispgroup-sylow-mem-fixedpoints-iff.md) | 288 | `result-track:ca2a89fca347c8764184b9eb7627870b44cc5ad0544d2b4d729c690e104158e2` |
| 38 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/instance-source-edition-3.md) | 295 | `declaration-track:2deb921b3864d6d3e0b16ae7846ff8a605551193ebc0dd7ebaa0bdfb5bd1e8d6` |
| 39 | `theorem` | [card_sylow_modEq_one](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/card-sylow-modeq-one.md) | 324 | `result-track:a7e4b3df095c53636186bd723b31b1a0e06b88020f5489f877c01c22134646eb` |
| 40 | `theorem` | [not_dvd_card_sylow](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/not-dvd-card-sylow.md) | 341 | `result-track:c6a91d535833ae3054f1ce54f62350aeb7c84ce493278059c03f22e26282b9d9` |
| 41 | `def` | [Sylow.equivSMul](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-equivsmul.md) | 352 | `declaration-track:50acd2ae2e7d883ab41a7a3c0fdcdc2b5e88ff4e899adc7a1c85d56339f2da02` |
| 42 | `def` | [Sylow.equiv](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-equiv.md) | 357 | `declaration-track:948b1a3fd63999956aad336ba5867b14839c11c0c0d7d420d1fa8b74c77cef70` |
| 43 | `theorem` | [Sylow.orbit_eq_top](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-orbit-eq-top.md) | 363 | `result-track:01bd6eac087c0fe0243d68facd5753587114654ff37bbdac78f7c712d8461d05` |
| 44 | `theorem` | [Sylow.stabilizer_eq_normalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-stabilizer-eq-normalizer.md) | 367 | `result-track:0177424373f0763797931318d2c15e44a39611abfe9413e0836ede0fcf77f96b` |
| 45 | `theorem` | [Sylow.conj_eq_normalizer_conj_of_mem_centralizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-conj-eq-normalizer-conj-of-mem-centralizer.md) | 372 | `result-track:9b0a334f2882ba10fe33062958b447895307073ab27a7cd24c24522366a4e89b` |
| 46 | `theorem` | [Sylow.conj_eq_normalizer_conj_of_mem](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-conj-eq-normalizer-conj-of-mem.md) | 390 | `result-track:f52bbfe9750b7ca6d58aa1d9a4582548d597adb292e46a0e342a3a14e8364cdb` |
| 47 | `def` | [Sylow.equivQuotientNormalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-equivquotientnormalizer.md) | 397 | `declaration-track:2e20716d39c7ce4806b8b21a4e612eed2612be55413a817769c7d26fb313c14c` |
| 48 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/instance-source-edition-6.md) | 407 | `declaration-track:709b289fbd7038a2ace3fd80538bb0a8e0735ad63e871dabdf72244a61d79c74` |
| 49 | `theorem` | [card_sylow_eq_card_quotient_normalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/card-sylow-eq-card-quotient-normalizer.md) | 411 | `result-track:7dc9a240aa4e74974d5502a74b65d74381a64c6d538ac8d173e17d89d4eaea64` |
| 50 | `theorem` | [card_sylow_eq_index_normalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/card-sylow-eq-index-normalizer.md) | 416 | `result-track:3d34de4a5512683fa01804e3f84b43ee4308f4214a17f12e0e4b9f407c95c28d` |
| 51 | `theorem` | [card_sylow_dvd_index](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/card-sylow-dvd-index.md) | 421 | `result-track:64b3e9d82f9dab183299ad408eaaed1129fdbe1bb0a5306fef7d117f0cc6cee2` |
| 52 | `theorem` | [not_dvd_index_sylow'](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/not-dvd-index-sylow.md) | 427 | `result-track:2ad15008dbfafa67ae69150e91b876c18000534752d14ca2a2997fb3063bae01` |
| 53 | `theorem` | [not_dvd_index_sylow](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/not-dvd-index-sylow-source-edition-2.md) | 446 | `result-track:3a09f6f22950466fa32bbff8f4c8048eb936fd0a553cc528844810971d60b98f` |
| 54 | `theorem` | [Sylow.normalizer_sup_eq_top](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-normalizer-sup-eq-top-source-edition-2.md) | 459 | `result-track:c17cbdbc80a4caf44b0901f60a6ad82081e2e6ce570936be9b916b14d3e93490` |
| 55 | `theorem` | [Sylow.normalizer_sup_eq_top'](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/sylow-normalizer-sup-eq-top.md) | 479 | `result-track:6cbb4863bdd1d2105afa636c9cda0fe3388a17c7b0e5f199e384d88ccbcd1efc` |
| 56 | `theorem` | [QuotientGroup.card_preimage_mk](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/quotientgroup-card-preimage-mk.md) | 497 | `result-track:f340357c12df4d9651e8f95389eeb2a2f28bcfa92a2c0a8d6265aacbdfa8181b` |
| 57 | `theorem` | [mem_fixedPoints_mul_left_cosets_iff_mem_normalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/mem-fixedpoints-mul-left-cosets-iff-mem-normalizer.md) | 506 | `result-track:5a8a5f4e92aea625f3c096daa884c96bb6d5efa1bb94bfeb02717f0eda11e135` |
| 58 | `def` | [fixedPointsMulLeftCosetsEquivQuotient](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/fixedpointsmulleftcosetsequivquotient.md) | 530 | `declaration-track:bbc2e021e0295beccb177a5abe04e19697eb46d90e5d0d39f40d5efa3c36a97b` |
| 59 | `theorem` | [card_quotient_normalizer_modEq_card_quotient](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/card-quotient-normalizer-modeq-card-quotient.md) | 545 | `result-track:102cd6faf738a8dab3d6c67a6095fb142bacf28e8cdc440c79363a6bcb262662` |
| 60 | `theorem` | [card_normalizer_modEq_card](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/card-normalizer-modeq-card.md) | 555 | `result-track:3b75161e4d7f015dafe718750865d560c27f191f17a966f9435b0efb97748e4c` |
| 61 | `theorem` | [prime_dvd_card_quotient_normalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/prime-dvd-card-quotient-normalizer.md) | 566 | `result-track:658f573715c8e85a8d1e555cd186f43ae01b75212fe7f33cb8e6177f32275fb8` |
| 62 | `theorem` | [prime_pow_dvd_card_normalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/prime-pow-dvd-card-normalizer.md) | 583 | `result-track:6ace8a612ff46aca12c15c6188b6453efd6d83432085ab67357676b0a3225175` |
| 63 | `theorem` | [exists_subgroup_card_pow_succ](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/exists-subgroup-card-pow-succ.md) | 592 | `result-track:7e7e5649910e13a10bb3d655b483e8dba02cf0b76bb64254c7e78614bd0ac2ee` |
| 64 | `theorem` | [exists_subgroup_card_pow_prime_le](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/exists-subgroup-card-pow-prime-le.md) | 633 | `result-track:14b7e5e5264e6265e1541895fbfff2c8909c40cffc7de1a425185116ef1bc8e2` |
| 65 | `theorem` | [exists_subgroup_card_pow_prime](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/exists-subgroup-card-pow-prime.md) | 653 | `result-track:4fa08d00bd5b6b69c469d737c76e3f38a3f4a829b6c3542ec350b41aefa8ca17` |
| 66 | `theorem` | [pow_dvd_card_of_pow_dvd_card](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/pow-dvd-card-of-pow-dvd-card.md) | 659 | `result-track:5eed43d81f8761efdd85d53bdea4815d6d8d547ac657d17b0ff6bd60cbaedcfd` |
| 67 | `theorem` | [dvd_card_of_dvd_card](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/dvd-card-of-dvd-card.md) | 666 | `result-track:4129b6200cb863f280a1e5173acc7fb3aab2cd6e5b5fd5b3c68da064a23f46ef` |
| 68 | `theorem` | [card_coprime_index](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/card-coprime-index.md) | 674 | `result-track:aa79348b927631d8a99b8283e4442fc3333bb63e2e5aa7c0d7a6d03d88786d29` |
| 69 | `theorem` | [ne_bot_of_dvd_card](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/ne-bot-of-dvd-card.md) | 680 | `result-track:e8464e8455824d40f941b85ed5ed845b3ebec80e7bfc0830218dcf6dc4f5a758` |
| 70 | `theorem` | [card_eq_multiplicity](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/card-eq-multiplicity.md) | 689 | `result-track:160e87a35df317f7e40790830e712d0aa7f840a91155af9d2d4ec0cad4dcc74a` |
| 71 | `def` | [ofCard](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/ofcard.md) | 699 | `declaration-track:3dcdb12782937bdb360cb3d4b0b034732a0c0d29f6579d33080d4f18d60c6a90` |
| 72 | `theorem` | [coe_ofCard](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/coe-ofcard.md) | 711 | `result-track:241c6fb8194c7157d24d6a0a16deec939f2381a2c4d437bb47dd9773e3cb3d60` |
| 73 | `theorem` | [subsingleton_of_normal](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/subsingleton-of-normal.md) | 716 | `result-track:e702e64603b3536b1fe038cadf44ce08c6a23a6b8a29a91451d4424e1ce0755f` |
| 74 | `theorem` | [characteristic_of_normal](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/characteristic-of-normal.md) | 730 | `result-track:46c2321c8c02f34f3ae7002ffa8e3107a4b85bb37b42f7cbe85553a5f98f1915` |
| 75 | `theorem` | [normal_of_normalizer_normal](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/normal-of-normalizer-normal.md) | 742 | `result-track:6d4dd9dc8f6f54a438c469ecb8f96616981f1142bbcce7194357578ce86f612b` |
| 76 | `theorem` | [normalizer_normalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/normalizer-normalizer.md) | 748 | `result-track:7569ddd72898aa453cb4fcb3358b56f0661513e2994589354dbf06a27f22b149` |
| 77 | `theorem` | [normal_of_all_max_subgroups_normal](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/normal-of-all-max-subgroups-normal.md) | 758 | `result-track:8e57ce277623955e16860d5fefd08158e9f6f7461e75570f55081f89563f64ce` |
| 78 | `theorem` | [normal_of_normalizerCondition](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/normal-of-normalizercondition.md) | 771 | `result-track:ab4dfce3df9f9939bd5849b8e32fb4449d26b8a0dca9f04ca17e805965100a41` |
| 79 | `def` | [directProductOfNormal](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/declarations/directproductofnormal.md) | 782 | `declaration-track:c5a48d5e420c5cb28351ff4bd90b5bb538f55ec86591ea612e93f3aca1f75d49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=82973292e45c768adc6ab2dc910f201d26600d69246eb6c93b7aa9a50495513b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Sylow/Variant0f04b1d4d1493168c6f559184b8ddd16870c9b7233e4221ddaf6c94b48b758d3.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Sylow/Variant0f04b1d4d1493168c6f559184b8ddd16870c9b7233e4221ddaf6c94b48b758d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
