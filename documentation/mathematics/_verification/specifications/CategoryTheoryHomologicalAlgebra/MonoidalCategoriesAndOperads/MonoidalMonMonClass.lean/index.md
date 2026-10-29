# Verification target: Monoidal Mon Mon Class

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a24c902eff6112a61b8b3e122483a1035f2d2953",
  "lexical_observation_count": 105,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant41cd7dbea5af9a108cc50b4d32008c4b483f6104ee5862c5b4d3b97e62e34e4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a24c902eff6112a61b8b3e122483a1035f2d2953`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant41cd7dbea5af9a108cc50b4d32008c4b483f6104ee5862c5b4d3b97e62e34e4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant41cd7dbea5af9a108cc50b4d32008c4b483f6104ee5862c5b4d3b97e62e34e4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.PUnit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.CoherenceLemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Discrete` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Mon_Class](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mon-class.md) | 31 | `declaration-track:c2bc0cf1702d69b5bd4a3951de70b1f9ab654239a77f375777f386dfa1a90e64` |
| 2 | `theorem` | [one_mul](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/one-mul.md) | 57 | `result-track:105188514370529dce0f774bfa9d3205dea3963af81aad35f0be090fcd5adef0` |
| 3 | `theorem` | [mul_one](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mul-one.md) | 60 | `result-track:dc06f14eade29ad462d63e695edc73c8d21af509a45432779686519b474f75e6` |
| 4 | `theorem` | [mul_assoc](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mul-assoc.md) | 63 | `result-track:4097e9a21c2a096357706a7f98dbdf59080f3d6d5b41f6a437cf2107de4e17de` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/instance-source-edition-12.md) | 66 | `declaration-track:955e6bd5f515c0ab354819b3fb5f736b34182e56f97cd1780d703a4e970e86ff` |
| 6 | `theorem` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/ext-source-edition-2.md) | 73 | `result-track:ae491d9551f60f9bc5adf1e7be8c4044213242d262de188311bb4524c5a06553` |
| 7 | `class` | [IsMon_Hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/ismon-hom.md) | 86 | `declaration-track:15e9a1dc0c0db5b9c553b0f318659b551b65dfb97a138022911d1f8500ea697a` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/instance-source-edition-9.md) | 92 | `declaration-track:737fc20a0685ccccd1c98988ce58ad461b0f62004a209d40a956662fb994ae90` |
| 9 | `structure` | [Mon_](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mon.md) | 102 | `declaration-track:6af4e6a2e5f2454a42cd0e5ab061b8cb95a5962f19992436417cfad82bbc5995` |
| 10 | `def` | [mk'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mk.md) | 128 | `declaration-track:ff1ab91eab6e914d8b0951a343e04f3a5f147254fb54f19a736b46d754fe7bc8` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/instance-source-edition-7.md) | 133 | `declaration-track:58471a4d18394f1c2373e52575fac881845f69975ac911041eedd2b8a0f2740e` |
| 12 | `def` | [trivial](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/trivial.md) | 144 | `declaration-track:4ebcc8b84d1ca887d31b57c7f2055a4ff0f59750b4389865f749b8ff4ed39929` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/instance-source-edition-6.md) | 146 | `declaration-track:50297f3c890581fa46edc9afa54f61ed00a7a6b015b0aeb705281aa1ec2b7291` |
| 14 | `theorem` | [one_mul_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/one-mul-hom.md) | 152 | `result-track:7e3ab33aa27c74b9ef9012f8ac3a5791ba52713a0f3f2aa66af47fc737996d49` |
| 15 | `theorem` | [mul_one_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mul-one-hom.md) | 156 | `result-track:fb4f159adaa3fe845f3a2ac4f674851face877bb1419d2f6a93aa4d15a0c983d` |
| 16 | `theorem` | [mul_assoc_flip](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mul-assoc-flip.md) | 159 | `result-track:4b7843f9262d3c12921472ebff6221c1decf3a79ed90f7748b3c590b568a00f8` |
| 17 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/hom.md) | 164 | `declaration-track:61b4a38e3b67a1d020265444a8fdf35dd8efd9cbd4b8e120aaab4f28e206f51d` |
| 18 | `abbrev` | [Hom.mk'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/hom-mk.md) | 171 | `declaration-track:c64a6eaee1c7b7fb5c2b3a5dca27676e5f9270e1d148cce53e0095d96a2f9a4f` |
| 19 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/id.md) | 178 | `declaration-track:2abee3f9733954323483a61e8d1372b8f120fcdd8b739d6d54ab2e289ef5feab` |
| 20 | `instance` | [homInhabited](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/hominhabited.md) | 181 | `declaration-track:b5df81e6d83f8fd665e1ce420bfaaf3eaf99cac708c5bad5a3054ac05a9dbe53` |
| 21 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/comp.md) | 186 | `declaration-track:951dd581927d72052336ab979d0c05766a98b68553ecfb626f44663837133296` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/instance-source-edition-10.md) | 189 | `declaration-track:821f268d1f22df1c44bbc0b9b707df1b455b109bfb07afc7b02ffecf6e7e133c` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/instance-source-edition-8.md) | 194 | `declaration-track:6f20a99b050ea3c48c10b18668993d193cc22e93f26ce5e7768c07c2571cbd77` |
| 24 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/ext.md) | 197 | `result-track:681383c314a275f81ea2d46736d588325a5f329fa267a54f1a2dfc437a391425` |
| 25 | `theorem` | [id_hom'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/id-hom.md) | 201 | `result-track:91b480f22ac48794f6586053d52af7019853160990beffeff97301f4f697e065` |
| 26 | `theorem` | [comp_hom'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/comp-hom.md) | 205 | `result-track:7a194cb9aaa5cbe6b6a5eb45922855d860b31137d05241be1f2ef3b335ffca23` |
| 27 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/forget-source-edition-3.md) | 215 | `declaration-track:7424bef88a1c8818f6ad171ee154cc657c83a911514d6afabb37e2dd1e10421d` |
| 28 | `instance` | [forget_faithful](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/forget-faithful.md) | 221 | `declaration-track:66985ea05e8e2cbadab3f61ffa28cf382a7adee319269c4fcc1925d766f66611` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/instance-source-edition-19.md) | 223 | `declaration-track:db2d0d2ac0fa05e61ac7f1663205c7f091c2e5acde128bdd4d20b6b6b0f58fb9` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/instance-source-edition-18.md) | 227 | `declaration-track:d569e8ba39fa1ef658ff663c3e29b189b49aeb9dedb6a2549cffff016a598a18` |
| 31 | `def` | [mkIso'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mkiso-source-edition-2.md) | 234 | `declaration-track:954e2b2fbb8a645c3e42a263ed1eb15bbb7c72ad1bb26f96cc25b272d1c2f785` |
| 32 | `def` | [mkIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mkiso.md) | 242 | `declaration-track:674003fb39162dc7609ca1ad41cdbe9d4878f1c06575c6ca1689c0ea0f51e81c` |
| 33 | `instance` | [uniqueHomFromTrivial](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/uniquehomfromtrivial.md) | 248 | `declaration-track:fdf219a7fd774e5a3949aaf65e41bceb6d0237244804659631206b40b1565646` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/instance-source-edition-5.md) | 260 | `declaration-track:4a184aa6d0dab1c7c718d5654673a56df16b1308de5d8124bbdaee7f222c9032` |
| 35 | `abbrev` | [obj.instMon_Class](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/obj-instmon-class.md) | 278 | `declaration-track:f7eb173c4db6f67bfee77a3db9086c60539574e48a6b0f636cf9e25616e8d62e` |
| 36 | `lemma` | [obj.η_def](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/obj-def.md) | 291 | `result-track:baa2259001c7cdd93b713e80e4b7e547d3e40a8cc00b4bcbbb2fce6091bed0d4` |
| 37 | `lemma` | [obj.μ_def](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/obj-def-source-edition-2.md) | 293 | `result-track:f05d3c61b19b4484f15b046439d62590d7003a0faa9c99a68c7f22ea573010f6` |
| 38 | `instance` | [map.instIsMon_Hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/map-instismon-hom.md) | 295 | `declaration-track:2d3a6fc9504c2742c893231ff5cba32375b1d3a7d1a217d6b65f05d477e49d6d` |
| 39 | `def` | [mapMon](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mapmon-source-edition-2.md) | 306 | `declaration-track:ddd2399a16e68f85267564648200dd08db3afd1927f7d29e209d893e518c3b9e` |
| 40 | `def` | [mapMonIdIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mapmonidiso.md) | 330 | `declaration-track:b87b4ea47d8f1205ee98a0d3ebf8c9ceb13d9368cd0649fe05693f128a36bbaf` |
| 41 | `def` | [mapMonCompIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mapmoncompiso.md) | 335 | `declaration-track:baf61c03252e98e925527495bfe1d3299824e91119f47ace2d370a2227da5875` |
| 42 | `instance` | [Faithful.mapMon](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/faithful-mapmon.md) | 338 | `declaration-track:c9c9125f36a6d57cbf45f0b9891312cbe6bf905e91674821c99d24696844d7b3` |
| 43 | `def` | [mapMonNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mapmonnattrans.md) | 343 | `declaration-track:0cd5c8cdce3139a1a5ab79fdd6baaaa2402de0ff3d9586125b2b989de510808c` |
| 44 | `def` | [mapMonNatIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mapmonnatiso.md) | 348 | `declaration-track:2428ab0b846563409470e7a3978ac523bba60d5a6682526ff49552ac0d7675be` |
| 45 | `instance` | [Full.mapMon](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/full-mapmon.md) | 358 | `declaration-track:fa184a0069635e811859667353418d6c0f8c5dc8788076b5607a8ace492b6967` |
| 46 | `instance` | [FullyFaithful.isMon_Hom_preimage](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/fullyfaithful-ismon-hom-preimage.md) | 367 | `declaration-track:cfc89ed77bac64662263faec61ccb5fe9fd4edce0e3b05c34214ba49bb85c263` |
| 47 | `def` | [FullyFaithful.mapMon](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/fullyfaithful-mapmon.md) | 376 | `declaration-track:bcc372df1f25861f1738d6a1a370eacd0f52e8562464d08a881200c2a40267ba` |
| 48 | `def` | [mapMonFunctor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mapmonfunctor.md) | 384 | `declaration-track:1fb60a1a31b0536701f10eac83e593c7ad0d1873bd4388c8850ba9cc933eee64` |
| 49 | `def` | [mapMon](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mapmon.md) | 397 | `declaration-track:38de971a3bd38f7f5b2fb713dc8a8dcc005bf0324c6ffbff462cf1a455d1af21` |
| 50 | `def` | [mapMon](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mapmon-source-edition-3.md) | 407 | `declaration-track:de50301e185e6f05bc8648e89c1e6d80d9369c20c483ca943049a4383e58663f` |
| 51 | `def` | [laxMonoidalToMon](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/laxmonoidaltomon.md) | 423 | `declaration-track:0f17928351f22b65939b9250eff157615216494bc7f055762da9298cde5aef44` |
| 52 | `def` | [monToLaxMonoidalObj](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/montolaxmonoidalobj-source-edition-2.md) | 429 | `declaration-track:4f44923ce877dbd4d33043850079784d75d10376f8e39d4c9858deb9b1bc8486` |
| 53 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/instance-source-edition-13.md) | 432 | `declaration-track:99998d748eed11fb8c3891d8730d63cb94d422f5f3456ed5e3d6996d7e809ca6` |
| 54 | `lemma` | [monToLaxMonoidalObj_ε](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/montolaxmonoidalobj.md) | 437 | `result-track:1b869c8fdc73f29af01d753625c76af6759157eaf7ce077483f68facfa0d1297` |
| 55 | `lemma` | [monToLaxMonoidalObj_μ](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/montolaxmonoidalobj-source-edition-3.md) | 441 | `result-track:e0af847c4a6002f47e25a3697d43e2192c5470cee2cc97093ede45bdcf62b6c0` |
| 56 | `def` | [monToLaxMonoidal](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/montolaxmonoidal.md) | 447 | `declaration-track:86f3094b58ff76fe836941d13963c45179563da5de623203a58ff30a38b39526` |
| 57 | `def` | [unitIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/unitiso.md) | 458 | `declaration-track:69147686ad19630b2767871ca6b9fe01dbb1ed2fdf1961ac9c2c923020214968` |
| 58 | `def` | [counitIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/counitiso.md) | 465 | `declaration-track:a3472da9b16892a0ce2373c366a2c959ae376e2d2bd441cedb1d38e87aaff41f` |
| 59 | `def` | [equivLaxMonoidalFunctorPUnit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/equivlaxmonoidalfunctorpunit.md) | 478 | `declaration-track:35a4617661d43e14f1b751bdfe75876e023a2079be30679f256eabfc62c28c89` |
| 60 | `theorem` | [one_associator](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/one-associator.md) | 531 | `result-track:bf26279a584b27cda5dc72a017bac294c84d3fe4bf85ce7aa11ae91acbaad519` |
| 61 | `theorem` | [one_leftUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/one-leftunitor.md) | 543 | `result-track:5d901ae5d3fc4c990fe3022ac950f369543e712e4651b222b8f0e0dd2b79fd9e` |
| 62 | `theorem` | [one_rightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/one-rightunitor.md) | 547 | `result-track:ed976a533bf7208e67bf5c3bf233af512d110ebb0568247f8516a00f84ac7c92` |
| 63 | `theorem` | [Mon_tensor_one_mul](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mon-tensor-one-mul.md) | 555 | `result-track:85f2fa2ba9f2a4e2423ebf379e26c20a93e0e78c0dcae967f8f0aa4204dc2d37` |
| 64 | `theorem` | [Mon_tensor_mul_one](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mon-tensor-mul-one.md) | 565 | `result-track:69e4590d749a79a7f38ff37673c4a8de8020b01895d996505aa17d3f410262ea` |
| 65 | `theorem` | [Mon_tensor_mul_assoc](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mon-tensor-mul-assoc.md) | 575 | `result-track:3e5a385f8a7fd1e2d318116a81656983e69e309f8af8b163f615238b44ec3971` |
| 66 | `theorem` | [mul_associator](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mul-associator.md) | 588 | `result-track:0fff4bce303dbac8fc5f08f117f976a661be7df95fc43d43d07ada2a969b839b` |
| 67 | `theorem` | [mul_leftUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mul-leftunitor.md) | 603 | `result-track:ca51b964b2a21f1f48e73a5191c22d9144b32a42a7185586a32ce9d9a047e73d` |
| 68 | `theorem` | [mul_rightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mul-rightunitor.md) | 612 | `result-track:747b95877b2b06fe36ba01118ae3b45c4b1a0aaa4e0f691c34061a37594306c8` |
| 69 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/instance-source-edition-17.md) | 622 | `declaration-track:d1164d58bc7e74936a2b6d7ed5ca4b8e247dc9cdf4c8a1fe5d07f512c179d981` |
| 70 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/instance-source-edition-4.md) | 633 | `declaration-track:3d751c6dedaf356e28b62bdfc5407719655093d3f9bfa024a5a18023ff3afe0c` |
| 71 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/instance-source-edition-15.md) | 643 | `declaration-track:a2d8b9b3604ec93e0a08dc72b506557a957586a1d3a17cdb91ba03c26abd141f` |
| 72 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/instance.md) | 645 | `declaration-track:14c4e3942b6a74983a3b5a7e2ab245365e233c8015af9f6d08393a22255492f7` |
| 73 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/instance-source-edition-3.md) | 649 | `declaration-track:2bb9c0d48fd4bb459f52d68e80fd4ed097fe4b62cf7bc74e06b4eaa522802c70` |
| 74 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/instance-source-edition-21.md) | 653 | `declaration-track:f9a08d85c4bd55444a9df2ec171b7df476ac11a77a5813a9fbb2776dfa1d30e3` |
| 75 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/instance-source-edition-2.md) | 656 | `declaration-track:24482eb1eb0b957778c67d6fa56d4a74bae6206c5ae307d2cc0dae4302c8a3cd` |
| 76 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/instance-source-edition-20.md) | 659 | `declaration-track:e86d123831545c369bd708d0695e0c1e5d1aef17bbe25cbbef4071cc124aa2a4` |
| 77 | `theorem` | [one_braiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/one-braiding.md) | 662 | `result-track:52b06624d8e8982ec47f1bf488246394e4247cb42a1fedf8bdeb8c792e0ff3cd` |
| 78 | `instance` | [monMonoidalStruct](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/monmonoidalstruct.md) | 678 | `declaration-track:07887dd78f2c4debb4a7678df8aca23d612bf0f36f41050b0667cf3a803a8576` |
| 79 | `theorem` | [tensorUnit_X](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/tensorunit-x.md) | 689 | `result-track:3a4595b3e70689afa1fdd9efb6661a7c03e82dd977168b14f0a4c65bf6e7f875` |
| 80 | `theorem` | [tensorUnit_one](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/tensorunit-one.md) | 692 | `result-track:ebfe0d04baa761a12c5d08816445e65340d7b31c58f6c131b29335c1daaf4474` |
| 81 | `theorem` | [tensorUnit_mul](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/tensorunit-mul.md) | 695 | `result-track:7982d29c04005555bc58c790addf2e6a3c286678a68f7485fd03d4a7746091a3` |
| 82 | `theorem` | [tensorObj_one](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/tensorobj-one.md) | 698 | `result-track:21880786429a0d580781ddcfb61d905a976a2a4a0b713dfcf33ac1d5dba82872` |
| 83 | `theorem` | [tensorObj_mul](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/tensorobj-mul.md) | 701 | `result-track:2b53b771587d11f1dc8cf5fbc549ad41a05d343f486965e0a557fb52a1f94dec` |
| 84 | `theorem` | [whiskerLeft_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/whiskerleft-hom.md) | 705 | `result-track:40bddf50374a3ef94b5ca35d630b9052b3e47821a502a1d0ef363bfa5d049a81` |
| 85 | `theorem` | [whiskerRight_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/whiskerright-hom.md) | 710 | `result-track:cff64178e52cdff434928e34a43bcbe0feed91f2c43a187a73ba193f3c1e0fff` |
| 86 | `theorem` | [leftUnitor_hom_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/leftunitor-hom-hom.md) | 715 | `result-track:33afb39b12d55d37e8a8b4bc637ddb1d3a7859758eb03c2774024ba570f63411` |
| 87 | `theorem` | [leftUnitor_inv_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/leftunitor-inv-hom.md) | 718 | `result-track:03e8041e06114908ac41fcb7bdb4749c9844a08fcdad3c523f82f37e0da9ce23` |
| 88 | `theorem` | [rightUnitor_hom_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/rightunitor-hom-hom.md) | 721 | `result-track:601a6faafca5e06fa9924cd82844a726a1f8781661f07ad3f4b5fe8a9989432d` |
| 89 | `theorem` | [rightUnitor_inv_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/rightunitor-inv-hom.md) | 724 | `result-track:4d58a4d2398eac6a8c380c78af69747850772cd8e285ff341e3832ac828e95cd` |
| 90 | `theorem` | [associator_hom_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/associator-hom-hom.md) | 727 | `result-track:cb2c5663004d0016b4505a6fa38991b697a7e6485d7caee0378f063ec2b9f9f9` |
| 91 | `theorem` | [associator_inv_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/associator-inv-hom.md) | 730 | `result-track:1f275d682b15fea4fe05bb33f11b58cb94644a21c54633d278c38d2400282968` |
| 92 | `theorem` | [tensor_one](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/tensor-one.md) | 733 | `result-track:6c9511b1ba3a53ead066ca9b5ab9383e885b13f440c3460ada32297dceb27295` |
| 93 | `theorem` | [tensor_mul](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/tensor-mul.md) | 736 | `result-track:532f7c1577ac92fb9f7eda28cf66fa8856f64a1c1b48d5d34ec4e68da43f9331` |
| 94 | `instance` | [monMonoidal](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/monmonoidal.md) | 739 | `declaration-track:745a2da5def48f794a565955490c4ea5ded5f6f942ec8b40da3cd9d47a538100` |
| 95 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/instance-source-edition-16.md) | 743 | `declaration-track:b248050405d0726a631bba41124f6fc982ee8cbb1f2081c2208ceb60db192845` |
| 96 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/instance-source-edition-11.md) | 749 | `declaration-track:87672f8d4de2a58cc3259250ddae1cf25f74f291074951b00dbfd2492c9ead4a` |
| 97 | `theorem` | [forget_ε](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/forget-source-edition-4.md) | 754 | `result-track:8c5eb0c0bee5cedd3d5d254dea7e96d25a8fff80d1dc68e1e516268b8dda752e` |
| 98 | `theorem` | [forget_η](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/forget-source-edition-2.md) | 755 | `result-track:4453d301726c7a12a23918859dd872d4c3fdc8b20e187816b56445d1c58b2e67` |
| 99 | `theorem` | [forget_μ](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/forget.md) | 756 | `result-track:3c6d8595b6dd38b75cb1ae4e1c0407bbb2461d401eeed5c5107700898e037597` |
| 100 | `theorem` | [forget_δ](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/forget-source-edition-5.md) | 757 | `result-track:d02b06842e316fe581c7029bcef84bc555174ce34e5b2e624fb8b574200b287e` |
| 101 | `theorem` | [mul_braiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mul-braiding.md) | 779 | `result-track:935501f9277323e57631a44a108620c8b3207943c4f976a2984a9ba0938611c4` |
| 102 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/instance-source-edition-22.md) | 802 | `declaration-track:fca35032ef5979c1c8c8351d2f9afff97f9bcd8cb3c77f4859124b2cd6c1c507` |
| 103 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/instance-source-edition-14.md) | 809 | `declaration-track:9bc0973f3b20d295f26ae845dc43dd447737301f70a08ab57169e0a4ebd75685` |
| 104 | `class` | [IsCommMon](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/iscommmon.md) | 824 | `declaration-track:35da78f46f7993c89d7dfc3112831be1225e13fd39dab61edcc746c32383db42` |
| 105 | `theorem` | [mul_comm](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonMonClass.lean/declarations/mul-comm.md) | 832 | `result-track:d603e4dc5dd5619a8f3f4e38ac0257cd75de82edc20a334a30548b0f036029de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e652666652a3e80bd20503ba270d0fdb90adc6b1827538d86796a3f2845015d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant41cd7dbea5af9a108cc50b4d32008c4b483f6104ee5862c5b4d3b97e62e34e4c.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant41cd7dbea5af9a108cc50b4d32008c4b483f6104ee5862c5b4d3b97e62e34e4c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
