# Verification target: Algebra Basic Namespaced Algebra Map Submonoid Powers

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "958fd36cf4f9d010a3afd68a40b5e9de2841f72f",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta479ce25018de96a4f2aed8e6b465ad6d5a1fc99300ce472394738e7f847ece1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `958fd36cf4f9d010a3afd68a40b5e9de2841f72f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Varianta479ce25018de96a4f2aed8e6b465ad6d5a1fc99300ce472394738e7f847ece1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Varianta479ce25018de96a4f2aed8e6b465ad6d5a1fc99300ce472394738e7f847ece1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Equiv.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Ker` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.RestrictScalars` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.ULift` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.CharZero` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.CharZero` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Algebra Basic Namespaced Algebra Map Submonoid Powers](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/algebra.md) | 45 | `declaration-track:3c0f9aca855731b67badae3f8c0525cfef96456653d435aa40f077c7246b2253` |
| 2 | `theorem` | [algebraMap_pUnit](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/algebramap-punit.md) | 56 | `result-track:5b9b1cd4ecf4145cdfff5f1749301ba12049283cef4e4ab23d19423370e260e7` |
| 3 | `instance` | [Algebra Basic Namespaced Algebra Map Submonoid Powers](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/algebra-source-line-63-occurrence-2.md) | 63 | `declaration-track:747a55dd613164f7d06e228d25340289acfdf7b8dfac918831cae910eb6c9163` |
| 4 | `theorem` | [Algebra Basic Namespaced Algebra Map Submonoid Powers](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/algebramap-eq.md) | 71 | `result-track:74dfd1d98cacada47c7738199bdaf3be3f1a6f3611a76a2a0d2e93116e391bfb` |
| 5 | `theorem` | [Algebra Basic Namespaced Algebra Map Submonoid Powers](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/down-algebramap.md) | 76 | `result-track:0cff7cc31d0a2b558707af0bf1487a37d4aed87aa89679519151d071c9290fd6` |
| 6 | `instance` | [ofSubsemiring](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/ofsubsemiring.md) | 82 | `declaration-track:d11c1d60b00c7754e05b83ec762051eb650d81dc38278a9b8753fe6f325bef1b` |
| 7 | `theorem` | [algebraMap_ofSubsemiring](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/algebramap-ofsubsemiring.md) | 88 | `result-track:28e43ed4e0c6ba63bad37c19f7c0c81a25f9e08f3316e00cde1982a42cf311b6` |
| 8 | `theorem` | [coe_algebraMap_ofSubsemiring](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/coe-algebramap-ofsubsemiring.md) | 92 | `result-track:9a2e668695ae0ccdf9e68d5478925546eb356b52eec814c0b575bccda90a2d8b` |
| 9 | `theorem` | [algebraMap_ofSubsemiring_apply](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/algebramap-ofsubsemiring-apply.md) | 95 | `result-track:04abe809a9828dd73f280e0e82ca1efe36aa89d4a04aafdec8ec97c509b09507` |
| 10 | `instance` | [ofSubring](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/ofsubring.md) | 99 | `declaration-track:02c9e8b4dd25f40a7ab6c708d77027e6c8f7af54ad8cf5961d78f23a3a348b16` |
| 11 | `theorem` | [algebraMap_ofSubring](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/algebramap-ofsubring.md) | 106 | `result-track:6ba1dbcc2bd956abcac51247f2f64f60182619c8cd725a6eaf16f65dccac7af3` |
| 12 | `theorem` | [coe_algebraMap_ofSubring](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/coe-algebramap-ofsubring.md) | 110 | `result-track:b5614cf89f01eba341179a2c1ba6625479e8feb6e12b89dac36940b4b7feea67` |
| 13 | `theorem` | [algebraMap_ofSubring_apply](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/algebramap-ofsubring-apply.md) | 114 | `result-track:3737efc13b857a1adcb2368888717fcac621ae8393b774bb2c16dbc4b5a990fa` |
| 14 | `def` | [algebraMapSubmonoid](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/algebramapsubmonoid.md) | 120 | `declaration-track:936c1ba8e5a5022a61e81123c63013a0cb70748af4a857421422599234f0c57c` |
| 15 | `theorem` | [mem_algebraMapSubmonoid_of_mem](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/mem-algebramapsubmonoid-of-mem.md) | 123 | `result-track:2f865cfa8bd43700724dcdc1c587b5f65dc17cf4fbaacf1a8e728fd73d558b3b` |
| 16 | `lemma` | [algebraMapSubmonoid_powers](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/algebramapsubmonoid-powers.md) | 128 | `result-track:edc7224f8042eab1e9e33bb91192faef7c4de67435df2cabe498aeb3fb409910` |
| 17 | `theorem` | [mul_sub_algebraMap_commutes](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/mul-sub-algebramap-commutes.md) | 138 | `result-track:3594fa29f8e1f6408d42e457aecd2333a9acdaf5346578775dfec27b33403826` |
| 18 | `theorem` | [mul_sub_algebraMap_pow_commutes](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/mul-sub-algebramap-pow-commutes.md) | 141 | `result-track:4fc05a58c6db28e76785f00837604e8adf00bd925aed3cabce502a575ca32e38` |
| 19 | `abbrev` | [semiringToRing](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/semiringtoring.md) | 154 | `declaration-track:1b55f328b0fa732e1726f992496d8a64aaa0eb4a7710a7171bf7a0a2317a6868` |
| 20 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/instance-source-edition-6.md) | 161 | `declaration-track:b93d216539edef8069533827ac57ecd5f6d22599fbcaa001b4b0f42b30171117` |
| 21 | `instance` | [End.instAlgebra](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/end-instalgebra.md) | 183 | `declaration-track:906b44a37e2d16ec5b208a24eca32f7efd5326bfaafec68210d35b3be8570f4e` |
| 22 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/example.md) | 187 | `declaration-track:80895af566b9ceb4242a2f2864453168b29802b83b8c86747562766b395e5d5a` |
| 23 | `theorem` | [algebraMap_end_eq_smul_id](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/algebramap-end-eq-smul-id.md) | 189 | `result-track:3df86d784b9a67f0125294dc99b8721b10aaf6f332b9aacde4841af432fb05ad` |
| 24 | `theorem` | [algebraMap_end_apply](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/algebramap-end-apply.md) | 193 | `result-track:a87630d8d3755bbff6d52ed0622e249f082a0ba27b42b6b3ad25879cc028429e` |
| 25 | `theorem` | [ker_algebraMap_end](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/ker-algebramap-end.md) | 197 | `result-track:355193c8db9afad371854f673f2e2a7ce5f6aaa0db3c539465adea507057dd2c` |
| 26 | `theorem` | [End.algebraMap_isUnit_inv_apply_eq_iff](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/end-algebramap-isunit-inv-apply-eq-iff.md) | 205 | `result-track:2eecf25e21e791d84d0291729a6e447e9f6be97be28896cb5ef6d268333b31b4` |
| 27 | `theorem` | [End.algebraMap_isUnit_inv_apply_eq_iff'](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/end-algebramap-isunit-inv-apply-eq-iff-source-edition-2.md) | 217 | `result-track:fdb8083a9cefdefb9d5c435fdb6861a4fb3ac83edf5da602bc1527b76c222cd2` |
| 28 | `theorem` | [map_algebraMap_mul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/map-algebramap-mul.md) | 240 | `result-track:573cc0462080618cb87f45da0c4c44977423275003f6719c0bb20199be0267d1` |
| 29 | `theorem` | [map_mul_algebraMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/map-mul-algebramap.md) | 244 | `result-track:6a9c5fd1e0bf5a689e827e5ae057db1040c6216273c6060da9d28c2aa73cf9a1` |
| 30 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/instance-source-edition-8.md) | 258 | `declaration-track:dc1845a8f033269ea1c4e2f147f2d596e851f813123a8ffad8bb69386a290cb8` |
| 31 | `instance` | [nat_algebra_subsingleton](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/nat-algebra-subsingleton.md) | 263 | `declaration-track:7c193b87468aacd298930361c40c075291a6277a3d54a4cee07193ac13557cc5` |
| 32 | `lemma` | [algebraMap_comp_natCast](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/algebramap-comp-natcast.md) | 267 | `result-track:b3a310778182a7989cba6c8db14b8a220d9af5a59a177eabc0c5afb95df28d49` |
| 33 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/instance-source-edition-9.md) | 281 | `declaration-track:eedd011a7d0e5eea3fa03fe8e9712661c590cca20233ad5235dd336d1d981f8c` |
| 34 | `theorem` | [algebraMap_int_eq](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/algebramap-int-eq.md) | 288 | `result-track:7a0a6512c23dc2425686508ec93e67d1c927d6df54ee5c7fd471d57daba746e7` |
| 35 | `instance` | [int_algebra_subsingleton](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/int-algebra-subsingleton.md) | 293 | `declaration-track:586966223bce3cde2fa19ddda97855a8c5310e6e678a4cb067a8e510564e1f1c` |
| 36 | `lemma` | [algebraMap_comp_intCast](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/algebramap-comp-intcast.md) | 297 | `result-track:25e4e17faf5bb55ffb25b7d4b774bd26638d873ce02be84bfcf8459c4687d082` |
| 37 | `theorem` | [Algebra Basic Namespaced Algebra Map Submonoid Powers](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/of-faithfulsmul.md) | 305 | `result-track:ece7484911604def1de0fae37d977d104efb799e9bb1ad389931c652d3f24c7a` |
| 38 | `lemma` | [faithfulSMul_iff_algebraMap_injective](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/faithfulsmul-iff-algebramap-injective.md) | 316 | `result-track:3e3ba519f0a701d3fbf35022c716232b451d4fde68f3a66ef82515cf7281b28e` |
| 39 | `lemma` | [algebraMap_injective](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/algebramap-injective.md) | 323 | `result-track:793939418369bf0dc44368cf465ad63d93446e58e3c8125cf5eda74469a1fa93` |
| 40 | `lemma` | [algebraMap_eq_zero_iff](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/algebramap-eq-zero-iff.md) | 330 | `result-track:9e6fe89ae355150411a8ffa27ec7a26812acf588629506c544567e3e24360d4b` |
| 41 | `lemma` | [algebraMap_eq_one_iff](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/algebramap-eq-one-iff.md) | 337 | `result-track:076a43d19e0069246974bc748d0f2b1db3fb401fcf84b7dacb5f1bca3545ab9a` |
| 42 | `lemma` | [Algebra.charZero_of_charZero](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/algebra-charzero-of-charzero.md) | 345 | `result-track:49b6cb6f91939da00710bd884a07bee58af8ab9cdb4e70b225869289802ec096` |
| 43 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/instance.md) | 349 | `declaration-track:01fa1815f14815314377a6a705f18e6afdc1323bbab08b7be5fdaeaf9c242eaf` |
| 44 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/instance-source-edition-3.md) | 352 | `declaration-track:67100a938eea6b7085b75bc7fb6c70374c1f4c9a67892b334dd390cbcc72676c` |
| 45 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/instance-source-edition-2.md) | 360 | `declaration-track:1e856be7c8d513304c5b2428547ea20978fa73431856151123dbd0001cf083e6` |
| 46 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/instance-source-edition-5.md) | 371 | `declaration-track:a0a6c81e9daa67177ef9b736530157ac9b64d39138b24eaf323572268950c39e` |
| 47 | `theorem` | [iff_faithfulSMul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/iff-faithfulsmul.md) | 377 | `result-track:373c17e0c62269b5f2054bbdccf89c47a57c5a1a21d5cb7503929fa8a323c433` |
| 48 | `theorem` | [iff_algebraMap_injective](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/iff-algebramap-injective.md) | 380 | `result-track:15464e1f1f637c095f2b1ad4313af7bbc565cdc2ef54d986e630a1416e5b1b7b` |
| 49 | `theorem` | [algebra_compatible_smul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/algebra-compatible-smul.md) | 393 | `result-track:431758586968e7d24b343de7a4ab65312212c8e19c128f2604c3669463b8dbf1` |
| 50 | `theorem` | [algebraMap_smul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/algebramap-smul.md) | 397 | `result-track:a0f1af08326decb584522dcdfe51a278cc211403d861493c40cdc81638b5b4ab` |
| 51 | `theorem` | [NoZeroSMulDivisors.trans_faithfulSMul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/nozerosmuldivisors-trans-faithfulsmul.md) | 401 | `result-track:02e10a0dd7d5cd80c273cf58f910896a749276b0b2d92fbae1d8596a7b89af51` |
| 52 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/instance-source-edition-10.md) | 416 | `declaration-track:fc07af3230e3c66f593c6fd41e1f66a619880574fc307316ff9b9483538257d2` |
| 53 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/instance-source-edition-7.md) | 423 | `declaration-track:ca627ad9900763aab465bc2228c2eebb4eccfe534a683c7817f5f1fc999f5c77` |
| 54 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/instance-source-edition-4.md) | 427 | `declaration-track:8426879280c5b61a25277330ac4778d1e847a858e8038ae192b101a3b4894709` |
| 55 | `theorem` | [smul_algebra_smul_comm](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/smul-algebra-smul-comm.md) | 431 | `result-track:f62ccb2dbcb7b2a9d589beaf6725db967b4ba1e799db2d970acb4de3af62f69a` |
| 56 | `def` | [ltoFun](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/ltofun.md) | 441 | `declaration-track:a13e4dd7d1c28b00e96e5c8de0a7735dc3ca28c4e2af2ebb257ffb22f2d19068` |
| 57 | `theorem` | [LinearMap.ker_restrictScalars](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/linearmap-ker-restrictscalars.md) | 462 | `result-track:db12340fd1170a426f2b0cc2ab8f2ef2b9ece5ba445f0c72c7490e58f48f2590` |
| 58 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/example-source-edition-2.md) | 468 | `declaration-track:b728e990b81c5c27565f8adc034fb97aba3282b23f641fd4eed7eb4baaf7b33f` |
| 59 | `abbrev` | [Invertible.algebraMapOfInvertibleAlgebraMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/invertible-algebramapofinvertiblealgebramap.md) | 479 | `declaration-track:5d9594e6399f970d587c36fb2fdffeb657a18caf21d13e93c2b55189d9c59355` |
| 60 | `lemma` | [IsUnit.algebraMap_of_algebraMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/isunit-algebramap-of-algebramap.md) | 488 | `result-track:a902377d2e9571d9583e666cab9bcbdcd8bbdfd31c6f366263b600db945370da` |
| 61 | `theorem` | [injective_algebraMap_of_linearMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/injective-algebramap-of-linearmap.md) | 502 | `result-track:7aa88cb5f8e11504144680583d1f3e7f774d136eabc0ff7afdc4ed3f589520ba` |
| 62 | `theorem` | [surjective_algebraMap_of_linearMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/surjective-algebramap-of-linearmap.md) | 509 | `result-track:c7e802ef81debe7e9a51419a270cbbde81e0e8789b16c54026fc04113fdc33c7` |
| 63 | `theorem` | [bijective_algebraMap_of_linearMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/bijective-algebramap-of-linearmap.md) | 526 | `result-track:8427f16eec37951249807a2a88253526beb28cf0cb213f4055e3b89290641d5c` |
| 64 | `theorem` | [bijective_algebraMap_of_linearEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/bijective-algebramap-of-linearequiv.md) | 532 | `result-track:bb2c25c14f9caf211e38c239e62fbf8c4afc6c1c19fe53a0b142f48c3e067eb4` |
| 65 | `def` | [LinearMap.extendScalarsOfSurjectiveEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/linearmap-extendscalarsofsurjectiveequiv.md) | 545 | `declaration-track:0e4cb3038e62a5683cf84e9dfeee6c2c6d3befb9ae7f0569366ffacd88584318` |
| 66 | `abbrev` | [LinearMap.extendScalarsOfSurjective](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/linearmap-extendscalarsofsurjective.md) | 555 | `declaration-track:bf2c5c1d54df57d83aee493e1ed8968efbf85e2a307f23e39b1a1cb2db1e095b` |
| 67 | `def` | [LinearEquiv.extendScalarsOfSurjective](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/linearequiv-extendscalarsofsurjective.md) | 560 | `declaration-track:8328bc6a25cd8fa142dd27f1da45b049323a77f27c4562d862794b3a250a8f64` |
| 68 | `lemma` | [LinearMap.extendScalarsOfSurjective_apply](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/linearmap-extendscalarsofsurjective-apply.md) | 568 | `result-track:17ae1f31f1e1367f7dff4eee6cd953c5da8ffc5c6f87aa8301bb68b2330ca2d1` |
| 69 | `lemma` | [LinearEquiv.extendScalarsOfSurjective_apply](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/linearequiv-extendscalarsofsurjective-apply.md) | 572 | `result-track:09f155a291ce911bd8de12a91e4abd47292028fe94ce715fb3bca69325796b48` |
| 70 | `lemma` | [LinearEquiv.extendScalarsOfSurjective_symm](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/linearequiv-extendscalarsofsurjective-symm.md) | 576 | `result-track:9d412b723fa9e71af727515987e52ba0a74b6b7de5b88de1ec603899885eb1ed` |
| 71 | `theorem` | [coe_prod](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/coe-prod.md) | 588 | `result-track:a635fae52e5fb005dcfd6eec9627c0d18d2932a6fd6d03689345cc50d25d6a6a` |
| 72 | `theorem` | [coe_sum](../../../../AssociativeRingsAndAlgebras/AlgebraBasicNamespacedAlgebraMapSubmonoidPowers.lean/declarations/coe-sum.md) | 592 | `result-track:9660485e6171642e11776bc53eabad076e565dc30e811736d91c3b742135d246` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57cdec3df13f572005ea4874df12b8b6b515b7fd2bf15378f04647a455d202b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Varianta479ce25018de96a4f2aed8e6b465ad6d5a1fc99300ce472394738e7f847ece1.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Varianta479ce25018de96a4f2aed8e6b465ad6d5a1fc99300ce472394738e7f847ece1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
