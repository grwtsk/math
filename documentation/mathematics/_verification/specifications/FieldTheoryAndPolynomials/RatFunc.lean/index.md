# Verification target: Rat Func

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb19639a164d3ad5e76246d2aadb9f2d9aa4a653",
  "lexical_observation_count": 182,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RatFunc/Variantef05e192e6ac84e9e08ffce2cb3f3310ccf731bb879b52afdb8697c4215e45fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/RatFunc.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/RatFunc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb19639a164d3ad5e76246d2aadb9f2d9aa4a653`.

Source path: `GRWTSK/Algebra/RatFunc/Variantef05e192e6ac84e9e08ffce2cb3f3310ccf731bb879b52afdb8697c4215e45fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RatFunc/Variantef05e192e6ac84e9e08ffce2cb3f3310ccf731bb879b52afdb8697c4215e45fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.EuclideanDomain` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LaurentSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Content` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RatFunc](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/ratfunc.md) | 109 | `declaration-track:4830967ca2ddd2daef49fe055bc507c553762485c83d957ad1e5bb7ef1778bfa` |
| 2 | `theorem` | [ofFractionRing_injective](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/offractionring-injective.md) | 127 | `result-track:555183c1ecde22f4f42aacea230a68f9ea0b5ea489f82d144a26ef883422c19b` |
| 3 | `theorem` | [toFractionRing_injective](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/tofractionring-injective.md) | 131 | `result-track:db17eee69d9615c6e326515b10f06abab426ec9c01fd432e4dcf0bd346a2c24d` |
| 4 | `theorem` | [liftOn_ofFractionRing_mk](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/lifton-offractionring-mk.md) | 165 | `result-track:5d3728fac06ab943c867bb07ef8baec2475a38cf5226f77b55913c22824ba8b5` |
| 5 | `theorem` | [lift_on_condition_of_lift_on'_condition](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/lift-on-condition-of-lift-on-condition.md) | 172 | `result-track:0737db9d17d75ff4f4841ca73e8975bbc770fd356336584f51fd18f5bd4d38ce` |
| 6 | `theorem` | [mk_eq_div'](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/mk-eq-div.md) | 196 | `result-track:0015c1c2535d5184592148666071856064dd973ea350ae12d554475fa9706ce1` |
| 7 | `theorem` | [mk_zero](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/mk-zero.md) | 200 | `result-track:57a6106ff1ad9337c177e260414dc291d3d6c650c2fb740b2fcfdbf23157f26d` |
| 8 | `theorem` | [mk_coe_def](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/mk-coe-def.md) | 204 | `result-track:ad9c177026b9977437b1a89e85ea04937f285cef7bef57b7b393e2ec2f3e32da` |
| 9 | `theorem` | [mk_def_of_mem](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/mk-def-of-mem.md) | 210 | `result-track:916f12520ba22940bb6c7d5036756b0a5be9f29fd0691ebb65a18114205b6615` |
| 10 | `theorem` | [mk_def_of_ne](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/mk-def-of-ne.md) | 216 | `result-track:de00b9556c3275b60f7929c4359ac995d421b46d6556596d259260cb3cf2a498` |
| 11 | `theorem` | [mk_eq_localization_mk](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/mk-eq-localization-mk.md) | 223 | `result-track:bda4161c728ab0d58126cc05b67247b8017beef2cb5c44b779b946055e1e5dbc` |
| 12 | `theorem` | [mk_one'](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/mk-one-source-edition-2.md) | 231 | `result-track:e4794a5f6a770c142890e74646096c2507f3ae146e0bd787d152b2beaa682c09` |
| 13 | `theorem` | [mk_eq_mk](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/mk-eq-mk.md) | 237 | `result-track:fb6c35ac6e443df957e90807fbac7c640f4aba6c84f2efff3c5ef44ca302c201` |
| 14 | `theorem` | [liftOn_mk](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/lifton-mk.md) | 244 | `result-track:42fb60812706c1425c20a7db9a5f7172bf0cbcdab1cde43c8256b9d9f531703c` |
| 15 | `theorem` | [liftOn'_mk](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/lifton-mk-source-edition-2.md) | 270 | `result-track:af6d5265fe4c03753dfa84f81be430670fcc3f836c9c0afaed677f0a4bc2bd0e` |
| 16 | `theorem` | [induction_on'](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/induction-on.md) | 283 | `result-track:6a595cf46885a09ea0abe1d69d8a8ce30e4a30a9db92ff9b5ec69fb1aa017628` |
| 17 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/instance-source-edition-4.md) | 304 | `declaration-track:42b0a68bb7b4cf285805a068486479fe0ff6f04aa041d4bee6fe0f908f78e920` |
| 18 | `theorem` | [ofFractionRing_zero](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/offractionring-zero.md) | 309 | `result-track:e90aac8b5b06fef23a7b6daa8c2ad755de0771b0e19fd8d77bbda0baa61db79c` |
| 19 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/instance-source-edition-8.md) | 318 | `declaration-track:67211b91827b0200fb595087fe2ef05e111a7c64f460f6c0476cd496919402cd` |
| 20 | `theorem` | [ofFractionRing_add](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/offractionring-add.md) | 323 | `result-track:6441da6bed0744959ea8044e2c6b40305fad03b013559ef7ef13b4c920fb0bc4` |
| 21 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/instance-source-edition-10.md) | 333 | `declaration-track:8b4dd3674336bf548488f652dc41e1ab55d0951bf9b88b8628a148320e96b72e` |
| 22 | `theorem` | [ofFractionRing_sub](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/offractionring-sub.md) | 338 | `result-track:28ace08cc9045f43a6f7e8c78267ba968e8e63f802ea1756d332bf300473c9db` |
| 23 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/instance-source-edition-13.md) | 348 | `declaration-track:b938ef172bb27ecfb5fd0311162b6a2dfdcc33ba8df722092a1280d1bced40ba` |
| 24 | `theorem` | [ofFractionRing_neg](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/offractionring-neg.md) | 351 | `result-track:c67c58c7e55401f24aee2df763fc8502b937b83e38afb7f0117fa04b5e642454` |
| 25 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/instance-source-edition-7.md) | 360 | `declaration-track:589dcd8e3a2e69a2f5bda378fe64969b24be00fa288165e26fb323b4766157ff` |
| 26 | `theorem` | [ofFractionRing_one](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/offractionring-one.md) | 365 | `result-track:8b0b1fc10ee8fcd504c485b4b270926eb2e94bbd5993d12172d9020a5d84386c` |
| 27 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/instance-source-edition-5.md) | 374 | `declaration-track:4542707e0da62031c375f683b8e89d304bb12e3b6d6a7b30bc9ac4f01e7694af` |
| 28 | `theorem` | [ofFractionRing_mul](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/offractionring-mul.md) | 379 | `result-track:be46aff64010817a4ffc367fb4899232e1b09824db91e856d7afd96a689cdc50` |
| 29 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/instance-source-edition-11.md) | 393 | `declaration-track:9ce6fc7c8cc54138cdcdb32fdef2d8a0ea30327998aa858cb5be002cc9a036f5` |
| 30 | `theorem` | [ofFractionRing_div](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/offractionring-div.md) | 398 | `result-track:8678a465507e86c5c3ecc1a37c16a25327aa029fff4bc4a19f74946c4a2d38a2` |
| 31 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/instance-source-edition-2.md) | 408 | `declaration-track:2c8a76a582c27bc356f5da8aee3d1bdc3a42143b9c816142a4309d6e07d551d1` |
| 32 | `theorem` | [ofFractionRing_inv](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/offractionring-inv.md) | 411 | `result-track:4e9e7c39ab69329eee13159063f6721ac36daed1dc45085c9e5c5cd95f05ab32` |
| 33 | `theorem` | [mul_inv_cancel](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/mul-inv-cancel.md) | 417 | `result-track:7c57823a29548011e62731d21e2d001376a35899d5763de434a6c0e88e887028` |
| 34 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/instance-source-edition-3.md) | 438 | `declaration-track:40240f5221f845e902d7b74f5f1e18468c68666268bb649ce43e4b4617ef8548` |
| 35 | `theorem` | [ofFractionRing_smul](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/offractionring-smul.md) | 443 | `result-track:1f2b0f49b5bf2d0e2694127b800ac08b1b5e432f1e9d4f3d5159daea23447543` |
| 36 | `theorem` | [toFractionRing_smul](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/tofractionring-smul.md) | 448 | `result-track:133c29a0c6fe5da938b347c3b6915f210006560906d3cf86740b4d60d164ebea` |
| 37 | `theorem` | [smul_eq_C_smul](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/smul-eq-c-smul.md) | 454 | `result-track:92f9f309984c8509848dcd9174bd2d3cd6db4b51c66d1295c63639df67e29195` |
| 38 | `theorem` | [mk_smul](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/mk-smul.md) | 471 | `result-track:909637e098d532af8485a287dda628218a737912d1fedd0ad8e77c5a523be8bd` |
| 39 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/instance-source-edition-15.md) | 479 | `declaration-track:d1473c581c139407bdf5aa4d3e54b3dfef44916c1986cee7c1569d785820b7f9` |
| 40 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/instance-source-edition-16.md) | 489 | `declaration-track:ddac4e95bc5d1056e9dc602ddf16a15b9c417b1024e6b95059caa0a5714f09f6` |
| 41 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/instance-source-edition-17.md) | 492 | `declaration-track:e81a6a86b63af9f8ca345aebe4c4dfc1732c131cded9678badb1ad7182b8e0f4` |
| 42 | `instance` | [instNontrivial](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/instnontrivial.md) | 495 | `declaration-track:aaf62b2ba1e7e8b1f87d9f90eda0e7f0640fa85585c12892e20132ed98d043d5` |
| 43 | `def` | [toFractionRingRingEquiv](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/tofractionringringequiv.md) | 504 | `declaration-track:8b0318dda153b072dda5cf3f78436a988c8465ecbd3efef7ba0301c824cf0d5a` |
| 44 | `macro` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/macro-source-edition-2.md) | 519 | `declaration-track:54087ec72daec9bb9c07ef7070683111471d5a237a070d64c84500df15305db9` |
| 45 | `macro` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/macro.md) | 528 | `declaration-track:0008b63406cadfe740676b9ee5bacf237d20bcdbc94dfdeae55bd93596c89855` |
| 46 | `def` | [instCommMonoid](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/instcommmonoid.md) | 551 | `declaration-track:a6fb9b86e8453a6f5fccecc9f702eb967cd76bd6eebfe6951d2de9449dfc7d80` |
| 47 | `def` | [instAddCommGroup](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/instaddcommgroup.md) | 564 | `declaration-track:0741f63bf6e42cef7700391328d5dd6b2225aae2c7518fdb2657dbbc46e29b52` |
| 48 | `instance` | [instCommRing](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/instcommring.md) | 584 | `declaration-track:cdfd5520370abd2cffcae3e91fd188dfc826224fd2eb74af7e872960a56c197f` |
| 49 | `def` | [map](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/map.md) | 611 | `declaration-track:d01da237adc2d8c94426bfa53e2c704418a9f27837ac5f0cfe52b8d2ef65f5d9` |
| 50 | `theorem` | [map_apply_ofFractionRing_mk](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/map-apply-offractionring-mk.md) | 647 | `result-track:c33eb85f5160a7c9caccf6dd8c8ced86eeb728a45cd415b7119a872057fae621` |
| 51 | `theorem` | [map_injective](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/map-injective.md) | 656 | `result-track:a33ac9299b70b3e6b29a6babb0877600d08694730756f730124edb4140c4b31c` |
| 52 | `def` | [mapRingHom](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/mapringhom.md) | 671 | `declaration-track:dec4eba9fc26e340048930f05818ab1124aac0ec80294b13bc03b5f9b48d20a8` |
| 53 | `theorem` | [coe_mapRingHom_eq_coe_map](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/coe-mapringhom-eq-coe-map.md) | 692 | `result-track:3cfada10eaf9e49a100774d4f09aac4e9c7f269e700c771e062e074171dee21f` |
| 54 | `def` | [liftMonoidWithZeroHom](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/liftmonoidwithzerohom.md) | 701 | `declaration-track:e1cd5b026fdbffa9709e36305c025ab00cada1c7c2410bed28c484218246fa1c` |
| 55 | `theorem` | [liftMonoidWithZeroHom_apply_ofFractionRing_mk](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/liftmonoidwithzerohom-apply-offractionring-mk.md) | 727 | `result-track:06010df08e3912e7097fcd7a7a07453ab4d356510c87718ab328613480da0808` |
| 56 | `theorem` | [liftMonoidWithZeroHom_injective](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/liftmonoidwithzerohom-injective.md) | 733 | `result-track:09ba17a47290adbcc9ba606784a1d353290c9f4b1702e962f867e585d05c8953` |
| 57 | `def` | [liftRingHom](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/liftringhom.md) | 750 | `declaration-track:c84bb5d533c85c083b0ea1a1ceba506e2fda892c1bfd9ceca8e17469388dce68` |
| 58 | `theorem` | [liftRingHom_apply_ofFractionRing_mk](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/liftringhom-apply-offractionring-mk.md) | 775 | `result-track:86ca5f4c457f602b43a6d6f2d1dab1b2bde6f36392b8d77ab3379a16967bfa57` |
| 59 | `theorem` | [liftRingHom_injective](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/liftringhom-injective.md) | 780 | `result-track:104c62730440432ace872770c61fd32ec57b62ba3ebde6844c8f24a7ee52a12a` |
| 60 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/instance-source-edition-9.md) | 790 | `declaration-track:7f7dbe2f3fc54b2b0c1f9d0742a61d175fcf41a617c57e940a1500ee0b627ea4` |
| 61 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/instance-source-edition-6.md) | 808 | `declaration-track:4db521cd060bc34d134b82296551202cbd32e3788a70fb5ec881b25a3f085529` |
| 62 | `theorem` | [mk_one](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/mk-one.md) | 825 | `result-track:bcada2d357ad3fb0499fc49562b2e5efa9360fa945e7f49af56c014ddcfd0928` |
| 63 | `theorem` | [ofFractionRing_algebraMap](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/offractionring-algebramap.md) | 829 | `result-track:aa4f67a5d58029c8003024c8e62d2b9afd12a5bbb63078820e4dabcd9095b423` |
| 64 | `theorem` | [mk_eq_div](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/mk-eq-div-source-edition-2.md) | 835 | `result-track:f6ab8b1568470e2d615f62dd17da4da3dae83252bf0698305fa8264235753ec6` |
| 65 | `theorem` | [div_smul](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/div-smul.md) | 840 | `result-track:fadaec635d91e2b90b31f1c1bf2d91bdf28385df7de6cc01dd6650e76d20f9cd` |
| 66 | `theorem` | [algebraMap_apply](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/algebramap-apply.md) | 847 | `result-track:d29f3aa8882ae5353c050cb211717a7a72c380b3ca67e89965a24b2027637a1a` |
| 67 | `theorem` | [map_apply_div_ne_zero](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/map-apply-div-ne-zero.md) | 853 | `result-track:a85179377afbd1e07a2d6f03d04f6e941551cd9390dcb3a5eca88f8cf69460b2` |
| 68 | `theorem` | [map_apply_div](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/map-apply-div.md) | 863 | `result-track:0dd59fb9cb3762f079e383c5eaa5a879ceb9a90c516278f789e38c53281b6b0c` |
| 69 | `theorem` | [liftMonoidWithZeroHom_apply_div](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/liftmonoidwithzerohom-apply-div-source-edition-2.md) | 876 | `result-track:f33f4762029add93f318312fac739d7f0be7f57555ac8b65f4067c50f0865998` |
| 70 | `theorem` | [liftMonoidWithZeroHom_apply_div'](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/liftmonoidwithzerohom-apply-div.md) | 887 | `result-track:02f65ee9bd45bb04a53178fa2598a2f54ef25fb3d8d21ae2eb511b705c03743d` |
| 71 | `theorem` | [liftRingHom_apply_div](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/liftringhom-apply-div-source-edition-2.md) | 893 | `result-track:ad002b002932004ca0690ad2ec08bd77459ecf5db39f4a2453d22ea6eb0b8a81` |
| 72 | `theorem` | [liftRingHom_apply_div'](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/liftringhom-apply-div.md) | 900 | `result-track:039be8606b848495cad74a5c48071492c0d560739121df8b658c93a4d91bcc83` |
| 73 | `theorem` | [ofFractionRing_comp_algebraMap](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/offractionring-comp-algebramap.md) | 907 | `result-track:583995e3b588eae18a0cdde682d04367c9f3ae6c861b8e6d5ebf73a928183c21` |
| 74 | `theorem` | [algebraMap_injective](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/algebramap-injective.md) | 912 | `result-track:6cf4d4036c188b66242631d25c6a584003d0764a17ed08abcde8980fc0114cfb` |
| 75 | `theorem` | [algebraMap_eq_zero_iff](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/algebramap-eq-zero-iff.md) | 918 | `result-track:31da62d765335005b537f59b73b99b65e8db26bd8183352ca9adce1a3834f1ff` |
| 76 | `theorem` | [algebraMap_ne_zero](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/algebramap-ne-zero.md) | 925 | `result-track:242237654bb85e59bc80b799002965b5274d2fb9aa1910ba37ca8ed3ea4c587e` |
| 77 | `def` | [mapAlgHom](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/mapalghom.md) | 938 | `declaration-track:8cc94a2d824a8c148a5fe75681d57611ba95a8aa93b8deff6abe7c17b627984b` |
| 78 | `theorem` | [coe_mapAlgHom_eq_coe_map](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/coe-mapalghom-eq-coe-map.md) | 945 | `result-track:11d83dc0c4591e9584f4e6025adc93c7b26e39930d736488018b285d5603b719` |
| 79 | `def` | [liftAlgHom](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/liftalghom.md) | 952 | `declaration-track:e8a53366fb95d6d95a13b643fd30d28af18feb1de3f777fa03ca158df979a810` |
| 80 | `theorem` | [liftAlgHom_apply_ofFractionRing_mk](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/liftalghom-apply-offractionring-mk.md) | 959 | `result-track:6c716a30556408049e759188aaebcfdfee087ec6152ec022c3b7f2ba6b18a8b0` |
| 81 | `theorem` | [liftAlgHom_injective](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/liftalghom-injective.md) | 964 | `result-track:65f3862cf5ec184aa618095b083297f80224cb1da1a2026d63d8be8fde29103a` |
| 82 | `theorem` | [liftAlgHom_apply_div'](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/liftalghom-apply-div-source-edition-2.md) | 972 | `result-track:e2e9756123a28e5c81fb40a5519d36f02004501ca7be0879333208ab0e50edf9` |
| 83 | `theorem` | [liftAlgHom_apply_div](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/liftalghom-apply-div.md) | 976 | `result-track:8708e1530083eed5e97b168d0f2849ce095daa65a9b4666bc9524e8f613044bf` |
| 84 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/instance.md) | 986 | `declaration-track:13636da9edc3290a9291c77a5eaa3344e42931df844ae9902e2dce6867284a85` |
| 85 | `theorem` | [liftOn_div](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/lifton-div.md) | 1004 | `result-track:4759fd1a31241dee83b2831de040a34d536e7f5feeaaa9afa8fd775bb35bf4be` |
| 86 | `theorem` | [liftOn'_div](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/lifton-div-source-edition-2.md) | 1013 | `result-track:66f18bdc0c1fb574f44ad93184bb1313ad4f83dacf9422d9c8a1f04ce06b0975` |
| 87 | `theorem` | [induction_on](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/induction-on-source-edition-2.md) | 1026 | `result-track:76232aab066d9eda8082dc3a37efd963e17a1269e692ed6dc85a9922245a9f0d` |
| 88 | `theorem` | [ofFractionRing_mk'](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/offractionring-mk.md) | 1031 | `result-track:eb2c1883a8c260d50f395490f04553aafb96f7135fe9b691be98b62ee29e801c` |
| 89 | `theorem` | [ofFractionRing_eq](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/offractionring-eq.md) | 1039 | `result-track:a82d57843377f13e1779623fe8a3e77a55f8d4054804c6da1be0964912cafeb9` |
| 90 | `theorem` | [toFractionRing_eq](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/tofractionring-eq.md) | 1052 | `result-track:db07f4f949b1247e3d95bfae91db4007eb6dde7eefa8c5fded5e1a1212e722c4` |
| 91 | `theorem` | [toFractionRingRingEquiv_symm_eq](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/tofractionringringequiv-symm-eq.md) | 1064 | `result-track:f25b069ad4d44b31256f3335dcbc3351ef70525f2cf8c72967e7512e9db744a1` |
| 92 | `def` | [numDenom](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/numdenom.md) | 1088 | `declaration-track:ea02f2380ed43de77065a342aa991e4b3a8d384b432284fccaee7c44daa3fa0e` |
| 93 | `theorem` | [numDenom_div](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/numdenom-div.md) | 1127 | `result-track:7301aa6c2cfb57c0ec3c831f2cc9847486f89d69a6a4d39caf634f93ae5938cb` |
| 94 | `def` | [num](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/num.md) | 1139 | `declaration-track:61f76d448287191c431abfb931fa8198238a721524b7b1557ff4967d4189612b` |
| 95 | `theorem` | [num_div'](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/num-div-source-edition-2.md) | 1143 | `result-track:ec4d12ae65b5fa2ed2e8f590b3e3946c884c5b90e726ddd4b030d2b6118be691` |
| 96 | `theorem` | [num_zero](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/num-zero.md) | 1149 | `result-track:34d18e8d0b3fd743d420288852c7d8741baff0cbfcdce47460e6419c6508cc4a` |
| 97 | `theorem` | [num_div](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/num-div.md) | 1153 | `result-track:b711325960312f490fb0d209cd05b5db2c94c023af530df81c6cd8aff5580922` |
| 98 | `theorem` | [num_one](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/num-one.md) | 1162 | `result-track:037f2f5471691a014e4285fada6f7f2139a294109a661e66a13a48eef8184223` |
| 99 | `theorem` | [num_algebraMap](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/num-algebramap.md) | 1166 | `result-track:f884b8548be8dde8f7e4f597f1ca783559b85d274cdc4679549cbf9f4345c83f` |
| 100 | `theorem` | [num_div_dvd](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/num-div-dvd.md) | 1169 | `result-track:46be91e3d1829e5e368a0534ef5e219cf19e3da5b881706e437fc0a5ec8b3e03` |
| 101 | `theorem` | [num_div_dvd'](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/num-div-dvd-source-edition-2.md) | 1178 | `result-track:cea8d7a34629d6c0bc0421fbb459e4a446e2a2da7a538532c7ff32a239b881b5` |
| 102 | `def` | [denom](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/denom.md) | 1184 | `declaration-track:618315c94110dae9e0a1c5b549131d744762c5f5c35e085ce7d812ed1b27faa1` |
| 103 | `theorem` | [denom_div](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/denom-div.md) | 1189 | `result-track:f55c49cb95d54b9028b19cf712c1f24370193b3536edaf12322af5f179cc7565` |
| 104 | `theorem` | [monic_denom](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/monic-denom.md) | 1195 | `result-track:130fe5406e68b8d3c8a93f7177a66b739286f553747d0e978cd6cb5b13c7e77d` |
| 105 | `theorem` | [denom_ne_zero](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/denom-ne-zero.md) | 1202 | `result-track:4b7415bce56c0d62531cf87154d8404a3a65c3adae5e6725231a1846224b53c5` |
| 106 | `theorem` | [denom_zero](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/denom-zero.md) | 1207 | `result-track:518a8d07abb798926043802db008a05ab48bdb138167934ea1e4a94f3fbbf174` |
| 107 | `theorem` | [denom_one](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/denom-one.md) | 1212 | `result-track:2a3579aaf66dea0b9f5f0fde0f688d9b94589fd714fa9b67d9ad697df8dd9b2a` |
| 108 | `theorem` | [denom_algebraMap](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/denom-algebramap.md) | 1217 | `result-track:a7b591aebcac4d17f82b847c956479a8c108991762358abb22ee5680db4f1205` |
| 109 | `theorem` | [denom_div_dvd](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/denom-div-dvd.md) | 1222 | `result-track:afbd6e6d337051e306458fb4c407e2c16ae6db8ab424617a4edfa5056a48db20` |
| 110 | `theorem` | [num_div_denom](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/num-div-denom.md) | 1231 | `result-track:4ac4166529aec6562247714e3e5516542786cb7d677396480148910beb3925a3` |
| 111 | `theorem` | [isCoprime_num_denom](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/iscoprime-num-denom.md) | 1247 | `result-track:47f1d8e2affb447610546945c245f55da5cd0b165def98fea4afb70ef5cbdc11` |
| 112 | `theorem` | [num_eq_zero_iff](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/num-eq-zero-iff.md) | 1256 | `result-track:b2a08835f90220855fd6840e01ca76aa98447186d05d7806535c7d68e14d1011` |
| 113 | `theorem` | [num_ne_zero](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/num-ne-zero.md) | 1260 | `result-track:70ec71948e40f9409364777129d20f463981f7511348ac103ae482b6bb91c63b` |
| 114 | `theorem` | [num_mul_eq_mul_denom_iff](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/num-mul-eq-mul-denom-iff.md) | 1264 | `result-track:29fb0065f102102de265410a19a66520dfd00c23671b4d27da49c08a571239d2` |
| 115 | `theorem` | [num_denom_add](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/num-denom-add.md) | 1273 | `result-track:364cd244ef1cd9b8c48fb62d287fe44ffbb9ea06b9d20a050e2e57acb8dc6330` |
| 116 | `theorem` | [num_denom_neg](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/num-denom-neg.md) | 1282 | `result-track:d0d9eac5561a44f98b32e73bc937fab6fdb869a34664af6bdaa8289a1d0ec54a` |
| 117 | `theorem` | [num_denom_mul](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/num-denom-mul.md) | 1286 | `result-track:88755045f1c56025e5baf32ba2da73692a22db96f6bddd4a4650076a965098d3` |
| 118 | `theorem` | [num_dvd](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/num-dvd.md) | 1294 | `result-track:1c02ab22b1c5f9b57ee185123d4b43ba80de33dd9b52c9fa696a9759d1aff22e` |
| 119 | `theorem` | [denom_dvd](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/denom-dvd.md) | 1307 | `result-track:3b5e4cc89081c66b9f756293cbd23a5924a0dcfa3c7f7e4be36019c0f56b5687` |
| 120 | `theorem` | [num_mul_dvd](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/num-mul-dvd.md) | 1319 | `result-track:0365bd9ce00f4867ba79a5cb46ede8049b0a09d87ddd474018dae095b2464ca4` |
| 121 | `theorem` | [denom_mul_dvd](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/denom-mul-dvd.md) | 1329 | `result-track:d3b9133887d3ed4682ccb72cf4a2959985dbc67e20951adcc7871dbac5091d19` |
| 122 | `theorem` | [denom_add_dvd](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/denom-add-dvd.md) | 1335 | `result-track:7f512ff65138f67f12843ee29968a1b755a0b241b882f79f6b7ad9f6d50c3ed3` |
| 123 | `theorem` | [map_denom_ne_zero](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/map-denom-ne-zero.md) | 1344 | `result-track:d3e981a9ae111b8b301778f52511e33c06ac80f420fc2d9e2df7ab9bf5f5aa15` |
| 124 | `theorem` | [map_apply](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/map-apply.md) | 1349 | `result-track:35d71de44c72c79a8e2337cd892eb6049bc4adf46279040d93c0c6d8fed7fe26` |
| 125 | `theorem` | [liftMonoidWithZeroHom_apply](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/liftmonoidwithzerohom-apply.md) | 1356 | `result-track:71881831267ee2503501f47a39df1ce8c4be5a0cf072baf678e7cead50fd2414` |
| 126 | `theorem` | [liftRingHom_apply](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/liftringhom-apply.md) | 1362 | `result-track:80ae971112dd57d0f710a36e3e07fe2f7b14658b3b7a8033341242c5ffc5e949` |
| 127 | `theorem` | [liftAlgHom_apply](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/liftalghom-apply.md) | 1367 | `result-track:d51e071156e1ba16d5cd7a7ddd6febcda68190600c2a9838af502e4ea5992fd4` |
| 128 | `theorem` | [num_mul_denom_add_denom_mul_num_ne_zero](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/num-mul-denom-add-denom-mul-num-ne-zero.md) | 1373 | `result-track:a005d0e950f8fe5e9090a1af41d38a419a2a0d78dd7c939af8e3c38743c4d3bd` |
| 129 | `def` | [C](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/c.md) | 1392 | `declaration-track:30ba0d9afa66d7b29c3a4fb387830411fc4a95a464d545faad8f774638fddad0` |
| 130 | `theorem` | [algebraMap_eq_C](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/algebramap-eq-c.md) | 1398 | `result-track:ea50be40680c3c47bffc5ecd657f5fcea232c76f38951b3e2dc8df13110fd00c` |
| 131 | `theorem` | [algebraMap_C](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/algebramap-c.md) | 1404 | `result-track:ae19f1a7d8ae81901fc808c83ace8eb2ba5ab77a3a916db6082a944379f3fe2c` |
| 132 | `theorem` | [algebraMap_comp_C](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/algebramap-comp-c.md) | 1410 | `result-track:0ae78a557c3bfc0ad3a67cc30dec9dc57c1a1b0982a93e4192f28f89546bc5c4` |
| 133 | `theorem` | [smul_eq_C_mul](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/smul-eq-c-mul.md) | 1415 | `result-track:22221d6c545f15bcc6a7298175df9197bc58e6f443a02f2e403df99d6c0cffd8` |
| 134 | `def` | [X](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/x.md) | 1421 | `declaration-track:a14049da9f8cd8df8d48b2a36f20748cf04aa07eecd32b845aa9c8d9a27b49f9` |
| 135 | `theorem` | [algebraMap_X](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/algebramap-x.md) | 1427 | `result-track:1782f7a93670893d6b4ff4f1442a5acfcf2bdd2ad3390f19c7d35fc5078ffcc2` |
| 136 | `theorem` | [num_C](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/num-c.md) | 1439 | `result-track:ddbe4120eb62efafbfa8d8c4db7f825907225010260af4277cfa1652f8fb0993` |
| 137 | `theorem` | [denom_C](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/denom-c.md) | 1445 | `result-track:899ff0d1508698124c5b71923a703c2a4a5f60edd2663b2cdb8120b87cbba1fa` |
| 138 | `theorem` | [num_X](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/num-x.md) | 1451 | `result-track:272a2b0e89c2bc5c58932ff359f874d158b72436f34ea29b3fdc5f9e1870d517` |
| 139 | `theorem` | [denom_X](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/denom-x.md) | 1457 | `result-track:06c4e01f2c2f5c3967239aefed34a694dc9c1c00a56994862901674205a9a6c0` |
| 140 | `theorem` | [X_ne_zero](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/x-ne-zero.md) | 1462 | `result-track:a6c32ecbd04fd742008c6aa8ef4cac298237aed5056c86d3bb5c55d78315086d` |
| 141 | `def` | [eval](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/eval.md) | 1475 | `declaration-track:78cf6d2b9f23adb0f2a567f6243625f42169dd8ca004d0caa3677edc540fac18` |
| 142 | `theorem` | [eval_eq_zero_of_eval₂_denom_eq_zero](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/eval-eq-zero-of-eval-denom-eq-zero.md) | 1481 | `result-track:36741a22aa98bf63103e38bd3a2e241b78548c890e615c32068e891f2b3753b6` |
| 143 | `theorem` | [eval₂_denom_ne_zero](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/eval-denom-ne-zero.md) | 1485 | `result-track:094057c981f4a9096fb93d9cb3b48394f88c16cc0d2b898e7d108e413e41f563` |
| 144 | `theorem` | [eval_C](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/eval-c.md) | 1493 | `result-track:48bc6a72ef34730a62b09942d74986dcc233188b23cf40614ce50a4b0b1744ec` |
| 145 | `theorem` | [eval_X](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/eval-x.md) | 1498 | `result-track:36303473cfd6d852b5822ed6d9b20a20af5f4a7a39d7542e765d97e9ee7e7fe1` |
| 146 | `theorem` | [eval_zero](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/eval-zero.md) | 1503 | `result-track:8b978b3c529828d3828fe31598b97236bc9f15847edb2edbd2fdfa3d64bc98cd` |
| 147 | `theorem` | [eval_one](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/eval-one.md) | 1507 | `result-track:98050441e1c17fbe3e1be9e66e744f8c6af725b1ba812563e8b0213675a8e95f` |
| 148 | `theorem` | [eval_algebraMap](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/eval-algebramap.md) | 1511 | `result-track:663c5f562a71ee2f4492c7511d28b0e2cb46c0e8c62f064548c5b9aa58798f1c` |
| 149 | `theorem` | [eval_add](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/eval-add.md) | 1523 | `result-track:ba7f3c414c15bf68c4192d44e393b3e5a0ef44912a1257e5d8615bd77ffe749c` |
| 150 | `theorem` | [eval_mul](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/eval-mul.md) | 1543 | `result-track:601a1a56667da12adb577cb5781fa94c5bf09a763e15441883fc7d062573d0f6` |
| 151 | `def` | [intDegree](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/intdegree.md) | 1570 | `declaration-track:ec0665dec9aec4c5b474ecd6e605a7026865016e16964ceded9b707aa6915e41` |
| 152 | `theorem` | [intDegree_zero](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/intdegree-zero.md) | 1575 | `result-track:d2613a5e2a78f65407377bb6ef98040c8b1a46a8ab397079821abbbc40133cb0` |
| 153 | `theorem` | [intDegree_one](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/intdegree-one.md) | 1580 | `result-track:002df143a82e8cd111b3738eb958c31bd119b3df5c4043fa9845c5b55dcaa08e` |
| 154 | `theorem` | [intDegree_C](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/intdegree-c.md) | 1585 | `result-track:b1de050f2cce2678a091488be52a8ef972c3ff2571f59595966a3dd02efd1bdb` |
| 155 | `theorem` | [intDegree_X](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/intdegree-x.md) | 1591 | `result-track:56999c23ac12f55126503eead36279977feb4fbd899a9f8b21d5eef183a03f05` |
| 156 | `theorem` | [intDegree_polynomial](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/intdegree-polynomial.md) | 1598 | `result-track:c80b3df3d3cb31a43d0d3dc5d25796a227a98a77683e987ddf7939b307ef6a7e` |
| 157 | `theorem` | [intDegree_mul](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/intdegree-mul.md) | 1604 | `result-track:cdb450276dd5a361c908a1886a0fc48d18df2b5131e4655ac5ad7118d7e2fd45` |
| 158 | `theorem` | [intDegree_neg](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/intdegree-neg.md) | 1618 | `result-track:275c004e7b3719c968a7186e33b8447e8d7792c2d05f9c88cdb614aa53d10fe6` |
| 159 | `theorem` | [intDegree_add](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/intdegree-add.md) | 1627 | `result-track:18f8cfe1b6236694e8bdee7837f1b0bf120087cb1e4a16286a71b8309bfd7b63` |
| 160 | `theorem` | [natDegree_num_mul_right_sub_natDegree_denom_mul_left_eq_intDegree](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/natdegree-num-mul-right-sub-natdegree-denom-mul-left-eq-intdegree.md) | 1635 | `result-track:fa8feec1648ee3ad5f162ad19adecfccbfb5b38ae764eecbad9b1eaadf7857b2` |
| 161 | `theorem` | [intDegree_add_le](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/intdegree-add-le.md) | 1643 | `result-track:e8ba4b490f19382aa147ba9e591357946f75c715d24865286708fbaa49108c5d` |
| 162 | `def` | [coeAlgHom](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/coealghom.md) | 1666 | `declaration-track:afa92b72873e9ebe35e8a2965dd44f405404aff0f595c5892239979d968ac3f5` |
| 163 | `def` | [coeToLaurentSeries_fun](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/coetolaurentseries-fun.md) | 1677 | `declaration-track:8cc55465f45a4abc49f1e9f41efb3f7a6e23f72292b2342ac8a119c3d5c47481` |
| 164 | `instance` | [coeToLaurentSeries](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/coetolaurentseries.md) | 1680 | `declaration-track:e74bf582bd9e0b47c627a615bd4b5af1da8c4128e36c963e12e8245d90279c02` |
| 165 | `theorem` | [coe_def](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/coe-def.md) | 1684 | `result-track:c3965549880e258026a6c036711f0f67d7ef6b093117edfa8b98793625e51fac` |
| 166 | `theorem` | [coe_num_denom](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/coe-num-denom.md) | 1688 | `result-track:b99323c30e07b878f06bf464ffbdf59a53ae19e42585c09bfa5a8fbed0a6adfe` |
| 167 | `theorem` | [coe_injective](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/coe-injective.md) | 1692 | `result-track:efe5d0a5a61a708644fafc26565316666c90a2b05c19c7825a097ccc67d0e587` |
| 168 | `theorem` | [coe_apply](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/coe-apply.md) | 1699 | `result-track:2dad6bfbc8168de09178e903c3afc0f15c05ca622a8f860626c1658835491eee` |
| 169 | `theorem` | [coe_zero](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/coe-zero.md) | 1704 | `result-track:94b6c264a78a1e34e32f23c267498d400860e2ffdd9152c72e695c5eb5368af3` |
| 170 | `theorem` | [coe_one](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/coe-one.md) | 1709 | `result-track:88f3a702d9432581542b34351def023963702c48a2daa57333cea4116ddd517b` |
| 171 | `theorem` | [coe_add](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/coe-add.md) | 1714 | `result-track:28ea9dc5158dfa1caa550b74adcc36fc1f7647fc83ceac660ec8271d3f9d64e4` |
| 172 | `theorem` | [coe_sub](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/coe-sub.md) | 1719 | `result-track:159fcb241ad13858e038cc30370d1af89167804919437ad486cc04db4de806ac` |
| 173 | `theorem` | [coe_neg](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/coe-neg.md) | 1724 | `result-track:8b31ddd433147248aa13aee1f1a3db4d0443fa014ac17fdb1bacc0b4c6f01249` |
| 174 | `theorem` | [coe_mul](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/coe-mul.md) | 1729 | `result-track:9057ec10ab2803a71085e76a01e9ae03f90752648c72004d74e7cd3abf3608a9` |
| 175 | `theorem` | [coe_pow](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/coe-pow.md) | 1734 | `result-track:88b7aac038004cf7723e952251ac2b4fc2938878cc3b4fdf55e0897c100a7e75` |
| 176 | `theorem` | [coe_div](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/coe-div.md) | 1739 | `result-track:09c11e9326993916b9665976556c135688dac5f7795210ddea2790c54198aa5e` |
| 177 | `theorem` | [coe_C](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/coe-c.md) | 1745 | `result-track:5a681375051012455c304db7af7b8a15d05abc0cfa847079b1ba345ba5d86722` |
| 178 | `theorem` | [coe_smul](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/coe-smul.md) | 1755 | `result-track:1f96829685b0377f9de5249eb64b2af34333f931a30080725410258f48f14de8` |
| 179 | `theorem` | [coe_X](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/coe-x.md) | 1762 | `result-track:582bddb5a8df549a97a152033f69271c25c4cf8aa81374c62d2b1745073cf488` |
| 180 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/instance-source-edition-14.md) | 1770 | `declaration-track:c8e42b25eebefe1ca4804934bca5e4ffcc6818e2a2098bb21ee4cc94455f243d` |
| 181 | `theorem` | [algebraMap_apply_div](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/algebramap-apply-div.md) | 1773 | `result-track:d81f113b36b412c490de1302922afc55b920ac62e5c37d1fe60365b9ac645bbb` |
| 182 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFunc.lean/declarations/instance-source-edition-12.md) | 1782 | `declaration-track:b0b1232cffb1c6d6a6b25d8a780dc296463932bccc241d65f9c5b20e2af25b70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cbb3c3df8ce4a75f22ba50dc5e482de6d7fb24ee1f90a372338b7633bbec18af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RatFunc/Variantef05e192e6ac84e9e08ffce2cb3f3310ccf731bb879b52afdb8697c4215e45fe.lean","GRWTSK/_verification/specifications/Algebra/RatFunc/Variantef05e192e6ac84e9e08ffce2cb3f3310ccf731bb879b52afdb8697c4215e45fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
