# Verification target: Subgroupoid

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b8108218b024547c2d5d3573d3567d11971be0f",
  "lexical_observation_count": 100,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant1e2b20b45a7d5e4726a92b722a41d0c19d3243eb495f091c81ff819e92bb8fb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b8108218b024547c2d5d3573d3567d11971be0f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant1e2b20b45a7d5e4726a92b722a41d0c19d3243eb495f091c81ff819e92bb8fb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant1e2b20b45a7d5e4726a92b722a41d0c19d3243eb495f091c81ff819e92bb8fb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid.VertexGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Subgroupoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/subgroupoid.md) | 69 | `declaration-track:337990e04ca4e64bef1194207e86e08f90b02160ea0c5e8d8030bf2b8a712e4f` |
| 2 | `theorem` | [inv_mem_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/inv-mem-iff.md) | 79 | `result-track:d50eb6736891fead069a475a230d6f297afe2b77e6c34eed5f30eac954266195` |
| 3 | `theorem` | [mul_mem_cancel_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/mul-mem-cancel-left.md) | 86 | `result-track:2dabd88bf0da906c742a4a99c517ce430688624e45d271c389bc92949763ba83` |
| 4 | `theorem` | [mul_mem_cancel_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/mul-mem-cancel-right.md) | 95 | `result-track:0b2d20bdb457f7ec3eb79402f45be171c44dd1a440580adcfa72948c0c44a433` |
| 5 | `def` | [objs](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/objs.md) | 105 | `declaration-track:4f3a055ff4755e2406e43bfffff8944924d0b938a6c6f8f947eb509e71c45f2e` |
| 6 | `theorem` | [mem_objs_of_src](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/mem-objs-of-src.md) | 108 | `result-track:b8a96bd6803341a0b27d90ec92747a71261086a34185fb2c0ab0c340950caf60` |
| 7 | `theorem` | [mem_objs_of_tgt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/mem-objs-of-tgt.md) | 111 | `result-track:12961c12f608a150a73e76ffba72175dc5ac7df1be19c64d4d97e1cc47a19987` |
| 8 | `theorem` | [id_mem_of_nonempty_isotropy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/id-mem-of-nonempty-isotropy.md) | 114 | `result-track:a5a092281d864965415ac867b2ac1e94fe04c6c9dfd8887666c6e702ff50321b` |
| 9 | `theorem` | [id_mem_of_src](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/id-mem-of-src.md) | 119 | `result-track:c6ad2570b0a40e32fb942a71bdb11874b2472b2c786ed1cece9f942bf9d88807` |
| 10 | `theorem` | [id_mem_of_tgt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/id-mem-of-tgt.md) | 122 | `result-track:e620babaf02dddc365c01964c5ffc2d4fddce86b399047bbc755cae9cab8890e` |
| 11 | `def` | [asWideQuiver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/aswidequiver.md) | 126 | `declaration-track:6ecb32bcce36c2c9f5cec0418a716c756921b56752132619a954b9bd5522e916` |
| 12 | `instance` | [coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/coe.md) | 131 | `declaration-track:d4298c2e05319e9ad9f8f9bf1d5a067d4e9040c7f74170694d9c6033b4a6aacf` |
| 13 | `theorem` | [coe_inv_coe'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/coe-inv-coe.md) | 138 | `result-track:ee27826c516139f6ee4e18a3896056a846354308fd5dfba169cc4ef82daf4709` |
| 14 | `def` | [hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/hom.md) | 143 | `declaration-track:bb1bda0104ffbfe1d0c0834bf95afe7be7b0ccd6adefbe19d3353b3878bb25b6` |
| 15 | `theorem` | [hom.inj_on_objects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/hom-inj-on-objects.md) | 149 | `result-track:9531d7078fd7e70171767208575afdc1723141f09da22121b41cfd27f1be417a` |
| 16 | `theorem` | [hom.faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/hom-faithful.md) | 153 | `result-track:074513be8d9730f4cc48e808a51a861ef9e7d05c9a228041ed14191343ca13d9` |
| 17 | `def` | [vertexSubgroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/vertexsubgroup.md) | 157 | `declaration-track:bbfe95f4d54b825af7a5bb6fa38237ee76dbaaf97b0dda78d6ffa6fe6a3b0bcf` |
| 18 | `def` | [toSet](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/toset.md) | 164 | `declaration-track:65c4893d611c02ba1cc957b7ac68b8345d1ce536ab5d309b215d2cef12162e56` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/instance.md) | 167 | `declaration-track:14ac8c0708b8a81029ef3276f55c48da5dc706918e7189668cdc252335efda82` |
| 20 | `theorem` | [mem_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/mem-iff.md) | 171 | `result-track:105a0b49cd366d13b333ca4a6e8dd9e7e26560af3a16b0537a4aa212c1ce0d95` |
| 21 | `theorem` | [le_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/le-iff.md) | 174 | `result-track:a7005397a4eb73a1bea0938fcce0453f1238492c00576ee67888d9d956121862` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/instance-source-edition-4.md) | 177 | `declaration-track:840aa6461409deeb1b84ef54cb407c563f972b8a4d16d427123a882916957fc0` |
| 23 | `theorem` | [mem_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/mem-top.md) | 182 | `result-track:ddaff9b871a705be925ce2b8633448615b2482f341617acbb9f22084470dfaf9` |
| 24 | `theorem` | [mem_top_objs](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/mem-top-objs.md) | 185 | `result-track:fcd5713d9fe815be519b9439db3e472305e1f1446066fb32fd34287eb0d756d4` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/instance-source-edition-6.md) | 189 | `declaration-track:d7a914ab3dd47d630a7d82ed7f0c5a5a2cf505478047fbb1f871569d13d9fef8` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/instance-source-edition-5.md) | 194 | `declaration-track:d085c815d2d9f7ef1bdaa4aa8d4e4712dfdc55be7d1e193866e8929ca6e55add` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/instance-source-edition-3.md) | 197 | `declaration-track:6f865221bec114cfdc9e6be67fddee0c5ad226eff4ac9f23aea036630d888888` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/instance-source-edition-7.md) | 203 | `declaration-track:e931db0d7751974bedfc54b79c88c09eced20d7c3c9e3f028597ca362daabbc0` |
| 29 | `theorem` | [mem_sInf_arrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/mem-sinf-arrows.md) | 211 | `result-track:84fad673d230473d55233929776a2b8f766c3f1b3ab470e16f974aae81b1e733` |
| 30 | `theorem` | [mem_sInf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/mem-sinf.md) | 215 | `result-track:7d7889aab3e8aa2192283bd6022df9f10a2e6f7b41600318afd728fb86ff8324` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/instance-source-edition-2.md) | 219 | `declaration-track:64b807781e3d6a7157483d077a04eea61d234ee2c693d3e1e32d104e94b3d70d` |
| 32 | `theorem` | [le_objs](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/le-objs.md) | 232 | `result-track:b5cba624c00aa37aeb90e79f68c9101da84bbd49096ac7f8b0e4393997f9b4a2` |
| 33 | `def` | [inclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/inclusion.md) | 236 | `declaration-track:c6e69854d3c185665c7932fcd7580ceafe9bdafcd8dc8a57a55c2a9a68518996` |
| 34 | `theorem` | [inclusion_inj_on_objects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/inclusion-inj-on-objects.md) | 242 | `result-track:5cdf401d5f6632228f28e57bc62d3b5cfed3ec1dc069f8990b178ca059ccb51c` |
| 35 | `theorem` | [inclusion_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/inclusion-faithful.md) | 246 | `result-track:98c2300b2e37a1c86cf64c47684fec61c47174138eb61686d7260153fd6102c3` |
| 36 | `theorem` | [inclusion_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/inclusion-refl.md) | 251 | `result-track:bfccfcad6f4ebf3f80d74672567b40675f0d4aebdd5766b5061f6ef0c1469757` |
| 37 | `theorem` | [inclusion_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/inclusion-trans.md) | 254 | `result-track:46bfa7e8d3e5bbf716be4a85453fbe729d9303c10db219ad072e1b49cb14ad4e` |
| 38 | `theorem` | [inclusion_comp_embedding](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/inclusion-comp-embedding.md) | 258 | `result-track:b7b99895a0954c0f36d35ecb9f8f937bf87faa8662a511cbb4aedb459cd45c4d` |
| 39 | `inductive` | [Discrete.Arrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/discrete-arrows.md) | 262 | `declaration-track:5e6ab90de9e713538700af723cc3c751afe021a3a6f9e1bb21e797844b08b3f9` |
| 40 | `def` | [discrete](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/discrete.md) | 266 | `declaration-track:b7912245e0e52f16ae6df1e4dde8d81e9e18e8b0c71623f7fef9af11a5c13e23` |
| 41 | `theorem` | [mem_discrete_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/mem-discrete-iff.md) | 271 | `result-track:8f158e56d425e1fcb6bd0efaa50115064f53a93173d682e656967b4de7f0d9d9` |
| 42 | `structure` | [IsWide](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/iswide.md) | 276 | `declaration-track:34836fb86787b64ced4a1ff002af30d5824d8376deafd2e42be30988bbe817b8` |
| 43 | `theorem` | [isWide_iff_objs_eq_univ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/iswide-iff-objs-eq-univ.md) | 279 | `result-track:18c6dc5d817eed3817c7bd6e50425f7ac40bcc0dc1328e6145fd70012d3c1215` |
| 44 | `theorem` | [IsWide.id_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/iswide-id-mem.md) | 289 | `result-track:b46b6bec23f504c98cd85a54332757b9d1b6dbe73b3f78d1f346fd675558980f` |
| 45 | `theorem` | [IsWide.eqToHom_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/iswide-eqtohom-mem.md) | 292 | `result-track:3c43cdc710b1526772b3dc7188e213631e429b9a9c3c03ddf9d0ec98e45928cf` |
| 46 | `structure` | [IsNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/isnormal.md) | 296 | `declaration-track:8200b676dd267ad0e8d4b99ff7a888eaf7bd109123d6b8fbd2ad34215a06f247` |
| 47 | `theorem` | [IsNormal.conj'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/isnormal-conj.md) | 299 | `result-track:be84adfeff9082ef1b66ddbb2cf573765645f04175b3ded23e907d8a60272eb7` |
| 48 | `theorem` | [IsNormal.conjugation_bij](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/isnormal-conjugation-bij.md) | 303 | `result-track:aedcefa9ee1462e6d01fc83a6a130c65108b37be6a092b6ab6b35f8ccc4f456f` |
| 49 | `theorem` | [top_isNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/top-isnormal.md) | 312 | `result-track:1d2fa8f881c5f58ca36594b9bca69ac5d89299277a1abf1affb88a9095e1d245` |
| 50 | `theorem` | [sInf_isNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/sinf-isnormal.md) | 316 | `result-track:7274a9c250eb505647a5e0a1a278bebc202947f880a8f61b7c27e92b0a889158` |
| 51 | `theorem` | [discrete_isNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/discrete-isnormal.md) | 320 | `result-track:572c30e0778c59f7109c617fde25d0932cd920705d20db730a9ef0eb515597c2` |
| 52 | `theorem` | [IsNormal.vertexSubgroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/isnormal-vertexsubgroup.md) | 326 | `result-track:2bfd779fd16d9a3819e1515c54a172d6552325323a63fc11426084a25e1e9795` |
| 53 | `def` | [generated](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/generated.md) | 336 | `declaration-track:a6fa4969a61f73c9a3957d11d76d5ba04d6b539eb4fc5b606ea418cf30997d6e` |
| 54 | `theorem` | [subset_generated](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/subset-generated.md) | 339 | `result-track:ca53bb72290b77671e85bb784f9ea89165bee71529286aaa5502d591c6a2b56c` |
| 55 | `def` | [generatedNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/generatednormal.md) | 345 | `declaration-track:b29026059b530686b34a9800d76cd5765936de257ef83505d05905b1491cdebd` |
| 56 | `theorem` | [generated_le_generatedNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/generated-le-generatednormal.md) | 348 | `result-track:4bad44275784308a8833a6ea56e123c7303e480c1bced038855c8a308128b94d` |
| 57 | `theorem` | [generatedNormal_isNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/generatednormal-isnormal.md) | 352 | `result-track:19c4f82592dd7fcf12fd6010af3c2b352d7d0fe091ab6a6ebb7fa4c2e9383e9e` |
| 58 | `theorem` | [IsNormal.generatedNormal_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/isnormal-generatednormal-le.md) | 355 | `result-track:c877a43fa16a8603a40f9dcde0bbf7496eb09680c387027839383cd798c8f303` |
| 59 | `def` | [comap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/comap.md) | 375 | `declaration-track:179edf8fa44334ca1ec9b5ec411eda706b977124cbed4b245fecf0457481c125` |
| 60 | `theorem` | [comap_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/comap-mono.md) | 383 | `result-track:5cb11c62b9d134bc67c8b9696be051451993c53e937599f939e7dab63e043a82` |
| 61 | `theorem` | [isNormal_comap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/isnormal-comap.md) | 386 | `result-track:e5ad2b1295dba13c51579189da2dd913069a7f9f48012dd67e5b0c47f4cbb778` |
| 62 | `theorem` | [comap_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/comap-comp.md) | 393 | `result-track:331af2def2ebea1bd20cda0682216030c1a4b39ba30d88511bfa47a3c82c5b37` |
| 63 | `def` | [ker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/ker.md) | 397 | `declaration-track:234d9e2de7d8ed045ce8f0e71adb22fce641820309e8689af71a3fefc8d474de` |
| 64 | `theorem` | [mem_ker_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/mem-ker-iff.md) | 400 | `result-track:4e6b864507f682e56af004e67c3e486c77cccf9ca92d65280e63144c2b707127` |
| 65 | `theorem` | [ker_isNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/ker-isnormal.md) | 404 | `result-track:1224b531b6f0a9b05716817c04a5fde954577a75548c3230201b35513bb38dc9` |
| 66 | `theorem` | [ker_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/ker-comp.md) | 408 | `result-track:8f80d239f1299198228c9a09f9699c0251a12e387f0031e7bf4fdb51ff1dfd3b` |
| 67 | `inductive` | [Map.Arrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/map-arrows.md) | 412 | `declaration-track:53d1678ec55c46183dbd670fa694578b623a4f1ea4b9245409be3bf62e68b1b2` |
| 68 | `theorem` | [Map.arrows_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/map-arrows-iff.md) | 415 | `result-track:66100167c155d548faa7a469d0be8eced559c61981f17f7731e8ff395669491a` |
| 69 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/map.md) | 424 | `declaration-track:d991a9d575338768ece8b9549bcd99fbafe52ea2940423224868af07bca7515b` |
| 70 | `theorem` | [mem_map_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/mem-map-iff.md) | 436 | `result-track:c67d48a242222b43900edc479904d72b7ea659182ddd78bbfffc86e3a1b4537a` |
| 71 | `theorem` | [galoisConnection_map_comap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/galoisconnection-map-comap.md) | 442 | `result-track:486cfbd822dc9fc8827bc16853d67ad99ecaf8c6e327a6c308f862d3aec44f3e` |
| 72 | `theorem` | [map_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/map-mono.md) | 449 | `result-track:f9786ce79503a7f4ced4f5b1b4ba4f85941ad134b5d8fc5bab8d5198e4684986` |
| 73 | `theorem` | [le_comap_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/le-comap-map.md) | 452 | `result-track:1e2882723350f999058514756867658723061172e2e1f7861e678b40a9328c3a` |
| 74 | `theorem` | [map_comap_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/map-comap-le.md) | 456 | `result-track:1a7bb18dd68a3a227e30328f8f06fe4880445ac5ef984df9be1c001f781ba694` |
| 75 | `theorem` | [map_le_iff_le_comap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/map-le-iff-le-comap.md) | 460 | `result-track:a358e6d38221cf2950516af8762ba628c91396d508ed1b701883a873bf90aab2` |
| 76 | `theorem` | [mem_map_objs_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/mem-map-objs-iff.md) | 464 | `result-track:492b4f0b1bc289511912dc6ee66c65adcee6d96d7288a69c08c1d4163810a147` |
| 77 | `theorem` | [map_objs_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/map-objs-eq.md) | 476 | `result-track:8bb7bb491d0f15992b9e72c5a28620fb348516279744e4ff28c5c5825cf095f0` |
| 78 | `def` | [im](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/im.md) | 480 | `declaration-track:653df401dcb47ef82ac03633b324c219cc803a10e03a2c248429582f9269ff7c` |
| 79 | `theorem` | [mem_im_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/mem-im-iff.md) | 483 | `result-track:8af37b426835bc6b0da4a6ca669afb4cecde0f666b528dfa13e634b8fca54d2b` |
| 80 | `theorem` | [mem_im_objs_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/mem-im-objs-iff.md) | 489 | `result-track:5e284c4391e866343b613277425cedea51b2750c96db2cf10e5b5b9837370bc7` |
| 81 | `theorem` | [obj_surjective_of_im_eq_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/obj-surjective-of-im-eq-top.md) | 493 | `result-track:910f17b17380b1860e73cdcf2482f6cf473fba8aed7ab33d4f28640f638eea41` |
| 82 | `theorem` | [isNormal_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/isnormal-map.md) | 499 | `result-track:d77b9544fd4e0d586cced382ed803da4183cc8efd56cf5a0dade69076918300c` |
| 83 | `abbrev` | [IsThin](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/isthin.md) | 526 | `declaration-track:6dfc930ca85b873db96057c3b5c4933e172534c500a616127e266b5e018ff7fd` |
| 84 | `theorem` | [isThin_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/isthin-iff.md) | 529 | `result-track:65379fbe99d934ad544ba46e9754058f53d7c8eb8d98a717f51c6fc695e6be46` |
| 85 | `abbrev` | [IsTotallyDisconnected](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/istotallydisconnected.md) | 536 | `declaration-track:814eac3f42b0e01b7ffe59e35c7bd16b948b6fea9e92dcaa792997bc5c0e64e4` |
| 86 | `theorem` | [isTotallyDisconnected_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/istotallydisconnected-iff.md) | 539 | `result-track:a7bc0f81dbc9978ae7d9887557efbd3f9f21e86a07f909ca32a13ecd63b29506` |
| 87 | `def` | [disconnect](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/disconnect.md) | 549 | `declaration-track:e840bed0c006bfb172cac29d55086e1909cdf24e091574e7d684ff7cbf693a46` |
| 88 | `theorem` | [disconnect_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/disconnect-le.md) | 554 | `result-track:e1f0a4a525eddfd2799a18ebc3f9cd21c289d06e05190472363b0b22faa7b564` |
| 89 | `theorem` | [disconnect_normal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/disconnect-normal.md) | 556 | `result-track:3cb8a18590c7745744b5e5135bda092c672ecea1f2361ce2cd29cbf8f8f0511e` |
| 90 | `theorem` | [mem_disconnect_objs_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/mem-disconnect-objs-iff.md) | 561 | `result-track:6c4c838141d1eea71d7ced17daf9a4887bd642d54271eccb13e494dabdb38743` |
| 91 | `theorem` | [disconnect_objs](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/disconnect-objs.md) | 564 | `result-track:149586fdc78e3f9bd7590a3e64fa62ee11612294f91043b3d62c49eed9a1d898` |
| 92 | `theorem` | [disconnect_isTotallyDisconnected](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/disconnect-istotallydisconnected.md) | 566 | `result-track:a4bb20f40be3a62d7a79d0c3ed4c73d92a9762d17499f1791db6c90292d71dee` |
| 93 | `def` | [full](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/full.md) | 576 | `declaration-track:c1f8badbd53456d43f499be93e8f52a7fe2ad32c28089cbea2fd66e1a239a27a` |
| 94 | `theorem` | [full_objs](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/full-objs.md) | 581 | `result-track:c0e5f20e62fb9cce91eb9b2411a72f589e13af5781416741d8add75097036783` |
| 95 | `theorem` | [mem_full_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/mem-full-iff.md) | 585 | `result-track:f58fd5241008194829b8df708153b7b887a06bce5380b16357b8acf6ca41bf6b` |
| 96 | `theorem` | [mem_full_objs_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/mem-full-objs-iff.md) | 589 | `result-track:e26c3b623c7e5dd4617fee065352339bff4d3533352b829a577aac32918d7626` |
| 97 | `theorem` | [full_empty](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/full-empty.md) | 592 | `result-track:310409f90fced45ac97e9916c393fe4bae01dcb3539cc30417df3aefefaf3e96` |
| 98 | `theorem` | [full_univ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/full-univ.md) | 597 | `result-track:cabf7141b272edc2763d3648134acf456a5d93ee681bcba40792c3f9eba3a45f` |
| 99 | `theorem` | [full_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/full-mono.md) | 601 | `result-track:e82d7ecd7426400bf908b34286c8968b26d6b26936f5c22d925e5321656148f9` |
| 100 | `theorem` | [full_arrow_eq_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Subgroupoid.lean/declarations/full-arrow-eq-iff.md) | 608 | `result-track:f387b6051bf9211938d2a749be11c4d07197baf36b44bba902d2626c86f97582` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23d02e3c9080d5265462fa4230af5b2b63715ddb18a20e395d805d4b33d20e3b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant1e2b20b45a7d5e4726a92b722a41d0c19d3243eb495f091c81ff819e92bb8fb7.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant1e2b20b45a7d5e4726a92b722a41d0c19d3243eb495f091c81ff819e92bb8fb7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
