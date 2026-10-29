# Verification target: Roots Of Unity Basic Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee7d346b387e87d7ad658156243fed6149b1957e",
  "lexical_observation_count": 95,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant04cd46facb1c345c624ababe9c54c27e8f3154035999a66dbf161da2c630e6e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee7d346b387e87d7ad658156243fed6149b1957e`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant04cd46facb1c345c624ababe9c54c27e8f3154035999a66dbf161da2c630e6e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Variant04cd46facb1c345c624ababe9c54c27e8f3154035999a66dbf161da2c630e6e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Two` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NeZero` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.IntegrallyClosed` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.RingDivision` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Separable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SpecificGroups.Cyclic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Divisors` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralDomain` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rootsOfUnity](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/rootsofunity.md) | 84 | `declaration-track:79ee6910995caf410ebb3d4b45fd53f81a9e7690d39593bb39960a160f30efee` |
| 2 | `theorem` | [mem_rootsOfUnity](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/mem-rootsofunity.md) | 92 | `result-track:1e1d9e8ddfb1de70204385b6809f35271a14a13e3c4b222dad9f01b6f6f51aac` |
| 3 | `theorem` | [mem_rootsOfUnity'](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/mem-rootsofunity-source-edition-2.md) | 96 | `result-track:a9a783bfd019955401b770ad318aad406ec45710256956c02a8a5d9002b7952a` |
| 4 | `theorem` | [rootsOfUnity.coe_injective](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/rootsofunity-coe-injective.md) | 100 | `result-track:c112d31fc6cbc813053bf47974eaf406b4e63cee54c21cba27bdaa1544b89c15` |
| 5 | `def` | [rootsOfUnity.mkOfPowEq](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/rootsofunity-mkofpoweq.md) | 108 | `declaration-track:913fcc6879871a8210294eb6fa80eed646771a97d11af0b135f96bbdd8972316` |
| 6 | `theorem` | [rootsOfUnity.coe_mkOfPowEq](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/rootsofunity-coe-mkofpoweq.md) | 114 | `result-track:742386ad0c8db3f40ff7add68f3e39fbfe69039e398a1ca38b14801e4973ac74` |
| 7 | `theorem` | [rootsOfUnity_le_of_dvd](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/rootsofunity-le-of-dvd.md) | 119 | `result-track:dc0f26dd654a9a0427c69cc1d27c0ddc5cabf689dab76f1a260a6afb2647cc7b` |
| 8 | `theorem` | [map_rootsOfUnity](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/map-rootsofunity.md) | 125 | `result-track:0aee19952ebde00737b328033c855f927b1d73e63f01fb5fc57bac7923d2886f` |
| 9 | `theorem` | [rootsOfUnity.coe_pow](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/rootsofunity-coe-pow.md) | 131 | `result-track:dd7ec05ee67ab32e03a789325714226ded3fee84bb8904ae6619f45b9a05e077` |
| 10 | `def` | [restrictRootsOfUnity](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/restrictrootsofunity.md) | 141 | `declaration-track:a5f07292c443b4e65a2e57abb9f6e5486385718ac940426ce9d1cca2ec175780` |
| 11 | `theorem` | [restrictRootsOfUnity_coe_apply](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/restrictrootsofunity-coe-apply.md) | 154 | `result-track:2fbfc8a1612c7870029e93e147809fe9ecafaacce734f1b0b1d9123c9f80e24b` |
| 12 | `def` | [RingEquiv.restrictRootsOfUnity](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/ringequiv-restrictrootsofunity.md) | 160 | `declaration-track:7030accd3903b3a6b0a06434bfbd5fb6465f68c2c24ca646e811c6e16cacb412` |
| 13 | `theorem` | [RingEquiv.restrictRootsOfUnity_coe_apply](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/ringequiv-restrictrootsofunity-coe-apply.md) | 170 | `result-track:98bd1efce5da08ea85e2d1660c42e11497b85e00b41a2714631f829666d11c88` |
| 14 | `theorem` | [RingEquiv.restrictRootsOfUnity_symm](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/ringequiv-restrictrootsofunity-symm.md) | 176 | `result-track:fd4b50dd6eed1ec53442f5c6612d74d934cd53c727664187abc298c2d27932bd` |
| 15 | `theorem` | [mem_rootsOfUnity_iff_mem_nthRoots](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/mem-rootsofunity-iff-mem-nthroots.md) | 187 | `result-track:b20ac9544d256eba20f3acfa223fe3260fbe5afdbc23d983cc742c524a850af5` |
| 16 | `def` | [rootsOfUnityEquivNthRoots](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/rootsofunityequivnthroots.md) | 200 | `declaration-track:83f576cc3687f0455fb4e57a7d137935010c2ec7fe3b950919c7d9985dc2f560` |
| 17 | `theorem` | [rootsOfUnityEquivNthRoots_apply](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/rootsofunityequivnthroots-apply.md) | 220 | `result-track:080d497c9e6ce580a90f260cdceb7f1d220739b10642052ac25352fa20a250ad` |
| 18 | `theorem` | [rootsOfUnityEquivNthRoots_symm_apply](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/rootsofunityequivnthroots-symm-apply.md) | 226 | `result-track:f83f77ad5c61c2c89fabfdd4855a93c308feceaffd5e16236264fa0eca64804d` |
| 19 | `instance` | [rootsOfUnity.fintype](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/rootsofunity-fintype.md) | 233 | `declaration-track:4d390742feb8854b69f3b6edbf23ca411afeaea3c30147a75f24f561d5a50a5d` |
| 20 | `instance` | [rootsOfUnity.isCyclic](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/rootsofunity-iscyclic.md) | 237 | `declaration-track:16056c274d8ea1b5a431996d2cf1e2dc3a0fe819642e1c9498036635c042f4f3` |
| 21 | `theorem` | [card_rootsOfUnity](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/card-rootsofunity.md) | 242 | `result-track:1f29936036afddabe48244d12f1f951ce5ec226164d4006c8232645443b5ffe3` |
| 22 | `theorem` | [map_rootsOfUnity_eq_pow_self](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/map-rootsofunity-eq-pow-self.md) | 253 | `result-track:1c64a62ecd17d5227a4f2e0ec07c0aa3184885bb145ca18dabd87017aa0d8924` |
| 23 | `macro_rules` | [(anonymous)](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/macro-rules.md) | 268 | `declaration-track:8e200547f561163a4022ba11414180e85360e06461460adb7cb4e32d2a1cea41` |
| 24 | `theorem` | [mem_rootsOfUnity_prime_pow_mul_iff](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/mem-rootsofunity-prime-pow-mul-iff-source-edition-2.md) | 271 | `result-track:d3ba62bcf3b650e26280409f46a33ff2aa23c947ced405bf183e8838a453d25d` |
| 25 | `theorem` | [mem_rootsOfUnity_prime_pow_mul_iff'](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/mem-rootsofunity-prime-pow-mul-iff.md) | 278 | `result-track:27c54a88814e185e2c9bf856b66fa320a771309a907e5629fc4c3d3fc173cd84` |
| 26 | `structure` | [IsPrimitiveRoot](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/isprimitiveroot.md) | 289 | `declaration-track:5c5929bc3c6af949ad8910ececd53e7816f34f4780866950630bfebdd8ba6f23` |
| 27 | `def` | [IsPrimitiveRoot.toRootsOfUnity](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/isprimitiveroot-torootsofunity.md) | 296 | `declaration-track:e58b13f0ed5a8a8dfad9ce997a8d696a546b4905fa1c5ab18fc04294431fb2fc` |
| 28 | `def` | [primitiveRoots](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/primitiveroots.md) | 308 | `declaration-track:61476f89db4a4302cc112c79f11a4c402ae24a9c256eaaaa551671403ffa7cc9` |
| 29 | `theorem` | [mem_primitiveRoots](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/mem-primitiveroots.md) | 315 | `result-track:bcefb1ca9a3ba1920fdec4f2c614f7a71820a8eab7fe6968ec8b58bd3fdaa08b` |
| 30 | `theorem` | [primitiveRoots_zero](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/primitiveroots-zero.md) | 321 | `result-track:cc0f8288a496cb7efdbc9b9428f197023de18e37fe3b965d44d7fd8867a79f6e` |
| 31 | `theorem` | [isPrimitiveRoot_of_mem_primitiveRoots](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/isprimitiveroot-of-mem-primitiveroots.md) | 325 | `result-track:b63b4cbe6026efc67eba0acdbfbd293e7dc7049c4ca99a7cc185b03b01ae737d` |
| 32 | `theorem` | [iff_def](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/iff-def.md) | 336 | `result-track:06f72fa85e8a44a6a3bb3a23f952a50b8b21b2eb1e01359cad4388079bdc8375` |
| 33 | `theorem` | [mk_of_lt](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/mk-of-lt.md) | 340 | `result-track:e24e29c7ea0067d6e23e96ba984fe8dc5b147ae690a1a6c06535a2dbc4ba6c56` |
| 34 | `theorem` | [of_subsingleton](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/of-subsingleton.md) | 355 | `result-track:6f0fb37f6671a8ab21846ff5dbf45d0ccf9adf25fdcba04461979fbf86831ba7` |
| 35 | `theorem` | [pow_eq_one_iff_dvd](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/pow-eq-one-iff-dvd.md) | 359 | `result-track:f2d7f0c3baadb24fe487aabab81fba136d5d5d4c977f443dfad30086328d3489` |
| 36 | `theorem` | [isUnit](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/isunit.md) | 364 | `result-track:f66b7894e0da997b96dd29107f3d81132a0f98ced7e93a4d5b7bee46e92d7931` |
| 37 | `theorem` | [pow_ne_one_of_pos_of_lt](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/pow-ne-one-of-pos-of-lt.md) | 369 | `result-track:6c44f6896c5cf41f10ff9eee79b7d2dcab2bdbc6f8e7c489ff2fa731bc8a7a9b` |
| 38 | `theorem` | [ne_one](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/ne-one.md) | 373 | `result-track:76929e43901ec69296dac2dbec5bcee3a59007b081b902d07e23a1620e43c8ee` |
| 39 | `theorem` | [pow_inj](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/pow-inj.md) | 377 | `result-track:525d96ebab8dddd0f379eced1f7fa15bbe47a7f415f13d7c4e3b4737160f9d0d` |
| 40 | `theorem` | [one](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/one.md) | 389 | `result-track:4e32db4e4686a4715043301fbd40866faa74ccf35c27de3c6ddcb21ec587c3b7` |
| 41 | `theorem` | [one_right_iff](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/one-right-iff.md) | 395 | `result-track:d2a3f20f5ebb2765ad121b2ca0d5134cb788b83a76c025c3d721a31d0c84f18d` |
| 42 | `theorem` | [coe_submonoidClass_iff](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/coe-submonoidclass-iff.md) | 403 | `result-track:a1eacc4380a9c884c16f80de75c986101b387e1a103586699a5156f83dad4174` |
| 43 | `theorem` | [coe_units_iff](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/coe-units-iff.md) | 410 | `result-track:6389181ff4093b28de8e89582b5c53c99377c918066ebb4219dbc7b725e8dfe2` |
| 44 | `theorem` | [pow_of_coprime](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/pow-of-coprime.md) | 415 | `result-track:332a998f90f51d12b58ea32ea4b0991c8374564fcf09939ea9c7db5008a25e95` |
| 45 | `theorem` | [pow_of_prime](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/pow-of-prime.md) | 431 | `result-track:c5c74c4bdfdc45023581bec94ec35ae122c9134a09998ef29beb94875fe0b402` |
| 46 | `theorem` | [pow_iff_coprime](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/pow-iff-coprime.md) | 436 | `result-track:46bec67d4527eef20fdfe9f72de68251739e6602d37869e3664b8f1c41de571a` |
| 47 | `theorem` | [orderOf](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/orderof.md) | 452 | `result-track:ead3b4c1dcfd22bccca6c8ba3c9108208ae38397535de60ee9cdb35aaceff8df` |
| 48 | `theorem` | [unique](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/unique.md) | 456 | `result-track:9b28313e067b87c75bf009d96b2037f8abb30ce53b63255ee48661cc71def10a` |
| 49 | `theorem` | [eq_orderOf](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/eq-orderof.md) | 460 | `result-track:b5a687ea12a8a3026883b9e01231c14982cd0a9049aa9ca96e8eb0e211baecd3` |
| 50 | `theorem` | [iff](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/iff.md) | 464 | `result-track:fa2adadc34e36162fb4ac0c2b8b24d1d2fc2f75399db0ae5fae74a96ed57b5d2` |
| 51 | `theorem` | [not_iff](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/not-iff.md) | 472 | `result-track:2886563497498fd895aba2581ae8b2b975a5451afd25f1159ac4353ad08ac4bd` |
| 52 | `theorem` | [pow_of_dvd](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/pow-of-dvd.md) | 477 | `result-track:59939235429a96ddc614d707f7560a047f7a819fd8cc9cfdc0b50626c1da535c` |
| 53 | `theorem` | [mem_rootsOfUnity](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/mem-rootsofunity-source-edition-3.md) | 483 | `result-track:d3ffcfa70c8226a6817ca983991ff20a85ee5df981a3a7ecf4623f32147eaed0` |
| 54 | `theorem` | [pow](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/pow.md) | 490 | `result-track:5a5674c2a0a0708fdb92913de615d6e4a8cdfd65e1b8840f2e39484fae9118d9` |
| 55 | `theorem` | [map_of_injective](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/map-of-injective.md) | 505 | `result-track:e1ea6f5631ae89e86dfb7308cdc6e82cc5d0a6127a1cedc12a117680a72b7590` |
| 56 | `theorem` | [of_map_of_injective](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/of-map-of-injective.md) | 515 | `result-track:a8475d35250acc2651f7fd4f2298cb86f506818b8b3c74cbd557e55d6418be8c` |
| 57 | `theorem` | [map_iff_of_injective](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/map-iff-of-injective.md) | 526 | `result-track:77f56d4f3b9b66907f60179b9680bba4f8cb5ca1cea4e8adfa88040b865cb46b` |
| 58 | `theorem` | [zero](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/zero.md) | 539 | `result-track:b8099e247f3b0040a6a64cd19d26814f4f216fa07a950e93ba3aae64295c59c1` |
| 59 | `theorem` | [ne_zero](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/ne-zero.md) | 544 | `result-track:5c7bed560519475eec15d5ca43498063a4f0dde8aa2a39ed3a662eb1b31ffd56` |
| 60 | `theorem` | [zpow_eq_one](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/zpow-eq-one.md) | 554 | `result-track:5b153f7e61fb69e93dfeb5ff18458e9ad3f58bbbc9377e42ec0fa9c541c0fad2` |
| 61 | `theorem` | [zpow_eq_one_iff_dvd](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/zpow-eq-one-iff-dvd.md) | 558 | `result-track:a547f6ea9f2a7d0de37af420eb8545eec730c4dd9a19023c1eb3f8b7b81c8e53` |
| 62 | `theorem` | [inv](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/inv.md) | 568 | `result-track:e6a8ca917849eb217784cd2bc8a8f015fd89608e96d62826d6c9c6b89a59202c` |
| 63 | `theorem` | [inv_iff](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/inv-iff.md) | 577 | `result-track:4d495b5e8f4570e0f05548b89e2078c24ffdcbfb214f6a412a20ae7aa12852d2` |
| 64 | `theorem` | [zpow_of_gcd_eq_one](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/zpow-of-gcd-eq-one.md) | 581 | `result-track:48b81ad11bcfad2a7ddd62eb181e0d271e84f94ffebbb0743b599a9f2c7dff3f` |
| 65 | `theorem` | [primitiveRoots_one](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/primitiveroots-one.md) | 604 | `result-track:4f4b1c2f76d784f364b5919ebdfcd51d55f1b455ace26c68323b04752eedf20e` |
| 66 | `theorem` | [neZero'](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/nezero.md) | 613 | `result-track:198d1bac610c8c4024ef43812d6ebcaee11a1ed149d984827efbeb4f6d563f20` |
| 67 | `theorem` | [mem_nthRootsFinset](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/mem-nthrootsfinset.md) | 635 | `result-track:10feb2c4a5c6fe75226fc756cdb06e3d600aac201ae37813beb0152ebf2f9e6e` |
| 68 | `theorem` | [eq_neg_one_of_two_right](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/eq-neg-one-of-two-right.md) | 648 | `result-track:f2211caccebec26980dd06ad6e1c070148ca6ea5a70d3ae683116fb6edbcb804` |
| 69 | `theorem` | [neg_one](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/neg-one.md) | 654 | `result-track:f939b947b558809c23aedca24a36de86817921f277bc76181ad042f1cd9b161b` |
| 70 | `theorem` | [geom_sum_eq_zero](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/geom-sum-eq-zero.md) | 662 | `result-track:cbe679ee10ce44fe679670ded2e16c51a11d71201f40f374fccb0a419ef98228` |
| 71 | `theorem` | [pow_sub_one_eq](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/pow-sub-one-eq.md) | 669 | `result-track:6d615a8b213cecaec482c1dcd4e7aa7f266a81aea9c89240fb0528198b0d730a` |
| 72 | `def` | [zmodEquivZpowers](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/zmodequivzpowers.md) | 677 | `declaration-track:08aa88f0ce1abfa82143ab283d3bed1bc467d0f84327ee453e2befbc2790c15c` |
| 73 | `theorem` | [zmodEquivZpowers_apply_coe_int](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/zmodequivzpowers-apply-coe-int.md) | 702 | `result-track:e0b88929b5332ac278e2fdce36ac5aee78a852010a046611e2031047a558d58b` |
| 74 | `theorem` | [zmodEquivZpowers_apply_coe_nat](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/zmodequivzpowers-apply-coe-nat.md) | 709 | `result-track:111ff943882a2192f6b8977f1f7153de7f26654338254e5851da0b5b7ac2b5b7` |
| 75 | `theorem` | [zmodEquivZpowers_symm_apply_zpow](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/zmodequivzpowers-symm-apply-zpow-source-edition-2.md) | 716 | `result-track:fc6561a8ec824e3bf82b8213ebb6e055f0ee287512c2b7ca710bc68348535551` |
| 76 | `theorem` | [zmodEquivZpowers_symm_apply_zpow'](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/zmodequivzpowers-symm-apply-zpow.md) | 722 | `result-track:80af78a7d559af4fefc889dbd0bdbbcc4b95630b0d89717cc8e9a612cae369ce` |
| 77 | `theorem` | [zmodEquivZpowers_symm_apply_pow](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/zmodequivzpowers-symm-apply-pow.md) | 727 | `result-track:3600df2383635056a0edef89d7900a2137586667ddb599a1f1badd28a9f9718b` |
| 78 | `theorem` | [zmodEquivZpowers_symm_apply_pow'](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/zmodequivzpowers-symm-apply-pow-source-edition-2.md) | 733 | `result-track:fd9605c40c24c70645d48af41e4c470723d94ebd73aa7b024758c8b0416130c3` |
| 79 | `theorem` | [zpowers_eq](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/zpowers-eq.md) | 739 | `result-track:a6f9d839413f69544b36158e5d1d2933ef61f1c025b20a601ede81b3260f3311` |
| 80 | `theorem` | [eq_pow_of_mem_rootsOfUnity](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/eq-pow-of-mem-rootsofunity.md) | 754 | `result-track:eecf7ffe72fac172669a0a9db1ee1734a66b98366d4c596494dcd3b9b113192c` |
| 81 | `theorem` | [eq_pow_of_pow_eq_one](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/eq-pow-of-pow-eq-one.md) | 767 | `result-track:dec1bcc70bae54aea9af2a4dc5637d7fa14604b03136e9b69dba3daa1d23626e` |
| 82 | `theorem` | [isPrimitiveRoot_iff'](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/isprimitiveroot-iff.md) | 778 | `result-track:67d329e5e4308fc6397beb90747d2f43b7b8bab51515c0a05f57fbdf637d8148` |
| 83 | `theorem` | [isPrimitiveRoot_iff](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/isprimitiveroot-iff-source-edition-2.md) | 788 | `result-track:f3531b4be6055131c436d1953ca54e0ed48118e2043f0c0bd62ffa5672f9cffb` |
| 84 | `theorem` | [card_rootsOfUnity'](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/card-rootsofunity-source-edition-3.md) | 798 | `result-track:feca5e7f13ff8e827fb7c783c246ed8aec12a16f2e72dba846b98b2fadcec89d` |
| 85 | `theorem` | [card_rootsOfUnity](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/card-rootsofunity-source-edition-2.md) | 809 | `result-track:37572c8783e9094daf6623c14c415a6d3015f2c948a5672f939cd7315b84a865` |
| 86 | `theorem` | [card_nthRoots](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/card-nthroots.md) | 818 | `result-track:3ac50e4407a4aa12d18672047e08e792be4b81f1676d6ff16a9e40d9c893fa69` |
| 87 | `theorem` | [nthRoots_nodup](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/nthroots-nodup.md) | 837 | `result-track:59388d6d77f1437533f72483b0ffb5df8db587bc1b13d4347beb9b154578e468` |
| 88 | `theorem` | [card_nthRootsFinset](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/card-nthrootsfinset.md) | 860 | `result-track:9acd67f5caf83776be13362c4a122c9d466e2058ec94c58af04830ebdfaca252` |
| 89 | `theorem` | [card_primitiveRoots](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/card-primitiveroots.md) | 868 | `result-track:e8dadbccb3cb1b8efe3d5f81ce609390e0bf449e72518f924b2f289f91d9543c` |
| 90 | `theorem` | [disjoint](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/disjoint.md) | 890 | `result-track:65b60f3a1f714f50877f6cd56eb108b48216c456030b31374d8f6a3665c6594b` |
| 91 | `theorem` | [nthRoots_one_eq_biUnion_primitiveRoots'](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/nthroots-one-eq-biunion-primitiveroots-source-edition-2.md) | 899 | `result-track:57bf4b1bffa4e07d69a97322d29291a04699dd1d3c0a0fbd6738e5c5778c1998` |
| 92 | `theorem` | [nthRoots_one_eq_biUnion_primitiveRoots](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/nthroots-one-eq-biunion-primitiveroots.md) | 928 | `result-track:535443bc8e37c7900b0c603c4f39de5caf9ef526a053e62d3884d14d08e5c7cc` |
| 93 | `def` | [autToPow](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/auttopow.md) | 943 | `declaration-track:c31229749183cc000413732695b18199230312c171b8decfd690cf69342d415c` |
| 94 | `theorem` | [coe_autToPow_apply](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/coe-auttopow-apply.md) | 979 | `result-track:26d425d85a1f607213fd06462d1c7d953d5706ec90be57d41905b25d92d83fca` |
| 95 | `theorem` | [autToPow_spec](../../../../CommutativeAlgebra/RootsOfUnityBasicSourceEdition2.lean/declarations/auttopow-spec.md) | 986 | `result-track:deff3f0f41fc854b00f52ce2a6e74338acb3630b75cecc647260a0fa157bde00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb1713b2ec5b36f4012e2176d6fc9056e6194b0b013e91ca5d4539ae89b7775f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant04cd46facb1c345c624ababe9c54c27e8f3154035999a66dbf161da2c630e6e6.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/Basic/Variant04cd46facb1c345c624ababe9c54c27e8f3154035999a66dbf161da2c630e6e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
