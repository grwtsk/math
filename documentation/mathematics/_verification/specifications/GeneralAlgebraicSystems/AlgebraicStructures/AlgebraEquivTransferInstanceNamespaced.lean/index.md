# Verification target: Algebra Equiv Transfer Instance Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cee8ee048be766898c8a5093ebf90a0e3a5e99ba",
  "lexical_observation_count": 103,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TransferInstance/Variant23bf0c782f9aa17226237ed1dd2a425c21d5b9d03d233885990803e4892f1f39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cee8ee048be766898c8a5093ebf90a0e3a5e99ba`.

Source path: `GRWTSK/Algebra/TransferInstance/Variant23bf0c782f9aa17226237ed1dd2a425c21d5b9d03d233885990803e4892f1f39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TransferInstance/Variant23bf0c782f9aa17226237ed1dd2a425c21d5b9d03d233885990803e4892f1f39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Small.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/one.md) | 52 | `declaration-track:a77e8426d4a79dad83ea3951c34efa4ff38c413e9e292fe7a6dc531831c7baa8` |
| 2 | `theorem` | [one_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/one-def.md) | 56 | `result-track:63fc0da1748b4db5736e2ad9f9ead98e819196d99650637fd68c769b9a31ba52` |
| 3 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-36.md) | 62 | `declaration-track:f2c25f37a7455e33617f1bddb5235ab52c695714e8bafbc994e3f34470121b37` |
| 4 | `abbrev` | [mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/mul.md) | 67 | `declaration-track:368ff6e1eaf6afd91a28e6ce4eec4d068d2b5e94abed431ab6e68fd12d40a439` |
| 5 | `theorem` | [mul_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/mul-def.md) | 71 | `result-track:bffdf97d47d667c4975d6dcf7d43d14aa333cd972608f76aeaa2e6cd3a946a4b` |
| 6 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-38.md) | 77 | `declaration-track:f7adc9ca3d3d07fc00cda1c1c2570437fcee9d47974ce23f05352c84e6bae978` |
| 7 | `abbrev` | [div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/div.md) | 82 | `declaration-track:143e78e45a937edc00a836d041bbb001a48dbc2c8cb875de99e73a839c062d4a` |
| 8 | `theorem` | [div_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/div-def.md) | 86 | `result-track:a81b8bbeefb09742f9971ff75cf10bbfeb42400cf3f9e3c9f778789f572895a7` |
| 9 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-23.md) | 92 | `declaration-track:9c6fc130534ac73e14ccc6921224c3ab5079b6905be2bba9e7c83e807b9b0777` |
| 10 | `abbrev` | [Inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/inv.md) | 99 | `declaration-track:305ffbca6fcf3dd691865bdc5fbbc9295e8187f6c4a7d986be274eab2649f83c` |
| 11 | `theorem` | [inv_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/inv-def.md) | 103 | `result-track:09f4fc5ac64bbbfb4bdcef94cbb0d19ed3140f936eda4bf9c138cc160317eb36` |
| 12 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-12.md) | 109 | `declaration-track:42953cb4b7b3a66ab75645c63c8df8e84f9d50bdc737fb8791b880b23713b5ca` |
| 13 | `abbrev` | [smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/smul.md) | 113 | `declaration-track:9907c88da6f25fabed4ba1e12bc4bb7e1131855395624207b4278947e5b1c9b5` |
| 14 | `theorem` | [smul_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/smul-def.md) | 116 | `result-track:aff67f7e1ba9f3d30e822d95b3565e5375a302c640da79d49d433a1a2796bef0` |
| 15 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-33.md) | 121 | `declaration-track:df7cce3b24aa964ba3ef4280195be1369d5753a2e6ce234f485bbf3d68ecd90b` |
| 16 | `def` | [pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/pow.md) | 126 | `declaration-track:fcefc42106d371244f408c0228084f4304fff82fd0063139738f898056b45e29` |
| 17 | `theorem` | [pow_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/pow-def.md) | 129 | `result-track:cd2b1bf38a7734e5120323562588527a47c8a3fe0325dfa554edcfc36455f6cd` |
| 18 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-25.md) | 134 | `declaration-track:ae594d096ebb316b577cbefc150a1c5c7ab9f908d3a8f5213a6c8efa5a7964c3` |
| 19 | `def` | [mulEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/mulequiv.md) | 143 | `declaration-track:ac30887e9f67b96ca303450e2ca45ed9d3b60f4f2207ecd1f353d2f157cb5d48` |
| 20 | `theorem` | [mulEquiv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/mulequiv-apply.md) | 154 | `result-track:fe60c1efac9bca2ac52b35ae66993525fc3a3133e05d75b16ed7cf1ccd769719` |
| 21 | `theorem` | [mulEquiv_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/mulequiv-symm-apply.md) | 158 | `result-track:72a7939ff3c9e741abd8da815a8c9148dfe292bc0854c6ac189ba525e43f4519` |
| 22 | `def` | [Algebra Equiv Transfer Instance Namespaced](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/mulequiv-source-line-165-occurrence-2.md) | 165 | `declaration-track:7b20c1efc42edc72b4bfbc35fec0b6968848ae583855005b97025aad88e799fd` |
| 23 | `def` | [ringEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/ringequiv.md) | 172 | `declaration-track:692fe166cadf90aa10115409cf2e3365e74231c4c34d9e2fb35efd3a270a40f8` |
| 24 | `theorem` | [ringEquiv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/ringequiv-apply.md) | 187 | `result-track:c5f6934959a452ff28e1a7b595d55d6d2edfcdb47bcea35d531d13efff54317c` |
| 25 | `theorem` | [ringEquiv_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/ringequiv-symm-apply.md) | 190 | `result-track:e5fb3fc6c699755cf13b692739efd293afab423416d71ac5b30ae2700bf6cc9b` |
| 26 | `def` | [Algebra Equiv Transfer Instance Namespaced](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/ringequiv-source-line-197-occurrence-2.md) | 197 | `declaration-track:ce99b8e80f2eb4de5e62a459355180313285eaca569990b6f99a6b9bba43a764` |
| 27 | `abbrev` | [semigroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/semigroup.md) | 202 | `declaration-track:4bf60753e0d692110f12663b54cd2e6bbb029a1b36ac298f4a3a29a5addad545` |
| 28 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-2.md) | 207 | `declaration-track:077860ba7280628ed1d66c595aeab7af246010f8f05feac2997810cfa364340c` |
| 29 | `abbrev` | [semigroupWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/semigroupwithzero.md) | 211 | `declaration-track:4e0e3349d42bfad6e9910649a95bf8a6c2e976d78c69f56edddc35f56e40818b` |
| 30 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-10.md) | 216 | `declaration-track:2f6f5ba05b2818c235f24b6d4ec28295e037a4d501e34e5d2a0455c44bfa35d3` |
| 31 | `abbrev` | [commSemigroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/commsemigroup.md) | 221 | `declaration-track:76af83926175ede621d81f4c6088356e07318a52f64a31b8f9bd03bad406c9aa` |
| 32 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-28.md) | 226 | `declaration-track:bf937cd6a13c107594a3e4f37e1c00cf1e210fb9404b5f1fb5815e7c82c56bee` |
| 33 | `abbrev` | [mulZeroClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/mulzeroclass.md) | 230 | `declaration-track:1e8103c7a09caf6e31bbfe5400e643f9137bbd2c4d31502be163934853919651` |
| 34 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-14.md) | 235 | `declaration-track:53a31f8ce02151b357cd5e4f69947d67073ad8798c063ab432a2308c22e50162` |
| 35 | `abbrev` | [mulOneClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/muloneclass.md) | 240 | `declaration-track:d9e3d187c39d4416e0dce0f3dc14c931561c8dfe113bda03aebe6b1dfc76c500` |
| 36 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-5.md) | 246 | `declaration-track:13a0cca39db22e880309920774e7183bdb7bd4539314d5a822d24a7f520e4e54` |
| 37 | `abbrev` | [mulZeroOneClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/mulzerooneclass.md) | 250 | `declaration-track:885bf4ecc00bbc774053d6ddd99a239435d23c4b4ade5321893e83f187a279d7` |
| 38 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-20.md) | 256 | `declaration-track:82e45a285f3b933b438371714d52fc4a28588df4e6f33bdfed49f467f7d5ccab` |
| 39 | `abbrev` | [monoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/monoid.md) | 261 | `declaration-track:d5c15a27a68f555b57933a0c3e15cc47d10c4f0e9393e06231aad5fd5e570505` |
| 40 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-7.md) | 268 | `declaration-track:160fdabe1063b908455229fcd910b288b7e426c2065cf0f8018654c2c4446dfc` |
| 41 | `abbrev` | [commMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/commmonoid.md) | 273 | `declaration-track:b1ab34736282ddc23aaef726cc313340f40d2fbac31e98cababf74d4c5b92554` |
| 42 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-9.md) | 280 | `declaration-track:2814524bb458d3cb49f3920a566a39cccb9382b3d7f80228fc9b3292c2ccb069` |
| 43 | `abbrev` | [group](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/group.md) | 285 | `declaration-track:1a9a77678555512f35b8ee0a0840dd780432692e8b9a94ed16061bca2bc7e0c9` |
| 44 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-8.md) | 295 | `declaration-track:23c39412210bb701df2bdfbd3bb793783b2ed2151134d29d89587c9ea8c41a51` |
| 45 | `abbrev` | [commGroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/commgroup.md) | 300 | `declaration-track:d27f0e5b4f3492187082ca43e16706d015a5b8b002dffa904ac45d10034c58f2` |
| 46 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-32.md) | 310 | `declaration-track:d6a081d518d0cfb75bfd23a3091277762519f079cffda5f3aab79bef4048db53` |
| 47 | `abbrev` | [nonUnitalNonAssocSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/nonunitalnonassocsemiring.md) | 314 | `declaration-track:8a58d74cb6f75635b7521720ccc4721ffcc9fd308f4ecc6228065ba1678bd0d0` |
| 48 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-13.md) | 322 | `declaration-track:50214cfa3a856abdcb0377a7eaa6321cc94690376e387c918f216e5864ce168a` |
| 49 | `abbrev` | [nonUnitalSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/nonunitalsemiring.md) | 327 | `declaration-track:3fec1b5741b951810a5868e59b0cd69241d6dc5534fdfb9dea9960b42a06fdb8` |
| 50 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-21.md) | 334 | `declaration-track:9a1a6171aeaf1f52e623a2e2bb93d3532600baad72c015159cd943d71824ad8c` |
| 51 | `abbrev` | [addMonoidWithOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/addmonoidwithone.md) | 338 | `declaration-track:91bb6f21ff007131ab41d34891e94cb1b3c7c86f0ac057ae0b3c6b0b160a0e60` |
| 52 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-37.md) | 344 | `declaration-track:f35986a1438804eee72aa469359126291d5f09134a9c403afcbd08fefc6599d0` |
| 53 | `abbrev` | [addGroupWithOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/addgroupwithone.md) | 348 | `declaration-track:5bafc8f74e92926477f719247469bdf211a5e069aff6e61e5a9d7633bb031832` |
| 54 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-17.md) | 356 | `declaration-track:5c5bd31e7f2d6a5c99a610d19567a32da8ccd0ada8f1d1a95d0fab9f53b55b1b` |
| 55 | `abbrev` | [nonAssocSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/nonassocsemiring.md) | 360 | `declaration-track:14ca0c60dcd088f935fb9b2a894196e02369068d6f82bf2efa55aad11bda2660` |
| 56 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-27.md) | 365 | `declaration-track:b9f759a7001ec7aec9c6c141a7361fcdccf24f97984a905e67a21515a66e3f0e` |
| 57 | `abbrev` | [semiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/semiring.md) | 369 | `declaration-track:8475c6592419c18574c500657aee68d15c80f1aa3d4a796c6dcec38af52120a5` |
| 58 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-35.md) | 375 | `declaration-track:e5f9dce957264589c5ab8bfe63836bc08e29dc4170944b486ac1fefc31e5ee59` |
| 59 | `abbrev` | [nonUnitalCommSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/nonunitalcommsemiring.md) | 379 | `declaration-track:21d2dc67a85fd5953a5fa369460e586c1dfcb271a2f4cfcbfa78f18479468ce0` |
| 60 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-15.md) | 386 | `declaration-track:54e20e00019cb63a19d0ceb43fa5505db68c8e72d30da98260daccbfe56b413d` |
| 61 | `abbrev` | [commSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/commsemiring.md) | 391 | `declaration-track:63418d9f20e2a6653985605de8406a96c7e33907725c85e20bf659ea8f0444c8` |
| 62 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-16.md) | 397 | `declaration-track:59bf81a0a54bbd02d0954e38e377382978b155e62247e45fb9451b14bf0f1425` |
| 63 | `abbrev` | [nonUnitalNonAssocRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/nonunitalnonassocring.md) | 401 | `declaration-track:22c186f887e0f2667cfd12709a8e555a0644725d0c6317d5839a500cd4bb51fb` |
| 64 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance.md) | 411 | `declaration-track:03b952e3d9302017f94d80fb2481fa9689cf302e3ea1460c091771837e7a7241` |
| 65 | `abbrev` | [nonUnitalRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/nonunitalring.md) | 416 | `declaration-track:fb5569cc79d2955aaa7889236682517376d18782454fb97450f482568a7aa126` |
| 66 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-30.md) | 426 | `declaration-track:cab775bfeac27d2eaed8dbeb90fb0ccc3a09b9ce01ad733384a41ffe1a630c4f` |
| 67 | `abbrev` | [nonAssocRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/nonassocring.md) | 430 | `declaration-track:62ec6d74959d4b96050637e4c2588738dc1ce07b7501784fd6f2cd40c765104c` |
| 68 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-26.md) | 435 | `declaration-track:b7577587ca8a42c2fde151003f9e1be27416722d7c8a9befe9fd6febb4dbe769` |
| 69 | `abbrev` | [ring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/ring.md) | 439 | `declaration-track:c401646dcff0ee7adb673dac691116211d299c4e936362f8a00a9deacf7b1a92` |
| 70 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-29.md) | 445 | `declaration-track:c91d7e0f90d38699f0eb70e1556a79c6fb477416bf36b8d2c69a393b2d3418b1` |
| 71 | `abbrev` | [nonUnitalCommRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/nonunitalcommring.md) | 449 | `declaration-track:a79929c044a6846ea926c5194a8af3a9b7967605387a2381bf52d8f63ae35a66` |
| 72 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-3.md) | 459 | `declaration-track:0d8710f7b02174fa095d9f9dcf72a2ace98c38eefbb3cdd97ff2839a06315137` |
| 73 | `abbrev` | [commRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/commring.md) | 463 | `declaration-track:dcfecffb14a7b69d7c801ffbbfd86d0955bc26b2af92c1699a50644c3a850eeb` |
| 74 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-6.md) | 469 | `declaration-track:147fa99316aea3a6895a04b30d77bc82e3578efb6dc1f43b1b1f5bdc600ebbc6` |
| 75 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-11.md) | 472 | `declaration-track:31190f021a1947b9f405ae01adb8b91ff14c8eb467e56e3d95d7e6746faabfaa` |
| 76 | `theorem` | [isDomain](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/isdomain.md) | 476 | `result-track:79312ca850c084f3f32d6e2c1b20309149e6d0eb2cefcf598a253bee768aa962` |
| 77 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-22.md) | 479 | `declaration-track:9c3937a6f4ce8c897dfdd274d514199256dc09b8a005a01e4484cb5cc2e76306` |
| 78 | `abbrev` | [nnratCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/nnratcast.md) | 483 | `declaration-track:31709b757d49133cdc54e8e9408ce6b34ea7e60ea7fd4ead349b31b2ecd6d1e0` |
| 79 | `abbrev` | [ratCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/ratcast.md) | 486 | `declaration-track:709e5b97c9498e15e293d9815adee7d58caaf0c4169c85f17f2ff0745653077d` |
| 80 | `instance` | [Algebra Equiv Transfer Instance Namespaced](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instnnratcast.md) | 488 | `declaration-track:52aefa0365756e921256b159564620a120ce0f99720794966e164c27ba609f96` |
| 81 | `instance` | [Algebra Equiv Transfer Instance Namespaced](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instratcast.md) | 491 | `declaration-track:7f4b9902a899ead3afb67cb0adbf39fe73b3a9497ff2c7e743b5c7ad847667b0` |
| 82 | `abbrev` | [divisionRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/divisionring.md) | 495 | `declaration-track:c33fc61e68b448827a5a563a6160133ea63aca7e40571ea76e457e2c0b7b4a39` |
| 83 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-24.md) | 508 | `declaration-track:a07be0fbd7629775768833ab6eea7b8f955a5447bf163a7e67344ceca7808300` |
| 84 | `abbrev` | [field](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/field.md) | 512 | `declaration-track:fc204a6cffa47c44041bb42f6b525b8d4daecbb087b5ca997448c37954746434` |
| 85 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-19.md) | 526 | `declaration-track:68c89f2d08887b44086c241716916daf07e9755dbf47d552bfe9e278be60b9f8` |
| 86 | `abbrev` | [mulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/mulaction.md) | 538 | `declaration-track:56aaef5f6514d072eb567dfcb592a6f97edce44fcc7fa6c3e8beea47e547bff0` |
| 87 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-18.md) | 543 | `declaration-track:62904d412768a3bffd4e7678da67547a9a35fa03a8b13ac5650c829bfcee605e` |
| 88 | `abbrev` | [distribMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/distribmulaction.md) | 547 | `declaration-track:6215b43573687e9f070e128bbfbea37a4da81a50dc6990034edc7faa23d79a77` |
| 89 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-34.md) | 558 | `declaration-track:e437e95ab0848f626986d86b3474d41cab36e31761d652ab590196a9d8eea08f` |
| 90 | `abbrev` | [module](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/module.md) | 569 | `declaration-track:b3ac1a5999aeff4964f5d143c672f54f13ae7d60490f8526c9903596fb97ba56` |
| 91 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-31.md) | 579 | `declaration-track:cd151993a6c509ad64449ba822550f49ce79ed5b35402281018d2de81df67bc1` |
| 92 | `def` | [linearEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/linearequiv.md) | 586 | `declaration-track:80a2b87cb3c00a8c2d40c21d44137675c9362a0d418c4aa11ebb165e8e83e2d1` |
| 93 | `def` | [Algebra Equiv Transfer Instance Namespaced](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/linearequiv-source-line-601-occurrence-2.md) | 601 | `declaration-track:56c02cc99a6e587a788d12c950343314a6338c9feb24900dc071581e53f2cd19` |
| 94 | `abbrev` | [algebra](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/algebra.md) | 612 | `declaration-track:9d2877e489833181bc90e22fcfc8cf6d79c2acc8231384df7bd1049af617e6b2` |
| 95 | `lemma` | [algebraMap_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/algebramap-def.md) | 625 | `result-track:5156f25ecc037252366852050d4a84112e300143bf797e124b7888bc5aec6213` |
| 96 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/instance-source-edition-4.md) | 633 | `declaration-track:0dc9dc0d044079c9cc8b03ba602a0f442b5e76b1159da768640fd3a5c7cdbd3e` |
| 97 | `def` | [algEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/algequiv.md) | 641 | `declaration-track:1533ac0f13896af490b9eca04091ae8f5442eea9710647a0c78d4f582aaee3cd` |
| 98 | `theorem` | [algEquiv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/algequiv-apply.md) | 654 | `result-track:0fb08cb93fab6e528d7ba32ed9ef3fe3529765903003e72a020605d1fe901c30` |
| 99 | `theorem` | [algEquiv_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/algequiv-symm-apply.md) | 657 | `result-track:5454c706036b13ac0b06757f9634b80df03da74684642c7deda9f38016c6cf97` |
| 100 | `def` | [Algebra Equiv Transfer Instance Namespaced](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/algequiv-source-line-665-occurrence-2.md) | 665 | `declaration-track:961cb688c966e6086e7285a0b9028217bc6f4186410e94ae9f1a676bb1c3ee8d` |
| 101 | `lemma` | [exists_type_univ_nonempty_mulEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/exists-type-univ-nonempty-mulequiv.md) | 682 | `result-track:3be26773412b1c08c67fff48566115805f311c74c813effcda6203fa89d6bba5` |
| 102 | `abbrev` | [AddEquiv.module](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/addequiv-module.md) | 701 | `declaration-track:369a141af803f413c1a45b4092aaed14ac6c35637c28d33d1b8739fd63a26285` |
| 103 | `lemma` | [LinearEquiv.isScalarTower](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraEquivTransferInstanceNamespaced.lean/declarations/linearequiv-isscalartower.md) | 713 | `result-track:8712b24f0d38386793dbc5894ddd1fbb1dea18536868e9cb65a40d1f7d629133` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76699a40d7f0a72590c810f1e05c4381f36c2c5e23a3a40a8e627a4a2dfc3452 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/TransferInstance/Variant23bf0c782f9aa17226237ed1dd2a425c21d5b9d03d233885990803e4892f1f39.lean","GRWTSK/_verification/specifications/Algebra/TransferInstance/Variant23bf0c782f9aa17226237ed1dd2a425c21d5b9d03d233885990803e4892f1f39.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
