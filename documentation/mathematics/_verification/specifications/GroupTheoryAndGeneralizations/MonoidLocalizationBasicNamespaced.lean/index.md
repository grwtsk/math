# Verification target: Monoid Localization Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe37eb67f77b9f2cbb81dc32c70212f1f0202ab5",
  "lexical_observation_count": 163,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantcab83a8324fa1be4ec8201cb15913add542738bf5a4563f32ed22b4b57e7063d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe37eb67f77b9f2cbb81dc32c70212f1f0202ab5`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantcab83a8324fa1be4ec8201cb15913add542738bf5a4563f32ed22b4b57e7063d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantcab83a8324fa1be4ec8201cb15913add542738bf5a4563f32ed22b4b57e7063d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Operations` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.Hom` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OreLocalization.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalizationMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/localizationmap-source-edition-3.md) | 94 | `declaration-track:90edce2ad0c1a1c83a64a2bb306f7ded1f3f872153235c27c4ce8a04d352df2e` |
| 2 | `structure` | [LocalizationMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/localizationmap-source-edition-2.md) | 117 | `declaration-track:89cc5329bb1bcaefa3a135e6c9a22290d4688524eaff3a2c6096da669b232a99` |
| 3 | `def` | [r](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/r-source-edition-2.md) | 150 | `declaration-track:68619cc10933e7d2ab67c237b96d858d4c7586466e7ab0c9a65ee390abaf22d3` |
| 4 | `def` | [r'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/r.md) | 158 | `declaration-track:190713012efa08cbbca076ebeecb7333ad700967b393fa3ae8bc8d5bf87f6603` |
| 5 | `theorem` | [r_eq_r'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/r-eq-r.md) | 184 | `result-track:81d6428897489b71f0eb0dbf099ab7a47406a119bef14610935eb50dc1819435` |
| 6 | `theorem` | [r_iff_exists](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/r-iff-exists.md) | 196 | `result-track:97c6424d32914e87eabc5bf2383a22add5eb20bfe4a0d3a2f0737e931557bd40` |
| 7 | `theorem` | [r_iff_oreEqv_r](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/r-iff-oreeqv-r.md) | 200 | `result-track:4b14a33a059468fbd36050ac8503e9978afce706515f2724d5b075d87d604ee0` |
| 8 | `abbrev` | [Localization](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/localization.md) | 214 | `declaration-track:3430013bb4d79c282e45a91c59e38eae27defe1bab3d0063aed5cdf06c7fe03f` |
| 9 | `def` | [mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-source-edition-2.md) | 225 | `declaration-track:ec37bebd29c9ac25a194e2184865bf6471a49f8a4e3a0402b38c02c88990bce9` |
| 10 | `theorem` | [mk_eq_mk_iff](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-eq-mk-iff-source-edition-2.md) | 228 | `result-track:4ef1009893f38d92d608fee9aea242a21bd96fb6bcac963204a77969cfcf91ae` |
| 11 | `def` | [rec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/rec.md) | 240 | `declaration-track:35f23d1882be1108c1ad3c4b5d3f06e134483bd47b8978a68d1afc9cc4f5e533` |
| 12 | `def` | [recOnSubsingleton₂](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/reconsubsingleton.md) | 248 | `declaration-track:91f3817ba16287e81b387d8b235512655b18a5e1db56e115276f4b77b942062b` |
| 13 | `theorem` | [mk_mul](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-mul-source-edition-2.md) | 255 | `result-track:a984f9b42e3d0d109f9e5ec36952b8b5bc0a2ba83e07b1edbae6c0520064be68` |
| 14 | `theorem` | [mk_one](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-one-source-edition-2.md) | 260 | `result-track:d2393f6f798d81023db4503a10d79bf5a38b18449257266dc2c133f88991a334` |
| 15 | `theorem` | [mk_pow](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-pow.md) | 263 | `result-track:575cb354e3dd71e785fe219e2fcb3399e6c56906d7cafd1951a6fd1833cc9ae4` |
| 16 | `theorem` | [mk_prod](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-prod.md) | 267 | `result-track:fa4bf8229a27826035ccc7ec7f81957ca2c67ff5c440a5778a9e93a2ca407af0` |
| 17 | `theorem` | [ndrec_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/ndrec-mk.md) | 273 | `result-track:b9e9ccd8183441d41a2c16cb062a0ee65219ddf7acfe7a9b7d5954aeda6d2f0b` |
| 18 | `def` | [liftOn](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lifton-source-edition-2.md) | 283 | `declaration-track:d54bc6f2b31f300f84d48900b2e5fbe77940409fc194862e188eca0c2c5201c2` |
| 19 | `theorem` | [liftOn_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lifton-mk-source-edition-4.md) | 288 | `result-track:f5f6533289fc0dca61e5a91a8663bc9458c248934c026196cc8209eee4ad34a3` |
| 20 | `theorem` | [ind](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/ind.md) | 292 | `result-track:8d7ac90b4993e07f677f6978aa7b25cb175a05db3d06e4081a26fb774c3d19b6` |
| 21 | `theorem` | [induction_on](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/induction-on-source-edition-2.md) | 296 | `result-track:a0e4303bc053c7d24f37ca1d487637636c45914cd780852a9156042c2cb50eab` |
| 22 | `def` | [liftOn₂](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lifton.md) | 306 | `declaration-track:857700929afbc2af6a4ccb945ae59a5b9309a1b50992fbcb9799e5f4b1fb57a6` |
| 23 | `theorem` | [liftOn₂_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lifton-mk-source-edition-3.md) | 313 | `result-track:5c110df6e8733f8df9fa2c249a92b0cfed6548229550eea28ef0b9827ebdf1a7` |
| 24 | `theorem` | [induction_on₂](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/induction-on-source-edition-3.md) | 317 | `result-track:afbaff9aa18da606c0754aebb3d965234d7028ec5b6821f8b56a7faa13b2c37f` |
| 25 | `theorem` | [induction_on₃](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/induction-on.md) | 322 | `result-track:71d4ee81c25d3b4b06dd73ced6171da68ef225f28f399f706cc9a6c47cdeef8e` |
| 26 | `theorem` | [one_rel](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/one-rel.md) | 327 | `result-track:26cb106f46fe492f7e2dc2f931ceb737a4772a20928e8c17239245bc1303d208` |
| 27 | `theorem` | [r_of_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/r-of-eq.md) | 330 | `result-track:24dbc3c1d91b5e780ddc3dd723232ad4ec4c675449078e7a16f840d53ab22676` |
| 28 | `theorem` | [mk_self](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-self.md) | 334 | `result-track:0196c53407103af93ca9c1c9e85b6327ded42857998a1637d9d2da7e019a9bb6` |
| 29 | `lemma` | [mk_self_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-self-mk.md) | 340 | `result-track:cbd4eeda9a780615f6af72374ed565ea759d82c7411d2b70fd1eadba06febfcb` |
| 30 | `def` | [mkHom](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mkhom.md) | 345 | `declaration-track:dc55aa57e45f21db12fa78cc89a0c8c79c0c2093c523c15042e4de7183982b79` |
| 31 | `lemma` | [mkHom_surjective](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mkhom-surjective.md) | 351 | `result-track:06fbceeaf5eec6959bce76e5d1c4f60f7e377b4d0485ce2a9c272f15ffa79358` |
| 32 | `theorem` | [smul_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/smul-mk.md) | 357 | `result-track:a93f395d7110198f35a4bd31432ca2aff829456af3a20a976ed32e8ba88f3ff6` |
| 33 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/instance.md) | 364 | `declaration-track:89abf82931e35fc7e60836016da76aa68780770e3beaf93b29a49ef049db5eb1` |
| 34 | `def` | [toLocalizationMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/tolocalizationmap.md) | 382 | `declaration-track:16e78973e819a803887a6615f1fe0a7b733c2213920a44cb99411bc81c8c41fc` |
| 35 | `abbrev` | [toMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/tomap.md) | 398 | `declaration-track:1ff36a905f81c347f8ef597fcba2cde02abdb2a39888fc0668c2ba5fa24c6682` |
| 36 | `theorem` | [ext](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/ext.md) | 401 | `result-track:abb24fe374b8867ce0c522182781a36838e838c4cad648d20bf0b2f8f8e39d42` |
| 37 | `theorem` | [toMap_injective](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/tomap-injective.md) | 408 | `result-track:2fce7fa8bc5ebb3024a7938197d1bfd56c4a85c408b18a3aeca97842fd0f92f0` |
| 38 | `theorem` | [map_units](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/map-units.md) | 412 | `result-track:b4385ec397362e33e4e3875e7d47f1a35b0384f71293da86044e6bed92edc81c` |
| 39 | `theorem` | [surj](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/surj.md) | 416 | `result-track:769a5c092dd5d48fd642eb82518c41aae281519029f3cbd6fa435592d885601e` |
| 40 | `theorem` | [surj₂](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/surj-source-edition-2.md) | 424 | `result-track:e60070267f368bc3733e4ed1f0f04e7fea24e2715194f5ae4e90108be5f6fc89` |
| 41 | `theorem` | [eq_iff_exists](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/eq-iff-exists.md) | 435 | `result-track:0559c52cb0c623ca2eccaf33eb3e8ade429648f222100f38a2b5095b8463fe85` |
| 42 | `def` | [sec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/sec.md) | 447 | `declaration-track:f48e193208e0c979ff1bb56c94500c8855ab1f047fa72cfe5ce738aae770c57d` |
| 43 | `theorem` | [sec_spec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/sec-spec-source-edition-2.md) | 450 | `result-track:4e61816e0bbcfb53ccc55d8e2f62d9ccf0271de1695377426f04ef6ced3cbd76` |
| 44 | `theorem` | [sec_spec'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/sec-spec.md) | 454 | `result-track:3e10bb57308fd8ce4ebc4d7672bd427ccb1d399ec8abd1f32afb6813b772d879` |
| 45 | `theorem` | [mul_inv_left](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mul-inv-left.md) | 462 | `result-track:058e5b6b437e5b7139e60bfa97230fb0c80f41f5c1fc063bfadf440ef800e94f` |
| 46 | `theorem` | [mul_inv_right](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mul-inv-right.md) | 472 | `result-track:7e233cf45aa7320a2580261564503bbdd7421fc2feb4c73c5bac4c0dac19fa91` |
| 47 | `theorem` | [mul_inv](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mul-inv.md) | 483 | `result-track:7700beb4056324ac2fa4d8c50044e508bd2094950ea34def63e26e32c1c2e7f8` |
| 48 | `theorem` | [inv_inj](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/inv-inj.md) | 495 | `result-track:fb4e5b992f86a4d295aad18fab199ab028645e2c8f71759a942917a21a09c33e` |
| 49 | `theorem` | [inv_unique](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/inv-unique.md) | 506 | `result-track:83bc69b1666fb2729419403a26e07cf721a0cd801ff5410a95290246ea86a38a` |
| 50 | `theorem` | [map_right_cancel](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/map-right-cancel.md) | 514 | `result-track:2c1136f68d5eb0ad250a71ceb814af4e239b98572f076fd652982c10cad2abe3` |
| 51 | `theorem` | [map_left_cancel](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/map-left-cancel.md) | 522 | `result-track:ba9b4b51ab13f9fd37e8f0816863a72b044af55c8f8e2880ba9c49b205790849` |
| 52 | `def` | [mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk.md) | 531 | `declaration-track:3e64b989f0d11268946ada558e3bf25bcf6e73da46cbb478fc323b17cdbc50c9` |
| 53 | `theorem` | [mk'_mul](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-mul.md) | 535 | `result-track:4ba7c095eb41884053da8c1bdf420e57bea80a3cd84e3c250a5d9b4e382f32ab` |
| 54 | `theorem` | [mk'_one](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-one.md) | 544 | `result-track:adfe05717371d2e58315693d7849cf7cd29823ac94306384376f3f11b71541fd` |
| 55 | `theorem` | [mk'_sec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-sec.md) | 553 | `result-track:ec3edcdc107226625221f677fb52f079c38f7cd20eab96afa809dbdb4b326649` |
| 56 | `theorem` | [mk'_surjective](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-surjective.md) | 557 | `result-track:5775a0b92a5e54a5aaabd4cd78ab195d4b30ab8a0aed7874e44dfd7ecae0ad6a` |
| 57 | `theorem` | [mk'_spec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-spec.md) | 561 | `result-track:5abc4321fc1f9ae914668a7b77dec29aa224edf9afa1886ed66527f9be681581` |
| 58 | `theorem` | [mk'_spec'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-spec-source-edition-2.md) | 565 | `result-track:85bc8880a21774819a199fbde7881f1aedd4d2bdbff673b8147b744439a39c85` |
| 59 | `theorem` | [eq_mk'_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/eq-mk-iff-mul-eq.md) | 568 | `result-track:05177e4ab8750f70122fa800bdbb59cc3fd4d7d677abd8dddae03c2d3ca22882` |
| 60 | `theorem` | [mk'_eq_iff_eq_mul](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-eq-iff-eq-mul.md) | 572 | `result-track:96e8a74b80117cfc53dee2aac08ad782bebcd04d2d3fa2c50a977ed67d5e30ed` |
| 61 | `theorem` | [mk'_eq_iff_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-eq-iff-eq.md) | 576 | `result-track:4caf083f373fd3d4e8b2b00c8422ac2e09cca2a27e506d9f30eff64c10face38` |
| 62 | `theorem` | [mk'_eq_iff_eq'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-eq-iff-eq-source-edition-2.md) | 587 | `result-track:b04774a0200c7eadd2aeaec908df7ef9483b2a986699674d5ec7406e2230df4d` |
| 63 | `theorem` | [eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/eq.md) | 592 | `result-track:1872021eeb09cb5d10407225252b64ea3e007910c865730995a77b97feabbd67` |
| 64 | `theorem` | [eq'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/eq-source-edition-2.md) | 597 | `result-track:cf8a1a5175c8dd5d4a2a218a6e211f672768fbb1480f4fc16209a393aea62c12` |
| 65 | `theorem` | [eq_iff_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/eq-iff-eq.md) | 602 | `result-track:4539031f1887726a80d4e67819514ea82f7e23f5f81ed9f3b94e98f3b50b99fd` |
| 66 | `theorem` | [mk'_eq_iff_mk'_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-eq-iff-mk-eq.md) | 606 | `result-track:8f2ed55fb507c43b7c9d856401b4f047849dc9875934c6ebd6880f9dc5ef652e` |
| 67 | `theorem` | [exists_of_sec_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/exists-of-sec-mk.md) | 617 | `result-track:e99fb39a11783c0cb24c13f787d46e3609ee41b9c377ce826a4d1b752c1fedbb` |
| 68 | `theorem` | [mk'_eq_of_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-eq-of-eq.md) | 622 | `result-track:cd251d3f3b46343e5a974b32274dda0fafd122ed1a7769ff7b49213fe781cc09` |
| 69 | `theorem` | [mk'_eq_of_eq'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-eq-of-eq-source-edition-2.md) | 627 | `result-track:d421f759fe441a88d69d18eb0bc42f0594dd401f7d6e0a083b9bb92113ce3b3f` |
| 70 | `theorem` | [mk'_cancel](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-cancel.md) | 632 | `result-track:b71fc1dcd987d79c5b37486cf1f4aae6eb17d8a58e1d269ae75ad48219c7107d` |
| 71 | `theorem` | [mk'_eq_of_same](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-eq-of-same.md) | 637 | `result-track:0567d0dc324055fcc0d7345ad58cb7888b6a83431675224a26662b43d2bdd1f4` |
| 72 | `theorem` | [mk'_self'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-self-source-edition-2.md) | 643 | `result-track:1cb3f3b1b86cde1734d1c0721e88b131b4f890ab0e510a0bb857ec93151fc539` |
| 73 | `theorem` | [mk'_self](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-self-source-edition-3.md) | 647 | `result-track:937680f89a90dffd10b0a069c3b6717f4ab72300db2ee5fae5e1326e697b1d58` |
| 74 | `theorem` | [mul_mk'_eq_mk'_of_mul](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mul-mk-eq-mk-of-mul.md) | 650 | `result-track:f12566965a43b6b3f1af5114123579c8af71740b06ba718ab64fbcd22e325ff4` |
| 75 | `theorem` | [mk'_mul_eq_mk'_of_mul](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-mul-eq-mk-of-mul.md) | 654 | `result-track:562f79ea11b76ceb3aaaed00fdbe268fb02e47488c382e73cf5952cf9e3f5948` |
| 76 | `theorem` | [mul_mk'_one_eq_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mul-mk-one-eq-mk.md) | 658 | `result-track:b41b8909c762479a837a463a4b49424513c52a0e5b1221652553f670af03510d` |
| 77 | `theorem` | [mk'_mul_cancel_right](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-mul-cancel-right.md) | 662 | `result-track:7b64f5412066e8a193449f23918df8d9e1d2e6d528eb454e16539535dcb19e55` |
| 78 | `theorem` | [mk'_mul_cancel_left](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-mul-cancel-left.md) | 666 | `result-track:aa3a23c886132baa5ed05c9448e1641a30b4ec75416774bdc1d81d81ce519a81` |
| 79 | `theorem` | [isUnit_comp](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/isunit-comp.md) | 670 | `result-track:817d848cafddb71b50ec0c5f74f74e1cfba3022c71dec46cd3afb24984649e56` |
| 80 | `theorem` | [eq_of_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/eq-of-eq.md) | 682 | `result-track:f50eb4f5dbd67b3ca51c3f69784a5f5e5ef4bfec4c1854ca7735889e90f26539` |
| 81 | `theorem` | [comp_eq_of_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/comp-eq-of-eq.md) | 695 | `result-track:a0e98bc66d667ec309abdc5df4eb06aeb053094c1fb1cbb33d3dc5cffa2c310e` |
| 82 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lift.md) | 710 | `declaration-track:4865e714b83dcb283a28ffc69d3dcf2f5d490f2770bcc24c02091ed483aa7c9c` |
| 83 | `lemma` | [lift_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lift-apply.md) | 720 | `result-track:2069e38d9329b68d1a3413b69fb4e9d15204611573f3debe9945fe2b2fbf2ce5` |
| 84 | `theorem` | [lift_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lift-mk.md) | 731 | `result-track:af36176366927531fffd9df93fa871cf6ab0c029db52b6655dc6d0fe74db3f27` |
| 85 | `theorem` | [lift_localizationMap_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lift-localizationmap-mk.md) | 743 | `result-track:90fb412f495c9acc174611c19cec3e8053902617192a77ce8d66692079ff15b6` |
| 86 | `theorem` | [lift_spec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lift-spec.md) | 755 | `result-track:4e9c763834ac9bf83ec25f2e18c0e304e6716a87f4d40fc05ab723dff4ff5dbc` |
| 87 | `theorem` | [lift_spec_mul](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lift-spec-mul.md) | 767 | `result-track:78f46e10dd8f2e42893c1149046ba65bba68080d59eaf8f954c8f0d4b64cd820` |
| 88 | `theorem` | [lift_mk'_spec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lift-mk-spec.md) | 771 | `result-track:0d7f1435b8171659c895c3bc4f4c1be421c235e8029e04e8e753921e1d6eca4a` |
| 89 | `theorem` | [lift_mul_right](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lift-mul-right.md) | 781 | `result-track:18f94bb177eeb966ae6039b165593195b90786131cb1ec07cac72707a0915958` |
| 90 | `theorem` | [lift_mul_left](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lift-mul-left.md) | 791 | `result-track:ac9399fe1d9de7dd804b3ae56c4e67551848ab317c8ed62b843089bff81840d0` |
| 91 | `theorem` | [lift_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lift-eq.md) | 795 | `result-track:302dd11e893ecd5f3f7d8401281f2968b89a252d8fb1669bead2a2aa987d0ac2` |
| 92 | `theorem` | [lift_eq_iff](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lift-eq-iff.md) | 799 | `result-track:7ff9e1c154267d258eda7dbde5fcf924ab65789f912bc5813a8ce4a06a5ca5b8` |
| 93 | `theorem` | [lift_comp](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lift-comp.md) | 804 | `result-track:ccf1d37669065ff7fa4a2954c2cacb7a611c0e35058f5708edf4aa741ba45d45` |
| 94 | `theorem` | [lift_of_comp](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lift-of-comp.md) | 807 | `result-track:51cc605c660e62dc47a6aaf9de609f77621a68d773b2bfbe30e7958a0e009236` |
| 95 | `theorem` | [epic_of_localizationMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/epic-of-localizationmap.md) | 812 | `result-track:4509a22ea6c91ab148d292b9d80b3de55bc9e639f35c7eba2644a0ed8dc2b40d` |
| 96 | `theorem` | [lift_unique](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lift-unique.md) | 818 | `result-track:6cd64b5a6b5b8a0f7746913d873ae7dd7b609749f878ddab0db2145a779da9d4` |
| 97 | `theorem` | [lift_id](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lift-id.md) | 825 | `result-track:a21acb2bcb9659ea7fe8ad3fa0641a9ab954f34c8a2e2f8f939d90b8cf35cb1f` |
| 98 | `theorem` | [lift_comp_lift](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lift-comp-lift.md) | 837 | `result-track:a97b82d84c76b795187fb6c9254d22734c1950c4753d66280cdc92e65893dd98` |
| 99 | `theorem` | [lift_comp_lift_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lift-comp-lift-eq.md) | 846 | `result-track:19deddfff067ba1fa82c2a1fa8afcd8b706fa82b545dfacfb2d7985d0b4d426a` |
| 100 | `theorem` | [lift_left_inverse](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lift-left-inverse.md) | 856 | `result-track:7af3de241dfd4599aa0a8b28c82097d733c91cb2aa72e06b0cda32d0c536bb24` |
| 101 | `theorem` | [lift_surjective_iff](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lift-surjective-iff.md) | 861 | `result-track:8b088742b9ac76de27165f3cfd011cbf14a22cd2502c242a2a06125140bab8b6` |
| 102 | `theorem` | [lift_injective_iff](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lift-injective-iff.md) | 876 | `result-track:072c75e54aeb5b94d217a8fa39c2a608d030dbb8c81e6c9c89a32fddfad0a698` |
| 103 | `def` | [map](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/map.md) | 905 | `declaration-track:e12c2ce7beafccb9c940e3072ec9dcaace5aebd1710a462463c9a26c8cb7e8d6` |
| 104 | `theorem` | [map_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/map-eq.md) | 911 | `result-track:089d74b4edaba7b2d7d31a3e9bcf03fe696cbf1ab40fc00a775ccc44f928b2af` |
| 105 | `theorem` | [map_comp](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/map-comp.md) | 915 | `result-track:9e7cc7e9ec27e532e905d4d80905742395f03a3b367c650a16aca6649e7ae57e` |
| 106 | `theorem` | [map_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/map-mk.md) | 919 | `result-track:c32b25c66018304066240b433163de79b1ef21c8a567470fe280f0e1d1e36656` |
| 107 | `theorem` | [map_spec](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/map-spec.md) | 934 | `result-track:b4397bf7a89f0ab034a3240ecffbff78b478510e91593d167f2b54223874c535` |
| 108 | `theorem` | [map_mul_right](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/map-mul-right.md) | 946 | `result-track:a47f03ffe48add5f9b266c9bb5127f4d2e36c0b196c3662d29e69f3b28e51aac` |
| 109 | `theorem` | [map_mul_left](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/map-mul-left.md) | 958 | `result-track:b4ee1921a9d8f2d7f6d3f3a780aca7b37f03f7087931dab145d063397e0ce389` |
| 110 | `theorem` | [map_id](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/map-id.md) | 962 | `result-track:903ade58c1abfa8a6352c9495c07200d97648e276b81eae503aec429c5c760cd` |
| 111 | `theorem` | [map_comp_map](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/map-comp-map.md) | 970 | `result-track:5a4e0f3eebd96ba2b71f8bba88d5d22eb39b01b59899e9184b70e46520aa4cb0` |
| 112 | `theorem` | [map_map](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/map-map.md) | 988 | `result-track:e031c47a06a3a921b85f7333e2520349263567ceb2f3cd7e7f07a262835aa8af` |
| 113 | `theorem` | [map_injective_of_injective](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/map-injective-of-injective.md) | 1002 | `result-track:2f3ce1fdd39760e028b1cbb9a12ae18b2b1ac6e95797cb6c07b5e89e4651e828` |
| 114 | `theorem` | [map_surjective_of_surjective](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/map-surjective-of-surjective.md) | 1021 | `result-track:3234b85ad9a4d16b0b1b615348efbb9a5d9958533bb1bdbfa58777a03c698c38` |
| 115 | `def` | [mulEquivOfLocalizations](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mulequivoflocalizations.md) | 1044 | `declaration-track:9ea5a53d4f55eb876065b57dfc04c70a13d83028123c41c2b80f3cc69d717728` |
| 116 | `theorem` | [mulEquivOfLocalizations_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mulequivoflocalizations-apply.md) | 1052 | `result-track:8345810043e37440b36ca9271e6885f8d91c01fb123eb7c907ee554857424372` |
| 117 | `theorem` | [mulEquivOfLocalizations_symm_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mulequivoflocalizations-symm-apply.md) | 1056 | `result-track:9bfc61454c4d2ce9d21c38e32a038780b208a43338c6410c94be6905a5298033` |
| 118 | `theorem` | [mulEquivOfLocalizations_symm_eq_mulEquivOfLocalizations](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mulequivoflocalizations-symm-eq-mulequivoflocalizations.md) | 1060 | `result-track:7d10cde313f18b17c3fc32d7b8a97a1c3c8d60ba7d262f00396e5b4ba6b63d00` |
| 119 | `def` | [ofMulEquivOfLocalizations](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/ofmulequivoflocalizations.md) | 1068 | `declaration-track:905159b3c2c52ba5aba537b6f5fda22b7e8bd0a70990050b0f5145c612bbe893` |
| 120 | `theorem` | [ofMulEquivOfLocalizations_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/ofmulequivoflocalizations-apply.md) | 1077 | `result-track:f4d6183d5e302e68b9f238120c577d6d25032a58c8d740eab7ca22476e3a0fe8` |
| 121 | `theorem` | [ofMulEquivOfLocalizations_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/ofmulequivoflocalizations-eq.md) | 1081 | `result-track:ee5c3900a7cee72a3591cc6bc4361f21c8c9eed9091d1f38593e59ac3c195448` |
| 122 | `theorem` | [symm_comp_ofMulEquivOfLocalizations_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/symm-comp-ofmulequivoflocalizations-apply.md) | 1085 | `result-track:45afdbe8b63a0454a94bfbc0bcb010c18567fdaca3486fde57701a8c782067e5` |
| 123 | `theorem` | [symm_comp_ofMulEquivOfLocalizations_apply'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/symm-comp-ofmulequivoflocalizations-apply-source-edition-2.md) | 1089 | `result-track:635ab444bdd72fb1c083aa955dd67b8775ef1f8e2e712b68209ca4e1a0d4e557` |
| 124 | `theorem` | [ofMulEquivOfLocalizations_eq_iff_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/ofmulequivoflocalizations-eq-iff-eq.md) | 1093 | `result-track:d6586bf8aff0260a804b774d8d7af5cd1a2535f5c4c76f946576a7a80e8f3545` |
| 125 | `theorem` | [mulEquivOfLocalizations_right_inv](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mulequivoflocalizations-right-inv.md) | 1098 | `result-track:8dd658c020b7d5778d82325c8341b9713a14a2a6355094670b8d96d49562525c` |
| 126 | `theorem` | [mulEquivOfLocalizations_right_inv_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mulequivoflocalizations-right-inv-apply.md) | 1103 | `result-track:9bf6a3feddbbb974d77e80219ad7f777f0d82eb49091024352e2a967f5c93f6e` |
| 127 | `theorem` | [mulEquivOfLocalizations_left_inv](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mulequivoflocalizations-left-inv.md) | 1107 | `result-track:ace3c8f06d18fd82af05231c964b27a712909a572fdb694a040f0c18cdfe2dbe` |
| 128 | `theorem` | [mulEquivOfLocalizations_left_inv_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mulequivoflocalizations-left-inv-apply.md) | 1112 | `result-track:83ce55c9ba6e364b380cdecabd2982a2b42509cdcdf722f612ed49f609961f60` |
| 129 | `theorem` | [ofMulEquivOfLocalizations_id](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/ofmulequivoflocalizations-id.md) | 1116 | `result-track:9e861003ebe72120800a93ff257831ce57cd660c0abd5872f35a5558bef26744` |
| 130 | `theorem` | [ofMulEquivOfLocalizations_comp](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/ofmulequivoflocalizations-comp.md) | 1120 | `result-track:3bc782822f31a3f59eddec9a292b2de9a41f731b00b12d84e96a54f2267df714` |
| 131 | `def` | [ofMulEquivOfDom](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/ofmulequivofdom.md) | 1132 | `declaration-track:c203f39781403fa3f4e7fd6fefc31e36a46a87c4990106886c43d9d68821b116` |
| 132 | `theorem` | [ofMulEquivOfDom_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/ofmulequivofdom-apply.md) | 1154 | `result-track:8aae2715b943dc30f5e4043466196cec6e42c3a8c2dd41141c3933d4a367e462` |
| 133 | `theorem` | [ofMulEquivOfDom_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/ofmulequivofdom-eq.md) | 1158 | `result-track:b3ab0d6195ae6cbb8a99fcf3e53e2e98bbb4e52850c4e3abc9b6620d896d3ed3` |
| 134 | `theorem` | [ofMulEquivOfDom_comp_symm](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/ofmulequivofdom-comp-symm.md) | 1162 | `result-track:7d047c95634478da5b9e73426bddd7268e9274b1867427a01c688252fc5dc30a` |
| 135 | `theorem` | [ofMulEquivOfDom_comp](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/ofmulequivofdom-comp.md) | 1167 | `result-track:a0052c57ae5e316d73f7d07864e1eb22c791f2765d4b3bea4555ed34f791d8da` |
| 136 | `theorem` | [ofMulEquivOfDom_id](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/ofmulequivofdom-id.md) | 1172 | `result-track:7e6e36e744a8c74d34b099f2c9659fc87bdacf865804a27637d37f6d5c9bc87e` |
| 137 | `def` | [mulEquivOfMulEquiv](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mulequivofmulequiv.md) | 1183 | `declaration-track:18f0bd52710316e6fdccda1235ac22d7ee24748a83201b970e6988711fcb499f` |
| 138 | `theorem` | [mulEquivOfMulEquiv_eq_map_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mulequivofmulequiv-eq-map-apply.md) | 1188 | `result-track:c5941fe75d6773e59240547b54169f0751bbd5506e73643a0976808095b4487d` |
| 139 | `theorem` | [mulEquivOfMulEquiv_eq_map](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mulequivofmulequiv-eq-map.md) | 1194 | `result-track:f9892d1946724585d3bdea6828b5004d6c25223fc20d4a2294ce86d0d77feb03` |
| 140 | `theorem` | [mulEquivOfMulEquiv_eq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mulequivofmulequiv-eq.md) | 1200 | `result-track:dbbdbde507f1d702749ccd732012fcbb85f783ba1a29131fbfbaf71074e16e1b` |
| 141 | `theorem` | [mulEquivOfMulEquiv_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mulequivofmulequiv-mk.md) | 1206 | `result-track:a59697b526231091708eae4b602ad5e7deb9eb7877c8dd6cd49227df17afbc44` |
| 142 | `theorem` | [of_mulEquivOfMulEquiv_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/of-mulequivofmulequiv-apply.md) | 1212 | `result-track:62388cc5de35d908210c1001033bba16b39756dc21abb6f15631832a81c1dfaf` |
| 143 | `theorem` | [of_mulEquivOfMulEquiv](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/of-mulequivofmulequiv.md) | 1218 | `result-track:372fe73d9ad17e9a157a8c55a465600424e94eb5ebdf597576b84f65e8b1e4de` |
| 144 | `def` | [monoidOf](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/monoidof.md) | 1234 | `declaration-track:d4a075b26e893b0fd12994e74897974ffc13a89614bf29ce658122421984559a` |
| 145 | `theorem` | [mk_one_eq_monoidOf_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-one-eq-monoidof-mk.md) | 1250 | `result-track:363b123e7a6db790c47afb31b9304e0beb9d275d0cd4242a990dff7136c37395` |
| 146 | `theorem` | [mk_eq_monoidOf_mk'_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-eq-monoidof-mk-apply.md) | 1253 | `result-track:3f4f39111df02f9a45696bebb52308e8948b7d64172f5d9a14c883f678799bf6` |
| 147 | `theorem` | [mk_eq_monoidOf_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-eq-monoidof-mk.md) | 1261 | `result-track:d7742020ccbd028275dabcbdf09a12cc58106caed60185ca5924549e50bdab26` |
| 148 | `theorem` | [liftOn_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lifton-mk.md) | 1267 | `result-track:2660bf698b9cccc5c9dbd4fee40b3ec332e612a4ccefc3e1939445e3d454c577` |
| 149 | `theorem` | [liftOn₂_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/lifton-mk-source-edition-2.md) | 1271 | `result-track:318440a14861ee351d35e523afdd0ecac0baab8978690f4771e3c0570e729d59` |
| 150 | `def` | [mulEquivOfQuotient](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mulequivofquotient.md) | 1282 | `declaration-track:7bbde00454fc4e8a9ec88573aa293c9c0aa16212a5d730052c56434ed4acdbd8` |
| 151 | `theorem` | [mulEquivOfQuotient_apply](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mulequivofquotient-apply.md) | 1288 | `result-track:d30af6395a16dc1917ec25b56d7251093e4b7346bfbd314eeff3377d388804f8` |
| 152 | `theorem` | [mulEquivOfQuotient_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mulequivofquotient-mk.md) | 1292 | `result-track:5093e0a0586ce52c334469af4ca6de949baf1351a1cec759514f9caeee2d698f` |
| 153 | `theorem` | [mulEquivOfQuotient_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mulequivofquotient-mk-source-edition-2.md) | 1296 | `result-track:d02f770778c0460321eecb435a1dc2617ab189efb6ab92805643230a11cb2c7f` |
| 154 | `theorem` | [mulEquivOfQuotient_monoidOf](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mulequivofquotient-monoidof.md) | 1300 | `result-track:ce78804337c47afb06208ce145cb1953d4037cb158df1dbd7200a9b19a87d87d` |
| 155 | `theorem` | [mulEquivOfQuotient_symm_mk'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mulequivofquotient-symm-mk.md) | 1304 | `result-track:0dcf56172eb746c90d881dba827b3878163bdcb46a7309f792f844fab657c132` |
| 156 | `theorem` | [mulEquivOfQuotient_symm_mk](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mulequivofquotient-symm-mk-source-edition-2.md) | 1309 | `result-track:bd1b48216d79ea11d6dbc77c46b00e8a5a9f2e9da0bc1e7ac500c06b2d98f1e8` |
| 157 | `theorem` | [mulEquivOfQuotient_symm_monoidOf](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mulequivofquotient-symm-monoidof.md) | 1313 | `result-track:d5604295d9a50f84c298c958aaaa5ceee8e475c57266f5178d6cd04b57f380b2` |
| 158 | `instance` | [instIsMulTorsionFree](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/instismultorsionfree.md) | 1319 | `declaration-track:89d7bd3b942c24a95a00c8901d999fcd59a3e6326d38a8e36f6ae9d745e76e5c` |
| 159 | `theorem` | [mk_left_injective](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-left-injective.md) | 1340 | `result-track:56246d44b7a2caf52c26d556a394cc68b30c3fe8f9b74db66d4eaf527efaee5f` |
| 160 | `theorem` | [mk_eq_mk_iff'](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/mk-eq-mk-iff.md) | 1344 | `result-track:111aef27872be90c212347f382f138cd7632a012a3041ed1dc2d76cd5696d577` |
| 161 | `instance` | [decidableEq](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/decidableeq.md) | 1348 | `declaration-track:48bee1f59becec5f29b4ea6024899b8caf71b019c31f86e1be8ecaa1520ea5aa` |
| 162 | `def` | [localizationMap](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/localizationmap.md) | 1358 | `declaration-track:8857e7894e764dc8ff3432f54e9a9d8c380dc867c3acde061cd6ef0eb2670471` |
| 163 | `def` | [equivMonoidLocalization](../../../../GroupTheoryAndGeneralizations/MonoidLocalizationBasicNamespaced.lean/declarations/equivmonoidlocalization.md) | 1361 | `declaration-track:0dcee407c872ed327c14538fdc9cb92c64d0eb13ac867060e815afecd3913018` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76736bcc50fed7bb091a052eff7f7228eea044f3490bb290a9081bfdd6ca15bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variantcab83a8324fa1be4ec8201cb15913add542738bf5a4563f32ed22b4b57e7063d.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variantcab83a8324fa1be4ec8201cb15913add542738bf5a4563f32ed22b4b57e7063d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
