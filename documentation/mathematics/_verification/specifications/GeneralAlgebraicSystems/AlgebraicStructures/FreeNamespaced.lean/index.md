# Verification target: Free Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08dbefc3476f07443b05e21edab2581414c78ed5",
  "lexical_observation_count": 103,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Free/Variante310516ed3fae44e98eaa5624d6beb147e7edbfe80cb01615c0733d90353ffde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08dbefc3476f07443b05e21edab2581414c78ed5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Free/Variante310516ed3fae44e98eaa5624d6beb147e7edbfe80cb01615c0733d90353ffde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Free/Variante310516ed3fae44e98eaa5624d6beb147e7edbfe80cb01615c0733d90353ffde.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Applicative` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FreeAddMagma](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/freeaddmagma.md) | 56 | `declaration-track:1ceeb9edf22b6c87afd29ea60c4e5e4bf83e7e5843970ea75e1528999a255d80` |
| 2 | `inductive` | [FreeMagma](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/freemagma.md) | 80 | `declaration-track:e491f3ad9d8f9ed196bbbb0cc465357954eaf604dcf04835dea3e29c43df8ee8` |
| 3 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/instance-source-edition-3.md) | 91 | `declaration-track:1c220975a5a4ffc753527d5231f28bb664d0fdeed1803604864f0c849f158e9d` |
| 4 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/instance-source-edition-14.md) | 94 | `declaration-track:fd5a0e493d3eb608a4d0b5c9c30c529faef35b21d89e0368e76455dd3aaccb85` |
| 5 | `theorem` | [mul_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/mul-eq.md) | 97 | `result-track:7454434e2e1a55581c536e1440fc815a2f76122d51162d9509a4c9913bcafbc2` |
| 6 | `def` | [recOnMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/reconmul.md) | 102 | `declaration-track:056617f0234ed5f89fbd85184e1c0a2269fa617f9c30287e186108ff3408c95a` |
| 7 | `theorem` | [hom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/hom-ext-source-edition-3.md) | 107 | `result-track:c2c95f3f336f2d2865f8c7e74b30fb25dd30b599250c8f376fb04257df5755e1` |
| 8 | `def` | [FreeMagma.liftAux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/freemagma-liftaux.md) | 113 | `declaration-track:61c0c5ff32ba3e21f5e49c12fad745075660e2e5f82621ac893af86b320f5adb` |
| 9 | `def` | [FreeAddMagma.liftAux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/freeaddmagma-liftaux.md) | 119 | `declaration-track:609f08e89e6388b25049716ea8ff8624ac7708d7ea37096d46331ed3305022e7` |
| 10 | `def` | [lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/lift-source-edition-3.md) | 134 | `declaration-track:c619e0537e9201800221efee366810abd37bcf347f6d7d57790cf8c82d47e708` |
| 11 | `theorem` | [lift_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/lift-of.md) | 143 | `result-track:08be81967277bdfd8b50590f405cad2e3e0cb996900b522cfad5c0022a7c41db` |
| 12 | `theorem` | [lift_comp_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/lift-comp-of.md) | 146 | `result-track:2b3ba6628558d5f6d3912d5823b472a1994ff541bae62dc4a50ec26e3c5af9e4` |
| 13 | `theorem` | [lift_comp_of'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/lift-comp-of-source-edition-4.md) | 149 | `result-track:80431ac60731671e555d855ebdc832ed05922c7c997bdd1c5713d3979a928074` |
| 14 | `def` | [map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/map-source-edition-3.md) | 161 | `declaration-track:9bf95836f4a8a16be675de3ed9860682f09b3e9ec5e9b49149fc8a77889c6732` |
| 15 | `theorem` | [map_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/map-of-source-edition-3.md) | 164 | `result-track:efbcdc32c37f6c2412f2777b2e1c98989094f5d1741e47f7627d906764cfe2eb` |
| 16 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/instance-source-edition-11.md) | 173 | `declaration-track:b4fb19a501c163b6caa7a72ee5a098bf2f5a21c5e0fb54fd6d6b056d6d6557d9` |
| 17 | `def` | [recOnPure](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/reconpure.md) | 179 | `declaration-track:00a0076badd6b3bf0df2c49f38f57f390b48079d86f13384cf95f4323797bed1` |
| 18 | `theorem` | [map_pure](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/map-pure-source-edition-2.md) | 184 | `result-track:f267a9897929ed7e61bc8a8b148a0ca69b6d17f50e7ebff46a2023111d1a9896` |
| 19 | `theorem` | [map_mul'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/map-mul-source-edition-2.md) | 187 | `result-track:a99397855a70808ff36d34cdcba42e5b23c55a4be1f05c51eb0c13d405d5214b` |
| 20 | `theorem` | [pure_bind](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/pure-bind.md) | 190 | `result-track:59ecb534787004331722e17d889fec8a885c3eb86fc7a21f03543f12bc06e3c7` |
| 21 | `theorem` | [mul_bind](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/mul-bind.md) | 193 | `result-track:12d3d65577acadd41757b16aca5124a5af1d8243420e3e2d0db4e7cc8498c23b` |
| 22 | `theorem` | [pure_seq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/pure-seq.md) | 197 | `result-track:98ed8bb1527f9d2141fa390e7250c6122dd5bfa8457d7fce215a591fa89bebd5` |
| 23 | `theorem` | [mul_seq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/mul-seq-source-edition-2.md) | 200 | `result-track:7b93c6fa5ae341371feb0684cf66140712ccac738ac303dfcbb33380b65f2624` |
| 24 | `instance` | [instLawfulMonad](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/instlawfulmonad.md) | 204 | `declaration-track:043b182993e95569d4400a379a275f3ec410a2b2b7b8cf53887b1a52e7828d1c` |
| 25 | `def` | [FreeMagma.traverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/freemagma-traverse.md) | 216 | `declaration-track:df74871503e58a96ef6e45a24a77197e5a2ae4e4129f3e6280f2d7b28ab54c2a` |
| 26 | `def` | [FreeAddMagma.traverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/freeaddmagma-traverse.md) | 222 | `declaration-track:dcc63b5563a6f442e86034cd88c6b1894daa4d7ed6543027f4669e7f7544d276` |
| 27 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/instance.md) | 238 | `declaration-track:09a80a00ca5edf80b9635f0c8386b662d342d984872be873a9f4d31b6f921f15` |
| 28 | `theorem` | [traverse_pure](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/traverse-pure-source-edition-4.md) | 243 | `result-track:e97c9a7a9b34cbf445a0e600edd2d86988bcf854f98f9187537f1543ca648111` |
| 29 | `theorem` | [traverse_pure'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/traverse-pure-source-edition-2.md) | 246 | `result-track:7a6ce2dcb38f65a54ec6bbd853131778659c31250be71015053719e5f061fb10` |
| 30 | `theorem` | [traverse_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/traverse-mul-source-edition-2.md) | 249 | `result-track:6a49a23194c4e05f7762a2199aea2aa4ba5500ef3f11211cd4960e096baaec58` |
| 31 | `theorem` | [traverse_mul'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/traverse-mul-source-edition-3.md) | 253 | `result-track:b6e0076b2ff6608b1619ac67fb7be87f6592ce482223f354a363001aae1677ac` |
| 32 | `theorem` | [traverse_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/traverse-eq-source-edition-2.md) | 258 | `result-track:9b5c76aee60620f90c2b68615ec956110dc6df4fd9944cd0b1e70031511b70f0` |
| 33 | `theorem` | [mul_map_seq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/mul-map-seq-source-edition-2.md) | 261 | `result-track:97ad04b063e8b7fb5dd4b04a05d7dbd23b7a769ca6d50f69fc6b3c60e6b6b67b` |
| 34 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/instance-source-edition-7.md) | 265 | `declaration-track:58afa672646123beacd4fec7ff3e50ed0c6e0e80f78428924944fa1069bad931` |
| 35 | `def` | [FreeMagma.repr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/freemagma-repr.md) | 290 | `declaration-track:2b7708656228d8089489cc518df7c4c14328b483e9d1c6d5c3b172d8c69bcfc1` |
| 36 | `def` | [FreeAddMagma.repr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/freeaddmagma-repr.md) | 295 | `declaration-track:cec4d85120518f0bfb76c6df54bf5002d1007bca32fc51074c094db3ba1e8f0d` |
| 37 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/instance-source-edition-9.md) | 302 | `declaration-track:9da13faf8c80ca779b7b8adbb03dd46672595177880305e7fe0f8813484226ab` |
| 38 | `def` | [FreeMagma.length](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/freemagma-length.md) | 305 | `declaration-track:7e65d384433b9a9404d578cd4e750e5b5d4a75858acc4e25ee3b0c7cdac5bdd1` |
| 39 | `def` | [FreeAddMagma.length](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/freeaddmagma-length.md) | 310 | `declaration-track:5aa2683a37520f02961e3c2c7f928de52ddcc4880e3f1434a8eb088985759547` |
| 40 | `lemma` | [FreeMagma.length_pos](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/freemagma-length-pos.md) | 318 | `result-track:5e60ac59a06738ccf89b6c00f1419df73c21b5e982c4c2e45fbb947802e3dfad` |
| 41 | `inductive` | [AddMagma.AssocRel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/addmagma-assocrel.md) | 324 | `declaration-track:9b9e4fd145ae2dbb020392c89e2616422966f1f45537be2679235cecb4a4139c` |
| 42 | `inductive` | [Magma.AssocRel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/magma-assocrel.md) | 330 | `declaration-track:086733beb5a132062f7d30695f82ce3eb7991e74f4c1b16682dac20168a749ee` |
| 43 | `def` | [AssocQuotient](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/assocquotient.md) | 338 | `declaration-track:620f3c9c540c330668909e977dd18cb7043fc402d80a740e5fa599e76f3a8b2f` |
| 44 | `theorem` | [quot_mk_assoc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/quot-mk-assoc.md) | 346 | `result-track:530ac212bfc49ce0f01eee731d73e9ee3d21d8c76c37439ea35359b10567df17` |
| 45 | `theorem` | [quot_mk_assoc_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/quot-mk-assoc-left.md) | 350 | `result-track:cf4b039f3d8983492b69ee5ee1446f0818905892f1a3e1e498d02b7195bd456a` |
| 46 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/instance-source-edition-8.md) | 355 | `declaration-track:8c648a806de08bf06d53968cadbda008e17a8510f38e32888fe9958ac3ed9879` |
| 47 | `def` | [of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/of-source-edition-2.md) | 370 | `declaration-track:881234c7e52d35f98559c4c60df1a0df69495c5205a751ea84bea749334dd6c0` |
| 48 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/instance-source-edition-4.md) | 373 | `declaration-track:3a5c2cce05ad3e96c97a39b1050591590beb2e66476874b6bccb8c74f5378885` |
| 49 | `theorem` | [induction_on](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/induction-on.md) | 376 | `result-track:bc70e942aaac2e3dea8cbac3b056c620c21b8c695dd1bdd6543ea0812d224c46` |
| 50 | `theorem` | [hom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/hom-ext.md) | 384 | `result-track:0ebb85e747e7e60ad78a127159c32b962630a7e750465e8760e5b6b4992875c8` |
| 51 | `def` | [lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/lift.md) | 391 | `declaration-track:1705136740ef40bc36f3289d6041a9d0c18701bd32aea9e022295f839b42f7c8` |
| 52 | `theorem` | [lift_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/lift-of-source-edition-3.md) | 401 | `result-track:ec396be2d8124b887457ac70e78eab787fd08e2661402ca796cdf62eb8a64cbe` |
| 53 | `theorem` | [lift_comp_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/lift-comp-of-source-edition-2.md) | 404 | `result-track:4caf97d33379d4c726ee1ca6c07959c3a927c15ddc51a7b70cba2d65012937fe` |
| 54 | `theorem` | [lift_comp_of'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/lift-comp-of-source-edition-3.md) | 407 | `result-track:6732deb815432d22ef3aecc03d188cb2e0a7eefeae34b3988a62d3c5d87cdc33` |
| 55 | `def` | [map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/map-source-edition-2.md) | 417 | `declaration-track:82def54f6b125238c95b1870b1e4ee948d8d0e8986d2ce1779963bb6b56d76d5` |
| 56 | `theorem` | [map_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/map-of-source-edition-2.md) | 420 | `result-track:ded19c04d2ccfd6bb8c68be28598b2d08da540bd553959ddffa88ef3d9e33afa` |
| 57 | `structure` | [FreeAddSemigroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/freeaddsemigroup.md) | 443 | `declaration-track:643057aa45a671dd85e3c1bdd8c7f19d0c1052149f8f01c7ab10aba61a787861` |
| 58 | `structure` | [FreeSemigroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/freesemigroup.md) | 467 | `declaration-track:90c7b3acf7656efdbc370d9b40958d4f3711a1e07c67d2afdad585a803a56e71` |
| 59 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/instance-source-edition-12.md) | 479 | `declaration-track:c265ad9075a65f809dafe144c9b841245adafd332dab689cdfacfee88758c4b1` |
| 60 | `theorem` | [head_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/head-mul.md) | 484 | `result-track:b88eeb6423fa539e88ea2a69f1c75243d77776c547169b427897c3b68becde92` |
| 61 | `theorem` | [tail_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/tail-mul.md) | 487 | `result-track:f05a0ee39992dde2a742cddd88cfc4d0d33287f42505fbee0defc8d4699020db` |
| 62 | `theorem` | [mk_mul_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/mk-mul-mk.md) | 490 | `result-track:f79a63adeeb3e5dd8c449ff2c817ae103e30d99a692998f96acbaa9b7215c6ab` |
| 63 | `def` | [of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/of.md) | 494 | `declaration-track:310a76f42a549474568443390573c96b516279e203a466fbd356b83997074cb5` |
| 64 | `def` | [length](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/length.md) | 498 | `declaration-track:59f84292b9c9a500ca677128ca1693741352e546a822bfe04be68624a67f1016` |
| 65 | `theorem` | [length_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/length-mul.md) | 501 | `result-track:aaa66257f5e6b1839b7eed8a0dd316d0c85c828a77caa9f874f6a0de744919ed` |
| 66 | `theorem` | [length_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/length-of.md) | 505 | `result-track:ead0b4e1322daa8e0e99ae82c8800fa43e939db11de6d8e5502e115cab7f897f` |
| 67 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/instance-source-edition-13.md) | 508 | `declaration-track:c5e742374fe1a41e4471b8c6e5176f08389a806b52649171ded07f0c240b59da` |
| 68 | `def` | [recOnMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/reconmul-source-edition-2.md) | 513 | `declaration-track:96796843ace9756f151dc921b205b025ff1fdc277ecc95d167f9e9c88b7d03b4` |
| 69 | `theorem` | [hom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/hom-ext-source-edition-2.md) | 519 | `result-track:957e6c36b5b6d962c79b3ed050fea4cad1d364b11bb1d18de93e676e0cf3a015` |
| 70 | `def` | [lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/lift-source-edition-2.md) | 531 | `declaration-track:6a3ecef6e47d17f83248ac6837e574a5d13e3136259aecc7118c6be3b1c98d4c` |
| 71 | `theorem` | [lift_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/lift-of-source-edition-2.md) | 542 | `result-track:b71f72222bc21a5e23f4cfc7f93642954939356b7d86ce4fab65a4a6c1440639` |
| 72 | `theorem` | [lift_comp_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/lift-comp-of-source-edition-6.md) | 545 | `result-track:c88e5d5a93b66101079047ec75d335a24c6e9390decd388a041e1f992b3ebaf9` |
| 73 | `theorem` | [lift_comp_of'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/lift-comp-of-source-edition-5.md) | 548 | `result-track:9809f52acad4ff2ef10e8be1e2c61d1a1546ea73cdc539a4465b711e1bf6ffe4` |
| 74 | `theorem` | [lift_of_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/lift-of-mul.md) | 551 | `result-track:602e2cb5d936c7303a65a5eac1d427f7ad7d842b4b36845eae29cfd2e74d304d` |
| 75 | `def` | [map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/map.md) | 561 | `declaration-track:019004f98fd48cc0011b0871602822aa86d1c31e7c9747dbf29bf036788d1e5d` |
| 76 | `theorem` | [map_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/map-of.md) | 565 | `result-track:906711a948e8b20d0d88f79515a5d0cbe1982893ae586c403d032154db41a3f8` |
| 77 | `theorem` | [length_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/length-map.md) | 568 | `result-track:1cc2316532292b998a2c8c7c55bd4c2dad2d41ad6e017d06a725c457a2a5811d` |
| 78 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/instance-source-edition-5.md) | 578 | `declaration-track:3a6cd0a54f65dce1cd014383ee9278a2690fca02048170dab8a86a2456fb8595` |
| 79 | `def` | [recOnPure](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/reconpure-source-edition-2.md) | 584 | `declaration-track:4882a06ca8806bb9465ed1a23b186afd1e035e008dec64dacf732b2206762051` |
| 80 | `theorem` | [map_pure](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/map-pure.md) | 589 | `result-track:0715fd3b10d2f03da15c22ebf526c6f86856c6ddce2414dcabc5d4cbe0545af6` |
| 81 | `theorem` | [map_mul'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/map-mul.md) | 592 | `result-track:426a47d5b9bae9ebed2a771cf40d1b52fec4498df3318795ca508253c8d199e8` |
| 82 | `theorem` | [pure_bind](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/pure-bind-source-edition-2.md) | 596 | `result-track:c57fde90fbdc9f3f743139e1b9305d5b9a5c600fa83f10c1f9c672f32455e812` |
| 83 | `theorem` | [mul_bind](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/mul-bind-source-edition-2.md) | 599 | `result-track:d875039bb38eef2760211f5639b5560cdf752c53e1debadc91a83af6dbd73147` |
| 84 | `theorem` | [pure_seq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/pure-seq-source-edition-2.md) | 603 | `result-track:c7a616e34bf8f80c983243a92b26d8af7d3f632c94b8ca5c689b9399dbb808e5` |
| 85 | `theorem` | [mul_seq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/mul-seq.md) | 606 | `result-track:2f42aaa15fcf9e9c43233329b0bc04f8195b58f314c7c811a06a4c60103e4add` |
| 86 | `instance` | [instLawfulMonad](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/instlawfulmonad-source-edition-2.md) | 610 | `declaration-track:64c657953567803ba5bf0bf1120d1255e96a7f9372aa692d520a9e093bfdfebd` |
| 87 | `def` | [traverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/traverse.md) | 618 | `declaration-track:a6bc87b06b8572bca18175bb92dd733fa23afd9707a0590e0a4cdf64578b3700` |
| 88 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/instance-source-edition-10.md) | 623 | `declaration-track:a69ab7bface7c36baadaaef782817ac7aa5c0f2ea815874775d07441e8fad6c6` |
| 89 | `theorem` | [traverse_pure](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/traverse-pure.md) | 628 | `result-track:6cdaa3bad1201af7dda4bbb9d86f6494d61591333b33ff4f7f921e8081e77e27` |
| 90 | `theorem` | [traverse_pure'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/traverse-pure-source-edition-3.md) | 631 | `result-track:d57c6aa8c783c20b083b22190041ecaf9d763cae36a086815272f4153799c0c3` |
| 91 | `theorem` | [traverse_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/traverse-mul.md) | 638 | `result-track:0beaf2172c6ec405c0be10b33a008630724ba39e836160d63b476569d1be3a50` |
| 92 | `theorem` | [traverse_mul'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/traverse-mul-source-edition-4.md) | 650 | `result-track:ec0635a5c47d4556d32fffc21ec33536a46e1a861451587cdf361f6d291b2ab8` |
| 93 | `theorem` | [traverse_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/traverse-eq.md) | 658 | `result-track:1327c7696f34c7c6a5813f8f41f7c4cd3786f2821e5001a507c184fcd71ecd71` |
| 94 | `theorem` | [mul_map_seq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/mul-map-seq.md) | 661 | `result-track:1a4b48a52c34aa7faa9129f5a0e3c44dde8a8d4a8bebbd5306628d9e5acf1811` |
| 95 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/instance-source-edition-2.md) | 665 | `declaration-track:0a6d00c992254da3cc3f77d9c9c364dc64173be0aab91e68b754ddbe166ed67a` |
| 96 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/instance-source-edition-6.md) | 685 | `declaration-track:55176dae7d1f3ecc7cd341997d769c75cedc460b935efa5f0f46226132452665` |
| 97 | `def` | [toFreeSemigroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/tofreesemigroup.md) | 696 | `declaration-track:80af4e7c12b2032db0609c07c84dcd77dbe677683d16395e0b47c0b865735c91` |
| 98 | `theorem` | [toFreeSemigroup_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/tofreesemigroup-of.md) | 699 | `result-track:d33c83b073d7c898bd7f35676a3bb741ae2640e6f3975cb2cfdf935f43a3f4fe` |
| 99 | `theorem` | [toFreeSemigroup_comp_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/tofreesemigroup-comp-of.md) | 702 | `result-track:854478f3d06ed85953894fe10dfd639884904b068fe74e9175ba9512cfac524a` |
| 100 | `theorem` | [toFreeSemigroup_comp_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/tofreesemigroup-comp-map.md) | 705 | `result-track:c5222efb085dda2f1bf51cddb71940fa1df05cc9f96d3177735cfc6fba2c10c6` |
| 101 | `theorem` | [toFreeSemigroup_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/tofreesemigroup-map.md) | 709 | `result-track:9d5bdc48880c197cdd4e659d6edcf81e88730c98c56a9ec4d0d0129d711f0430` |
| 102 | `theorem` | [length_toFreeSemigroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/length-tofreesemigroup.md) | 714 | `result-track:8599e12f1b92083580f6002c2dc78e4ff3f96ba79b5d24a012daf51ccbfafa26` |
| 103 | `def` | [FreeMagmaAssocQuotientEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeNamespaced.lean/declarations/freemagmaassocquotientequiv.md) | 723 | `declaration-track:0b536cecad0af8466130b3b928de2750e1e52a7c977ffc46399c96c720601602` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da92489b8503fa91c73e91d7e0411cae0ac927138c735915b40f4bfd1872ac56 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Free/Variante310516ed3fae44e98eaa5624d6beb147e7edbfe80cb01615c0733d90353ffde.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Free/Variante310516ed3fae44e98eaa5624d6beb147e7edbfe80cb01615c0733d90353ffde.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
