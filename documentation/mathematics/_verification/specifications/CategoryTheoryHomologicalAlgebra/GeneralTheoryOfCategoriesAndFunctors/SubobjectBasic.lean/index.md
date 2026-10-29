# Verification target: Subobject Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "962f0539dd539c44c5459775eda007f662d78207",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta491f1dfcd271fdc26c85b2d8cfaf940d4c2fe2925f569fd01c859a0c69af382.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `962f0539dd539c44c5459775eda007f662d78207`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta491f1dfcd271fdc26c85b2d8cfaf940d4c2fe2925f569fd01c859a0c69af382.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta491f1dfcd271fdc26c85b2d8cfaf940d4c2fe2925f569fd01c859a0c69af382.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subobject.MonoOver` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Skeletal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Subobject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/subobject.md) | 98 | `declaration-track:811f43d0e6eb677103048adb2203e8b6902a76fc8b29ad20440856878f7357f5` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/instance-source-edition-4.md) | 102 | `declaration-track:aa23e505c3b0df9837efc129508b6375381b5e26f01ff62233a03748642f1c6d` |
| 3 | `def` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/mk.md) | 111 | `declaration-track:97eacb06714ff48814800c0a5eb45c78c9b831429d3e09cc1e357da1ab41cdae` |
| 4 | `theorem` | [ind](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/ind-source-edition-2.md) | 119 | `result-track:37fd2fdb8665ce4e0edde0f842282db1e147cedde6faaa613439fdfe58902e51` |
| 5 | `theorem` | [ind₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/ind.md) | 126 | `result-track:1fb2053fb158db1fb4a27cc7a7dd466ec610de9e44fa3db3cc00e456ff07dfa7` |
| 6 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/lift.md) | 139 | `declaration-track:6950ba937e824194c591159c227c83a8928f8629e9bd73c68ac591dea8c6cff0` |
| 7 | `theorem` | [lift_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/lift-mk.md) | 149 | `result-track:53b833f04b69a00c3b8826a34e1d4c8bfc735abf724e4fd29a43658c53805c19` |
| 8 | `def` | [equivMonoOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/equivmonoover.md) | 157 | `declaration-track:c5170cad89ff8c04d2186d7d21992fb49efbb08fc20c29e55bd078f29fcbe51e` |
| 9 | `def` | [representative](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/representative.md) | 163 | `declaration-track:2431498a4e4e14334facdfa0774f52dbc651d86728d47bf1572800b410ee9c67` |
| 10 | `def` | [representativeIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/representativeiso.md) | 171 | `declaration-track:3ce59ea94dfb8c8e1e86c8d9d5746d52eb3e2901ad749960b2c2a966477689f1` |
| 11 | `def` | [underlying](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/underlying.md) | 180 | `declaration-track:661f2040fdcd24affa2b7199f5b0179a91da8ed08a933e755457465dcc3fdcaf` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/instance-source-edition-2.md) | 184 | `declaration-track:68f8d1fc49335513ecff83d51ddae14bde6d1f7121c4973753de594a404c5177` |
| 13 | `def` | [underlyingIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/underlyingiso.md) | 196 | `declaration-track:376d1bdde3d3bf1f262c6fdafd761ad5bb54994b2cead0a369a620953a5ba478` |
| 14 | `def` | [arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/arrow.md) | 202 | `declaration-track:dc58e677687cbe66697988b2b42f2a25b35e5038202f5219a786be95da9514e6` |
| 15 | `instance` | [arrow_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/arrow-mono.md) | 206 | `declaration-track:4a3c2c85b3fbe8544acae25d4dfe83af27629e1a4a23f38dd745919e2da138cd` |
| 16 | `theorem` | [arrow_congr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/arrow-congr.md) | 211 | `result-track:0431815c230bf2ca7b3785c79b8e87fc032d71497b3665a31c9641e1741293fd` |
| 17 | `theorem` | [representative_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/representative-coe.md) | 218 | `result-track:6db0127f7ae520da9b0c28d6d52757b027e69f492830a94574a12257b65eb547` |
| 18 | `theorem` | [representative_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/representative-arrow.md) | 223 | `result-track:46f9e164c4719079473b8847e3135fd26e658b6fd137d6c3c153891b32c29116` |
| 19 | `theorem` | [underlying_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/underlying-arrow.md) | 228 | `result-track:6ef11e08a3daebcf09523180cfb3ea572c8aafca519ccdb476e48d555d209382` |
| 20 | `theorem` | [underlyingIso_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/underlyingiso-arrow.md) | 234 | `result-track:d5db7b6b03cd0ae23007e673992fd69848dca64c57832c87bbf5ee53ea335440` |
| 21 | `theorem` | [underlyingIso_hom_comp_eq_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/underlyingiso-hom-comp-eq-mk.md) | 240 | `result-track:bc72ec1f4ef9bd9915bc615ca28b1b0e9f8f8b9c27dc097c1fe140f92e96abda` |
| 22 | `theorem` | [eq_of_comp_arrow_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/eq-of-comp-arrow-eq.md) | 248 | `result-track:1314206ee408afbff83617eab62a56050b8b0958c6cc7574ae73c15b7bb0c67e` |
| 23 | `theorem` | [mk_le_mk_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/mk-le-mk-of-comm.md) | 253 | `result-track:1f97ab3a40c4637000b6a0266e324f7efbc1aac4b57f87f12c61c315c21c90a0` |
| 24 | `theorem` | [mk_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/mk-arrow.md) | 259 | `result-track:46488b1008174be5814d97751d183270436f83de91b113bd5149719cfcf4435b` |
| 25 | `theorem` | [le_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/le-of-comm.md) | 265 | `result-track:ff80ced8c10be9b5a06ef47e4581f37079e84e8e6ce36d7111b4557cd3aa492a` |
| 26 | `theorem` | [le_mk_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/le-mk-of-comm.md) | 270 | `result-track:fdab6e7cf0ed717eab4cc5cf31462035adf5a4d833dff6c2b7b6182f94b2d751` |
| 27 | `theorem` | [mk_le_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/mk-le-of-comm.md) | 275 | `result-track:85bfcc67d562565a7c90a4a7303645cc8ee94ccf9e820c49122f0fd88b00fe13` |
| 28 | `theorem` | [eq_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/eq-of-comm.md) | 283 | `result-track:c57986037f665837fd70e480a865b6f8328e27891f4d4afb448bcadd43b8bbc0` |
| 29 | `theorem` | [eq_mk_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/eq-mk-of-comm.md) | 291 | `result-track:5d41ec348746be0080dbc0f6eb8a8c55e2ff76406c4ac3a4c4417b317c99b774` |
| 30 | `theorem` | [mk_eq_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/mk-eq-of-comm.md) | 299 | `result-track:b6d7a6a6ec2577822851471a0b8904a791b33c6a4f90690c9219b911699a0ffa` |
| 31 | `theorem` | [mk_eq_mk_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/mk-eq-mk-of-comm.md) | 307 | `result-track:2b09269e551db761a05405169d1529aae5d5a1ed561f31cdd6ecefef3ba27285` |
| 32 | `def` | [ofLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/ofle.md) | 316 | `declaration-track:d6bc941fd7d5ca6d4cce7e7c48f7e299f5dce123eb07933626847b10092027c1` |
| 33 | `theorem` | [ofLE_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/ofle-arrow.md) | 321 | `result-track:cea4aaa6b3e27ff0496757d6c9e7c4970034876b7c62de566fc8233e40cdb04c` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/instance-source-edition-5.md) | 325 | `declaration-track:cb94eb8d73f42d1e738d3f0e95766c6064e14a4f7a7093b844b5e7f25c9b5d53` |
| 35 | `theorem` | [ofLE_mk_le_mk_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/ofle-mk-le-mk-of-comm.md) | 332 | `result-track:90cf68100fa5366d614654ebf865745fd8173c1f2babe7dc890ca2107451ba61` |
| 36 | `def` | [ofLEMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/oflemk.md) | 340 | `declaration-track:92df02f82331480c403c32f426c0e42f1fe50df9f434a2e606da486975c1ce6e` |
| 37 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/instance-source-edition-6.md) | 344 | `declaration-track:cbb352cf19d6ee944fb23af592d3d76699c54745e9eb9d0d60ff95bbb09a94a7` |
| 38 | `theorem` | [ofLEMk_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/oflemk-comp.md) | 350 | `result-track:9c73196355af042313287cfe58fa77f358726c9a855a1f5b62f1a36bc4706903` |
| 39 | `def` | [ofMkLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/ofmkle.md) | 355 | `declaration-track:f23971b4251670213c9fdbc0bcdb2e08ffce087784087a2a68f1bf13b9aeea46` |
| 40 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/instance-source-edition-7.md) | 359 | `declaration-track:ea358aac869de88fa78deaaa24ea450988f0dfc47b25f8c3a2cbb17f8e777e7e` |
| 41 | `theorem` | [ofMkLE_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/ofmkle-arrow.md) | 365 | `result-track:47872fb44680d554709675c9183e8de7189acef05fcdf36eb35b3f8bdac81cd1` |
| 42 | `def` | [ofMkLEMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/ofmklemk.md) | 370 | `declaration-track:55371338b39919eee085283884985f11739b881066289fbbd1fdd9b6e89f061c` |
| 43 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/instance-source-edition-3.md) | 375 | `declaration-track:952122252f295837ea3ddf435a09cbc87689d08e510a3e2e98aca9b02f084a2e` |
| 44 | `theorem` | [ofMkLEMk_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/ofmklemk-comp.md) | 381 | `result-track:c4e2520833367f663f5310a1ac2b2428dadb4e5a2d2f7f91fdc398288f9098d7` |
| 45 | `theorem` | [ofLE_comp_ofLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/ofle-comp-ofle.md) | 386 | `result-track:ef819ae7ccdb5d9a5d0e03ae726d32d5dcac9d2b5549986ae8fe9829f276019e` |
| 46 | `theorem` | [ofLE_comp_ofLEMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/ofle-comp-oflemk.md) | 393 | `result-track:994a53d441aba489f691a4e68a73c334f8efeefb686b090a71f82081a3f18489` |
| 47 | `theorem` | [ofLEMk_comp_ofMkLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/oflemk-comp-ofmkle.md) | 400 | `result-track:e0e9db656c6327dc6abf1cd8e9b7616a0327d25256b951e8bd1e6be54b14ec23` |
| 48 | `theorem` | [ofLEMk_comp_ofMkLEMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/oflemk-comp-ofmklemk.md) | 407 | `result-track:008d96f0fa37fd2593aa0ba96568933cc062e8208305fefe5b25aa12e2f87bcd` |
| 49 | `theorem` | [ofMkLE_comp_ofLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/ofmkle-comp-ofle.md) | 416 | `result-track:21cdd5b7a11d924ebee6f3582f968f16ff65e202fe0e7eee1fe29cd9ff19b450` |
| 50 | `theorem` | [ofMkLE_comp_ofLEMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/ofmkle-comp-oflemk.md) | 424 | `result-track:433748867bfff300403153c86c6c6ffe68b6214829b14076d438a8f6bf8db21d` |
| 51 | `theorem` | [ofMkLEMk_comp_ofMkLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/ofmklemk-comp-ofmkle.md) | 432 | `result-track:15d0eb0c98e3b13b0934caa64e5f9a2c577a4dee1f7f331fcc71b8783f3b8a3f` |
| 52 | `theorem` | [ofMkLEMk_comp_ofMkLEMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/ofmklemk-comp-ofmklemk.md) | 441 | `result-track:8dddf64052e693bb15f744f365eedea89aecc13cb78313fe1feac956ed4b5579` |
| 53 | `theorem` | [ofLE_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/ofle-refl.md) | 450 | `result-track:b9ed51d9bcdfa76a74f8c42161a5e77b60f09f26b2d1b279db5c0035fae7ef2a` |
| 54 | `theorem` | [ofMkLEMk_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/ofmklemk-refl.md) | 456 | `result-track:d5794f3406057b7171d0bc3f52b5460f5427ca5bd0795c423d4dd2457f4d4c90` |
| 55 | `def` | [isoOfEq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/isoofeq.md) | 465 | `declaration-track:8215fdf183ee10cbfed92184364fed9b4116b71c2324f50f6276e5ff0cda1ae2` |
| 56 | `def` | [isoOfEqMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/isoofeqmk.md) | 472 | `declaration-track:7e2801ed212f84a754537e85b68ffc433e3fc8bcbdbed7130c052534759b7e75` |
| 57 | `def` | [isoOfMkEq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/isoofmkeq.md) | 479 | `declaration-track:a3fa72baff343bc79900e18e7afb532036c1c3c512d9d540b8e415f3f1fc028a` |
| 58 | `def` | [isoOfMkEqMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/isoofmkeqmk.md) | 486 | `declaration-track:50ed35a5fed3f61ef11bedac34f11c39b444f8aa02c794c9ba506f5f88fb6fd6` |
| 59 | `def` | [lower](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/lower.md) | 500 | `declaration-track:b7cf7eea1cf70c33bc620709d43c01717c86607c8b77a2559e9bebccb8f2eb92` |
| 60 | `theorem` | [lower_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/lower-iso.md) | 507 | `result-track:9489334cedba5b0873db1de866a1275223fde9599dc3eeb6ebae09af3831be96` |
| 61 | `def` | [lower₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/lower-source-edition-2.md) | 512 | `declaration-track:ce43ae1202d0f9f6991e82e87b63a5b0dfe1846e8e9b3bf01ba53d4f7e6a0299` |
| 62 | `theorem` | [lower_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/lower-comm.md) | 517 | `result-track:39eb168a7506ede884db7c6443db715a9fff6d803920a26d2685ea3c26d1d105` |
| 63 | `def` | [lowerAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/loweradjunction.md) | 524 | `declaration-track:94b0955bf4217a3509445a3669a34d9233fc7e6ea981ed7848f4c96bbbf893a9` |
| 64 | `def` | [lowerEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/lowerequivalence.md) | 532 | `declaration-track:1fdc91d6fd123b513e31d4994b8680bfa533421d6224b6cf7cc357c35f56ca2b` |
| 65 | `def` | [pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/pullback.md) | 553 | `declaration-track:072d6348172f327b265d5dc84310c4a77bbd0a0b37cb52e12270897bc6d799de` |
| 66 | `theorem` | [pullback_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/pullback-id.md) | 557 | `result-track:91da030a6dfdb5562fd5ba9d68f7f48e949b60b03f117706745d2ec31b2fa717` |
| 67 | `theorem` | [pullback_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/pullback-comp.md) | 562 | `result-track:4414450625dbc47a8fcefbd8b985451ee0a1e99b679a79761c409b98f13b4920` |
| 68 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/instance.md) | 568 | `declaration-track:3fd970c89f0b2066d23679b86e0e47299687f4ab4771f444f72134e3eaa3fa23` |
| 69 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/map.md) | 577 | `declaration-track:9ace5b74b1385654d954b60548d5d135319a51cfa5a90fbc3965b4d1f10b5992` |
| 70 | `theorem` | [map_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/map-id.md) | 581 | `result-track:bb35ddae6746028829e5dbf0f251000c55598ec35fc4bde0c5b72cf8bf182ed6` |
| 71 | `theorem` | [map_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/map-comp.md) | 586 | `result-track:6e7a58d6bdba3996576778b3e2c0ed7635d459bd61691448c4beeb9891af90e4` |
| 72 | `def` | [mapIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/mapiso.md) | 593 | `declaration-track:4b44d6e7e270c1898803fe083cfc8e88283492055a200a8d59805a36ad6699fe` |
| 73 | `def` | [mapIsoToOrderIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/mapisotoorderiso.md) | 602 | `declaration-track:b01bca1998e95fcfdc7c3ff6c716a02c7a8ceaf423facd7479c12bde0ffbb01b` |
| 74 | `theorem` | [mapIsoToOrderIso_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/mapisotoorderiso-apply.md) | 621 | `result-track:b71d78fa406d2557989d87f60f21e3b042a9eba06743045f6772e258592b477b` |
| 75 | `theorem` | [mapIsoToOrderIso_symm_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/mapisotoorderiso-symm-apply.md) | 627 | `result-track:32eab86219cbbda8b06769e050cf45b7bee8a168472eda827dffe079707c6da6` |
| 76 | `def` | [mapPullbackAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/mappullbackadj.md) | 634 | `declaration-track:1825491ebab9f62292b9f5538e3f7a0a53501019d8e3cce9a224dbe13198b0b1` |
| 77 | `theorem` | [pullback_map_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/pullback-map-self.md) | 639 | `result-track:76c6a96b511ef715febff9dcfc3374fa284aa48f08a0a7c133e13d3b8fb97534` |
| 78 | `theorem` | [map_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/map-pullback.md) | 645 | `result-track:057010e3c59713aedc1878a878aa4fe57349d6daaf71514f7f59738d3064aeec` |
| 79 | `def` | [«exists»](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/exists.md) | 680 | `declaration-track:f4981b3dc6d5447a07ebc30a8ab7d5a1488f79b7b7398709d913cc7e3fc5fe98` |
| 80 | `theorem` | [exists_iso_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/exists-iso-map.md) | 686 | `result-track:c8e1a3a41bf0be79c712920c42f5dc70a4cb1539ce46a008c7703fcf9336ab46` |
| 81 | `def` | [existsPullbackAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasic.lean/declarations/existspullbackadj.md) | 693 | `declaration-track:b27a728576cc7652a5b811027f09657cff216df97f6bb82dfc3e847c1125db2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9bf1fbb9b51406774978d9882dd25bc560ad383cbfc10da4ccd3e5fde477c40f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta491f1dfcd271fdc26c85b2d8cfaf940d4c2fe2925f569fd01c859a0c69af382.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta491f1dfcd271fdc26c85b2d8cfaf940d4c2fe2925f569fd01c859a0c69af382.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
