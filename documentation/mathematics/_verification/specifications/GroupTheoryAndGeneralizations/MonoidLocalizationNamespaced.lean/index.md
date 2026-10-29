# Verification target: Monoid Localization Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d763b5e7340438b0e55f07a622ee474b3f3cc701",
  "lexical_observation_count": 193,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/MonoidLocalization/Variantbe4a6f0ac031eff72161ad17d3aa7a6b97926838a67376c143fdac3127dcbc9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d763b5e7340438b0e55f07a622ee474b3f3cc701`.

Source path: `GRWTSK/Algebra/GroupTheory/MonoidLocalization/Variantbe4a6f0ac031eff72161ad17d3aa7a6b97926838a67376c143fdac3127dcbc9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/MonoidLocalization/Variantbe4a6f0ac031eff72161ad17d3aa7a6b97926838a67376c143fdac3127dcbc9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Congruence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Membership` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalizationMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/localizationmap-source-edition-2.md) | 95 | `declaration-track:a27683cda5f6d9802f8daa3ab2fb4ff9d02283cddf7a6e21b924fc0430fc91c4` |
| 2 | `structure` | [LocalizationMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/localizationmap.md) | 121 | `declaration-track:78361d7798470eb836a8be2dc388f1b248ae4eff03653437f9a6d503859d8a86` |
| 3 | `def` | [r](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/r.md) | 158 | `declaration-track:32f9f6281c4203bbed7c0e552340346ace925d34cc5452c6aedeb518b7217177` |
| 4 | `def` | [r'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/r-source-edition-2.md) | 168 | `declaration-track:a334473bdf2f34b2cbde33c6369883cb7acd8b101d77ea7d8458246d16399f6b` |
| 5 | `theorem` | [r_eq_r'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/r-eq-r.md) | 196 | `result-track:36f68e64f3e8bc5e82f365188921798ae76d82922f7309ca2141c7994f7e394a` |
| 6 | `theorem` | [r_iff_exists](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/r-iff-exists.md) | 210 | `result-track:c80d403eb4b4ccca1272ce9375a81e5dc26f354a6a534c8fcedebbdcbdef07cf` |
| 7 | `def` | [Localization](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/localization.md) | 220 | `declaration-track:825b7a22d84b4045f00f90d7063e7e1bf7b9f5d3e9481a8d6affb4dc9ac6b99e` |
| 8 | `instance` | [inhabited](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/inhabited.md) | 227 | `declaration-track:18b1d049a29fe1a10c577971dc563cf3006bfd3cac1ebf23eeff6b76e2a93ec7` |
| 9 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/instance-source-edition-5.md) | 241 | `declaration-track:644d1e49f7052e6dd8b3629389294efd4747c1451fd42ca05dd7527079dce4b1` |
| 10 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/instance-source-edition-10.md) | 253 | `declaration-track:ff45b18cf9e9280ad0baf40ad7f89c285120db6bc63e13019e8222cab8d3af9e` |
| 11 | `instance` | [commMonoid](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/commmonoid.md) | 270 | `declaration-track:cb2f3733a24ffe4030077175b0e2630d0744a1df4261ac4dfe040b58aef0a0ea` |
| 12 | `def` | [mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-source-edition-2.md) | 294 | `declaration-track:8b9b712e383b9f6c26803e829990983d0854f48d939bbddc6a4bcc9a70081a33` |
| 13 | `theorem` | [mk_eq_mk_iff](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-eq-mk-iff.md) | 299 | `result-track:c146abbb5dceeb7e1e31527c761b3a6eac848bf847a82fcbb3987ff6a7e52e64` |
| 14 | `def` | [rec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/rec.md) | 312 | `declaration-track:cd4b832fbe48d0dd6810e022005f9297572ddd4a7dc132a875610343335107bd` |
| 15 | `def` | [recOnSubsingleton₂](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/reconsubsingleton.md) | 321 | `declaration-track:5bf24c655903b557d4fd32157ad3f93469c77a6ad578f6ecccce06fb7d713019` |
| 16 | `theorem` | [mk_mul](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-mul-source-edition-2.md) | 330 | `result-track:6f9d70af9366ceb930604e600c4df29a69865a33091f657f30c167278a49681c` |
| 17 | `theorem` | [mk_one](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-one-source-edition-2.md) | 336 | `result-track:741be9d708fee38ae12f6a8e73b2c6086ae38f162a0fa81273357b2bdc2ea599` |
| 18 | `theorem` | [mk_pow](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-pow.md) | 342 | `result-track:f6852a88ed547a9c052255e7cae81f4d36c0c90136fbee70ac3ffb9bd33155b7` |
| 19 | `theorem` | [ndrec_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/ndrec-mk.md) | 349 | `result-track:0c713d089a13f81eda35a18ab45be1d8b06e035d2bf39245dda04ce0413163d6` |
| 20 | `def` | [liftOn](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lifton.md) | 363 | `declaration-track:71b184bcc9b12a161c5ad1af7688d7c26c91f3d85c68f7f1a2f51d3e7c55ae0c` |
| 21 | `theorem` | [liftOn_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lifton-mk-source-edition-3.md) | 370 | `result-track:345a8ac2274af19b392916c7a8bd8148b35f136c7d31b295552364f7bf9391fd` |
| 22 | `theorem` | [ind](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/ind.md) | 376 | `result-track:686215e62d70e4fa2fe4092c332b713a074fc65de1eb9bcd780e326b9834d28d` |
| 23 | `theorem` | [induction_on](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/induction-on.md) | 382 | `result-track:1fc90c0ef87f61fb7fc4f207baae34c36febb3135db56984c8ca4eef2e650743` |
| 24 | `def` | [liftOn₂](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lifton-source-edition-2.md) | 396 | `declaration-track:95cb3b0dc7edd3815db6bcad542f09027f13bc93b60249fe6f04b21395bf7f1f` |
| 25 | `theorem` | [liftOn₂_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lifton-mk.md) | 405 | `result-track:0eb205ce84c4b19e8c845e447ec38d936ecfa846dc0edc9d9d4c258608b4dcf1` |
| 26 | `theorem` | [induction_on₂](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/induction-on-source-edition-3.md) | 411 | `result-track:e56561bf7f47adc259692f1dc222e848a77de4d745c1df623b9e68f8e0a7ba60` |
| 27 | `theorem` | [induction_on₃](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/induction-on-source-edition-2.md) | 418 | `result-track:62426217f59b906a7f86b13fe81c1037e927f33c1e236aded6d886b00848b3dc` |
| 28 | `theorem` | [one_rel](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/one-rel.md) | 425 | `result-track:ccb55ef29ded3e6336380b82247ad0a965ccda1cb0b5bc375687be1ed6cce6a8` |
| 29 | `theorem` | [r_of_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/r-of-eq.md) | 430 | `result-track:4a20030fdb4ba84a19efb9fd445c3ef0a3973faeeef7469a939e5ed926d5bd50` |
| 30 | `theorem` | [mk_self](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-self.md) | 436 | `result-track:0255233832137cd4072fc10ca54e7c03e9edf74297cea87b95327185a30558ce` |
| 31 | `instance` | [instSMulLocalization](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/instsmullocalization.md) | 465 | `declaration-track:328263d43b05d5e10b5184a7c4e4f8698a91293e91033aef813d2634562b8910` |
| 32 | `theorem` | [smul_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/smul-mk.md) | 468 | `result-track:69efefcc89e3f5863f16d6356c30d9e22ac278a2c71e9b88108bdb3e5542d32a` |
| 33 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/instance-source-edition-4.md) | 475 | `declaration-track:3ca1dee80ca68bc941a5871c2b29bdb6b9c1196df925291fa3b3dc89c02cd171` |
| 34 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/instance-source-edition-7.md) | 479 | `declaration-track:b0f657117dbe7c191e786e3260c360ddb96ae7609d1024307af401657980ee8a` |
| 35 | `instance` | [smulCommClass_right](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/smulcommclass-right.md) | 483 | `declaration-track:454d91fcb4b63a7f48690f1ddd163973d7c3aefe9790d6f1b06b74b0009a3012` |
| 36 | `instance` | [isScalarTower_right](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/isscalartower-right.md) | 493 | `declaration-track:5d3d89ac0a40bcd233b144ec1d1317b5e008ea035b6ebec264d207e9b42dbb66` |
| 37 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/instance-source-edition-9.md) | 502 | `declaration-track:fd017d1ce869cff1d6b7ce8090a4321f5258d586e9ee26f966e7cfd384af16e1` |
| 38 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/instance-source-edition-8.md) | 507 | `declaration-track:f2ecd33ac7b5d7dff4e093ec42c902c0fb167a5ef695844d34b52ed008ee5ae9` |
| 39 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/instance-source-edition-6.md) | 519 | `declaration-track:88f1a94a75a32376a585a0bde802a1d0203c3a8c4480614328c96c9b77db8b43` |
| 40 | `def` | [toLocalizationMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/tolocalizationmap.md) | 538 | `declaration-track:53106ecc1ddc96dcf23ff0a8ae92c81d77fddb71786ca4bcc749bb6dd8cc72e8` |
| 41 | `abbrev` | [toMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/tomap.md) | 556 | `declaration-track:a027e74bbf5084929252c37542d03481598f87f8ed8b2d3e03c2beab0dda1f76` |
| 42 | `theorem` | [ext](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/ext.md) | 561 | `result-track:2044ab903d11724ee8160e1445dff6b00b84e5dc7b5939ced88204c2f4f4993c` |
| 43 | `theorem` | [ext_iff](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/ext-iff.md) | 570 | `result-track:5dd501d643bfd4a570088b79f6d177442638a370c1c07f5c473bd1322c39f388` |
| 44 | `theorem` | [toMap_injective](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/tomap-injective.md) | 576 | `result-track:f32173ec0bace76a5a0f34e38d3c95cb412b94df65dd4754c792dd04bccf29ec` |
| 45 | `theorem` | [map_units](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/map-units.md) | 582 | `result-track:a671c4bb57d5297259c2c0223452bb96202f2fda9032b56f447f4f18dbdbe376` |
| 46 | `theorem` | [surj](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/surj.md) | 588 | `result-track:c565a526547d6536dbcd95407acf9744735250cdb3b66b5f1f41c530623a341f` |
| 47 | `theorem` | [eq_iff_exists](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/eq-iff-exists.md) | 594 | `result-track:7e7cb3bcd535da9a3c8a15e01917ec16801958015c1e3efc407892bb3ffb8a6a` |
| 48 | `def` | [sec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/sec.md) | 604 | `declaration-track:b9bc3a3f7eb2783c475fd080cfa567131444b610e83cf574e94f01105d4eef84` |
| 49 | `theorem` | [sec_spec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/sec-spec-source-edition-2.md) | 609 | `result-track:83c1307c1549cd25b69dbf1a95c33dcfa355eae1b2becd3d06bd8a383d50971d` |
| 50 | `theorem` | [sec_spec'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/sec-spec.md) | 615 | `result-track:71a0d076d208f0714869a4c36b7b94755880449ebf63a8311367c5b223beb5c2` |
| 51 | `theorem` | [mul_inv_left](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mul-inv-left.md) | 625 | `result-track:cf47c1156d4f5f8624ac2e5c7b7db72a848ac96aba26e8e69ae703540e3b66dc` |
| 52 | `theorem` | [mul_inv_right](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mul-inv-right.md) | 637 | `result-track:89476fb74c740c3a531bbcd267889593bb8610ccc5eab77d6f944a59396f60c7` |
| 53 | `theorem` | [mul_inv](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mul-inv.md) | 650 | `result-track:373fdd1d3add003cf268c23b57d069e80645d0ab4ff9535319871d30f400093c` |
| 54 | `theorem` | [inv_inj](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/inv-inj.md) | 664 | `result-track:4de3905f97e3f606fa7928169f555743c0604beaa9898bae25d4b340349ee365` |
| 55 | `theorem` | [inv_unique](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/inv-unique.md) | 677 | `result-track:d3062a85165ff9e35fe0d5cc559e2a640326807c2d82ade0d63a6d0937fad131` |
| 56 | `theorem` | [map_right_cancel](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/map-right-cancel.md) | 687 | `result-track:ebaf305fd450c035eb79a17bada497022f1db26b6b5e1dac1bdd7f05dc219546` |
| 57 | `theorem` | [map_left_cancel](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/map-left-cancel.md) | 697 | `result-track:c977b465b7eada358930c1dca4e05e0f2b2e6f2f26fda00245c5f86d962470b8` |
| 58 | `def` | [mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk.md) | 708 | `declaration-track:3420f2bece8e51c54c13fd898249243f53007713e983fb7a3b4270f5cb43a868` |
| 59 | `theorem` | [mk'_mul](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-mul.md) | 714 | `result-track:6ac192655a57351624f37aefcdf437e539631564ef9b86546cb31e635efb1ee1` |
| 60 | `theorem` | [mk'_one](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-one.md) | 725 | `result-track:1caf7bc856212474429faa4c1f7d307c8fd4a48349e00fb8589a26c6b7b2c963` |
| 61 | `theorem` | [mk'_sec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-sec.md) | 736 | `result-track:b95cdb777f5780f7a4836408f442e38979c0a4b73a965a81c019887899d7bf58` |
| 62 | `theorem` | [mk'_surjective](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-surjective.md) | 742 | `result-track:5ec41264afdf1d236c32ab83d2cef0cd6f1d64d0d868e399b62a7f525815bc9b` |
| 63 | `theorem` | [mk'_spec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-spec.md) | 748 | `result-track:8cb0683ee4000710f8bbaa37164b0f53695787228a79d65a7dd08101c01a8044` |
| 64 | `theorem` | [mk'_spec'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-spec-source-edition-2.md) | 754 | `result-track:b513dac25958f9864c7152d27c72c6d36477c968fb914151e853ba1b0a74c007` |
| 65 | `theorem` | [eq_mk'_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/eq-mk-iff-mul-eq.md) | 759 | `result-track:dbc6cb1e23b9560e945b284ca640e08da3ba7c9a197467f54fb0c006a1de0349` |
| 66 | `theorem` | [mk'_eq_iff_eq_mul](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-eq-iff-eq-mul.md) | 765 | `result-track:730c31ab5b4a195eb3cbd4d7832c1fd573a915e2a6d0e3035c2ececb6a13125d` |
| 67 | `theorem` | [mk'_eq_iff_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-eq-iff-eq-source-edition-2.md) | 771 | `result-track:c9a1ebc8d01985941197b80ef8e35127bf1bdfc67d2ee2220ec4f3b63ebe1ef2` |
| 68 | `theorem` | [mk'_eq_iff_eq'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-eq-iff-eq.md) | 784 | `result-track:3559ae94777e0b6c51233fb427588b34cac4db448c815a28f95f8c2d41ca76c2` |
| 69 | `theorem` | [eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/eq-source-edition-2.md) | 791 | `result-track:a42765f032fe8bfd1ed8eb05e83a73527a6716dcd7076f759d71db79f085c44e` |
| 70 | `theorem` | [eq'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/eq.md) | 798 | `result-track:1a900bfbe6ebce314387bb18953fadd029892aa6bb8ea43f275b58199ecc6c5d` |
| 71 | `theorem` | [eq_iff_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/eq-iff-eq.md) | 805 | `result-track:cb6a5964e1f1eaa95ed627aafae1e2a68491ec1f154dfc8770dc05d6b6f4af23` |
| 72 | `theorem` | [mk'_eq_iff_mk'_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-eq-iff-mk-eq.md) | 811 | `result-track:4a69473217ba89933275ed7a051c6d3fbf0fc25ffe8160fe140df12b27e465b4` |
| 73 | `theorem` | [exists_of_sec_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/exists-of-sec-mk.md) | 824 | `result-track:434bd5fc6620b230ba66abbbff1bea6224ff5ec3b6619bb2279359fc94d51460` |
| 74 | `theorem` | [mk'_eq_of_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-eq-of-eq-source-edition-2.md) | 831 | `result-track:e8fb9c7fe48002c6d884a70c04d78863c20a3233d6c449a9a26a7391b1382d21` |
| 75 | `theorem` | [mk'_eq_of_eq'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-eq-of-eq.md) | 838 | `result-track:a0311d4ed133d997bb92fcc68b0f5cb79a533c51ce1b86fc14e28c4f89f2fdc2` |
| 76 | `theorem` | [mk'_self'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-self-source-edition-3.md) | 845 | `result-track:32c7632026f44f40be705f9d03b13810e4b26873a87c0f3cdc94d7ee7759ac02` |
| 77 | `theorem` | [mk'_self](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-self-source-edition-2.md) | 851 | `result-track:2ec4d046236a5e2c53f0c30d9687569f55f8ae580d4b4db16983c361eec855a5` |
| 78 | `theorem` | [mul_mk'_eq_mk'_of_mul](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mul-mk-eq-mk-of-mul.md) | 856 | `result-track:7922bd2fe4a5626ae050438eb67ca3c4b07b06e479a95c8b206e207f47a5a49e` |
| 79 | `theorem` | [mk'_mul_eq_mk'_of_mul](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-mul-eq-mk-of-mul.md) | 862 | `result-track:836b3504de71ce3efcd6cb7021f2aa49fc71104ec1910d6d135eadbdc1fc418b` |
| 80 | `theorem` | [mul_mk'_one_eq_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mul-mk-one-eq-mk.md) | 868 | `result-track:514295a699170c4d6d16170700daecd9969c6da30a4a5befaa8ea01989676ed1` |
| 81 | `theorem` | [mk'_mul_cancel_right](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-mul-cancel-right.md) | 874 | `result-track:3870a3f712ac39fcdf22e4f4fc788dbd2ca2c705f27fade23d4020a1d1443dde` |
| 82 | `theorem` | [mk'_mul_cancel_left](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-mul-cancel-left.md) | 880 | `result-track:452fb43ad83c439df2dfcff3cce41d285207a438af644642737d907cc9cb7084` |
| 83 | `theorem` | [isUnit_comp](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/isunit-comp.md) | 886 | `result-track:f5a6ca4876093d01fbd4c84aa6573b61780e92ff384ef78e4e073acfbef7c38b` |
| 84 | `theorem` | [eq_of_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/eq-of-eq.md) | 900 | `result-track:e67a9ce7087f4a1976de49765f7534fc59fcf6ee50e857fbce2f374538891c71` |
| 85 | `theorem` | [comp_eq_of_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/comp-eq-of-eq.md) | 915 | `result-track:d2e4d353931c682085f016fd1289ef7e710857b49cfdefe4b7591002e059d63b` |
| 86 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lift.md) | 932 | `declaration-track:4c7a22063cd810e501caa0e0a6a5d543fc38c60af5536cf3c2b650065562837f` |
| 87 | `theorem` | [lift_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lift-mk.md) | 951 | `result-track:2d985acfbeb7a3a5e330ce7ded2bd64069e85643a6235114dee1a386e43a24fd` |
| 88 | `theorem` | [lift_spec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lift-spec.md) | 966 | `result-track:1df207d87501e5204dd361575e7d63d6bd897553bd450309521d4dd8c0ae0946` |
| 89 | `theorem` | [lift_spec_mul](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lift-spec-mul.md) | 980 | `result-track:3c39bc4d8019d7b13393e108df0c1a4467f156b5e1c2f8d9e6eecdef836d6f24` |
| 90 | `theorem` | [lift_mk'_spec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lift-mk-spec.md) | 986 | `result-track:a48014a57c16f4045567c949128f0eecbf65ad2dc51edfe351c7eaca1dc71b1b` |
| 91 | `theorem` | [lift_mul_right](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lift-mul-right.md) | 998 | `result-track:79bb1f685196e2e710ae41c4ac46a1f21b70f7802bc53c3d209f334229a3d910` |
| 92 | `theorem` | [lift_mul_left](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lift-mul-left.md) | 1010 | `result-track:791928b7eedf9faa39d559e3713f8759cf93ff6fe4131444a4c565f4f122ac03` |
| 93 | `theorem` | [lift_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lift-eq.md) | 1016 | `result-track:6657546d34f1c0027d9bef18e229f5fb32f6d5b852400cd990f3a852e6b78165` |
| 94 | `theorem` | [lift_eq_iff](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lift-eq-iff.md) | 1022 | `result-track:0b5901a480d63e25a732e9aed28744b60942716b1703b51434a3b3bd5e6f97c8` |
| 95 | `theorem` | [lift_comp](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lift-comp.md) | 1029 | `result-track:1cb1e956bb0b4ba50ec6c92f60a3ab61ad7f49121917e689d21a6df5b0cb6626` |
| 96 | `theorem` | [lift_of_comp](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lift-of-comp.md) | 1034 | `result-track:7db3173ec5cf96c29a091bf4bba85dfdeb652fbf0ccf668e2aedbae1027d7c2f` |
| 97 | `theorem` | [epic_of_localizationMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/epic-of-localizationmap.md) | 1043 | `result-track:aa1eb0bd6210c3e8dde8620b94e605fc1cf973fc4150ef5f428c7a06bddf54d8` |
| 98 | `theorem` | [lift_unique](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lift-unique.md) | 1051 | `result-track:04a92a2df2fba012ec0bd965188167a87e401a30698301dc64e18742bc6dd8d5` |
| 99 | `theorem` | [lift_id](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lift-id.md) | 1060 | `result-track:1fc41b0e4c85cf7959997179f8c548f32ea93f9182517ff5040717d7a7afee2b` |
| 100 | `theorem` | [lift_left_inverse](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lift-left-inverse.md) | 1070 | `result-track:d00c5e5276ea073a3bc32527cb0850bcfa3447c216d7b34beef0b4dc577657bc` |
| 101 | `theorem` | [lift_surjective_iff](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lift-surjective-iff.md) | 1090 | `result-track:91408b328243350fb892da605b4a27cef5949ef2407a6b6f18f3c97f9afaec04` |
| 102 | `theorem` | [lift_injective_iff](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lift-injective-iff.md) | 1107 | `result-track:75c8dff3dcb7836ae39608a15e2253abc079e297d8b54ff2bfd397a49163e0fb` |
| 103 | `def` | [map](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/map.md) | 1138 | `declaration-track:8d18149cdc3a47df6637bb13de3e087db41cb25376aef6a929a62565b5c35f99` |
| 104 | `theorem` | [map_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/map-eq.md) | 1146 | `result-track:480d5ffd37177980d1119e95fbcb4d2d453d326ae0dfe242d0d398db11a59054` |
| 105 | `theorem` | [map_comp](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/map-comp.md) | 1152 | `result-track:6d84fa6fc8b33bc7d2db6a343261f63c371473fc4ae53d422129299bb4a07983` |
| 106 | `theorem` | [map_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/map-mk.md) | 1158 | `result-track:f36ba037ca46629f8b910792a9099bdb0f079ba2abe86ce3107ca8537acbf23e` |
| 107 | `theorem` | [map_spec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/map-spec.md) | 1175 | `result-track:15eede823f96062141f414aa4f1c5d8cbfced9cfc3d7fec7cd30dd894cc4ad66` |
| 108 | `theorem` | [map_mul_right](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/map-mul-right.md) | 1189 | `result-track:90d99b7582811a92a9c6ab3d5766975531cc59c1f6fd189476ea2821a4fe67ef` |
| 109 | `theorem` | [map_mul_left](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/map-mul-left.md) | 1203 | `result-track:d1aa370cb6723ee12b377e3f735705238dc9e6bf17a8be3e0a47aba0066aa690` |
| 110 | `theorem` | [map_id](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/map-id.md) | 1209 | `result-track:4be4218360aced1bcc47598a27d979782706d809927df3068a2ef8a7ec052f62` |
| 111 | `theorem` | [map_comp_map](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/map-comp-map.md) | 1219 | `result-track:8d271e11f4b8b00fe0fe057a9eff23adcc2f11d19c38300fb1df1e0a96e0f532` |
| 112 | `theorem` | [map_map](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/map-map.md) | 1239 | `result-track:18520f4829fc6b4efcce89bfc73f12a5644d3f84717476f96390d7bb289a7620` |
| 113 | `def` | [AwayMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/awaymap.md) | 1260 | `declaration-track:05a0271158b78b0770bd4d4875ec134f1542d479834d5a4442cc83e32fde34cb` |
| 114 | `def` | [AwayMap.invSelf](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/awaymap-invself.md) | 1267 | `declaration-track:4c28552217d2baad6ed3adeea6534d6c988894f3070615e02f26e73cef246c18` |
| 115 | `def` | [AwayMap.lift](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/awaymap-lift.md) | 1273 | `declaration-track:a4afab10aa2c71801ed38993b94019d4888914b66930bc1e199c590458998f4e` |
| 116 | `theorem` | [AwayMap.lift_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/awaymap-lift-eq-source-edition-2.md) | 1282 | `result-track:a26e72143cd91470f7cf76f79ebc99a95f309a781db91e9e3949232d0c7a2420` |
| 117 | `theorem` | [AwayMap.lift_comp](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/awaymap-lift-comp.md) | 1287 | `result-track:aa9eab648fba0c432fdc7b9ce3dcbed5940b6666a61874284ca92c5539a87dcd` |
| 118 | `def` | [awayToAwayRight](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/awaytoawayright-source-edition-2.md) | 1293 | `declaration-track:d5be5a53b036d4bf358b11d0476d6a2514fb23e2d8ef50886c5441f1a96078d1` |
| 119 | `def` | [AwayMap.negSelf](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/awaymap-negself.md) | 1316 | `declaration-track:e451e57960bc5cd9f09790f75efbd7f408d978ce5001d266ed1a1953f60902ed` |
| 120 | `def` | [AwayMap.lift](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/awaymap-lift-source-edition-2.md) | 1323 | `declaration-track:ca9dc3ecc9d2a7668d77d9884e96495785f6119a2eb240b68b717dc2f9c65da9` |
| 121 | `theorem` | [AwayMap.lift_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/awaymap-lift-eq.md) | 1334 | `result-track:2943e72764b45dbe162de3e41d627ba5c781489cfcb9ab5b91e3c606ef473e4f` |
| 122 | `theorem` | [AwayMap.lift_comp](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/awaymap-lift-comp-source-edition-2.md) | 1339 | `result-track:ba12e6c8a4c31934b6fd35bd235cdee3b94bb5105130ce699e3deab1d845d3c4` |
| 123 | `def` | [awayToAwayRight](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/awaytoawayright.md) | 1345 | `declaration-track:743380e29c23390b7b8ebdeb56bcb8d4148b54d7db6815bb1bdd888d4df1ad44` |
| 124 | `def` | [mulEquivOfLocalizations](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mulequivoflocalizations.md) | 1370 | `declaration-track:9691beaa554bfc3323126f1a1101d4926dc62ea08474bba1f1d549fd0fd2e63e` |
| 125 | `theorem` | [mulEquivOfLocalizations_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mulequivoflocalizations-apply.md) | 1380 | `result-track:649bac31c1427d2a669a3f2cf46f68aaef07a732b96fd4737a3ea1c9b3f703dd` |
| 126 | `theorem` | [mulEquivOfLocalizations_symm_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mulequivoflocalizations-symm-apply.md) | 1386 | `result-track:af5ab2ff1a7ed825edc1a0c82e1e12840b23199ef8251efa4d204cc44747d9b7` |
| 127 | `theorem` | [mulEquivOfLocalizations_symm_eq_mulEquivOfLocalizations](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mulequivoflocalizations-symm-eq-mulequivoflocalizations.md) | 1392 | `result-track:36feeffd00184c1ee931275863c496a378ef4f1f9d669bbb480dcece01f215f8` |
| 128 | `def` | [ofMulEquivOfLocalizations](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/ofmulequivoflocalizations.md) | 1402 | `declaration-track:516112896115e58609135f64b104e383c53c9c5a6f558775b925aa5e36e3e10f` |
| 129 | `theorem` | [ofMulEquivOfLocalizations_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/ofmulequivoflocalizations-apply.md) | 1413 | `result-track:22bcd9ba4a4fa8342c5bc6d2a35a1bd4405142413fa5d3faa1294168eaa603fe` |
| 130 | `theorem` | [ofMulEquivOfLocalizations_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/ofmulequivoflocalizations-eq.md) | 1419 | `result-track:e118ddc06f04468eb0bc7eb3d6c61edbea8298cbf4e6cda6b6d577676087d643` |
| 131 | `theorem` | [symm_comp_ofMulEquivOfLocalizations_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/symm-comp-ofmulequivoflocalizations-apply-source-edition-2.md) | 1425 | `result-track:a71368e8ff4bc101b24bdc2fb652d757448c4de4fafa15f76abb101826d17a48` |
| 132 | `theorem` | [symm_comp_ofMulEquivOfLocalizations_apply'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/symm-comp-ofmulequivoflocalizations-apply.md) | 1431 | `result-track:8ae893e0f18c9f2d4457ddbf2faf5e146c7f427c18b8faced029963c0f1c0a34` |
| 133 | `theorem` | [ofMulEquivOfLocalizations_eq_iff_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/ofmulequivoflocalizations-eq-iff-eq.md) | 1437 | `result-track:af66d6d58fa843624b01f23fefabfdd026836e6137c9662531663da0489542d7` |
| 134 | `theorem` | [mulEquivOfLocalizations_right_inv](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mulequivoflocalizations-right-inv.md) | 1444 | `result-track:0ff0fe98bf43aabc0f21102ba0ea6bcd80e23d9804f9119c727b17580f48a3a5` |
| 135 | `theorem` | [mulEquivOfLocalizations_right_inv_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mulequivoflocalizations-right-inv-apply.md) | 1452 | `result-track:d689f44b0eb4705bf37327a66ee665745f120218610c6c75caf2b761d300798c` |
| 136 | `theorem` | [mulEquivOfLocalizations_left_inv](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mulequivoflocalizations-left-inv.md) | 1458 | `result-track:eaf0162d0a9cbe2bc25a29c5235fb6df8a60f6045470c45754891efbda793bde` |
| 137 | `theorem` | [mulEquivOfLocalizations_left_inv_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mulequivoflocalizations-left-inv-apply.md) | 1466 | `result-track:0e051a344ee640e6d354c59ef19b5cf13eb55e4cfb7fcb096009d0592a3e695e` |
| 138 | `theorem` | [ofMulEquivOfLocalizations_id](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/ofmulequivoflocalizations-id.md) | 1472 | `result-track:a13c0b3d7d2ac928c24209c0347308c066ca5320958762ea2e6d0537d3dddaf6` |
| 139 | `theorem` | [ofMulEquivOfLocalizations_comp](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/ofmulequivoflocalizations-comp.md) | 1478 | `result-track:e083fe516cdc59f6ca76b8adbd9678abae2cbefc67d646520ff01547f415a840` |
| 140 | `def` | [ofMulEquivOfDom](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/ofmulequivofdom.md) | 1492 | `declaration-track:408cda6fb94a873d5a79d625fa3c0ccf042cb8465e1d1d29134316828e9bf56e` |
| 141 | `theorem` | [ofMulEquivOfDom_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/ofmulequivofdom-apply.md) | 1520 | `result-track:0b9d58ab32144a5b22a60b43e83cca87f3b7a8de6118cd43b54143ac911016c7` |
| 142 | `theorem` | [ofMulEquivOfDom_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/ofmulequivofdom-eq.md) | 1526 | `result-track:5e6ed42906219632ebd3bfe669e806b90d1f64f3f739223af2f55059f2220f3d` |
| 143 | `theorem` | [ofMulEquivOfDom_comp_symm](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/ofmulequivofdom-comp-symm.md) | 1532 | `result-track:7b8bd0191b2bbb8597427c0d6c97d1af55086d368a3d99fda8b4379d011c18dc` |
| 144 | `theorem` | [ofMulEquivOfDom_comp](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/ofmulequivofdom-comp.md) | 1539 | `result-track:adae7c20221fb4ace24e74b260d517b86d1d4543535fc07f515e83a2fbe20411` |
| 145 | `theorem` | [ofMulEquivOfDom_id](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/ofmulequivofdom-id.md) | 1546 | `result-track:d12dc35e29624c3ecf3d46522d14f641f4ad072f03fd5e8799cf06b9cefea077` |
| 146 | `def` | [mulEquivOfMulEquiv](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mulequivofmulequiv.md) | 1559 | `declaration-track:2ecd0bd8e2fe3841efad7343756f54c6fd448e51579ec0a59932fce332002083` |
| 147 | `theorem` | [mulEquivOfMulEquiv_eq_map_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mulequivofmulequiv-eq-map-apply.md) | 1566 | `result-track:f49d00794c43a7aa0221e3e69b81488f2c87d9001a3f5601b0c56ea42db74d22` |
| 148 | `theorem` | [mulEquivOfMulEquiv_eq_map](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mulequivofmulequiv-eq-map.md) | 1574 | `result-track:f398adbab560c888d698359b859c3f56bc9715cd95fa9c985b464cb253fbf364` |
| 149 | `theorem` | [mulEquivOfMulEquiv_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mulequivofmulequiv-eq.md) | 1582 | `result-track:23829fb2ce2311f226a93de126e5a13dc85948738d72eb9f72c88ce0b4a31aac` |
| 150 | `theorem` | [mulEquivOfMulEquiv_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mulequivofmulequiv-mk.md) | 1590 | `result-track:66f272e9e68697e155493a8197e9ec4cd4ff0d60a69545a2b80a23f71dd8361c` |
| 151 | `theorem` | [of_mulEquivOfMulEquiv_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/of-mulequivofmulequiv-apply.md) | 1598 | `result-track:f3c9d210d3b2b2286fa8c8e1689ea7055b3df58301600e2403da4d5f3d880648` |
| 152 | `theorem` | [of_mulEquivOfMulEquiv](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/of-mulequivofmulequiv.md) | 1606 | `result-track:3b22c50042297b4c79b42aeebab1b34ce829a1d78edb9c997d9a44437353d353` |
| 153 | `def` | [monoidOf](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/monoidof.md) | 1625 | `declaration-track:2e4bae89ae749d1c201f2c535b72c4fce8901d1c29233760ba95ae7fadf5f51b` |
| 154 | `theorem` | [mk_one_eq_monoidOf_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-one-eq-monoidof-mk.md) | 1645 | `result-track:8380346e6276ded93273ad88cbfc1b7f0eb5a26d8036791e6379a19112276754` |
| 155 | `theorem` | [mk_eq_monoidOf_mk'_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-eq-monoidof-mk-apply.md) | 1650 | `result-track:b58ce27c036937b4b12d12eef0525c8d53d254202efe830b5ed1c6f4422c4e6b` |
| 156 | `theorem` | [mk_eq_monoidOf_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-eq-monoidof-mk.md) | 1660 | `result-track:2034786c9aec1535fc2433f6352a299c4e69180033dc6043cd816e0db7beaddf` |
| 157 | `theorem` | [liftOn_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lifton-mk-source-edition-2.md) | 1668 | `result-track:31d621212db63738711b087bc77741efe242d1e01170683da0c169e491e67379` |
| 158 | `theorem` | [liftOn₂_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lifton-mk-source-edition-4.md) | 1674 | `result-track:f124a5a9b4afbfbf6ac46277a71f716e45330daf9f82719464d6f4c550bd28c4` |
| 159 | `def` | [mulEquivOfQuotient](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mulequivofquotient.md) | 1687 | `declaration-track:b5d30cf4afac316933c143576263df1191fcbfe7b580b4a37994e2f170b4c2d8` |
| 160 | `theorem` | [mulEquivOfQuotient_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mulequivofquotient-apply.md) | 1696 | `result-track:a676b5b5fda29ea424e48ce459f2e18bf6e4d9ac3a4afa11999772388375e1e0` |
| 161 | `theorem` | [mulEquivOfQuotient_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mulequivofquotient-mk-source-edition-2.md) | 1702 | `result-track:7be9fdcd129db1c2adf826c6710e527f162cceb0d184af8c48dee40aa45b922d` |
| 162 | `theorem` | [mulEquivOfQuotient_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mulequivofquotient-mk.md) | 1708 | `result-track:7309a4ca0608a83dda0ad1fc5db7a4f19c3801a1ad68da3ee29f70af484b7f20` |
| 163 | `theorem` | [mulEquivOfQuotient_monoidOf](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mulequivofquotient-monoidof.md) | 1715 | `result-track:b3addd438ecf0baf538725b8015caf0fe1fb80f7ca78b55b21d61ede9664c9db` |
| 164 | `theorem` | [mulEquivOfQuotient_symm_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mulequivofquotient-symm-mk-source-edition-2.md) | 1721 | `result-track:359cadd0eeb22a5bed4cde219740d1e0c256ac11c13c12727bab54f74ebc3158` |
| 165 | `theorem` | [mulEquivOfQuotient_symm_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mulequivofquotient-symm-mk.md) | 1728 | `result-track:08cbc7ad49d31a57506535d50357300acffb2ce1a60161ca0c8c68e70e10eee3` |
| 166 | `theorem` | [mulEquivOfQuotient_symm_monoidOf](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mulequivofquotient-symm-monoidof.md) | 1734 | `result-track:fbce9b9272d8976774f62912a5e53f1c100af6a2b6b8f07f4cfabfc7d3a1abe4` |
| 167 | `def` | [Away](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/away.md) | 1747 | `declaration-track:83c3ec2b6743a24b3f38bf74fb1133a0866cd009a25d9e72610cc4cbd808bc55` |
| 168 | `def` | [Away.invSelf](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/away-invself.md) | 1757 | `declaration-track:a21f7b3a04635870744de4e6f63256f369aefedf60b53844d2e92d0c6d4a0173` |
| 169 | `class` | [of](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/of.md) | 1766 | `declaration-track:c5188543fafdc042a5208db46f4c32301a81caf693a4972f4e404afd258f41e4` |
| 170 | `def` | [Away.monoidOf](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/away-monoidof.md) | 1767 | `declaration-track:2627017ecc33a7010b068fadf7e057ad1bd0be6b7bed3f3e218a0901bc85ae4c` |
| 171 | `theorem` | [Away.mk_eq_monoidOf_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/away-mk-eq-monoidof-mk.md) | 1774 | `result-track:133002080ce606217daf0ee17f96145105b13f559de3461cefa09e1e39f09da6` |
| 172 | `def` | [Away.mulEquivOfQuotient](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/away-mulequivofquotient.md) | 1783 | `declaration-track:723666b1318004ea1fe0eb04c93e5c7ef7651eea499945572535f586cc2213e3` |
| 173 | `structure` | [LocalizationWithZeroMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/localizationwithzeromap.md) | 1807 | `declaration-track:7a18ae38e784edebc73406441faa05684313ac284a4b0ef0cb0c4138342428be` |
| 174 | `def` | [LocalizationWithZeroMap.toMonoidWithZeroHom](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/localizationwithzeromap-tomonoidwithzerohom.md) | 1818 | `declaration-track:027f7505c77eca956c4b4d0da148718aefa439e1c8569721fe6a8fb3de3f95fc` |
| 175 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/instance.md) | 1833 | `declaration-track:0d4eb5e9a8bc160f60e5bce4f80d4885729d6d614cccbc836ddc493932a650d3` |
| 176 | `theorem` | [mk_zero](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-zero.md) | 1837 | `result-track:70b808a1eded4915f2ceb8bd15c3f69d61b0bb4c82d84dc63d2aace12f7246a1` |
| 177 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/instance-source-edition-3.md) | 1842 | `declaration-track:32651d4c7d51a8f61505873bc3e220ce5be7eeb5f35cf4dea6aeebe5feb7978f` |
| 178 | `theorem` | [liftOn_zero](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lifton-zero.md) | 1849 | `result-track:8547a1f91fbfffff8cfcebeec446fa1aad818798bb69acde1ebd730268b95c4e` |
| 179 | `theorem` | [LocalizationMap.sec_zero_fst](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/localizationmap-sec-zero-fst.md) | 1860 | `result-track:f6c958b7e9f4fc0a87f270df598028acbc415f1a57ce8ceb7229872b1dc335cd` |
| 180 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lift-source-edition-2.md) | 1870 | `declaration-track:aeb13db6cc88caa2d3a98fbc7d37135a520aa32543c2ab8223b6eba127c024be` |
| 181 | `theorem` | [mk_left_injective](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-left-injective.md) | 1892 | `result-track:795ea90301e2e01beae203104aeeb61392707c76e595610e3152e2a083f47199` |
| 182 | `theorem` | [mk_eq_mk_iff'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-eq-mk-iff-source-edition-2.md) | 1900 | `result-track:f2c530c947f301f147d9e4112debbe6e597e3892eab7bd234ff9e79164cca90b` |
| 183 | `instance` | [decidableEq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/decidableeq.md) | 1908 | `declaration-track:50ce768b7fe42214fd7758b044a763673ce03297e3491e53a442c59a282aedf8` |
| 184 | `instance` | [le](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/le.md) | 1926 | `declaration-track:3e50b9a220f9bee23cff0ae3961238a4dabebe4179b44c0755cbc876c42d90b7` |
| 185 | `instance` | [lt](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/lt.md) | 1939 | `declaration-track:199b747c13c945ef47c22195bc8f2186693f2dafeeb2dd68f3ef1da56d9dba1c` |
| 186 | `theorem` | [mk_le_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-le-mk.md) | 1952 | `result-track:b62124af1d6bbf7fb795fdc076117ec2cdafc25ad4091fb98c082e3b822df583` |
| 187 | `theorem` | [mk_lt_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mk-lt-mk.md) | 1958 | `result-track:f5b358bfb7c5c18a7a448d393f50d60a60983350889166f710129beee90d4859` |
| 188 | `instance` | [partialOrder](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/partialorder.md) | 1965 | `declaration-track:fdd03b800f6a2fdb0dd9e5b28b264c27c26dcffdf3dabe42b8c25d90db77f65d` |
| 189 | `instance` | [orderedCancelCommMonoid](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/orderedcancelcommmonoid.md) | 1986 | `declaration-track:b069565af5a7dc4e19483071a26f3132f96bd5303b5aa1ea461143abf950c82f` |
| 190 | `instance` | [decidableLE](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/decidablele.md) | 2000 | `declaration-track:5503cabc094193692aac6aa6f8d66200f05a5ef0725a472505e69751ea189b13` |
| 191 | `instance` | [decidableLT](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/decidablelt.md) | 2007 | `declaration-track:972ce2ed92d71ce3a0a6a8a2ee0688a426aa6eeeea5f0f94906b691f1f9d1e8a` |
| 192 | `def` | [mkOrderEmbedding](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/mkorderembedding.md) | 2016 | `declaration-track:fbda88432b2ecf5399e543ba2bbec3758d0f1287076a7b5102996801dd4e15a7` |
| 193 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationNamespaced.lean/declarations/instance-source-edition-2.md) | 2026 | `declaration-track:2173a04a95650511afdce52c87622f4df7eadb093d4aed3056216e5f864d07bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23c1a1523e449d8b75b5e822d8cbfbc95dede8a117fe96d81f0aa2095297b831 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/MonoidLocalization/Variantbe4a6f0ac031eff72161ad17d3aa7a6b97926838a67376c143fdac3127dcbc9e.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/MonoidLocalization/Variantbe4a6f0ac031eff72161ad17d3aa7a6b97926838a67376c143fdac3127dcbc9e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
