# Verification target: Big Operators Multiset Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d52f6f995c74267d819a9bf8ca68c6880815db64",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant142f9bdfed8c3fb2f3cc37d63038d6dd69215122d7072e5ede7c204033d68b9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d52f6f995c74267d819a9bf8ca68c6880815db64`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant142f9bdfed8c3fb2f3cc37d63038d6dd69215122d7072e5ede7c204033d68b9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant142f9bdfed8c3fb2f3cc37d63038d6dd69215122d7072e5ede7c204033d68b9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.BigOperators.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod.md) | 52 | `declaration-track:ec2a9e3a8adba61c2e0ea57a6c2da8c7d29cff6f154787ed3592b441f0706a99` |
| 2 | `theorem` | [prod_eq_foldr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-eq-foldr.md) | 58 | `result-track:c2e4ee7f1cf07eed53b0b32743c358863f563075ca09b719048b261e10385191` |
| 3 | `theorem` | [prod_eq_foldl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-eq-foldl.md) | 65 | `result-track:23b730b9a248f02c0be9f9d38c52edb4206a7fda60b2992f2bba7fb699d626b7` |
| 4 | `theorem` | [coe_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/coe-prod.md) | 72 | `result-track:db351a628a4e80f544f915e12cbb1d5ae4b217dbb26cb37e8627c1d3f450af24` |
| 5 | `theorem` | [prod_toList](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-tolist.md) | 78 | `result-track:0c63e5dc81744f42a0a29ab16d1259ad5e8a12e75e45d6b1f3b2881d9ee84f7d` |
| 6 | `theorem` | [prod_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-zero.md) | 85 | `result-track:7a77a752d3ce757ae5115e4b1e25fbfa4562953d357e5838d6e2edfb4f0a6549` |
| 7 | `theorem` | [prod_cons](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-cons.md) | 91 | `result-track:ec173c6214baa6d6558a50eb89577d392f75a0124aaeae442a0791c594dab463` |
| 8 | `theorem` | [prod_erase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-erase.md) | 97 | `result-track:ca016efd628fa4d5f1371844d824271e72575879df5af78a92684a089abebd4f` |
| 9 | `theorem` | [prod_map_erase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-map-erase.md) | 103 | `result-track:8f481885f3b641b2e8d4efe5658edd6ca8d8735076301a1b503da013b33a8e4f` |
| 10 | `theorem` | [prod_singleton](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-singleton.md) | 111 | `result-track:e3db3342f760632ebc97cf0bbe278601196c1f1845dde9268c9056d91c517c4c` |
| 11 | `theorem` | [prod_pair](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-pair.md) | 117 | `result-track:b1dd6a7796b00124566bedcc65e8be36e72177c1c027f01cb01615eae93a4fd6` |
| 12 | `theorem` | [prod_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-add.md) | 123 | `result-track:4da567f77e83d00fc35d03421091f382022f6a2ee41aa1f9b0f1b7d396e4524c` |
| 13 | `theorem` | [prod_nsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-nsmul.md) | 128 | `result-track:8447eeb2d118d2d69890501cab221dd972b7d6fca2b9ac31a026187d7dbea5c5` |
| 14 | `theorem` | [prod_replicate](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-replicate.md) | 136 | `result-track:549874fef20613f0e028bede31a6933e11d84fd3f8f97da1fb673ff66a03ca3b` |
| 15 | `theorem` | [prod_map_eq_pow_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-map-eq-pow-single.md) | 142 | `result-track:d033258f14931489cec4c5e5b1de188dceda3ab69f37761f7b2aa0acb1487f7d` |
| 16 | `theorem` | [prod_eq_pow_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-eq-pow-single.md) | 150 | `result-track:909797fd859eb8000da69a09749fe6057edf8d3215b320ec4603316a46a399e5` |
| 17 | `theorem` | [pow_count](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/pow-count.md) | 158 | `result-track:166d98626f79ac75c41f07005460651de8cf7341d9a0a7a2771143adb36ee243` |
| 18 | `theorem` | [prod_hom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-hom-source-edition-2.md) | 164 | `result-track:aa976ac964a11a16a83ffc9da0b3dd180b803142a087eb89aa3687ca38055c27` |
| 19 | `theorem` | [prod_hom'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-hom.md) | 171 | `result-track:2d190ef5aa49f27c17dd81817a6953db5e1a8dafd38affbe8906f5a5892c399a` |
| 20 | `theorem` | [prod_hom₂](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-hom-source-edition-3.md) | 179 | `result-track:b0fab757c6078098eb10bf86aaa94364b6a527884d1e8922f93e3a8f3d421a11` |
| 21 | `theorem` | [prod_hom_rel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-hom-rel.md) | 188 | `result-track:ce9259f296e16b47068cc278da68ad6d3002f36794383d7ae3ad020db1a9ba00` |
| 22 | `theorem` | [prod_map_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-map-one.md) | 197 | `result-track:84bb58499b859faddb18cb3597deb58fac60209d9cc612cc38ca57dd142e6cd4` |
| 23 | `theorem` | [prod_map_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-map-mul.md) | 203 | `result-track:f6ca79981251dcc334ba0f99197f97879b1d5d1fa29e4c82e96714e116ab8017` |
| 24 | `theorem` | [prod_map_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-map-neg.md) | 209 | `result-track:8f96abcbc74cf514c5415cb4ea730430a341a7110775c6dca15c7aca72166bf3` |
| 25 | `theorem` | [prod_map_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-map-pow.md) | 215 | `result-track:3376a23cbefa1ba22b3f3035b062cb5422bff628fcd5b454094a3d63fcd14c67` |
| 26 | `theorem` | [prod_map_prod_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-map-prod-map.md) | 221 | `result-track:88f3615ccf53ca549e1b5191d5503487eb8e8c52329b3fdc2381eae35aef2dd2` |
| 27 | `theorem` | [prod_induction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-induction.md) | 229 | `result-track:e50776520ae085f451ff4e9bb217f5fd2a1c2067634a6f8f168d39fdbba97e63` |
| 28 | `theorem` | [prod_induction_nonempty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-induction-nonempty.md) | 237 | `result-track:f3806c677f1490c3aec175d11e853dfce5453f1ac714f8efa51f13b7fc65c32a` |
| 29 | `theorem` | [prod_dvd_prod_of_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-dvd-prod-of-le.md) | 250 | `result-track:69bdcc00abbd645e0d9f39ce6228ac39b146851858c126206b7db53b7f7b6ff5` |
| 30 | `theorem` | [prod_dvd_prod_of_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-dvd-prod-of-dvd.md) | 257 | `result-track:953d37f619a220a0ef41b9a38e5ac9dd65bd137256a90fe9da977ced71f76a5e` |
| 31 | `def` | [sumAddMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/sumaddmonoidhom.md) | 271 | `declaration-track:d495d684f2d5fa8f32a8777cee9d975629cdd45cec0f13247245c55f0887440a` |
| 32 | `theorem` | [coe_sumAddMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/coe-sumaddmonoidhom.md) | 278 | `result-track:31a617431a2ddf3fa1f78266b17834bd707058420e691b382bf4a32a6b2310ec` |
| 33 | `theorem` | [prod_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-eq-zero.md) | 288 | `result-track:2768c0c7725a211870b362b1c2348a52725b3f0a44ce29234eba2d7d2d10ee7a` |
| 34 | `theorem` | [prod_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-eq-zero-iff.md) | 295 | `result-track:aea1987a1d7066a0925ff8038112efb95259081c6778f6fb250361393872b4e3` |
| 35 | `theorem` | [prod_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-ne-zero.md) | 301 | `result-track:7f8d89806252e296baa0427514367f4d2a399a3a6260970ab584e67344cc0cb2` |
| 36 | `theorem` | [prod_map_inv'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-map-inv-source-edition-2.md) | 312 | `result-track:b2faf8bab7b7198fe553d1d639359a54561b2f6451781b6a2397c1b307fdd645` |
| 37 | `theorem` | [prod_map_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-map-inv.md) | 318 | `result-track:ab4fda1667ea110bf1aea25bba47be6d8a3f89a19b263c34edc5d2608112186c` |
| 38 | `theorem` | [prod_map_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-map-div.md) | 325 | `result-track:2042983b6a27b5a6e1cb398c435adb4c1f07d28605ab8acab06d585b24e387e0` |
| 39 | `theorem` | [prod_map_zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-map-zpow.md) | 331 | `result-track:b0ee03deda25f4a0b32fab28418a96ba1e0a03f055a6bb52a7591e8744da40db` |
| 40 | `theorem` | [sum_map_mul_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/sum-map-mul-left.md) | 343 | `result-track:a4bc9a17e06862445d6b5fb017e748b8acaea772ae4018681f214b7781e5173c` |
| 41 | `theorem` | [sum_map_mul_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/sum-map-mul-right.md) | 347 | `result-track:1fb4a5d8729dfd859d48b1521e110bca8f385e4ac9326cbf317bd251587e2af9` |
| 42 | `theorem` | [dvd_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/dvd-sum.md) | 357 | `result-track:2282243cc7468826cf65f2d2be37588873979973b1bdd2b975967c830c8855b6` |
| 43 | `theorem` | [one_le_prod_of_one_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/one-le-prod-of-one-le.md) | 373 | `result-track:b765e258e41323d3e2a7b9bfbb65f537e0b523b93e8cd511e9f0ec16a90fb381` |
| 44 | `theorem` | [single_le_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/single-le-prod.md) | 379 | `result-track:ea696a949af3750f7bea4c8d30a64e7bc0edf2abd684642cfa52bd59340578ed` |
| 45 | `theorem` | [prod_le_pow_card](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-le-pow-card.md) | 385 | `result-track:124c78b426bcbce4acbe60b137468c5c5bce141415b5e54ffcdcbe6363b31882` |
| 46 | `theorem` | [all_one_of_le_one_le_of_prod_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/all-one-of-le-one-le-of-prod-eq-one.md) | 392 | `result-track:52e367052b2aa1b6fe1d5c76c66861cf1df70caaf4725e1cb131a83fb26be377` |
| 47 | `theorem` | [prod_le_prod_of_rel_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-le-prod-of-rel-le.md) | 401 | `result-track:db45a7b8eb827ce7c217192247bb1cfa1065b0bf6101c12290c35d4fa36ae097` |
| 48 | `theorem` | [prod_map_le_prod_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-map-le-prod-map.md) | 410 | `result-track:5ba2ee3e26165eebca441598b02532e1beddbf60d7239d3313afc7f164df9333` |
| 49 | `theorem` | [prod_map_le_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-map-le-prod.md) | 417 | `result-track:b6e823b5c697bbbfba6cb80c338ea6911feab9402e9fd4595b6b633804ef9475` |
| 50 | `theorem` | [prod_le_prod_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-le-prod-map.md) | 423 | `result-track:72f544d044efda5f6618cbf2a5afa94d37d166d40bfda8506b1658526547ab0e` |
| 51 | `theorem` | [pow_card_le_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/pow-card-le-prod.md) | 429 | `result-track:502741523166334ee145ef5cc48316638fd5043b8c135dcf9e2f5e2e139252ab` |
| 52 | `theorem` | [prod_nonneg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-nonneg.md) | 437 | `result-track:25523c692cff950787db1d25dc8ee7b96e5202e488d237852f26d09b9b74c5a9` |
| 53 | `theorem` | [prod_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-eq-one.md) | 452 | `result-track:dfc6db5dcf9896a7cf7276bfd1bee42b9985322fca7a115d23ac731386ba7b94` |
| 54 | `theorem` | [le_prod_of_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/le-prod-of-mem.md) | 459 | `result-track:229187d5a930ddd47c7b6f7f12d05b2653c2054ec02051d3a04895bf80d1132c` |
| 55 | `theorem` | [le_prod_of_submultiplicative_on_pred](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/le-prod-of-submultiplicative-on-pred.md) | 468 | `result-track:a754ddeb8ef250c206d3bff7a9c0c5e93eb077111162cad3d32a9c913c26d9cd` |
| 56 | `theorem` | [le_prod_of_submultiplicative](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/le-prod-of-submultiplicative.md) | 484 | `result-track:95e66ccb11568cd363359021da48042634b773a3c28eef4f869986ca89737a85` |
| 57 | `theorem` | [le_prod_nonempty_of_submultiplicative_on_pred](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/le-prod-nonempty-of-submultiplicative-on-pred.md) | 493 | `result-track:8a5c3d23de2ca5362b626a9e97b0dbabe24ed4dda9385a15c84d4d1326944e0d` |
| 58 | `theorem` | [le_prod_nonempty_of_submultiplicative](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/le-prod-nonempty-of-submultiplicative.md) | 514 | `result-track:c838dc461e7e95cf5333f073bdd26bd0804f2c99649682139bbce7ea502611df` |
| 59 | `theorem` | [sum_map_singleton](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/sum-map-singleton.md) | 523 | `result-track:c2d5f70edafc23581efbc86bb01f429f18f57cba8486857aa2550c2429ff97c8` |
| 60 | `theorem` | [abs_sum_le_sum_abs](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/abs-sum-le-sum-abs.md) | 527 | `result-track:29515d947d8b54bd3916372e17603a9dba3c77b7292bdbe5d9a9472c1bdbab1e` |
| 61 | `theorem` | [sum_nat_mod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/sum-nat-mod.md) | 532 | `result-track:6ac2bddfa18c9eb984905b831f172e0f74dcafd6ae86995dcb7294ade7cc2eee` |
| 62 | `theorem` | [prod_nat_mod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-nat-mod.md) | 536 | `result-track:bc7faaae9afc4aa674d37b9c9612b44fe065fde64205f2d3a7ebb63d2cce7abc` |
| 63 | `theorem` | [sum_int_mod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/sum-int-mod.md) | 540 | `result-track:5f943a8f138b30c842991114e99eca09e493224183da5b8eec5266e6d604c903` |
| 64 | `theorem` | [prod_int_mod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/prod-int-mod.md) | 544 | `result-track:dc151789d38c8ef6238520a498802c15f7cfb838dd9fdf4ac54125590f6bd1a9` |
| 65 | `theorem` | [map_multiset_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/map-multiset-prod.md) | 551 | `result-track:cb5619d8959bb4f19dcc479f27893d135b0a5bfb7a629b978632943ad6b3fd77` |
| 66 | `theorem` | [MonoidHom.map_multiset_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsMultisetBasicNamespaced.lean/declarations/monoidhom-map-multiset-prod.md) | 558 | `result-track:9128cdea40c4499a325999ffb96e6848de17933e05157a3995c321ad496c50ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93d4a63d0e079cf7eab26363d0436ae01e611ff6e8ffa8a105f8b4330716299c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant142f9bdfed8c3fb2f3cc37d63038d6dd69215122d7072e5ede7c204033d68b9e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variant142f9bdfed8c3fb2f3cc37d63038d6dd69215122d7072e5ede7c204033d68b9e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
