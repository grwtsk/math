# Verification target: Category Theory Iso

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebf1893fab08a88cd28f55dabb9c6aecd3d60abd",
  "lexical_observation_count": 91,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variantd264dd1b357c81b3f1dc1d1449c343102402aa9596260551cbbd011a1515d085.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebf1893fab08a88cd28f55dabb9c6aecd3d60abd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variantd264dd1b357c81b3f1dc1d1449c343102402aa9596260551cbbd011a1515d085.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variantd264dd1b357c81b3f1dc1d1449c343102402aa9596260551cbbd011a1515d085.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Reassoc` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/iso.md) | 51 | `declaration-track:f02ca2fac64695424ad9e3e1b4389414b922283c8021f30e47a91fe63f90f312` |
| 2 | `theorem` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/ext.md) | 82 | `result-track:c307dde282c43ff5ced6a83f8e88de54f7d1503ba421070d84a8085de34076cd` |
| 3 | `def` | [symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/symm.md) | 97 | `declaration-track:7134879a46526e168d980311bce275b4201ebc1c5db139cd81231035bc58d751` |
| 4 | `theorem` | [symm_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/symm-hom.md) | 103 | `result-track:60868a25975ee5be26d932355652f5eb4ac410e5b7c941b0ae144a492ee16f21` |
| 5 | `theorem` | [symm_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/symm-inv.md) | 108 | `result-track:7ab20d11a08639fe83dc535575d996dc05acc16e4c2f538d51215f9ae082a223` |
| 6 | `theorem` | [symm_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/symm-mk.md) | 113 | `result-track:2e870b7ef2969e431816918561a05f0987923ac22715b5d961b9e0c8349a2748` |
| 7 | `theorem` | [symm_symm_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/symm-symm-eq.md) | 120 | `result-track:fe044309c434a9bf6b0961e0ad65e074eff8c9d0b71b5cf0cf3b119061931230` |
| 8 | `theorem` | [symm_eq_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/symm-eq-iff.md) | 124 | `result-track:ed6bf4fa63cb951b5d3b38e641ecfe21544e57d782446e72e79222f4c1d6f0c9` |
| 9 | `theorem` | [nonempty_iso_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/nonempty-iso-symm.md) | 128 | `result-track:a8723186d8aa67bf4800644a8ee983635b9740f917ff3463389201d825031e09` |
| 10 | `def` | [refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/refl.md) | 134 | `declaration-track:fa0930fe5d0167ee46c10879ed617f9468905fbd17dd2261612dc590b948431e` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/instance-source-edition-4.md) | 141 | `declaration-track:c14c38efb0ef4a48c7a36c63eec94fb6552bd3edd660968c1962fdd9fb9eab95` |
| 12 | `theorem` | [nonempty_iso_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/nonempty-iso-refl.md) | 143 | `result-track:32c21b1176a3f42b62893801cae9d9934634590662d4b7f095b8079bfad3ae87` |
| 13 | `theorem` | [refl_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/refl-symm.md) | 146 | `result-track:e5810448566a588372c4b520ee11bc925720c54f6d7ae58d3f02dc8cf3226f77` |
| 14 | `def` | [trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/trans.md) | 153 | `declaration-track:f96b96ea6d77280a69aa0f66ead4500cc6c1cc0a2dd09d2da927539497d7892a` |
| 15 | `instance` | [instTransIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/insttransiso.md) | 161 | `declaration-track:2779fc5e9fceaae619c5e4a680484ecb635f837b3a0d277f54de0c349470e4e3` |
| 16 | `theorem` | [trans_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/trans-mk.md) | 168 | `result-track:acbc7e14cd5c1394740746c1516d67af7744dfc90fb5924263717e6a5c82dfff` |
| 17 | `theorem` | [trans_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/trans-symm.md) | 176 | `result-track:f3db68819931e6322184a7c7e86f3da0db025f05e09498ded73972caa81d10a6` |
| 18 | `theorem` | [trans_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/trans-assoc.md) | 181 | `result-track:4bb62c9bdc67840a70d1553fd0f5211c9eb256b5508deae607bf22f62f1bf2de` |
| 19 | `theorem` | [refl_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/refl-trans.md) | 187 | `result-track:e77b881a709a7263c1c4c6687c973547e023c1864400dcda124667a4641ba08e` |
| 20 | `theorem` | [trans_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/trans-refl.md) | 191 | `result-track:eefda9a1446db8c48ffee9f3694d9ad141a8a6847c474056ea6afe9deaa2298d` |
| 21 | `theorem` | [symm_self_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/symm-self-id.md) | 195 | `result-track:5c7a7e0f1e836de0d993987c8fb3f29d0a2ba0a8e71812cb4ada62a866a50c28` |
| 22 | `theorem` | [self_symm_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/self-symm-id.md) | 200 | `result-track:7213a29b3f11c307e0c4605874f4daf9f3db989c16f3062f5289fbf85f630d4d` |
| 23 | `theorem` | [symm_self_id_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/symm-self-id-assoc.md) | 205 | `result-track:b077b4829ff1b47855a8b6309ccf6d0a3e487e5a3fadd2d4b0e01ca0c54703f6` |
| 24 | `theorem` | [self_symm_id_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/self-symm-id-assoc.md) | 210 | `result-track:d4a55847670e3a94e2868cf0033b36ee5d8db6377d331cb863a40dee183b2db7` |
| 25 | `theorem` | [inv_comp_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/inv-comp-eq-source-edition-2.md) | 214 | `result-track:fe88392413384bd15116c20b44c9ffd5e6f74fe8224f82c20faccb70c8a6d1d9` |
| 26 | `theorem` | [eq_inv_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/eq-inv-comp.md) | 218 | `result-track:0a72666714cc80f4c6023ab2a0f38d9966a20fa486cb43b8c1a3edff06207588` |
| 27 | `theorem` | [comp_inv_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/comp-inv-eq-source-edition-2.md) | 222 | `result-track:f2616726c01d5e1bb3d0bfe454de2753db3fd9f497fc57c011cef83d93209870` |
| 28 | `theorem` | [eq_comp_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/eq-comp-inv.md) | 226 | `result-track:68c9cb61485128a4f60b736bf2aef0a5b74f5f4147518d49e79458cb5ee7ca8a` |
| 29 | `theorem` | [inv_eq_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/inv-eq-inv.md) | 230 | `result-track:d2d75020b707a37645c290446d458cf542a1d9510dd51470e610089499163a4f` |
| 30 | `theorem` | [hom_comp_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/hom-comp-eq-id.md) | 235 | `result-track:3e5ef27db10e9eae7d8352fceb4b93bdb69dbb21cdadedf71c462a8e46f47d2b` |
| 31 | `theorem` | [comp_hom_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/comp-hom-eq-id.md) | 239 | `result-track:4f1f9d40ad0f3828000889ef2dfc7c84be8ac055948e88d2ed84904cdb433d3b` |
| 32 | `theorem` | [inv_comp_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/inv-comp-eq-id-source-edition-2.md) | 243 | `result-track:a7dd000288362f3cd01be5a617f8d1ad7258b8cd09ec0a0ebde83ccc90a08a5b` |
| 33 | `theorem` | [comp_inv_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/comp-inv-eq-id-source-edition-2.md) | 247 | `result-track:b8e74395bd5aa4db75b57e91c75c479095724275d88cb8299f51f858d10fa287` |
| 34 | `theorem` | [hom_eq_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/hom-eq-inv.md) | 251 | `result-track:2ca87087009302852d279b7726d6c2cd6f1c6f3bb074595ad61018fc1bdd801e` |
| 35 | `class` | [IsIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/isiso.md) | 259 | `declaration-track:cdac40e8c77816f098be080d5f880766cb1c4370b5738779ba0f779030b8e199` |
| 36 | `def` | [inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/inv.md) | 266 | `declaration-track:d6270477f9d67cf1df79cd3f1b5641d527d7a1c1dba530b1d74d0692813ffdd9` |
| 37 | `theorem` | [hom_inv_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/hom-inv-id.md) | 273 | `result-track:bdb20093fbc4ff1210e3f72430b5dc73dfee4cc8b09cba1114c5814fce390ee8` |
| 38 | `theorem` | [inv_hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/inv-hom-id.md) | 278 | `result-track:431df57526b2595cbc278dec819b0039fafbbce1c346ea69ccfe175e72351272` |
| 39 | `theorem` | [hom_inv_id_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/hom-inv-id-assoc.md) | 293 | `result-track:6bf7556d7d09b3cfeceb729a7d77c5853ad9784ba66dabf10ee1ca708fe21e83` |
| 40 | `theorem` | [inv_hom_id_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/inv-hom-id-assoc.md) | 298 | `result-track:ef67d85ffca4ec6f9a17c337a68f6682da9dd939ad11e6e5b9650b65c5cc9b47` |
| 41 | `def` | [asIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/asiso.md) | 307 | `declaration-track:88a3cf5f640cedda636920bdc20fee53d33ecd2ee475997f51d0d6325d6756af` |
| 42 | `theorem` | [asIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/asiso-hom.md) | 315 | `result-track:fe39dd7895eafc8cf2e2e5072a2c3d3a06586f0833dcd75ac452f52273062ec2` |
| 43 | `theorem` | [asIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/asiso-inv.md) | 323 | `result-track:93d7729bf4d08125d15114f0430ca46fe8f4dbb26f938e095bc0cfff660eb888` |
| 44 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/instance-source-edition-3.md) | 330 | `declaration-track:6e6344e983450865d2a2df6c554fa3fff9394326441d0be04ada2549384f5070` |
| 45 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/instance.md) | 336 | `declaration-track:18d21395573ae6c8fb249a5e613725f243eca91d2f0c152ef4a4c05e5cbfcf15` |
| 46 | `theorem` | [inv_eq_of_hom_inv_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/inv-eq-of-hom-inv-id.md) | 344 | `result-track:7bc8af1d31df01f69dbd295195d0fc94e2c10990031f37ffc2f351abb51358f9` |
| 47 | `theorem` | [inv_eq_of_inv_hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/inv-eq-of-inv-hom-id.md) | 350 | `result-track:91777b5d235c04d6ede5b4eb33c7c5e5dcd93ee38afc5fd4fa94e33fe715befb` |
| 48 | `theorem` | [eq_inv_of_hom_inv_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/eq-inv-of-hom-inv-id.md) | 358 | `result-track:079fd4ad43c6b036aa5dc93c37ff73ba73cff533b41dbb8ab8872c651b47e253` |
| 49 | `theorem` | [eq_inv_of_inv_hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/eq-inv-of-inv-hom-id.md) | 363 | `result-track:f3e1546462c64528b2371c03693d353872c2bc64dde85bf044bc04f37fece396` |
| 50 | `instance` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/id.md) | 368 | `declaration-track:112877d60acdc3de93811b9798bf06e5ee9f76ab0b770685128e84bb90e46213` |
| 51 | `instance` | [of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/of-iso.md) | 371 | `declaration-track:7ff6a17618066065b9d9f09bd62040dac8f1f566c1c7f75248c6338b4d507348` |
| 52 | `instance` | [of_iso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/of-iso-inv.md) | 374 | `declaration-track:017dbb4c6cc3d668bb1b0ce1d39f027c9406208da489cb344714917b89476d99` |
| 53 | `instance` | [inv_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/inv-isiso.md) | 379 | `declaration-track:3b72f165444bd993f3de67a62175180aa09fb698a6e6af21fcd9720fe4b6cc7f` |
| 54 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/instance-source-edition-2.md) | 387 | `declaration-track:6d7daaa482d4a0b82253806ad66f8fe348ac5d5a1b75da9cf98f6d4b1935b202` |
| 55 | `theorem` | [inv_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/inv-id.md) | 392 | `result-track:2b824ba9768230bf84f0e3f3b09b254341a2ef303d7e29fc190f396fa78e516a` |
| 56 | `theorem` | [inv_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/inv-comp.md) | 398 | `result-track:f26632cd86c213d0c733fb61ac7c0f91c64cd39549ee2be5a47df867b3aaea23` |
| 57 | `theorem` | [inv_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/inv-inv.md) | 404 | `result-track:a753c2d8a2ee59afea3468660ece738b339af03f89043242a90767973068464f` |
| 58 | `theorem` | [Iso.inv_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/iso-inv-inv.md) | 410 | `result-track:3365e3f1ec7c1be6456abe04054b1066f804041ff7c7d677684a1e47152c86ec` |
| 59 | `theorem` | [Iso.inv_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/iso-inv-hom.md) | 416 | `result-track:eda243977ee6c258ae297235d1052ba42cbdbe519c1e64bd2f212381dee1a03f` |
| 60 | `theorem` | [inv_comp_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/inv-comp-eq.md) | 422 | `result-track:be960e8bdec366bbbf900972edec29242fc157d5c9a6c29a735a90ac8cb579df` |
| 61 | `theorem` | [eq_inv_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/eq-inv-comp-source-edition-2.md) | 427 | `result-track:18ae76901c3e603e7ffef3aaa65241aa09a0bd5ba020b7aaa377fd710b76f071` |
| 62 | `theorem` | [comp_inv_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/comp-inv-eq.md) | 432 | `result-track:8617900867df08728df99fbd4adab8439c21fbfb4a7d52c08ec702916b76a78b` |
| 63 | `theorem` | [eq_comp_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/eq-comp-inv-source-edition-2.md) | 437 | `result-track:f7075c61ec89f984c0064d9b30a5b24b434fbdba37cc5ba0c25e71fe40b88c09` |
| 64 | `theorem` | [of_isIso_comp_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/of-isiso-comp-left.md) | 441 | `result-track:7f63f1cd566c2d381b598cc1cb97a9be65554d62edf815af8d2f9540a2f0eb81` |
| 65 | `theorem` | [of_isIso_comp_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/of-isiso-comp-right.md) | 447 | `result-track:2e9b7721988efe66a87089d6f5142b4e0563c8a3789e01b18d6f3314dcdb7798` |
| 66 | `theorem` | [of_isIso_fac_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/of-isiso-fac-left.md) | 453 | `result-track:83acb492106f07975a52828bd2033755b3d2bed68c3566e6ef6ccbedb934c1a5` |
| 67 | `theorem` | [of_isIso_fac_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/of-isiso-fac-right.md) | 460 | `result-track:844c93aef2b652197296d4ae3e554dc3870ada02c2d23dafc5f3df82bb4ef751` |
| 68 | `theorem` | [eq_of_inv_eq_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/eq-of-inv-eq-inv.md) | 471 | `result-track:85ff5f6b2844aedb11cfb880912f8f339331a947c90468848b5e07973c9556fd` |
| 69 | `theorem` | [IsIso.inv_eq_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/isiso-inv-eq-inv.md) | 476 | `result-track:35d74a4b01c85065519dc73f0ec872d1589f06c72b6676bccbeb351970a7aaf8` |
| 70 | `theorem` | [hom_comp_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/hom-comp-eq-id-source-edition-2.md) | 480 | `result-track:a3f11252bfe91b4631d6b647532c16c1f8c503af69af28b94d1c98584065bcff` |
| 71 | `theorem` | [comp_hom_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/comp-hom-eq-id-source-edition-2.md) | 484 | `result-track:a0c997cc8c3910afd96cda5a67dd789a576932b88744b84493c1b33591099abc` |
| 72 | `theorem` | [inv_comp_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/inv-comp-eq-id.md) | 488 | `result-track:74b312f4d23e743981d05092b3cc33e3be3356396aadf2b14db9642cfe33f48e` |
| 73 | `theorem` | [comp_inv_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/comp-inv-eq-id.md) | 492 | `result-track:277188e6ad60f36673ae48eeeae94bffc04aeacbc61ee84baf54b3db6a1ce2db` |
| 74 | `theorem` | [isIso_of_hom_comp_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/isiso-of-hom-comp-eq-id.md) | 496 | `result-track:c26ebb67deab4794612b2433feb260d85121f832a954497ec01b15693836eef7` |
| 75 | `theorem` | [isIso_of_comp_hom_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/isiso-of-comp-hom-eq-id.md) | 501 | `result-track:14cb0b4d68c827193207323247a39c6ac022e78a953393b1358e813a2e557ef3` |
| 76 | `theorem` | [inv_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/inv-ext-source-edition-2.md) | 510 | `result-track:c2f72ac9fc5f20c127d1efe7d3bc5e779ffce27b0a703678b8a6752416902249` |
| 77 | `theorem` | [inv_ext'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/inv-ext.md) | 516 | `result-track:02f2a73a3b84f4500714d39ed1a455e0e2627cd3fe58086f1b6fb12d080605f6` |
| 78 | `theorem` | [cancel_iso_hom_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/cancel-iso-hom-left.md) | 535 | `result-track:839fe4f700c85de62ae6bfcd395c955075da1ae858e323e6f7c994b694bd7bf2` |
| 79 | `theorem` | [cancel_iso_inv_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/cancel-iso-inv-left.md) | 541 | `result-track:0ab805c8bd88f09d60f99355e3a3d1267ca17b270dce04f770478f45f10b6531` |
| 80 | `theorem` | [cancel_iso_hom_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/cancel-iso-hom-right.md) | 547 | `result-track:0c6833431d832a9653cc150295dec5396e878fab7b7684324683a52f3bdf8c3d` |
| 81 | `theorem` | [cancel_iso_inv_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/cancel-iso-inv-right.md) | 553 | `result-track:8709e60c48b66a064da740273d49917f04656edfe721b36f1788b4d8311fce43` |
| 82 | `theorem` | [cancel_iso_hom_right_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/cancel-iso-hom-right-assoc.md) | 566 | `result-track:9cba3445b32f3726760c59f666e4d5f3d5211ec4f4f977ee10eda65d62c8adfb` |
| 83 | `theorem` | [cancel_iso_inv_right_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/cancel-iso-inv-right-assoc.md) | 572 | `result-track:9fa4a05497dcda14ef1124201fe202e949ec28e961c976049dd082bfd0684edb` |
| 84 | `def` | [mapIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/mapiso.md) | 589 | `declaration-track:420cdf62209053e39ea33f97848a2a5d053b00a0fffd7424147c4ea37c8cb886` |
| 85 | `theorem` | [mapIso_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/mapiso-symm.md) | 599 | `result-track:786f093f2c59cc59f71aabf22ca766a82cf16dd3214b6038994683df58d0182e` |
| 86 | `theorem` | [mapIso_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/mapiso-trans.md) | 604 | `result-track:d6b97b6a477f3ce442d6a07f732ddd392a0143ed0d617d6f9499c2bbd3bc04bd` |
| 87 | `theorem` | [mapIso_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/mapiso-refl.md) | 610 | `result-track:07ede5ffdaff9add7b8193987d6008db4b1f7c9f430c2ecb53b117a4c8291368` |
| 88 | `instance` | [map_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/map-isiso.md) | 614 | `declaration-track:a0826a050016e2e2692a9845e455f6e95bffdddc4ae39a1ce0d82082f320607b` |
| 89 | `theorem` | [map_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/map-inv.md) | 619 | `result-track:80e7e3ba60c960564f45f7003b3b463d030882d836096e703453dea572aaf3c5` |
| 90 | `theorem` | [map_hom_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/map-hom-inv.md) | 624 | `result-track:ca8218924fae1dc930b6693ec3d112b5ec35a49199c884125fff4bf258506acb` |
| 91 | `theorem` | [map_inv_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryIso.lean/declarations/map-inv-hom.md) | 628 | `result-track:9e5961c5078cf608e75cdd34eee070351ba2db2957f8c4ad00c7b3a60936c3e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dbf543df40b5fadc25c3c2e65953ea0ad42efb3f5dc7defecc0aa68a41c8f478 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variantd264dd1b357c81b3f1dc1d1449c343102402aa9596260551cbbd011a1515d085.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variantd264dd1b357c81b3f1dc1d1449c343102402aa9596260551cbbd011a1515d085.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
