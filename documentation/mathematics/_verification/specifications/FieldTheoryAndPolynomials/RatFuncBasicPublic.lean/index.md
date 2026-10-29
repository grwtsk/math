# Verification target: Rat Func Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fbd322f65c4f3cd91a3f97e0cf4d95605f5e20b",
  "lexical_observation_count": 133,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Varianteae3abf1c43a4123891fc0b204e16b2bfe41d0f3374bbd3a8b71f180a6321901.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fbd322f65c4f3cd91a3f97e0cf4d95605f5e20b`.

Source path: `GRWTSK/Algebra/Basic/Varianteae3abf1c43a4123891fc0b204e16b2bfe41d0f3374bbd3a8b71f180a6321901.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Varianteae3abf1c43a4123891fc0b204e16b2bfe41d0f3374bbd3a8b71f180a6321901.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instance-source-edition-4.md) | 71 | `declaration-track:23d6cbc8a15df5cad8a362fe08ab2c11f24422e50a3327c5aa88f014f84d0a5a` |
| 2 | `theorem` | [ofFractionRing_zero](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/offractionring-zero.md) | 74 | `result-track:c6ee2345612ab18051aa2276b1b054dd7b20893ebf5489c57fd58ca01393f299` |
| 3 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instance-source-edition-17.md) | 81 | `declaration-track:db838d5c92e6437cd3ea223f76c2be8d2aa88f7a67eeef3d44a2e4105fd296f0` |
| 4 | `theorem` | [ofFractionRing_add](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/offractionring-add.md) | 84 | `result-track:0b2b3d0afac694fb6de3c4fcbde8a5f69565d3d0721ff359cc90b14c08cc5123` |
| 5 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instance-source-edition-18.md) | 92 | `declaration-track:e915be186297bc831bc8ff7ce4f462e186969fad55d87cfa7b157f083cf4f32b` |
| 6 | `theorem` | [ofFractionRing_sub](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/offractionring-sub.md) | 95 | `result-track:2c489ef9436cc5c682dd57ff028d19ce42e1a18d9acae7afb8c59fd726c16678` |
| 7 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instance-source-edition-10.md) | 103 | `declaration-track:63a59c28f3f002f73867d310c8d698bdf5461c59bdf2c8ec5faae1f8607e3e86` |
| 8 | `theorem` | [ofFractionRing_neg](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/offractionring-neg.md) | 106 | `result-track:ea7a09215e56987f97e229ad0dac43a1204a94c9082c72103c5d07788b1a2111` |
| 9 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instance-source-edition-9.md) | 114 | `declaration-track:5fa30dfb12361d79c6ab0afff022f9edc30663f42c3a2aa7f3aab6888d8455f2` |
| 10 | `theorem` | [ofFractionRing_one](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/offractionring-one.md) | 117 | `result-track:4eade838735d7edd41d5f62b8536e371ac02448c643bf797096d57fd62446db1` |
| 11 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instance-source-edition-13.md) | 124 | `declaration-track:a1d4210b807370328826088eb7723e0ac65e47a0a2e723eb4b2d5ce3659f6ca5` |
| 12 | `theorem` | [ofFractionRing_mul](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/offractionring-mul.md) | 127 | `result-track:ae2751b88ac0c1b50053031ac522018d8cb3130bd4550de3bd03b767ae75b09b` |
| 13 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instance-source-edition-6.md) | 139 | `declaration-track:37f405c474e7615530754791fc4f04f41b5bf7c50c6a7f7805d662dd662f61f8` |
| 14 | `theorem` | [ofFractionRing_div](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/offractionring-div.md) | 142 | `result-track:5a38c0669adaaf82555c4c0f02ca8d2bded96e4373e12298c97d68afcc507c8f` |
| 15 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instance-source-edition-11.md) | 150 | `declaration-track:8f0f865176a0ac23c170002f460bf203387d9b5bda074e00328f37ef66d481c5` |
| 16 | `theorem` | [ofFractionRing_inv](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/offractionring-inv.md) | 153 | `result-track:cfdedc839377abc6ad1733707371e26e8642fd903dc34c2671dd82fc1045755d` |
| 17 | `theorem` | [mul_inv_cancel](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/mul-inv-cancel.md) | 158 | `result-track:fdef853e0896fd01cefc7ef0e1eb42d36305bc7bc6b927ddc37fd1ab5c761db1` |
| 18 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instance-source-edition-16.md) | 175 | `declaration-track:db026adbaacae70dc83cbb015448b993e53af22c65b0bb986700fce7886bec43` |
| 19 | `theorem` | [ofFractionRing_smul](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/offractionring-smul.md) | 178 | `result-track:541815e99c4105e3d16a8529a3510266ea03c926b2399c75452522085221e97f` |
| 20 | `theorem` | [toFractionRing_smul](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/tofractionring-smul.md) | 182 | `result-track:74f6394c84c3ffe42fc9af1083067fb7a15804f073625b10f947ca1c370735c6` |
| 21 | `theorem` | [smul_eq_C_smul](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/smul-eq-c-smul.md) | 187 | `result-track:66ee37ada2eb3c19af1d8158440b81dc9a7122afe6c305c897b5772d430a4d3c` |
| 22 | `theorem` | [mk_smul](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/mk-smul.md) | 199 | `result-track:b0a1522e64ef6083e4af8ff14b4be271f02c34d8794bb80dc2a8abc544fab825` |
| 23 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instance-source-edition-19.md) | 206 | `declaration-track:eff2b179baad9f3f51e3e583a6cd9640a4a1b21af03d386a1cc301eb1f3fb015` |
| 24 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instance-source-edition-20.md) | 215 | `declaration-track:f02195a7dd854251aa5a429d7e07d1db3b2ba66c45f57642555cb2dbb089b997` |
| 25 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instance-source-edition-21.md) | 218 | `declaration-track:ff5d3391379192c1739a3455695e04a265ff943b046c78e17f1c9ded43c3618d` |
| 26 | `instance` | [instNontrivial](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instnontrivial.md) | 221 | `declaration-track:c048d4adecbb4ed55e6f8b54cdf90cc96c412602644240b72f0f7324c537339b` |
| 27 | `def` | [toFractionRingRingEquiv](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/tofractionringringequiv.md) | 229 | `declaration-track:0d14e07fa460d65562d60eb0bb1321073dc10045fcddcf35b5909e60f8d110c2` |
| 28 | `macro` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/macro-source-edition-2.md) | 240 | `declaration-track:345fd02c472547ebf79db024d260de1fbad3fb34ffc7ae37f2d54613520d7289` |
| 29 | `macro` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/macro.md) | 250 | `declaration-track:17ae1b39d8d13c2e778a84274931679e068e0ac0d5013d900524b9adf5d6ab42` |
| 30 | `def` | [instCommMonoid](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instcommmonoid.md) | 273 | `declaration-track:e4cd3c12ac6a23263f623f5c5b83920aadb9d75a2e9c448981755d86f0272ab4` |
| 31 | `def` | [instAddCommGroup](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instaddcommgroup.md) | 285 | `declaration-track:a798f1fc0334393bf3ec8999df0866761bbaff8d567ecd52fb3db2e1a515c40c` |
| 32 | `instance` | [instCommRing](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instcommring.md) | 298 | `declaration-track:c6f8b6c94ff5da586cf1f33893dae23e88a415c63ce1396ea0a63c179d3a9d45` |
| 33 | `def` | [map](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/map.md) | 320 | `declaration-track:8a03b3358cf22914dc298a741d8837643bfb8e1f0f8d6e2b8ab7a84d3f922de5` |
| 34 | `theorem` | [map_apply_ofFractionRing_mk](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/map-apply-offractionring-mk.md) | 347 | `result-track:b0128d5befb2d1b78f723eec14cb55c58869e757a1d258053aca90ced5bbd935` |
| 35 | `theorem` | [map_injective](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/map-injective.md) | 354 | `result-track:15cf7774bbda02f036b39c7c404d9adc801e2d608c473b921ca9a9e6639538da` |
| 36 | `def` | [mapRingHom](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/mapringhom.md) | 368 | `declaration-track:774afc079e30c0bfe4290bd30b763c523daa5d164d8fbdcd6ae6ca136b79f8f9` |
| 37 | `theorem` | [coe_mapRingHom_eq_coe_map](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/coe-mapringhom-eq-coe-map.md) | 385 | `result-track:1a9f7f60265003898f0e5a1dc05bbcf20bf7d7c2c1f7c77366cb14cc1f3c05df` |
| 38 | `def` | [liftMonoidWithZeroHom](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/liftmonoidwithzerohom.md) | 393 | `declaration-track:4d9e78bdff942622a520d2105eba64c4cc2d4a7164676453e0a3fe2288f677b5` |
| 39 | `theorem` | [liftMonoidWithZeroHom_apply_ofFractionRing_mk](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/liftmonoidwithzerohom-apply-offractionring-mk.md) | 414 | `result-track:44cdbc3ea72ef2e5bfba4a8ac4edbcaab14e0efd715938d5f0f9ae3863acb7ad` |
| 40 | `theorem` | [liftMonoidWithZeroHom_injective](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/liftmonoidwithzerohom-injective.md) | 419 | `result-track:2f2d4d37cd8987f65a1db0a3462dd0525bf39a8178b7987eda06d15c98c68023` |
| 41 | `def` | [liftRingHom](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/liftringhom.md) | 436 | `declaration-track:e3ae5d98c736da9b1802321bdff664f9c829f1dfb13aab3218bf021aa62a07d9` |
| 42 | `theorem` | [liftRingHom_apply_ofFractionRing_mk](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/liftringhom-apply-offractionring-mk.md) | 458 | `result-track:e7d7428ff83439471b8674caedfb1ce6edf51f7880c6541469f8d5886531f09e` |
| 43 | `lemma` | [liftRingHom_ofFractionRing_algebraMap](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/liftringhom-offractionring-algebramap.md) | 463 | `result-track:d28a12f909cabb3c5bf75a1b8bb66f480e3468fa1569d5636a242c4ff698f449` |
| 44 | `theorem` | [liftRingHom_injective](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/liftringhom-injective.md) | 469 | `result-track:7a3225d184e4f018c4e3fb56d86f700d17cf35c4033d507c8dd298bb49fab1b7` |
| 45 | `instance` | [instField](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instfield.md) | 479 | `declaration-track:11ac9be52555ec53f5930d6dcace3ed1c22fcc328a1083abafebeb89187d3118` |
| 46 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instance-source-edition-5.md) | 497 | `declaration-track:2d92a7e6309b5681d8a4bb24e6a9a4333825a72fd7b02433a191c2898e640cd6` |
| 47 | `def` | [coePolynomial](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/coepolynomial.md) | 516 | `declaration-track:67ae59f429b566dd21c43eb8ce30d05fcf206ea17ed6307311015189edeb58c1` |
| 48 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instance-source-edition-15.md) | 518 | `declaration-track:c9c8adadc22a001f7720aeb65a4db476b700bfb9a56dcb2a9fdb4db60b09fe9c` |
| 49 | `theorem` | [mk_one](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/mk-one.md) | 520 | `result-track:c5d704a749baeca5fe26c9f9383844fc879720e1b487c934991f8aa14db11e09` |
| 50 | `theorem` | [ofFractionRing_algebraMap](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/offractionring-algebramap.md) | 523 | `result-track:f7f98bd6a085302fd960ed74291a4d167f44ef91432e761651c3aaff6af3c02b` |
| 51 | `def` | [toFractionRingAlgEquiv](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/tofractionringalgequiv.md) | 532 | `declaration-track:7348d9e83477f1135ed035c3b332b9261fb0053284835832d55f4496c5b45cd1` |
| 52 | `theorem` | [mk_eq_div](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/mk-eq-div.md) | 540 | `result-track:d2410aa62b8121be23d6d930d2ed90166399418c42d7885738de99e176c5358a` |
| 53 | `theorem` | [div_smul](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/div-smul.md) | 544 | `result-track:00d5f1fecf7c9e3759f737225fe08bdbe91f84981eace58beed4cbfc24e17428` |
| 54 | `theorem` | [algebraMap_apply](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/algebramap-apply.md) | 550 | `result-track:38e07a727ca26c736059e6164f78dd98d7bb23632bbee5d2ce39b4c71bb5b243` |
| 55 | `theorem` | [map_apply_div_ne_zero](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/map-apply-div-ne-zero.md) | 555 | `result-track:85ef5ab5978ca7a61e34d418b5e970907bcef8066416e18c77b9d5ceeb400357` |
| 56 | `theorem` | [map_apply_div](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/map-apply-div.md) | 565 | `result-track:880d3b2329a5bfecb04f861c3b6caaa24c45cfd4019679435ee163dd3ae28a35` |
| 57 | `theorem` | [liftMonoidWithZeroHom_apply_div](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/liftmonoidwithzerohom-apply-div-source-edition-2.md) | 577 | `result-track:c99b92178cd37b98927b1519119083676af4e778e865eaa257f4a4395eb7c220` |
| 58 | `theorem` | [liftMonoidWithZeroHom_apply_div'](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/liftmonoidwithzerohom-apply-div.md) | 586 | `result-track:9d745da2545b0153a52ca8d8f80a569fe9072d33119dad7640e9163798d29042` |
| 59 | `theorem` | [liftRingHom_apply_div](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/liftringhom-apply-div-source-edition-2.md) | 592 | `result-track:9f28348c3502ea53ae3a15031bff9ec41aa01518fec5f24a5cd4fa94e2de8832` |
| 60 | `theorem` | [liftRingHom_apply_div'](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/liftringhom-apply-div.md) | 596 | `result-track:3cfe54c6389ce3804e48d8708786f5811185b396aa5534210ec38e61658d38c1` |
| 61 | `lemma` | [liftRingHom_algebraMap](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/liftringhom-algebramap.md) | 602 | `result-track:c25d360c7135d56abc7911e6b909bccabab335bc88afd82fa88b4e925ebeb493` |
| 62 | `lemma` | [liftRingHom_comp_algebraMap](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/liftringhom-comp-algebramap.md) | 607 | `result-track:6fd989f952f6e52f6907ca72a81f6b658b9b5aba64168a26bb2497a7d3049bf8` |
| 63 | `theorem` | [ofFractionRing_comp_algebraMap](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/offractionring-comp-algebramap.md) | 613 | `result-track:a9eec54f06998d484057a660261a787fc22d3afd86f9a88406c86847656f5e04` |
| 64 | `theorem` | [algebraMap_injective](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/algebramap-injective.md) | 617 | `result-track:b9cca7971ed440835e8d428f817afb46e4239464d2426e52368e957b37d6c619` |
| 65 | `def` | [mapAlgHom](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/mapalghom.md) | 632 | `declaration-track:f1b815c116c903533492f7b1967199603afc25af4bcf4e7120c313d58f533f7a` |
| 66 | `theorem` | [coe_mapAlgHom_eq_coe_map](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/coe-mapalghom-eq-coe-map.md) | 638 | `result-track:e9ef340304d8060de768ffabe61fe93aa473be6bb5193212946d4aede620cca1` |
| 67 | `def` | [liftAlgHom](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/liftalghom.md) | 644 | `declaration-track:4cad4a891a867823433a0d3c4bacb1c27eb9b08c5df01076a4a3045ed8540d94` |
| 68 | `theorem` | [liftAlgHom_apply_ofFractionRing_mk](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/liftalghom-apply-offractionring-mk.md) | 650 | `result-track:0da651f8e85cb5d6e7ea6b908137b683c2ce232cf1182514f4a2d4ef4c7cef3c` |
| 69 | `theorem` | [liftAlgHom_injective](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/liftalghom-injective.md) | 654 | `result-track:4bcc7fe8929f975c0f9b61da6f6c33d5593cfb25c6de54b52214476d180a8fe4` |
| 70 | `theorem` | [liftAlgHom_apply_div'](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/liftalghom-apply-div-source-edition-2.md) | 660 | `result-track:e2e8aa2c3674cb668bdff20beb15ba92bd62dcbafc3d64bf307bb54f8446d31b` |
| 71 | `theorem` | [liftAlgHom_apply_div](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/liftalghom-apply-div.md) | 664 | `result-track:5c0c7b9f2e5b190e8d7076908b41899b48e28634e63f46e40cce832b45237e07` |
| 72 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instance-source-edition-14.md) | 673 | `declaration-track:b2dcaf86848b0797b36128e14f7e17039b28d6f3ea8e209030257becb47abd65` |
| 73 | `theorem` | [algebraMap_ne_zero](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/algebramap-ne-zero.md) | 688 | `result-track:541f1f312964c45bad1ef102be802efaec5a77213def6d7bfa98f108ae7c72ac` |
| 74 | `theorem` | [liftOn_div](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/lifton-div-source-edition-2.md) | 692 | `result-track:561b1a7051b3a014feb8c00ba2ff79c5c57726bd81410b91e53bc92dabb901c0` |
| 75 | `theorem` | [liftOn'_div](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/lifton-div.md) | 700 | `result-track:2a6a6d70f9346ace06586936114e7c338b64692166807983c1f836e285a77f78` |
| 76 | `theorem` | [induction_on](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/induction-on.md) | 711 | `result-track:0ca56cfc355c51a0a2e21bf022fc4dc5e5e76dec4e53837d5b21a5d251248e19` |
| 77 | `theorem` | [ofFractionRing_mk'](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/offractionring-mk.md) | 715 | `result-track:5b0a9e6dbb1e17f231cb5934b181b3cbc4323bbd3d1c01aebdd6c1a078b4f7ec` |
| 78 | `theorem` | [mk_eq_mk'](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/mk-eq-mk.md) | 720 | `result-track:be1e749eff2ec5d75984e37210de7fd6ad3cd2b78348b60539732faf6cfbb730` |
| 79 | `theorem` | [ofFractionRing_eq](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/offractionring-eq.md) | 727 | `result-track:21c8c6dba6b41412bc54fc9e541e2c1f4445dc94987bda12ccfecb05ce46db16` |
| 80 | `theorem` | [toFractionRing_eq](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/tofractionring-eq.md) | 736 | `result-track:23c24112690ea54ea51d2c412665ead6cff759d2cc535875689cc6d8d993f93a` |
| 81 | `theorem` | [toFractionRingRingEquiv_symm_eq](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/tofractionringringequiv-symm-eq.md) | 744 | `result-track:7855bcb993cd1f93249109064e94a67f7811d26c5e3773b8a60c4ee0a9f580d4` |
| 82 | `instance` | [liftAlgebra](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/liftalgebra.md) | 761 | `declaration-track:c7a924840192624a98b0d881a17cc320f1012858dbe529b6394e159e56342366` |
| 83 | `instance` | [isScalarTower_liftAlgebra](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/isscalartower-liftalgebra.md) | 765 | `declaration-track:6f14d145f3e7abf3a1ad750c2ba9b4d184d0755fd2a7c4382c411067db2ad836` |
| 84 | `instance` | [faithfulSMul](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/faithfulsmul.md) | 773 | `declaration-track:bf97ab030b3ccc8a77db35a890e262aef69bab4c5d6ec3e8d212b7cee539b7d4` |
| 85 | `theorem` | [rank_ratFunc_ratFunc](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/rank-ratfunc-ratfunc.md) | 785 | `result-track:4e551adfbd762d24c2e7b10e1b9dab54ebd8e4bda8aa81cb98d2bef674f7ebd4` |
| 86 | `theorem` | [finrank_ratFunc_ratFunc](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/finrank-ratfunc-ratfunc.md) | 789 | `result-track:5bacaa153d88a98e22f81859bb8afdd356eca0a97d2d80e6594dae80b21f1fa0` |
| 87 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instance-source-edition-2.md) | 806 | `declaration-track:0bd69c63eaf950cbd56a3dba45bd3f602427f12997c5161a2b53de396fb5e975` |
| 88 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instance-source-edition-8.md) | 812 | `declaration-track:4e2f5961b46293ba464910e5bbe3b6a58e7adf03d54f6732ba96c542e3766a43` |
| 89 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instance-source-edition-12.md) | 819 | `declaration-track:90e82e69c824f94a9208ecf9c9d067b9021f0a9cf1b217df6c5b9cbe7148f779` |
| 90 | `def` | [numDenom](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/numdenom.md) | 848 | `declaration-track:1f92a519f08b463e62216833eea856e0efc753d23be557cbdf5625d6af6ee415` |
| 91 | `theorem` | [numDenom_div](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/numdenom-div.md) | 882 | `result-track:990dfec76e8013c899a1bfdc7069a882a9976c175fca4e8869a1d5d07e4eabb2` |
| 92 | `def` | [num](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/num.md) | 893 | `declaration-track:98981b6eca4d5c2162360cce1165bb5884930ba9bb586c14ccc71217fd7f19ee` |
| 93 | `theorem` | [num_div'](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/num-div.md) | 897 | `result-track:48605db1d85db0a2ea88feb32773c5cb21a892aebb58137aa404bdbe7646e1b2` |
| 94 | `theorem` | [num_zero](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/num-zero.md) | 903 | `result-track:c36c20ec79444f2b3390004b9cb98c6e15c6a901e7bba22f9b88d0627776ba68` |
| 95 | `theorem` | [num_div](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/num-div-source-edition-2.md) | 907 | `result-track:c8c1159bf6541ecfe9a09d7b7b927005a6c1fa8f0663fee6acf350088ebf52d2` |
| 96 | `theorem` | [num_one](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/num-one.md) | 915 | `result-track:9ad0ad67efa701100f0295764ea70ebe63dc9d9ecfcb1ed70d70c89329e41a72` |
| 97 | `theorem` | [num_algebraMap](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/num-algebramap.md) | 918 | `result-track:7998b6eaaac8eccd3c518419bcf6ffcca8813e893b0927eb020196a9fc972a25` |
| 98 | `theorem` | [num_div_dvd](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/num-div-dvd.md) | 920 | `result-track:dd27742de8f1fa2b14977203bbe13a2839b6ff3ff56a65e0ec472d199036b3c8` |
| 99 | `theorem` | [num_div_dvd'](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/num-div-dvd-source-edition-2.md) | 930 | `result-track:f05cc45154c3c03ecf9c99701a47b4d3156a321c11fbe9fdc235cdfa9cd0d3c6` |
| 100 | `def` | [denom](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/denom.md) | 935 | `declaration-track:fb5c3c5c6bfcbe7c17422086a9568c7071ec69bf1834023b7ac0339218e919f2` |
| 101 | `theorem` | [denom_div](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/denom-div.md) | 940 | `result-track:c9673ea3f7c4a6fc35625a98fb073f029e2038d8c58618cca085e4d6d1c787e4` |
| 102 | `theorem` | [monic_denom](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/monic-denom.md) | 945 | `result-track:7e706364790f48723480b6df0d88b27daec7ef1a21057072a8be8205c9817ba0` |
| 103 | `theorem` | [denom_ne_zero](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/denom-ne-zero.md) | 952 | `result-track:698e8b9d0ae871c25132b5476449c2cb08bb24d92371687f9cec8fc0a7c93bc5` |
| 104 | `theorem` | [denom_zero](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/denom-zero.md) | 956 | `result-track:e35a1e5e21416be57e6efdce44f3e5af89d28bc33a2720aee2a1ff796e87f2e4` |
| 105 | `theorem` | [denom_one](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/denom-one.md) | 960 | `result-track:5e205d1e7c6b8c3f45d2c520f38c46b875d8a014a1b6783967653c0806ca0b08` |
| 106 | `theorem` | [denom_algebraMap](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/denom-algebramap.md) | 964 | `result-track:f698bfbeea355d02e1d93a645c29e58e90668f4e54e9eb58ec08df3c2027c454` |
| 107 | `theorem` | [denom_div_dvd](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/denom-div-dvd.md) | 968 | `result-track:591e2f60a9ed163e14586ed287fdefdf7b303a1004ed571243c68375950e30b5` |
| 108 | `theorem` | [num_div_denom](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/num-div-denom.md) | 977 | `result-track:0f8f28b8922eeede97c19f17a14e59d341ce7675f75200c805593744aa5aa397` |
| 109 | `theorem` | [isCoprime_num_denom](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/iscoprime-num-denom.md) | 991 | `result-track:44f4fd6c9bf2982ef60ceeafa95161181a811ef31a1b4d69f7451741649d1166` |
| 110 | `theorem` | [num_eq_zero_iff](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/num-eq-zero-iff.md) | 1000 | `result-track:e031eef45a3b3029a55abf018450a0a57369e28dbfcaa168fd9decda787ed2dc` |
| 111 | `theorem` | [num_ne_zero](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/num-ne-zero.md) | 1003 | `result-track:e7698f2821720ce6b097644c1c7ceb627d0bb72f816c09b805850f9ef636951e` |
| 112 | `theorem` | [num_mul_eq_mul_denom_iff](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/num-mul-eq-mul-denom-iff.md) | 1006 | `result-track:4a4488b933ce8c3958dee2c39093a9fcee42cb5a462e0a0e463266cf8053ebf4` |
| 113 | `theorem` | [num_denom_add](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/num-denom-add.md) | 1014 | `result-track:3b5751e0b3fd837813e3a5d97a9763bc50e7d363d20ff347efca5d067d3c41fa` |
| 114 | `theorem` | [num_denom_neg](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/num-denom-neg.md) | 1022 | `result-track:cf139ec9cbeeefd07639b5bdf3e9eaddb36d08c98d51a5120a9572a813a593e9` |
| 115 | `theorem` | [num_denom_mul](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/num-denom-mul.md) | 1025 | `result-track:5f2173b99620eb057226529651b755a9d01f130537ea87556c518f776a788dd1` |
| 116 | `theorem` | [num_dvd](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/num-dvd.md) | 1031 | `result-track:afa8f29060e70c7dec730d3f24ae840311bfe570bc9a7b21c29ca5bf8e36cd99` |
| 117 | `theorem` | [denom_dvd](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/denom-dvd.md) | 1043 | `result-track:123965875fb773fce817bd2f7360c1fea64f72894331ff346f53cd7a697a58e7` |
| 118 | `theorem` | [num_mul_dvd](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/num-mul-dvd.md) | 1054 | `result-track:98c475c1fbe37d98353d99693bf82c31f35349fe4a9d2e44df6acd0aeb795132` |
| 119 | `theorem` | [denom_mul_dvd](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/denom-mul-dvd.md) | 1063 | `result-track:afff4afe806db28744809cdf2e9c8608e6b863e027e205acfebef8c6caf2f30b` |
| 120 | `theorem` | [denom_add_dvd](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/denom-add-dvd.md) | 1068 | `result-track:2ec7864fe0223833204d6f7263ce690c1d44143c47992ed8b547c3ab75ef6ba2` |
| 121 | `theorem` | [num_inv_dvd](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/num-inv-dvd.md) | 1075 | `result-track:fc097bc513f576beafe71cbdd16d06e3298f1a23c5d3b753ec7cbfbb4b8f8e1d` |
| 122 | `theorem` | [denom_inv_dvd](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/denom-inv-dvd.md) | 1081 | `result-track:68d30872454c465a9946c2b268a3b201a1c0a45a792bd03d926a73bb685aa2bd` |
| 123 | `theorem` | [associated_num_inv](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/associated-num-inv.md) | 1087 | `result-track:abe5bc4f0dc0089a003f083648b35183e6fc278f0679914dc76076f7d20924b9` |
| 124 | `theorem` | [associated_denom_inv](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/associated-denom-inv.md) | 1092 | `result-track:ebb464e9d8e949b71717654f5c583dba5025bc58ce948e130d7d9d7fd202a269` |
| 125 | `theorem` | [map_denom_ne_zero](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/map-denom-ne-zero.md) | 1097 | `result-track:35eb97f0ad2c501be66ffee755e4caa120926182da1600813aaab0bbd8833260` |
| 126 | `theorem` | [map_apply](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/map-apply.md) | 1101 | `result-track:15a24bf9e1969229bc9c1a8038f84809ef7ec5e9340906727f898c5a1dca38ef` |
| 127 | `theorem` | [liftMonoidWithZeroHom_apply](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/liftmonoidwithzerohom-apply.md) | 1108 | `result-track:56aeb5b386a88143abddf7184d5a5a27d2033cd315032ad1a520a49fa80e9fde` |
| 128 | `theorem` | [liftRingHom_apply](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/liftringhom-apply.md) | 1113 | `result-track:d14103e7f2f7d5549d694f5304a59ffa36ad2df1715c7aa7ed51d676ed83be0b` |
| 129 | `theorem` | [liftAlgHom_apply](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/liftalghom-apply.md) | 1117 | `result-track:c027b1048fda6df7bf96981261866be9ab4d9f798d86b02bf9889dfa16c49bb9` |
| 130 | `theorem` | [num_mul_denom_add_denom_mul_num_ne_zero](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/num-mul-denom-add-denom-mul-num-ne-zero.md) | 1122 | `result-track:77f59ab462e8a6c78c8c8ed65c8cdde3ab20866b5a9beaf0257d00a23fae61ab` |
| 131 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instance-source-edition-3.md) | 1133 | `declaration-track:130e3c661c3a0ed41b9034dc531c96250f801382ce0c16a59efbb462292aaf35` |
| 132 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instance.md) | 1136 | `declaration-track:019893429ce17b323c3b1234a55148bf70cf56d187a511b4c31bb85542c7b878` |
| 133 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicPublic.lean/declarations/instance-source-edition-7.md) | 1139 | `declaration-track:4d70a531b0c6470242b243851ad95d3f5f2656d0560f9b24b9bd7424a447777e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=87112834c862602053c505f529eded9d8ab2968d428ba9642e00192327b7cd67 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Varianteae3abf1c43a4123891fc0b204e16b2bfe41d0f3374bbd3a8b71f180a6321901.lean","GRWTSK/_verification/specifications/Algebra/Basic/Varianteae3abf1c43a4123891fc0b204e16b2bfe41d0f3374bbd3a8b71f180a6321901.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
