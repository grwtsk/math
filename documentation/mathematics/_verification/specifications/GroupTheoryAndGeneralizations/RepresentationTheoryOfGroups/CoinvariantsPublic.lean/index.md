# Verification target: Coinvariants Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1aef6b4af16a9d151e17d60d24257249ca5fdf2a",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Coinvariants/Variant8ec5be27caadf87517ef70a2208116261779939de5fa818ed4d7a8e49394489b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1aef6b4af16a9d151e17d60d24257249ca5fdf2a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Coinvariants/Variant8ec5be27caadf87517ef70a2208116261779939de5fa818ed4d7a8e49394489b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Coinvariants/Variant8ec5be27caadf87517ef70a2208116261779939de5fa818ed4d7a8e49394489b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Coinvariants.ker](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/ker.md) | 53 | `declaration-track:1e372c935001e356348386da15364bdc94bfc837e6bbf5199a455c96261b0d9a` |
| 2 | `def` | [Coinvariants](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/coinvariants.md) | 57 | `declaration-track:52a2e2d94e4a2b4af69e869edd16f45309e18acdb35353556419dc9c70047ea7` |
| 3 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/anonymous-instance-source-line-61-occurrence-2.md) | 61 | `declaration-track:d1362978b3a923690df1124675034fffdad3b368be39d36fdf8fa51aa19e3d41` |
| 4 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/anonymous-instance-source-line-63-occurrence-2.md) | 63 | `declaration-track:751571ac55996e75b30d527312adf6b42638eeeb3abb3fc2b701982c7aeee01b` |
| 5 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/anonymous-instance.md) | 65 | `declaration-track:060675e836dbd6951d1876ca8e46ec2e4bd565f9ba884a5298f64a5e6523ffaa` |
| 6 | `lemma` | [sub_mem_ker](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/sub-mem-ker.md) | 70 | `result-track:d50a42d17bf8af61fec0b83513ee5f5175d796f8766b658efa7bbbae30127214` |
| 7 | `lemma` | [mem_ker_of_eq](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/mem-ker-of-eq.md) | 73 | `result-track:8c942d6112434df9d8f9de6a7f71c1cebd51d6dfc7d7e5982a626b096737cf8a` |
| 8 | `def` | [mk](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/mk.md) | 79 | `declaration-track:fdcdada7eec605aa9102d97ffd3c48e328f69b8838fc1a8a32374603b9e63492` |
| 9 | `theorem` | [mk_eq_iff](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/mk-eq-iff.md) | 81 | `result-track:a6e1c78b1b5c9e477b88a358119f0428818416fdb99642f2b1d699638b9aec6a` |
| 10 | `theorem` | [mk_eq_zero](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/mk-eq-zero.md) | 85 | `result-track:2a6f1e62e47e320c8f597a49699011d4da6e809386ba70790aeae854df964a74` |
| 11 | `theorem` | [mk_surjective](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/mk-surjective.md) | 89 | `result-track:9e94e3e30272001402ba4f6997567f07cd52efc44fd4d98d9ed501df65cd2924` |
| 12 | `lemma` | [mk_self_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/mk-self-apply.md) | 93 | `result-track:5e9a7131cf9ac0b055d9722401347b80940db83ed28c8f6486765bcf25cc4627` |
| 13 | `theorem` | [induction_on](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/induction-on.md) | 99 | `result-track:92d3137de618a3dbe87a9afe6a2922e31823df16760b6e88697c329a73cb8cf4` |
| 14 | `def` | [lift](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/lift.md) | 106 | `declaration-track:fd54961df0429a6e71c021275b638b4ab8a314fd4bd7b5536183092606e7306c` |
| 15 | `theorem` | [lift_comp_mk](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/lift-comp-mk.md) | 113 | `result-track:0b8233199e49fdf68398c15fd3329336d68fbb432519c17601204cb937d72844` |
| 16 | `theorem` | [lift_mk](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/lift-mk.md) | 117 | `result-track:ce684c107c8f296c9e50118870631d74516bfb0178eaa93344558707f5c93557` |
| 17 | `lemma` | [hom_ext](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/hom-ext.md) | 122 | `result-track:30caf8487409981b4f9781e2766a1d8e624a31235fd23e9be19d77b2f6c4fb29` |
| 18 | `def` | [map](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/map.md) | 127 | `declaration-track:6f4336e2c400e3e44fd63ca4d304018809ec0ba2f683c92323d3f9ede0ed846d` |
| 19 | `lemma` | [map_comp_mk](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/map-comp-mk.md) | 135 | `result-track:e566995b089b39ca303428e9eb2618509f2c29564ff99eac2e4bf61b9f42ddcf` |
| 20 | `lemma` | [map_mk](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/map-mk.md) | 138 | `result-track:fbf8c66a034d1c652a3374f556a6fe2bf357f0bc986e382e5b6306443b81c7e8` |
| 21 | `lemma` | [map_id](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/map-id.md) | 141 | `result-track:d26a4891f315c31ddd00a54953de19bcb45a6cdc1df47bc8e5120e8473ede518` |
| 22 | `lemma` | [map_comp](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/map-comp.md) | 145 | `result-track:15df09e56dc7f0d2e52d8634827b6826e2927769736324251f106bff37681c56` |
| 23 | `lemma` | [Coinvariants.le_comap_ker](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/le-comap-ker.md) | 157 | `result-track:f3ca8596185498353391b8b477642b32205a3e12a0c6b730927e510f0214b77e` |
| 24 | `abbrev` | [toCoinvariantsKer](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/tocoinvariantsker-source-line-165-occurrence-2.md) | 165 | `declaration-track:f311defe3e572550f17bab4e9861e329716bcdab4f8ae5bab3e589aeac2c82f6` |
| 25 | `def` | [toCoinvariants](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/tocoinvariants-source-line-171-occurrence-2.md) | 171 | `declaration-track:ff95ba794db63868d6bb4b17a90f3f734054eed7dc65d7ac9f2c1dc71b37351c` |
| 26 | `lemma` | [toCoinvariants_mk](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/tocoinvariants-mk.md) | 176 | `result-track:698c6e8eb8da6e725a4546b9d2f5faa589171eb9eab7bb5880d2af73d219bed2` |
| 27 | `abbrev` | [toCoinvariantsMkQ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/tocoinvariantsmkq.md) | 180 | `declaration-track:870b7cfd1f19ee8a45530a61572d3f918f1dbc36ce78abbf567403adf0565b2a` |
| 28 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/anonymous-instance-source-line-184-occurrence-2.md) | 184 | `declaration-track:0e5922b183982abf5baad13a8fd16ba596d71842c3a2630a1f87a7930f03296e` |
| 29 | `abbrev` | [quotientToCoinvariants](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/quotienttocoinvariants.md) | 191 | `declaration-track:99f7b43f6eada2ea8986947fe1f2db69080c7d4b879708293a7fe51dc5068126` |
| 30 | `def` | [coinvariantsToFinsupp](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/coinvariantstofinsupp.md) | 207 | `declaration-track:1560aa72dc8531cd9798c8aa108de660b1c41b2c9fd24c15bbfc89d859c8035e` |
| 31 | `lemma` | [coinvariantsToFinsupp_mk_single](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/coinvariantstofinsupp-mk-single.md) | 214 | `result-track:e992ebe5dbb7c60138ef210435e52eaa009492f07d580e9504dd91e864de5594` |
| 32 | `def` | [finsuppToCoinvariants](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/finsupptocoinvariants.md) | 222 | `declaration-track:e1d0648603961f5064f7d082ce49a2bae836c5d1684a3e95f55414b02e0afba3` |
| 33 | `lemma` | [finsuppToCoinvariants_single_mk](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/finsupptocoinvariants-single-mk.md) | 228 | `result-track:7788b124bbd87276d95966d3de6f87fb189bc6516635411e77cb8e0998bfc428` |
| 34 | `def` | [coinvariantsFinsuppLEquiv](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/coinvariantsfinsupplequiv.md) | 237 | `declaration-track:b53baf2c4219a206aa6d3ace194bfd9a582517574449f3a20ec6b6e9f4a399d5` |
| 35 | `lemma` | [coinvariantsFinsuppLEquiv_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/coinvariantsfinsupplequiv-apply.md) | 243 | `result-track:a13e9c171384ce26d4755c64c32283f091ff7ef9f594ac87eb9394a60af404b7` |
| 36 | `lemma` | [Coinvariants.mk_inv_tmul](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/mk-inv-tmul.md) | 258 | `result-track:8c7e5f8deaf9463400e07e778373efbb651067aa850acdd0bb08e9d441527e08` |
| 37 | `lemma` | [Coinvariants.mk_tmul_inv](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/mk-tmul-inv.md) | 263 | `result-track:8efb658be867d56361c45b1baae3af7382c6b709526163fb38fb31ec3c5939d8` |
| 38 | `def` | [ofCoinvariantsTprodLeftRegular](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/ofcoinvariantstprodleftregular.md) | 269 | `declaration-track:1ad40b7a2a21e590bfc5d2d9e4f1c50a79a7c63d3d07ab6ffae731a1a036e0ac` |
| 39 | `lemma` | [ofCoinvariantsTprodLeftRegular_mk_tmul_single](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/ofcoinvariantstprodleftregular-mk-tmul-single.md) | 276 | `result-track:43f4f120e7a0c3b9ddec02da9b8ffc75de7a084e453275975772ba1eaad9a56d` |
| 40 | `def` | [coinvariantsTprodLeftRegularLEquiv](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/coinvariantstprodleftregularlequiv.md) | 283 | `declaration-track:27178739245781ce97b134b13eea8772912b89876c6ac0f59f311f356ba9231d` |
| 41 | `lemma` | [coinvariantsTprodLeftRegularLEquiv_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/coinvariantstprodleftregularlequiv-apply.md) | 290 | `result-track:34b34c12911024ef929770fd68085c515a7cbb542c46136d27845acc99c37419` |
| 42 | `abbrev` | [toCoinvariantsKer](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/tocoinvariantsker.md) | 309 | `declaration-track:ce18eafaac6361b57666294bdf84e5468daaabbd49ba316abd67e3db6857727f` |
| 43 | `abbrev` | [toCoinvariants](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/tocoinvariants.md) | 313 | `declaration-track:40e0b26e3d95dc06224d319aa2721aad22d937d9c9c0a941814ac47e9304af3b` |
| 44 | `abbrev` | [toCoinvariantsMkQ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/tocoinvariantsmkq-source-line-316-occurrence-2.md) | 316 | `declaration-track:ae1e0f11c7e35931a171447e64a780f6ce00dbd1afda40b65682ab2bb69a5e78` |
| 45 | `abbrev` | [quotientToCoinvariants](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/quotienttocoinvariants-source-line-321-occurrence-2.md) | 321 | `declaration-track:c9a28db5c09564d6775beb44b78dfa123d96c86a34925716f831eaaf47f65ca2` |
| 46 | `def` | [coinvariantsShortComplex](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/coinvariantsshortcomplex.md) | 327 | `declaration-track:e240f0ca819bdd049d3447900f14668de189f55ca8aa6b0ad2478d0ad7a8abeb` |
| 47 | `lemma` | [coinvariantsShortComplex_shortExact](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/coinvariantsshortcomplex-shortexact.md) | 335 | `result-track:03c155d3af846be05d4610ff05fbcf33b59cdd78e21244eb199a2ee7cc9cd6f1` |
| 48 | `def` | [coinvariantsFunctor](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/coinvariantsfunctor.md) | 349 | `declaration-track:2d8af226682c1729bf1c0837ce140fc43c708e01112c6e3e27d7aff69a529e4b` |
| 49 | `def` | [coinvariantsMk](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/coinvariantsmk.md) | 358 | `declaration-track:0f9dd6631cc007c16a8f4cf2840bffd0e960468230a72cd4ca32c9c054a599df` |
| 50 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/anonymous-instance-source-line-361-occurrence-2.md) | 361 | `declaration-track:55d1a0523b1820fbc1076077b2d64a09bc258d066d27910cc723c4cad0d5a1b6` |
| 51 | `lemma` | [coinvariantsFunctor_hom_ext](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/coinvariantsfunctor-hom-ext.md) | 367 | `result-track:32ec974ae16b44f8dc29833689c9321cefe5d5eb690714a32b2b91450f05f746` |
| 52 | `abbrev` | [desc](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/desc.md) | 373 | `declaration-track:7af87b73a30f7c143e0d40c6ca77a349d33b9d7dccba5beb28a42df1292f2e6a` |
| 53 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/anonymous-instance-source-line-380-occurrence-2.md) | 380 | `declaration-track:7e21ea372ad8292f5b4a82ce13bbf674421c892706e1c1dc51a50835ce21cb62` |
| 54 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/anonymous-instance-source-line-381-occurrence-2.md) | 381 | `declaration-track:60b73196cc7f92b6b4ded54706fbbccb237447fdd4cd0f90a28ae0c2a31a4e35` |
| 55 | `def` | [coinvariantsAdjunction](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/coinvariantsadjunction.md) | 386 | `declaration-track:17874cd7ee4a42ebce98cbf3a0920844172256f8bd0881fb1fc637584a8da964` |
| 56 | `theorem` | [coinvariantsAdjunction_homEquiv_apply_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/coinvariantsadjunction-homequiv-apply-hom.md) | 391 | `result-track:030fcbf764ac808886e464a57322d1aa313b9563db84984c923ddf220e9910f2` |
| 57 | `theorem` | [coinvariantsAdjunction_homEquiv_symm_apply_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/coinvariantsadjunction-homequiv-symm-apply-hom.md) | 398 | `result-track:ecc3c4bc90f4f3a28a13d3a7664bd74ceafbf2837805c3132d7b912a36304c8e` |
| 58 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/anonymous-instance-source-line-404-occurrence-2.md) | 404 | `declaration-track:102f51703f581399dcfb99df0baec6f8126e20b713ca5114e9b5a3fe173bf24f` |
| 59 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/anonymous-instance-source-line-405-occurrence-2.md) | 405 | `declaration-track:9f3ee10f6594265266f5a3934aa6c8cecd218570e96e57ab980b80a677b303da` |
| 60 | `abbrev` | [coinvariantsTensor](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/coinvariantstensor.md) | 410 | `declaration-track:2f6fc54a3408ebe1fcc9e5d5c7bff6673a6b7e20b0987a31fef65ad0c6a663da` |
| 61 | `abbrev` | [coinvariantsTensorMk](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/coinvariantstensormk.md) | 416 | `declaration-track:d6c5dc7807bdb84a9f5f50555aed60db2bb4f34252f10dfca443d15af034ff01` |
| 62 | `lemma` | [coinvariantsTensorMk_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/coinvariantstensormk-apply.md) | 422 | `result-track:5e5534412b4ca843d1c1938e485dd0f528c2de9ce8e7dfb92ef16fe2351c8dc4` |
| 63 | `lemma` | [coinvariantsTensor_hom_ext](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/coinvariantstensor-hom-ext.md) | 426 | `result-track:b5e090aeda107c3ea5c70db9d1b53ebc6c42918cd987cd98de8f0cbcd7155ced` |
| 64 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/anonymous-instance-source-line-431-occurrence-2.md) | 431 | `declaration-track:8ccd3195bb6c9ba13a90f9c1a3bbbf796fdedb473e991ea33899f28062fea868` |
| 65 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/anonymous-instance-source-line-433-occurrence-2.md) | 433 | `declaration-track:93ced8deaba3769be6ca997fae1d3250356b8a0624ae9b5a10f4ae3cb78edd65` |
| 66 | `def` | [quotientToCoinvariantsFunctor](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/quotienttocoinvariantsfunctor.md) | 442 | `declaration-track:f108b6f21220514f965d5d306815bb1d53016d584bb6e59a5258b892b6b2b24f` |
| 67 | `def` | [coinvariantsTensorFreeToFinsupp](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/coinvariantstensorfreetofinsupp.md) | 460 | `declaration-track:b04acd65934362a974594e859c4cf1df893097bcbd38a474a487bd9337241d89` |
| 68 | `lemma` | [coinvariantsTensorFreeToFinsupp_mk_tmul_single](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/coinvariantstensorfreetofinsupp-mk-tmul-single.md) | 469 | `result-track:dfcca563c032b6ade79182c77a721e9444a480f13d46f97242f138086b81d6d4` |
| 69 | `def` | [finsuppToCoinvariantsTensorFree](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/finsupptocoinvariantstensorfree.md) | 479 | `declaration-track:40254e06c6ed7ca03d9af3f87fd9bcb8f7089672155c529fd4cf097a9a39566a` |
| 70 | `lemma` | [finsuppToCoinvariantsTensorFree_single](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/finsupptocoinvariantstensorfree-single.md) | 488 | `result-track:c672985d0ac59d184af6e3617dc1ca22504a75ce650e4aa2ade8d8ad863bd4ba` |
| 71 | `abbrev` | [coinvariantsTensorFreeLEquiv](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/coinvariantstensorfreelequiv.md) | 500 | `declaration-track:fb33156e8eff149b1a61186f3b9a14ea739f783b23a33ceb8727f9ed054392d9` |
| 72 | `lemma` | [coinvariantsTensorFreeLEquiv_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/CoinvariantsPublic.lean/declarations/coinvariantstensorfreelequiv-apply.md) | 512 | `result-track:0047e0470056d6a2347425477bf1234ca61d8ddf725466b42eeb0cfaa6c1fd36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=62a46a60746f2d4b1e53aabdb56ca931a7a128825393106af34e6a8f6f2eac13 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Coinvariants/Variant8ec5be27caadf87517ef70a2208116261779939de5fa818ed4d7a8e49394489b.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Coinvariants/Variant8ec5be27caadf87517ef70a2208116261779939de5fa818ed4d7a8e49394489b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
