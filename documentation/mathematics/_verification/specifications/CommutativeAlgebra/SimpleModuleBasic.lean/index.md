# Verification target: Simple Module Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2bb4db3a31932ed48bb7b1f501647b45328d7e0",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant3406175c3fecb09cfb4efecdd843346c024db71d826a0136f1ad342e73f1dcd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2bb4db3a31932ed48bb7b1f501647b45328d7e0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant3406175c3fecb09cfb4efecdd843346c024db71d826a0136f1ad342e73f1dcd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant3406175c3fecb09cfb4efecdd843346c024db71d826a0136f1ad342e73f1dcd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Module` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Card` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Mul` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DFinsupp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.Span` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Isomorphisms` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Projection` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms.Finite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompactlyGenerated.Intervals` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.JordanHolder` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Colon` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Defs` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsSimpleModule](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/issimplemodule.md) | 56 | `declaration-track:d11ff829f5f89facf2087ed54f92ab4acf1e733da5d52b1fae575df1bf919520` |
| 2 | `abbrev` | [IsSemisimpleModule](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/issemisimplemodule.md) | 61 | `declaration-track:74911bd8ab184dabe54c3973267d069472a34633db56ed0eadb6d2032c4fa337` |
| 3 | `abbrev` | [IsSemisimpleRing](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/issemisimplering.md) | 65 | `declaration-track:6a64092881ec15d2e994c4c76a1270ebb2f96d7c8d32e63e6759c20df4d80e07` |
| 4 | `theorem` | [RingEquiv.isSemisimpleRing](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/ringequiv-issemisimplering.md) | 68 | `result-track:36af2ee950278fa272ebe3f2246f9839c0d0ea4a60cfcbdd2c9d3360036d9cdb` |
| 5 | `theorem` | [RingEquiv.isSemisimpleRing_iff](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/ringequiv-issemisimplering-iff.md) | 72 | `result-track:d53d4d8e6ec5447a16d2d139cb29e6908392bcc70a0456d57c7a39796a500a9e` |
| 6 | `theorem` | [IsSimpleModule.nontrivial](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/issimplemodule-nontrivial.md) | 75 | `result-track:725b1a5fcfe69d8c12b702ca06b517b67ff7b190a67f5827c1a9828ef6c332a8` |
| 7 | `theorem` | [LinearMap.isSimpleModule_iff_of_bijective](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/linearmap-issimplemodule-iff-of-bijective.md) | 84 | `result-track:f311ed22436a7876a23fb419d625aa0e2d2fe9b84a1bf20345143d6db0d223de` |
| 8 | `theorem` | [IsSimpleModule.congr](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/issimplemodule-congr.md) | 90 | `result-track:3d973cb40cbeba766bb255049e99692cff4733823e5f1b13ba550e147936ac08` |
| 9 | `theorem` | [LinearEquiv.isSimpleModule_iff](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/linearequiv-issimplemodule-iff.md) | 93 | `result-track:53226fa8752a796a6c2ac87248190a99e41515edad69fd3334a9e65996411fe2` |
| 10 | `theorem` | [isSimpleModule_iff_isAtom](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/issimplemodule-iff-isatom.md) | 96 | `result-track:abc40587fc5109786bb1869187b7a0b80de36e2f6845684e894628488df95658` |
| 11 | `theorem` | [isSimpleModule_iff_isCoatom](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/issimplemodule-iff-iscoatom.md) | 100 | `result-track:5cef9c98c8c999f23d8b40dc7dd386310ce61b48d341c5eaf005bd2ce49971a3` |
| 12 | `theorem` | [covBy_iff_quot_is_simple](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/covby-iff-quot-is-simple.md) | 105 | `result-track:d144dfb73f2456a68c000ad2b60664404650c2109f899cbe3ccbff07f39c6c53` |
| 13 | `theorem` | [isAtom](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/isatom.md) | 114 | `result-track:96df89395d47c68be3c27ae98416fcb4412c7d536d3e0702c4c0d5c6c51fb0d9` |
| 14 | `theorem` | [span_singleton_eq_top](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/span-singleton-eq-top.md) | 120 | `result-track:758f64e8df86af790ecfd332e93e3857016413f205eb2339a1f36fdfc262b73e` |
| 15 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/instance-source-edition-3.md) | 123 | `declaration-track:30be68dea3b97079714032b81bc177309e5e80cf6f7f928c95a736b9042fb764` |
| 16 | `theorem` | [toSpanSingleton_surjective](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/tospansingleton-surjective.md) | 131 | `result-track:4c41f7de1e96ca9121f5e04191dca115ad35729c19f31cc9bb3557fdb6d2324e` |
| 17 | `theorem` | [ker_toSpanSingleton_isMaximal](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/ker-tospansingleton-ismaximal.md) | 135 | `result-track:60b07336efb2091cf7e4f6cd6e6f927cd44101a22473229dbcb2b70a088877c4` |
| 18 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/instance.md) | 140 | `declaration-track:1b72b657506437fbe42149a2dc27918a10a558efc941b199083e8014d8d81dc2` |
| 19 | `theorem` | [isSimpleModule_iff_quot_maximal](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/issimplemodule-iff-quot-maximal.md) | 147 | `result-track:3d4e6095387f837c39a24f984d50951b07fe44ca073ee42e4294373f34d35d41` |
| 20 | `theorem` | [IsSimpleModule.annihilator_isMaximal](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/issimplemodule-annihilator-ismaximal.md) | 159 | `result-track:a496b89f24e1570f2a84dc6d5c7f1cf70a102154322a3dc1684f0a2b671c6bbf` |
| 21 | `theorem` | [isSimpleModule_iff_toSpanSingleton_surjective](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/issimplemodule-iff-tospansingleton-surjective.md) | 164 | `result-track:ad1ee34b0c985b68a83f1acc94222b319b51ef1da512412b63c18579ab34dd8d` |
| 22 | `theorem` | [isSimpleModule_self_iff_isUnit](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/issimplemodule-self-iff-isunit.md) | 172 | `result-track:eb60cd8bfd821acac17545339276f17a490d37bd55372e9e4625347ae680724f` |
| 23 | `theorem` | [IsSemisimpleModule.of_sSup_simples_eq_top](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/issemisimplemodule-of-ssup-simples-eq-top.md) | 181 | `result-track:08873524d0ddbc74c208b9a6cfe87c56b7c62d0fc94fa72ea491a34d9e8f457c` |
| 24 | `theorem` | [extension_property](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/extension-property.md) | 189 | `result-track:1231f83355234eab64ca3805865f191a49f1adf4c670a859c8b8cecd2e5c4d04` |
| 25 | `theorem` | [eq_bot_or_exists_simple_le](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/eq-bot-or-exists-simple-le.md) | 195 | `result-track:b869e5e6d84daac8cccd176a9a1474187cb18820e774478b77614725df137da7` |
| 26 | `theorem` | [sSup_simples_le](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/ssup-simples-le.md) | 198 | `result-track:53214696585684bf94b98bee144113072f1414dd57e006dfffc8a4cda5473e42` |
| 27 | `theorem` | [exists_simple_submodule](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/exists-simple-submodule.md) | 204 | `result-track:3f691de3c23f1e75c324111a849c9cd0b1fb6f513ff8e6f847c11e025270c5d7` |
| 28 | `theorem` | [sSup_simples_eq_top](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/ssup-simples-eq-top.md) | 207 | `result-track:8ae1bfc22b0e0598ccc03e48199a1c0d58f33d28a4b13967d6d7fdaeb08ce2ac` |
| 29 | `theorem` | [exists_sSupIndep_sSup_simples_eq_top](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/exists-ssupindep-ssup-simples-eq-top.md) | 210 | `result-track:a44df7b7556e89a37109cd85a0b7be6e27cab0dacc46cbf8798ba588c4dd2de1` |
| 30 | `theorem` | [annihilator_isRadical](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/annihilator-isradical.md) | 220 | `result-track:c0764870911d0c1e55020767b466bb2d37f3cb80163eb2767386aab37e8d70b1` |
| 31 | `instance` | [submodule](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/submodule.md) | 225 | `declaration-track:2b403f9f95cc88ea15a3801195136b43fafb90733e3435f6acf47244200b560c` |
| 32 | `theorem` | [congr](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/congr.md) | 231 | `result-track:c5d78340ee9565d0f56af762bc8000e36617bc0b90cb9da1ee7bea9cc9a03000` |
| 33 | `theorem` | [of_injective](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/of-injective.md) | 234 | `result-track:b7af3d17f6f3ca17e4d68d73f2435c33b2149dbb44840c619a212978993937ab` |
| 34 | `instance` | [quotient](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/quotient.md) | 237 | `declaration-track:d0ef7da61fd924fa4b99a243c9933ae09f097e23e8424f49ff5bd5359115137f` |
| 35 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/instance-source-edition-7.md) | 241 | `declaration-track:de1f527fe916accdbfc17c464a97853833a5ba7652fadabfeac342fff4d293f1` |
| 36 | `theorem` | [range](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/range.md) | 246 | `result-track:a2f26e4734bbb83cad4c2b9b0b97464501aa516521fd1abfd8c74868a27f8065` |
| 37 | `theorem` | [of_surjective](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/of-surjective.md) | 249 | `result-track:e45720cfb06fe65dfb037a6cc708dd06b3ddf590f6a23d32fbefef142f6b4d18` |
| 38 | `theorem` | [_root_.LinearMap.isSemisimpleModule_iff_of_bijective](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/root-linearmap-issemisimplemodule-iff-of-bijective.md) | 257 | `result-track:86f33c4edc0cb4fdeced38dadcd84e97521acd582dd379c66b4a5a95203dde98` |
| 39 | `theorem` | [LinearEquiv.isSemisimpleModule_iff](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/linearequiv-issemisimplemodule-iff.md) | 274 | `result-track:779fd05a40556d2e71c1d8ffd8e40e8355853ba6cf36f5e2e404c9eac08f840b` |
| 40 | `theorem` | [sSup_simples_eq_top_iff_isSemisimpleModule](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/ssup-simples-eq-top-iff-issemisimplemodule.md) | 279 | `result-track:e88b3496aff802aa474b44aeec0815a7ec0e35e497495027dc8ef68ff51f5028` |
| 41 | `lemma` | [isSemisimpleModule_of_isSemisimpleModule_submodule](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/issemisimplemodule-of-issemisimplemodule-submodule.md) | 284 | `result-track:1180df0a8de9f00c624c7539e64b84bdf219c098713df38a450c0ea7a4a74e37` |
| 42 | `lemma` | [isSemisimpleModule_biSup_of_isSemisimpleModule_submodule](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/issemisimplemodule-bisup-of-issemisimplemodule-submodule.md) | 291 | `result-track:7203b78fa08046ac662957d3bee7c2d94aa736ea37c9240fc902260b90115cc3` |
| 43 | `lemma` | [isSemisimpleModule_of_isSemisimpleModule_submodule'](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/issemisimplemodule-of-issemisimplemodule-submodule-source-edition-2.md) | 299 | `result-track:f4e035b2f2d2863d90becb4076ed57a1b225a2e08811b98c7a03823e8711bb90` |
| 44 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/instance-source-edition-4.md) | 304 | `declaration-track:420dc072159ec1a3582c1f6ad58205691d4f668d7ff86d3f059d8412eab4d72c` |
| 45 | `theorem` | [IsSemisimpleModule.exists_linearEquiv_dfinsupp](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/issemisimplemodule-exists-linearequiv-dfinsupp.md) | 311 | `result-track:39da0de08efffe69f9fcdbd6dd6d87a85c932709b32884e66a4164080265e56d` |
| 46 | `theorem` | [isSemisimpleModule_iff_exists_linearEquiv_dfinsupp](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/issemisimplemodule-iff-exists-linearequiv-dfinsupp.md) | 321 | `result-track:bbea02198e1d0ae7cdd039bc7b7cbd4e5b610bee0a7e43a8cc0a6c598b2fce9c` |
| 47 | `theorem` | [IsSemisimpleModule.exists_linearEquiv_fin_dfinsupp](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/issemisimplemodule-exists-linearequiv-fin-dfinsupp.md) | 328 | `result-track:d64db8cb058802c719cc4203a766c98bf003d18ab2b68d966a7dd3710de96d3d` |
| 48 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/instance-source-edition-8.md) | 337 | `declaration-track:e02e357b78fb84e4215e7fbe3e4ae1fd0bed27ed4ef7d456bacda0d764b99a0a` |
| 49 | `theorem` | [IsSemisimpleModule.sup](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/issemisimplemodule-sup.md) | 343 | `result-track:3f0ff5467087c45e72caafaad6d853bfa7df114521250dbcb2fc85580f753000` |
| 50 | `instance` | [IsSemisimpleRing.isSemisimpleModule](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/issemisimplering-issemisimplemodule.md) | 350 | `declaration-track:c54f513aa7cc0f4fcb36a77cb05a5868e1c8b43e6c79fea750abd567cec57888` |
| 51 | `instance` | [IsSemisimpleModule.isCoatomic_submodule](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/issemisimplemodule-iscoatomic-submodule.md) | 355 | `declaration-track:d56753d75d736250503036aa797d12266a3ea5dca13f3e7134725629dcd8f989` |
| 52 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/instance-source-edition-6.md) | 361 | `declaration-track:d4283897d031edad38f7123d28f7e128a12ec632456fc3d283511654217cbd94` |
| 53 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/instance-source-edition-2.md) | 371 | `declaration-track:252174e438410daeb44571a480008eab09fb2aa5557ff30984d1bb113fa2a012` |
| 54 | `theorem` | [RingHom.isSemisimpleRing_of_surjective](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/ringhom-issemisimplering-of-surjective.md) | 383 | `result-track:f81406d6c56025850283c6741465f1b8ed3d2650d9f4bfe54db45fa6f8a7977f` |
| 55 | `theorem` | [IsSemisimpleRing.ideal_eq_span_idempotent](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/issemisimplering-ideal-eq-span-idempotent.md) | 391 | `result-track:ba35336e91219f5ce5f9224c73304de30e78fdd254231c424a4ebf8073780464` |
| 56 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/instance-source-edition-5.md) | 399 | `declaration-track:a397b68074f0d212c90dd693c28592b2dfef0a09b82d86d54e104ed5ff0c39ab` |
| 57 | `theorem` | [injective_or_eq_zero](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/injective-or-eq-zero.md) | 423 | `result-track:41402d8fa98b644223ab400f87b12061cd64fab585ff05072569dd486b343bd5` |
| 58 | `theorem` | [injective_of_ne_zero](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/injective-of-ne-zero.md) | 428 | `result-track:4e2c8b1f33b32b7db33834896a97f14794137197b6588ffc4b949ab21a07e7c6` |
| 59 | `theorem` | [surjective_or_eq_zero](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/surjective-or-eq-zero.md) | 432 | `result-track:2780de5631dec0acab5daf6aae43bafdf26c3f444e9af56a9f922b802d93acf3` |
| 60 | `theorem` | [surjective_of_ne_zero](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/surjective-of-ne-zero.md) | 437 | `result-track:d0941280e9f4b83e2743fe2a1478dc94323aa806628cdd84110c22683ce7be85` |
| 61 | `theorem` | [bijective_or_eq_zero](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/bijective-or-eq-zero.md) | 442 | `result-track:8e5442273efdc526fbc3bdf4da859bee9c1a7b56527099d348b0e725f1b2e83c` |
| 62 | `theorem` | [bijective_of_ne_zero](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/bijective-of-ne-zero.md) | 446 | `result-track:c4e7537bfcdb5a578d23f02e1736efb9f375d2705a51fff0f3a352f2472a796c` |
| 63 | `theorem` | [isCoatom_ker_of_surjective](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/iscoatom-ker-of-surjective.md) | 450 | `result-track:b9158e18da08ea9c287911e4788b0e25dc36e9e945fca4407f61aa479b38fdf8` |
| 64 | `theorem` | [linearEquiv_of_ne_zero](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/linearequiv-of-ne-zero.md) | 455 | `result-track:94eef68c6672b19466d0c90c6404a7698a53b555df92e6d0f70b4030f9554e89` |
| 65 | `instance` | [_root_.Module.End.instDivisionRing](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/root-module-end-instdivisionring.md) | 462 | `declaration-track:932c8850feab5304e12f3581cb6195e54ac5af823e9ef023de0b3dcfc07f0734` |
| 66 | `def` | [Iso](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/iso.md) | 484 | `declaration-track:d4f82faf51a56b560ae9c3a06ffd457ba9919f5b8958f800adfc5b9495397569` |
| 67 | `theorem` | [iso_symm](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/iso-symm.md) | 487 | `result-track:5bcffb28701709e5ab95ae55902718f6be07d8b29a5f94067af3b53628061665` |
| 68 | `theorem` | [iso_trans](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/iso-trans.md) | 490 | `result-track:d314d275c88e7c7251a875280e385a1bb3955d6a2ee5e1ab9211b40e8ffff0ce` |
| 69 | `theorem` | [second_iso](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/second-iso.md) | 494 | `result-track:2243cad07abd3e50dea45358550356f9c5dfe0024f5c27e0f729158fc4b3f33f` |
| 70 | `instance` | [instJordanHolderLattice](../../../../CommutativeAlgebra/SimpleModuleBasic.lean/declarations/instjordanholderlattice.md) | 501 | `declaration-track:82b017b5f878e81cf3b495fc52342a66a7cc6648084609cca294f10e8fa0922d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13759e501a6b07350ed9d744f33883770847ceddf1932306c28f514b3d669f2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant3406175c3fecb09cfb4efecdd843346c024db71d826a0136f1ad342e73f1dcd0.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant3406175c3fecb09cfb4efecdd843346c024db71d826a0136f1ad342e73f1dcd0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
