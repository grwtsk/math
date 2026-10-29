# Verification target: Rat Func Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d13c6afd04fada6eb5221b3c4e8041d1403e570",
  "lexical_observation_count": 182,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RatFunc/Variant911f7d9a8acef66cfcb5ec3d690f58c3968b1fa25a9f81e302f86828551fa6b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d13c6afd04fada6eb5221b3c4e8041d1403e570`.

Source path: `GRWTSK/Algebra/RatFunc/Variant911f7d9a8acef66cfcb5ec3d690f58c3968b1fa25a9f81e302f86828551fa6b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RatFunc/Variant911f7d9a8acef66cfcb5ec3d690f58c3968b1fa25a9f81e302f86828551fa6b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.EuclideanDomain` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LaurentSeries` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Content` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RatFunc](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/ratfunc.md) | 117 | `declaration-track:76f3b4ceb6c45145566c15c0751bcb2ac44a1e71dfe0d0a3910f9626b6010a57` |
| 2 | `theorem` | [ofFractionRing_injective](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/offractionring-injective.md) | 135 | `result-track:0b89c61359c357a0063a7e9312e28e04cc944003a0216691e0cc761290dd9468` |
| 3 | `theorem` | [toFractionRing_injective](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/tofractionring-injective.md) | 139 | `result-track:b644732f2238aa99eee528f822281d448b76f636d3b90b16da017bb9674e38b5` |
| 4 | `theorem` | [liftOn_ofFractionRing_mk](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/lifton-offractionring-mk.md) | 173 | `result-track:f4124816c2f130dd504ebe70dc89ae8e18fbaa66cde6cdad0245e255c1c5ad62` |
| 5 | `theorem` | [lift_on_condition_of_lift_on'_condition](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/lift-on-condition-of-lift-on-condition.md) | 180 | `result-track:ebdf7e257d58f5db766dfd06edc7560159bef55eec7f5f4beca1d562eb4d99a1` |
| 6 | `theorem` | [mk_eq_div'](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/mk-eq-div.md) | 204 | `result-track:8678a39dec90739dabe9e77e4ae76268d3a0b304625a7b86a701b6f6227a8f32` |
| 7 | `theorem` | [mk_zero](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/mk-zero.md) | 208 | `result-track:d67552a269254be0761e9640a4c8accf7a9f6ff00bb05b62aca26de9dd85b256` |
| 8 | `theorem` | [mk_coe_def](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/mk-coe-def.md) | 212 | `result-track:a6581566067f1e0073e22e65390607c31b603f1c45d991df77a5d10f7265ccb2` |
| 9 | `theorem` | [mk_def_of_mem](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/mk-def-of-mem.md) | 218 | `result-track:ce1a7e4557b0f6b1a0b4fbc441b292f1ac63a9fa2ee7cf2a1f0f8fa6a5df5025` |
| 10 | `theorem` | [mk_def_of_ne](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/mk-def-of-ne.md) | 224 | `result-track:d20e98d3f85abfa45014b039a6f6f09f8a025bae752699a8be33e59abdb2e844` |
| 11 | `theorem` | [mk_eq_localization_mk](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/mk-eq-localization-mk.md) | 231 | `result-track:189a81bbf5ee732740a220a727c9dd732cd793be0485b5fa9fa26d1be9d73cba` |
| 12 | `theorem` | [mk_one'](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/mk-one-source-edition-2.md) | 239 | `result-track:d162884cf949ab8fa36179dd62afae363fb9a974b1aecff15201d663e6063234` |
| 13 | `theorem` | [mk_eq_mk](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/mk-eq-mk.md) | 245 | `result-track:d48e612ca8a5dff8da74d723df165161143198798aabb49cc864993845289621` |
| 14 | `theorem` | [liftOn_mk](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/lifton-mk.md) | 252 | `result-track:e5dc11ec4c5ddd781bd4342bcde8e9c1d5f9de61f98400ef0ea12da274459e42` |
| 15 | `theorem` | [liftOn'_mk](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/lifton-mk-source-edition-2.md) | 278 | `result-track:f0e09030b0907113ca4a49d887e1c363c0b30427ec970e1c6394e5467f3ae196` |
| 16 | `theorem` | [induction_on'](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/induction-on-source-edition-2.md) | 291 | `result-track:b4ef5147d2737e7e79e6c55792379722c5afb5bdd3eb037fe910ec0d020feaeb` |
| 17 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/instance-source-edition-7.md) | 312 | `declaration-track:8a258a074d033a529623ea3305a786cbdd5efb9fccf097e2cb18db60343c6fe7` |
| 18 | `theorem` | [ofFractionRing_zero](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/offractionring-zero.md) | 317 | `result-track:b906a383b210356ea992bedc05103f21160b52840221c1c63cec0f69c2a491c8` |
| 19 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/instance-source-edition-10.md) | 326 | `declaration-track:a8c5fe91a184ab53fe4a45b5812baf80aa07e0f85d85f607710350fa2b50d7de` |
| 20 | `theorem` | [ofFractionRing_add](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/offractionring-add.md) | 331 | `result-track:bcd6cd09cc05a36d143242846fc60c7947266369d90f2628a08c1c393b5fc1e7` |
| 21 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/instance-source-edition-4.md) | 341 | `declaration-track:485769d34cde5c824b66a25dd4fab51a61ddf73571905896b3f68bac90b08457` |
| 22 | `theorem` | [ofFractionRing_sub](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/offractionring-sub.md) | 346 | `result-track:565afe7ea32ff0174a67fa953484213e66d6419fcba7d13f5f37bafd7b7f54d3` |
| 23 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/instance-source-edition-6.md) | 356 | `declaration-track:5f0639da9496aac42ea1c283b00fc7109271b189dd6bbf5ce87a1b779b739935` |
| 24 | `theorem` | [ofFractionRing_neg](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/offractionring-neg.md) | 359 | `result-track:04a5ac5908fbe48ccb1114145a388d0845cf9aa4b3c70eb6df9bb088d8116e67` |
| 25 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/instance-source-edition-9.md) | 368 | `declaration-track:a49e9bece10d18eef7b09b4b6c8612b651697f0de2910947b8d64a5bca0e5241` |
| 26 | `theorem` | [ofFractionRing_one](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/offractionring-one.md) | 373 | `result-track:05ece50dcff52ec708524e82c8456062be0a8ac631659e81c1f427971cf30f24` |
| 27 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/instance-source-edition-8.md) | 382 | `declaration-track:98a3bbf075ce5e575a15391941be0ae07173d01faa5760ac6a34b1b4657f49a8` |
| 28 | `theorem` | [ofFractionRing_mul](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/offractionring-mul.md) | 387 | `result-track:b886540ac3d5e3bbf47ab406a78d67383b00f07df88b23b60cbecb3f899c0f87` |
| 29 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/instance-source-edition-2.md) | 401 | `declaration-track:1e75f11377ec4fba995c30d81b98785c49dcb523ab5c7ab10565a1371486e0c0` |
| 30 | `theorem` | [ofFractionRing_div](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/offractionring-div.md) | 406 | `result-track:3991dfeadfbff8d659b55debf1e2c2b161e056d137e475df4a00611a9a700e12` |
| 31 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/instance-source-edition-13.md) | 416 | `declaration-track:e2b35ca9337b64b10d87d277c480cb9c47d8fbf3d83af8e8081874d4f64e81b6` |
| 32 | `theorem` | [ofFractionRing_inv](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/offractionring-inv.md) | 419 | `result-track:f965934eb6704e481895bba8e21d9f64a78e4f344b7e697dee9a67f17e118d66` |
| 33 | `theorem` | [mul_inv_cancel](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/mul-inv-cancel.md) | 425 | `result-track:297cf7c68d9752e9499f5a6cfdd9759c416f3b8d8b71decf94c2ce467fe3f0c1` |
| 34 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/instance.md) | 446 | `declaration-track:11b692965f8e74c770131817cf8450d9e20a879feb9f3c41490e165ebac0b7ea` |
| 35 | `theorem` | [ofFractionRing_smul](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/offractionring-smul.md) | 451 | `result-track:53a76541fd6c7e80968787b7eae834ca6c079855ceda5f0922a37dced8f8c967` |
| 36 | `theorem` | [toFractionRing_smul](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/tofractionring-smul.md) | 456 | `result-track:8ea272db61231e840455dc92dbc4569e2664d34e0e7e025a8ba5c163bc0147ac` |
| 37 | `theorem` | [smul_eq_C_smul](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/smul-eq-c-smul.md) | 462 | `result-track:49efa861d1798c71b22ef78f5e4ffa2793c021182dab889b133a9b2141bb42d7` |
| 38 | `theorem` | [mk_smul](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/mk-smul.md) | 479 | `result-track:bdd8702dec5d41c277b49f017eeba29e31e4a1f8b147247dea2eaf032cbdd8b5` |
| 39 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/instance-source-edition-17.md) | 487 | `declaration-track:fdad90c862414ef1b2c4a1097173065cd9be9688f1decf22596257773cbb5b00` |
| 40 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/instance-source-edition-12.md) | 497 | `declaration-track:e09964c3f44a0e0dc64035751c9e0a1e73eaf8c1e5100bbcfde2223532778e81` |
| 41 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/instance-source-edition-11.md) | 500 | `declaration-track:d6b6b0e63e7b278213e4b214eb11fa572fc445617e8a68e812c8d16611ea5755` |
| 42 | `instance` | [instNontrivial](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/instnontrivial.md) | 503 | `declaration-track:1d0d9fe62c9f7af9c199ca458c598fb53cc54e49c874dc7ce2fb607f11332419` |
| 43 | `def` | [toFractionRingRingEquiv](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/tofractionringringequiv.md) | 512 | `declaration-track:67128e775743ac8484176941579978ac20738438264c57882cfde3f923b2f297` |
| 44 | `macro` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/macro.md) | 527 | `declaration-track:3cf1a3a075b3e390fa29732ee080c2fc6871b1bf380f90621cb5796478bc61c4` |
| 45 | `macro` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/macro-source-edition-2.md) | 536 | `declaration-track:b762b4d0029016a3b8683730124e7fee1edce3dd72c3a6661566f1b79090cdea` |
| 46 | `def` | [instCommMonoid](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/instcommmonoid.md) | 559 | `declaration-track:97bee5c7d77082382524df0947a11b842d788c8b1e71a0e667ee7852c826952d` |
| 47 | `def` | [instAddCommGroup](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/instaddcommgroup.md) | 572 | `declaration-track:49b353baa8c66801d45ca6e71a51d05f8925a40411b39a8073bf2ecf975f0c4f` |
| 48 | `instance` | [instCommRing](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/instcommring.md) | 592 | `declaration-track:22a63f605a666f1595a66dabed9df7e0611917d0fd21e73ab2a3f20388c6b559` |
| 49 | `def` | [map](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/map.md) | 619 | `declaration-track:ff0dd8cf5b74b1764ae52bfe4cc100917ef8afe7b41668fcd5744f5c90d182e8` |
| 50 | `theorem` | [map_apply_ofFractionRing_mk](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/map-apply-offractionring-mk.md) | 655 | `result-track:d1771cd12a16a37e29db49da81a1bbcb24977507efe7be5f35b3158f57f8b875` |
| 51 | `theorem` | [map_injective](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/map-injective.md) | 664 | `result-track:e72a020ce2056c7693d8dbf1ae57170d1ace0eb90472ee72167d37b0dfdd1535` |
| 52 | `def` | [mapRingHom](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/mapringhom.md) | 679 | `declaration-track:24179de4358ebbf8debefd3fd09b7a1cba390e9dbb55be969900c7d4f5b9cde5` |
| 53 | `theorem` | [coe_mapRingHom_eq_coe_map](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/coe-mapringhom-eq-coe-map.md) | 700 | `result-track:a2d33761d19870471c53222f94ba5638be0c113b694b5986e3174e83955f9fdc` |
| 54 | `def` | [liftMonoidWithZeroHom](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/liftmonoidwithzerohom.md) | 709 | `declaration-track:b601a780cce7e2b69bc032426ce887357f0a48771cc9a66149cdf49524bd53da` |
| 55 | `theorem` | [liftMonoidWithZeroHom_apply_ofFractionRing_mk](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/liftmonoidwithzerohom-apply-offractionring-mk.md) | 735 | `result-track:4bd33d75a11c9e29df9c65eeb18f7d0ace981e1cbbef331e8d013b792150526c` |
| 56 | `theorem` | [liftMonoidWithZeroHom_injective](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/liftmonoidwithzerohom-injective.md) | 741 | `result-track:368da015f7a130114aa870d1e26a3ba8ad0d09b35931fbdd0208eba9eb771fd8` |
| 57 | `def` | [liftRingHom](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/liftringhom.md) | 758 | `declaration-track:89d0f5b95ecb2b749274a8fe0e56c7ec8d5fb3f7e4b58ee7b3205b6c7aee5bc7` |
| 58 | `theorem` | [liftRingHom_apply_ofFractionRing_mk](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/liftringhom-apply-offractionring-mk.md) | 783 | `result-track:5e60bc061518f3932e29196163817e2bfa8211931261714c71d8bbbaa9409179` |
| 59 | `theorem` | [liftRingHom_injective](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/liftringhom-injective.md) | 788 | `result-track:6f7b729881d49439673e6de99ff9f253567f9f50d55ec34a5535991dcf835256` |
| 60 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/instance-source-edition-5.md) | 798 | `declaration-track:575a78e8d0575b9e0c0a6e33546146dcf6ce753ee443d4f90dd17e7b6e27302f` |
| 61 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/instance-source-edition-3.md) | 816 | `declaration-track:3f3604d0198679afb226c034aaf405b82e2ebd961305779590809738399b9b2e` |
| 62 | `theorem` | [mk_one](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/mk-one.md) | 833 | `result-track:2cd623dd82e09fc1988bb8e7a41188612835094c3618ee1b76cd7f056871180b` |
| 63 | `theorem` | [ofFractionRing_algebraMap](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/offractionring-algebramap.md) | 837 | `result-track:6e5ac3dbbfcb737bb6aec38ea684070fda566b1fd1c94d8ba17625bb65b6fb83` |
| 64 | `theorem` | [mk_eq_div](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/mk-eq-div-source-edition-2.md) | 843 | `result-track:e257b83b8dec92abcb784212de3aa92f1f9a93495edbaaced733dd57ceeaf4c3` |
| 65 | `theorem` | [div_smul](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/div-smul.md) | 848 | `result-track:706d3ce1c1c7e5a7f5e63010d696b256618c8181ba4cc64a2986ace637ffc42c` |
| 66 | `theorem` | [algebraMap_apply](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/algebramap-apply.md) | 855 | `result-track:430b2864a767f3ff5e9fdbb5c7c0a6dc7cdb86614645808ae889589b89903823` |
| 67 | `theorem` | [map_apply_div_ne_zero](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/map-apply-div-ne-zero.md) | 861 | `result-track:4c9a09ebea3763c2a1c2d954cc6496d408d427e46d7a821c49c5d5cd59362f90` |
| 68 | `theorem` | [map_apply_div](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/map-apply-div.md) | 871 | `result-track:f92ab3fe181f3cbe351845a3e6c889de13f62ef9fdcab2ae9d97c1c7901abbe7` |
| 69 | `theorem` | [liftMonoidWithZeroHom_apply_div](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/liftmonoidwithzerohom-apply-div-source-edition-2.md) | 884 | `result-track:d331db176a8dee63bb1e7c1af6545dacc703ad199b65bf66790cc22dd5a8bc97` |
| 70 | `theorem` | [liftMonoidWithZeroHom_apply_div'](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/liftmonoidwithzerohom-apply-div.md) | 895 | `result-track:64ae7df4bfc154c5fbd544d769b7220a060b72bd5b9e2ed0b246c9396075cc38` |
| 71 | `theorem` | [liftRingHom_apply_div](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/liftringhom-apply-div.md) | 901 | `result-track:72696433d6c1995cc9b935ba44ad4c5fc74534767f0f14df1aaa977af70a3b9d` |
| 72 | `theorem` | [liftRingHom_apply_div'](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/liftringhom-apply-div-source-edition-2.md) | 908 | `result-track:836cd60238b7a2986d1d4ede9842b7db1bd36ecf5fa7c48e6832f96e17a8666b` |
| 73 | `theorem` | [ofFractionRing_comp_algebraMap](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/offractionring-comp-algebramap.md) | 915 | `result-track:e2632d62fd31fe3142f07533eb88655903e127847cf87d402f6b0a590ea65f04` |
| 74 | `theorem` | [algebraMap_injective](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/algebramap-injective.md) | 920 | `result-track:541625c678ce63e3ad6c517088ba9856e7957685c29408ca55a6442a9d60c6f6` |
| 75 | `theorem` | [algebraMap_eq_zero_iff](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/algebramap-eq-zero-iff.md) | 926 | `result-track:7613d62d45f6aa5e329eaefd9ec3e95002490b503f1690b289be48043a21925c` |
| 76 | `theorem` | [algebraMap_ne_zero](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/algebramap-ne-zero.md) | 933 | `result-track:b8b7a4515cfbaf34e894da2004c35fe3ec62c6b81a2e0895522d4dc4deb2ea54` |
| 77 | `def` | [mapAlgHom](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/mapalghom.md) | 946 | `declaration-track:9512242e7c04ec2c31a97e313f2b60ba60b1dc4883ab91c4c54d497a8bd2a2dc` |
| 78 | `theorem` | [coe_mapAlgHom_eq_coe_map](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/coe-mapalghom-eq-coe-map.md) | 953 | `result-track:27c66f9630037140b6e20170eff0e5fdc120df20ebadfa064aab87c957d5753c` |
| 79 | `def` | [liftAlgHom](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/liftalghom.md) | 960 | `declaration-track:38a383eb2c11fdd5f788861277217d5a7c5a32eb96ebbf9f8f1be5b0355ab246` |
| 80 | `theorem` | [liftAlgHom_apply_ofFractionRing_mk](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/liftalghom-apply-offractionring-mk.md) | 967 | `result-track:5fb20f2d1b94c9900c782ba4e47a53510b71b14ea8278d4cd647ca9bdebd60e6` |
| 81 | `theorem` | [liftAlgHom_injective](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/liftalghom-injective.md) | 972 | `result-track:b58e5b6822ee3b0cadca9e8cd908c0362eae847e6b60c1e46b2d8974e0ea1d01` |
| 82 | `theorem` | [liftAlgHom_apply_div'](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/liftalghom-apply-div-source-edition-2.md) | 980 | `result-track:c06aea34751133df2a4051ee35a15c4092079f169cf592465b6946f9f3c50a6a` |
| 83 | `theorem` | [liftAlgHom_apply_div](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/liftalghom-apply-div.md) | 984 | `result-track:0548666d64eb87b9ee2405aba26194519f75314943055fd3064b4d3d2008d4cb` |
| 84 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/instance-source-edition-15.md) | 994 | `declaration-track:eee5b493e84e39bc9e2895bc0c532780a92345829ac31e88b596e5809a72f2c7` |
| 85 | `theorem` | [liftOn_div](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/lifton-div-source-edition-2.md) | 1012 | `result-track:cedf9b74fcedd8e2e035564596a250bdb99c2afeffa1f887efa5bc07d535741e` |
| 86 | `theorem` | [liftOn'_div](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/lifton-div.md) | 1021 | `result-track:91dbaefefaacb2ff228930b403ba6dcbb91404cbf6d5a7c0f74519b201ef6782` |
| 87 | `theorem` | [induction_on](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/induction-on.md) | 1034 | `result-track:0b0e277bb0ad9f7c05ffff71f7d3edc8d08387a952293ed9efda59f8a14720be` |
| 88 | `theorem` | [ofFractionRing_mk'](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/offractionring-mk.md) | 1039 | `result-track:04a05626362a66dd1bdf6ee9ae53ca8dbdf147c77a19b3f450cd325d71ce89a8` |
| 89 | `theorem` | [ofFractionRing_eq](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/offractionring-eq.md) | 1047 | `result-track:687593dcd379f91e1372e95eac75b0009233e44c69c437c78e70d2b5afd8dc91` |
| 90 | `theorem` | [toFractionRing_eq](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/tofractionring-eq.md) | 1060 | `result-track:9e2c84e9e748572f490322eefecc3f1fca9f41e51fb5e7486cbd42e9dd0d8146` |
| 91 | `theorem` | [toFractionRingRingEquiv_symm_eq](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/tofractionringringequiv-symm-eq.md) | 1072 | `result-track:702cc6802567ffecd8fe1e1c69aa30408f1a0e9858b879c7ff34b4ef224168ad` |
| 92 | `def` | [numDenom](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/numdenom.md) | 1096 | `declaration-track:35a356fa5a18e66fc1b7dbb86c75a52b0dcf0d32d1174df7e67e872d371adf21` |
| 93 | `theorem` | [numDenom_div](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/numdenom-div.md) | 1135 | `result-track:d37e5762fe9230c64f931a76e7fb55d230d2b0341a51c310285ad7bc830167e7` |
| 94 | `def` | [num](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/num.md) | 1147 | `declaration-track:b276e34485ffb594da8e4be39d7f73a623508a79a448696e9479ae0f090c8521` |
| 95 | `theorem` | [num_div'](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/num-div-source-edition-2.md) | 1151 | `result-track:b3b63739fecfa258554542a082efb7b735cb870b1ef77bb356edb5f97b9ea144` |
| 96 | `theorem` | [num_zero](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/num-zero.md) | 1157 | `result-track:362b6735cf3ac64f9b369540360a4a544a357514d7c0a69f87cac7c275fe8652` |
| 97 | `theorem` | [num_div](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/num-div.md) | 1161 | `result-track:72c5f8f4d6d64d3aa60e7907f3d8a9cda39dfee78176c31e7e41fe5f7b584eae` |
| 98 | `theorem` | [num_one](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/num-one.md) | 1170 | `result-track:7aae3b858a5fc2b0d35fc370226f54629792f33cd436ef4bbf0cb28de2cef03e` |
| 99 | `theorem` | [num_algebraMap](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/num-algebramap.md) | 1174 | `result-track:16d029d5d3e48aecd59bfc0c11e7a40b029185443626e16e755b1d490ede5015` |
| 100 | `theorem` | [num_div_dvd](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/num-div-dvd-source-edition-2.md) | 1177 | `result-track:37cf24d9516568c569363e7806f5732bd601a323ef1670d46ff76d154f6057e1` |
| 101 | `theorem` | [num_div_dvd'](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/num-div-dvd.md) | 1186 | `result-track:1dfe9f3a0041f99a38700444b3f7c6b4c436bf9dda7632d65882e830ddb8cf62` |
| 102 | `def` | [denom](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/denom.md) | 1192 | `declaration-track:df23a699db6aac4ad1c830ca5b1f0d8448b01f7968cfb5eccbfcbbc9d646ea2f` |
| 103 | `theorem` | [denom_div](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/denom-div.md) | 1197 | `result-track:e47693b4dba110d6bfa486c955dec399ed7611ef00cb50ed6efeffcfadaf5f81` |
| 104 | `theorem` | [monic_denom](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/monic-denom.md) | 1203 | `result-track:2bd0d6b2a9e8152b8ef344d92445eab9919bc8e501c67511d35f8d0746aeda41` |
| 105 | `theorem` | [denom_ne_zero](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/denom-ne-zero.md) | 1210 | `result-track:9fa1d47c5d490cea44cb05dd2f553378513301ada159b6ecb65c049961056ee4` |
| 106 | `theorem` | [denom_zero](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/denom-zero.md) | 1215 | `result-track:0e4069459155058deac08428ce1693724e584a85caff1a7c8bd90bc36407c55e` |
| 107 | `theorem` | [denom_one](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/denom-one.md) | 1220 | `result-track:8e368bd9f0ea249e84e9f1ac0169830ca1bf9f0b310a81573b5e7aac817d7e1b` |
| 108 | `theorem` | [denom_algebraMap](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/denom-algebramap.md) | 1225 | `result-track:f59157888d398a47ee99dcf9c156f757144c5841fa1cf1ec57eb51adbbf62f4c` |
| 109 | `theorem` | [denom_div_dvd](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/denom-div-dvd.md) | 1230 | `result-track:89b513a6ccba3d14214383b63b1f6a184f880609bbdd70058d9c145b3199c907` |
| 110 | `theorem` | [num_div_denom](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/num-div-denom.md) | 1239 | `result-track:314726b09d039438ad3dea600a2541f95938040629b76326146caae3736635c6` |
| 111 | `theorem` | [isCoprime_num_denom](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/iscoprime-num-denom.md) | 1255 | `result-track:4b992e419c3992224bfbe15dafe65d258da52cef9c63949165ea002acf693f8c` |
| 112 | `theorem` | [num_eq_zero_iff](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/num-eq-zero-iff.md) | 1264 | `result-track:9f0bf3e375812e53226b16487c7218c5e9fc6a7caea5d4a3b3300643cd87ed06` |
| 113 | `theorem` | [num_ne_zero](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/num-ne-zero.md) | 1268 | `result-track:2fd4365e7b3ecafa31909b8978750d47f99c18d72f55ee93856f484bf549ad87` |
| 114 | `theorem` | [num_mul_eq_mul_denom_iff](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/num-mul-eq-mul-denom-iff.md) | 1272 | `result-track:f4f7f90c3a526f982b1f92f49acbc445d5c0e90b661967a4a2af6033ea444a88` |
| 115 | `theorem` | [num_denom_add](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/num-denom-add.md) | 1281 | `result-track:82b349ea13313d4d158357f7ad659dc7df316f291de8104cd16d8c8eb5b5ee3c` |
| 116 | `theorem` | [num_denom_neg](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/num-denom-neg.md) | 1290 | `result-track:164781082480568f299ef365e825a6c09b9ebeb5308f4c5f52adba4fbc443647` |
| 117 | `theorem` | [num_denom_mul](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/num-denom-mul.md) | 1294 | `result-track:862a0bc33a1384fdc168b85fd581a1699da24a3078d910bddef9b861cf57588d` |
| 118 | `theorem` | [num_dvd](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/num-dvd.md) | 1302 | `result-track:0cf3fc26b4a2895c33d31b66bf6f95c44f7cd625216d768fe584f95e3befbfe4` |
| 119 | `theorem` | [denom_dvd](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/denom-dvd.md) | 1315 | `result-track:0ff7ee54ec7018d8011e59fb2a820aeac8fc2f846a384a5d2a6b23208bf7484d` |
| 120 | `theorem` | [num_mul_dvd](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/num-mul-dvd.md) | 1327 | `result-track:b960ab0d4b4dc736837ae2a97beae6d14741ffe107fd2daccfea548fd5819257` |
| 121 | `theorem` | [denom_mul_dvd](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/denom-mul-dvd.md) | 1337 | `result-track:e372cd7b72d9c5602907909ef5f2dadbd42c2b46be6476046fa3868fb8ad1564` |
| 122 | `theorem` | [denom_add_dvd](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/denom-add-dvd.md) | 1343 | `result-track:b16274a46cd967b66fa3671c5c49b2607869ae29636bec5010b2a9a6f074368e` |
| 123 | `theorem` | [map_denom_ne_zero](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/map-denom-ne-zero.md) | 1352 | `result-track:2f9c8fbf4f2230b1532367d4295f310abb0d2461159d351d8b4ea81a8a857b85` |
| 124 | `theorem` | [map_apply](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/map-apply.md) | 1357 | `result-track:46dd96d673774de60d75bfd30f5160c5be7ca559d1ab021bbb86522219e58af1` |
| 125 | `theorem` | [liftMonoidWithZeroHom_apply](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/liftmonoidwithzerohom-apply.md) | 1364 | `result-track:22af06818fd8b691bcf40ce60da7496f70f30644953af13a0c6469dba43aebbb` |
| 126 | `theorem` | [liftRingHom_apply](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/liftringhom-apply.md) | 1370 | `result-track:7085177cd984af502b1af7a9bf2f0f1270810a35f4fae528a42b28cc86f41021` |
| 127 | `theorem` | [liftAlgHom_apply](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/liftalghom-apply.md) | 1375 | `result-track:7ca465319f72ec7eda89fc3c7812902040ebf4eb3e0b252601ae1b5cbced16a2` |
| 128 | `theorem` | [num_mul_denom_add_denom_mul_num_ne_zero](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/num-mul-denom-add-denom-mul-num-ne-zero.md) | 1381 | `result-track:0b6d70bd2608fbc278f8c85abf3c011982b6e1e537f881ebf2af28119472eb9e` |
| 129 | `def` | [C](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/c.md) | 1400 | `declaration-track:33e8be36166f6db8f6294ae8be065b6a560a7934cdc2f58f6277fd926e5d7355` |
| 130 | `theorem` | [algebraMap_eq_C](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/algebramap-eq-c.md) | 1406 | `result-track:da634c5505b953a81fb04e084390f2d8dac7603481247198d6906f6d4a094cf6` |
| 131 | `theorem` | [algebraMap_C](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/algebramap-c.md) | 1412 | `result-track:261158f8ffbaa92df86950c2ecc899f516824d025affb62120eb46fa8af95ecd` |
| 132 | `theorem` | [algebraMap_comp_C](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/algebramap-comp-c.md) | 1418 | `result-track:213c28a5ccf7fd781d697cc3329852d0a9822877f5db6748e8876fe223f55298` |
| 133 | `theorem` | [smul_eq_C_mul](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/smul-eq-c-mul.md) | 1423 | `result-track:9379e0354a2a86edfbe84748a684d024d1cc88a90e3ed75d9f84e29c90ed7ff4` |
| 134 | `def` | [X](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/x.md) | 1429 | `declaration-track:6bfabc729e37f0c4660dd3443a5d5e32086bdd8aa9a6bda06aef601ace15e3fe` |
| 135 | `theorem` | [algebraMap_X](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/algebramap-x.md) | 1435 | `result-track:f8d29b7e8aa5567183769c3360cfc4ab9878428eb595e3dd7b0a5ddc5e5ce3aa` |
| 136 | `theorem` | [num_C](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/num-c.md) | 1447 | `result-track:fad3acf690f6c728dcc360037da20337ff54ed4c61d01252c86b7697a5d46859` |
| 137 | `theorem` | [denom_C](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/denom-c.md) | 1453 | `result-track:04ee714d7034dbd1603601b9db5767d6f9d30ee1ae01ca7e620cd515934687e9` |
| 138 | `theorem` | [num_X](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/num-x.md) | 1459 | `result-track:fec4002b833b5c88d2b8d60bd449824df780389be68fd092fd2f5dd874eff156` |
| 139 | `theorem` | [denom_X](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/denom-x.md) | 1465 | `result-track:cc73f88cc94843487e00541c4cfc3a493851410f619212dabf0aab77b70727ee` |
| 140 | `theorem` | [X_ne_zero](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/x-ne-zero.md) | 1470 | `result-track:c297ecf5582a3b634894f53b5133a78b9cd182dd5d43310000e8be34dfd02f0c` |
| 141 | `def` | [eval](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/eval.md) | 1483 | `declaration-track:f19832f46b3f707a26bbcbf6d38e66472830d8c8d3b062a03b5856cf01554dd0` |
| 142 | `theorem` | [eval_eq_zero_of_eval₂_denom_eq_zero](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/eval-eq-zero-of-eval-denom-eq-zero.md) | 1489 | `result-track:5b9eb11f6561f143443cbe1a4e08a9e821abee5597b80084075156d651fdf5d6` |
| 143 | `theorem` | [eval₂_denom_ne_zero](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/eval-denom-ne-zero.md) | 1493 | `result-track:f62bfd0e6f3dd713296ac625f4ad496813776067fca1e77ac5c41bcf1a14c224` |
| 144 | `theorem` | [eval_C](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/eval-c.md) | 1501 | `result-track:87b5928f847bdb01d4e3ad7c1fe7be1c59887ece39b44c6319447b79fe3193fe` |
| 145 | `theorem` | [eval_X](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/eval-x.md) | 1506 | `result-track:4a0f05b08ac0d07ac8c3309e0f0d99194046c16ebd4ab366a285f40c5f03acd1` |
| 146 | `theorem` | [eval_zero](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/eval-zero.md) | 1511 | `result-track:0437751eb89708450252cafebc7872a550749b07a4accb44820c4cef03b37af3` |
| 147 | `theorem` | [eval_one](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/eval-one.md) | 1515 | `result-track:979a59a8ba63b0381a52d5569be21bc85bfeb637cee3d330273e85e51e7ec056` |
| 148 | `theorem` | [eval_algebraMap](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/eval-algebramap.md) | 1519 | `result-track:38a5e950bb5a0b46fafe0ade9ff801f9b96857521a51a849592f647bb664d774` |
| 149 | `theorem` | [eval_add](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/eval-add.md) | 1531 | `result-track:1ee66ffaa9e5fcb658b4b4cbd1e58eaf2233c3b9e7f65b69a23d5b55003d206b` |
| 150 | `theorem` | [eval_mul](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/eval-mul.md) | 1551 | `result-track:bf8971d167d1778b602536b14ab5efa1716140e2ba022b241080283531735d52` |
| 151 | `def` | [intDegree](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/intdegree.md) | 1578 | `declaration-track:e7078268d4c3b64adaf8f574b4cc4c3018cc8abdebb15c360390fc5fb73a7b07` |
| 152 | `theorem` | [intDegree_zero](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/intdegree-zero.md) | 1583 | `result-track:46ae60b8c9aed69572cc37596c3f0778b3f949a0fce255bc83558f74d904929e` |
| 153 | `theorem` | [intDegree_one](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/intdegree-one.md) | 1588 | `result-track:6fb68b2f6d947e22d382e0510c2afadc7ecbc7c665d0497bc5ffe1625804192f` |
| 154 | `theorem` | [intDegree_C](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/intdegree-c.md) | 1593 | `result-track:41faf87033c26fb5f6331e493acc4d8fdb8cf3ab1acf31406fba2eaa12af4531` |
| 155 | `theorem` | [intDegree_X](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/intdegree-x.md) | 1599 | `result-track:563231336424f1384db46ff7fe0f431688dd00f0a287737d429a50b7660de944` |
| 156 | `theorem` | [intDegree_polynomial](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/intdegree-polynomial.md) | 1606 | `result-track:a661f4404ce05774aa4bcb2842c53481e3b5e36bffa51ea525c605bd6f82246f` |
| 157 | `theorem` | [intDegree_mul](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/intdegree-mul.md) | 1612 | `result-track:7607ec46d91d83cd55f864eb0cb2f9a8f3d74d406f8b59dafb3001633115f489` |
| 158 | `theorem` | [intDegree_neg](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/intdegree-neg.md) | 1626 | `result-track:717c8ec84f8247ab651e352ee604919d5b666710db59a63b77604c938f27d1ea` |
| 159 | `theorem` | [intDegree_add](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/intdegree-add.md) | 1635 | `result-track:9d2a760b3daa3496957a7bb19a01f20e085eeb9178cbca73b8e7cd2411b75757` |
| 160 | `theorem` | [natDegree_num_mul_right_sub_natDegree_denom_mul_left_eq_intDegree](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/natdegree-num-mul-right-sub-natdegree-denom-mul-left-eq-intdegree.md) | 1643 | `result-track:cc91ecfa05b0669f659b59d0c5ebbb4dc7975fea704700bfd8e20f85da539075` |
| 161 | `theorem` | [intDegree_add_le](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/intdegree-add-le.md) | 1651 | `result-track:8f86e99d0cb33a4d0dbfdc27466d87a41c7719668b0085a1a9a49853882e0e4a` |
| 162 | `def` | [coeAlgHom](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/coealghom.md) | 1674 | `declaration-track:5011ce5812f747bc5110bf94f99b1c72e2dc5247b48b2765ed07285dfd3c75f2` |
| 163 | `def` | [coeToLaurentSeries_fun](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/coetolaurentseries-fun.md) | 1685 | `declaration-track:c71d632ab50a83c8f7351f0385846ba2dadc41edb8303432fc8e19c12cc9f2de` |
| 164 | `instance` | [coeToLaurentSeries](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/coetolaurentseries.md) | 1688 | `declaration-track:af3592ed47244851eb1982d3e2098a59cde6c0a1371b996933faf960c0bcc17f` |
| 165 | `theorem` | [coe_def](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/coe-def.md) | 1692 | `result-track:6820a1d52a8f3cadd60b86e75b2128535be218a7a590cb1ef7841f7302c16ad2` |
| 166 | `theorem` | [coe_num_denom](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/coe-num-denom.md) | 1696 | `result-track:43b167dbaaad6b86ee3ee9f801d7435f9c4b1cd8efc0f926c4bacd7a5d772999` |
| 167 | `theorem` | [coe_injective](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/coe-injective.md) | 1700 | `result-track:4fb69243cdfae696863994d262013c4f017981639a05d2644e75c27863fed59a` |
| 168 | `theorem` | [coe_apply](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/coe-apply.md) | 1707 | `result-track:a124a7d14c8c69f7444f0e70f39830fb4705e64c0ac46029752bd46cdb553ec9` |
| 169 | `theorem` | [coe_zero](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/coe-zero.md) | 1712 | `result-track:0e79a728423f0fdf2c18933d385b06a07df2ccae6149fdb11ca329e4391bde5f` |
| 170 | `theorem` | [coe_one](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/coe-one.md) | 1717 | `result-track:7fc85d6587b6cae3ddfe4708bfe6e4adcb27d7fbe754a91a4bab84a77dc453c7` |
| 171 | `theorem` | [coe_add](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/coe-add.md) | 1722 | `result-track:d432ef8e864bd3d4defed37def499ee07aa1dbe50bccf7118edbcd92f6ab0733` |
| 172 | `theorem` | [coe_sub](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/coe-sub.md) | 1727 | `result-track:c3775afd15a4c7b87568948bd2ce4fcd5eeda2fce877351df6dd77df39dd8d2b` |
| 173 | `theorem` | [coe_neg](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/coe-neg.md) | 1732 | `result-track:4aa00ee5cf304a611d8c56bfa4136ed5da46ec2b4659f9578825264ccbe3805c` |
| 174 | `theorem` | [coe_mul](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/coe-mul.md) | 1737 | `result-track:45aac5b269b5996297a3ec1303846a9b737a936e2c59c914127a76206ccf31ce` |
| 175 | `theorem` | [coe_pow](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/coe-pow.md) | 1742 | `result-track:52f85fa6da7304016d6e09a9cc446ee0f5b56dc0133a57e06aff6aa2b64be406` |
| 176 | `theorem` | [coe_div](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/coe-div.md) | 1747 | `result-track:2458a4862185405b412e23775c2bcf8ac91474b7825ac9056973c9965220dc76` |
| 177 | `theorem` | [coe_C](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/coe-c.md) | 1753 | `result-track:3899ef2c2dae34a6086fa14913c3f45e083baa85ebcca8dd138b36bc1504ce55` |
| 178 | `theorem` | [coe_smul](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/coe-smul.md) | 1763 | `result-track:d6bf7c07711e9b4d0e80402d9757ae789697976e07af355a70f4573ae2558729` |
| 179 | `theorem` | [coe_X](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/coe-x.md) | 1770 | `result-track:7b4e0b964a6e7641188c4a05a65eeb34230946a7087c3b27969cd2708915f4d5` |
| 180 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/instance-source-edition-16.md) | 1778 | `declaration-track:efc1141ede8c0f7f5b9c39f4b50737351038abb4ff22e057e47f21a5a704e534` |
| 181 | `theorem` | [algebraMap_apply_div](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/algebramap-apply-div.md) | 1781 | `result-track:6b2d2f3dcddef1c9b00697829f177e927ca3734d3165ec9e3de2962953d908b3` |
| 182 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncNamespaced.lean/declarations/instance-source-edition-14.md) | 1790 | `declaration-track:e700e56653429bd07aa112eae0d15546dbf33b0a3cfc495bf61878a515bdc2c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78b0e0772bf84675cd737e446aca2e0db56be088dee41a9782d060f221a0496c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RatFunc/Variant911f7d9a8acef66cfcb5ec3d690f58c3968b1fa25a9f81e302f86828551fa6b9.lean","GRWTSK/_verification/specifications/Algebra/RatFunc/Variant911f7d9a8acef66cfcb5ec3d690f58c3968b1fa25a9f81e302f86828551fa6b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
