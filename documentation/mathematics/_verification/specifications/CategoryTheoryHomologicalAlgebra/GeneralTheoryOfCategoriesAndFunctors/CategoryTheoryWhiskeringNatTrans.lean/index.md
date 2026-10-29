# Verification target: Category Theory Whiskering Nat Trans

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a731bece3d78d9b13d0d02d1d6d6e83f4307f11",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant51393e8e591a4c50b3555fc4f8f44207815ae29c832526b712a7ed3f23689e2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a731bece3d78d9b13d0d02d1d6d6e83f4307f11`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant51393e8e591a4c50b3555fc4f8f44207815ae29c832526b712a7ed3f23689e2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant51393e8e591a4c50b3555fc4f8f44207815ae29c832526b712a7ed3f23689e2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Iso` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Category` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [whiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskerleft.md) | 42 | `declaration-track:84ed1e3f0e66b414476596907b16946cb3d832539790e923e10ac5809395f7e5` |
| 2 | `lemma` | [NatTrans.id_hcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/nattrans-id-hcomp.md) | 48 | `result-track:192489629d36436e8911ad107f1413d29167ae57d515c68a2b2b50e2056dea3a` |
| 3 | `def` | [whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskerright.md) | 56 | `declaration-track:3894082b814d6f45384b32d8a62017340c75f71cc31cb95edf6bd6f05fc6175e` |
| 4 | `lemma` | [NatTrans.hcomp_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/nattrans-hcomp-id.md) | 63 | `result-track:5d096ac227a94d7e0bc99d41bad1470818a49a04890e7edfaa3c62cc8f7d0bf7` |
| 5 | `def` | [whiskeringLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskeringleft.md) | 75 | `declaration-track:20e77e4131e0cfff510aa018bb81365969f11f0b324517fb6be802aeb7d8bc90` |
| 6 | `def` | [whiskeringRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskeringright.md) | 91 | `declaration-track:e0fa639ae48b9d94d7eb3f8673028254b46f3584d04b537188cc28739b04e41d` |
| 7 | `instance` | [faithful_whiskeringRight_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/faithful-whiskeringright-obj.md) | 103 | `declaration-track:d70d0884163b2398c4dc1a5ad349abc92aac9c17e85342a479a7e1980690decb` |
| 8 | `def` | [Functor.FullyFaithful.whiskeringRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/functor-fullyfaithful-whiskeringright.md) | 112 | `declaration-track:717d34d539ad987c5dd16447c9e0e81cc4f034c4240f41f4f1ecb5ced8bc8508` |
| 9 | `theorem` | [whiskeringLeft_obj_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskeringleft-obj-id.md) | 123 | `result-track:730b1db0f0bde6ed4ecae3191c7508edda9099660395188a918d00015b01827b` |
| 10 | `def` | [whiskeringLeftObjIdIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskeringleftobjidiso.md) | 128 | `declaration-track:e41997db9141e6485b0818d53a239ba9cf91392031b531e4f89aa5a29d067bcf` |
| 11 | `theorem` | [whiskeringLeft_obj_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskeringleft-obj-comp.md) | 131 | `result-track:3f149e5ff3aaf01e5a400336c39b2ceca44f6a899c2b39f37c64eca9ea3bd764` |
| 12 | `def` | [whiskeringLeftObjCompIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskeringleftobjcompiso.md) | 138 | `declaration-track:b22a56987f648e87ed786cc33f5bed85faa14491be591ca699e9ee12a40b2490` |
| 13 | `theorem` | [whiskeringRight_obj_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskeringright-obj-id.md) | 143 | `result-track:c3b7e197073d3ffef496869698efa4c61c350c22a0e5c5f95c018636d3cbce05` |
| 14 | `def` | [whiskeringRightObjIdIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskeringrightobjidiso.md) | 148 | `declaration-track:19ec92976302360c22b4a474c5e04c5ebc3a4835a3b6437d8e961517b06e163c` |
| 15 | `theorem` | [whiskeringRight_obj_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskeringright-obj-comp.md) | 153 | `result-track:d5964f7b0598fb4f89ca710827e9810a09e2ff500e2bce466ae52909bc52f886` |
| 16 | `def` | [whiskeringRightObjCompIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskeringrightobjcompiso.md) | 160 | `declaration-track:ec98da5331690f88e359282eb85b47e3d9f9610dfd9a93590c0bd7c623eed889` |
| 17 | `instance` | [full_whiskeringRight_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/full-whiskeringright-obj.md) | 165 | `declaration-track:13b4a8aa0258306937e0b08a749210924444bc08afb4b0395713b57bcd90ef20` |
| 18 | `theorem` | [whiskerLeft_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskerleft-id.md) | 170 | `result-track:aadc2645ace6a3a868648c564f3e8c470b113ed16c20a9a0ae05faf62d30e1d2` |
| 19 | `theorem` | [whiskerLeft_id'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskerleft-id-source-edition-2.md) | 175 | `result-track:ac9191a3e09b6ac1562e2901861b6f7f9fb863143ad99e31d7a034c4f177aad1` |
| 20 | `theorem` | [whiskerRight_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskerright-id.md) | 179 | `result-track:a9c0720c56c9d0a51ff54720009e07679d50f83a016dd2e21350ad4da50c08f3` |
| 21 | `theorem` | [whiskerRight_id'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskerright-id-source-edition-2.md) | 184 | `result-track:cf1471ff5064e3eceefe455138418062244659ff3ea09c88b944fb8755911ba0` |
| 22 | `theorem` | [whiskerLeft_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskerleft-comp.md) | 188 | `result-track:eb0dfb5ca360a2f606269a3976a681a6ae6be5cc23863689be431267129b450a` |
| 23 | `theorem` | [whiskerRight_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskerright-comp.md) | 193 | `result-track:41c37b8b44ca4587c73ffebe42f1c5c45d8e2c84aec2773aca1d56258ffd5685` |
| 24 | `theorem` | [whiskerLeft_comp_whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskerleft-comp-whiskerright.md) | 198 | `result-track:732ef404226bc930fad75b81f93df32a09df5f3df28554f2423b204714006194` |
| 25 | `lemma` | [NatTrans.hcomp_eq_whiskerLeft_comp_whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/nattrans-hcomp-eq-whiskerleft-comp-whiskerright.md) | 203 | `result-track:060d3d0e343dee9ac0b235db911dfd2765eaaaee98458e06c20409c4fe8eecd6` |
| 26 | `def` | [isoWhiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/isowhiskerleft.md) | 211 | `declaration-track:5a80b417778f06c3bca47835b0e34e4797f503afef141343bfcde61e83b79540` |
| 27 | `theorem` | [isoWhiskerLeft_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/isowhiskerleft-hom.md) | 215 | `result-track:1bc1c17276ebd0773623f047777125c8f44454992f6a7894e543134c58c0cbc1` |
| 28 | `theorem` | [isoWhiskerLeft_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/isowhiskerleft-inv.md) | 220 | `result-track:86664b6e67e209262c0ea8a033103f67701c7653bd48f1f1824778a985086833` |
| 29 | `lemma` | [isoWhiskerLeft_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/isowhiskerleft-symm.md) | 224 | `result-track:61f5560c56a3b1fbe821117a866d0f804bf4d5b0192f78be43a5e6128f8f5c18` |
| 30 | `lemma` | [isoWhiskerLeft_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/isowhiskerleft-refl.md) | 229 | `result-track:9bb6ffc89bd1c30e48e634b9e9b22fe024abf474251648f5d004b1612220043d` |
| 31 | `def` | [isoWhiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/isowhiskerright.md) | 236 | `declaration-track:1ae257de5bbbe5c64c43b82a912eacfb30b4f3abe93af5c227db9ad3c18d9caf` |
| 32 | `theorem` | [isoWhiskerRight_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/isowhiskerright-hom.md) | 240 | `result-track:6ba3af0d59a2e814b2ac2f3a3d992e2e782cb053360dc9d7df14f19462ffb2be` |
| 33 | `theorem` | [isoWhiskerRight_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/isowhiskerright-inv.md) | 245 | `result-track:e1e0d090287786e9f3789620908d48bad75079dd49706fe6549089d54ecdd8c1` |
| 34 | `lemma` | [isoWhiskerRight_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/isowhiskerright-symm.md) | 249 | `result-track:746d70fcb759659c0f42f4643c9d1dd5e04a012130db6885a12c4d7b7cf481e6` |
| 35 | `lemma` | [isoWhiskerRight_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/isowhiskerright-refl.md) | 254 | `result-track:22b91e8589b28fefea70bb74e0f70614cc4f3bcdeb3743df4f355ed18fb8e023` |
| 36 | `instance` | [isIso_whiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/isiso-whiskerleft.md) | 258 | `declaration-track:9a7191de966fb231abac621c0315a51f50516d0e9026c001108877c860216d41` |
| 37 | `instance` | [isIso_whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/isiso-whiskerright.md) | 262 | `declaration-track:6a86f9750a3082dfafe7ee492304be025894cb1f99c53db3e3da4915600bcb33` |
| 38 | `theorem` | [isoWhiskerLeft_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/isowhiskerleft-trans.md) | 267 | `result-track:357525f8d2c101984772a2d56aa341085e2a31202538571c7457f9526deddc7e` |
| 39 | `theorem` | [isoWhiskerRight_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/isowhiskerright-trans.md) | 272 | `result-track:029e0f2206d8171eff24f917373a978cc0fb9881c7d70ca691a321356dbd8fa1` |
| 40 | `theorem` | [isoWhiskerLeft_trans_isoWhiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/isowhiskerleft-trans-isowhiskerright.md) | 276 | `result-track:46500244ff4aafa2d6c032ede65d9ffa8b7fc808567947bfcb9a0a7c0fbbe552` |
| 41 | `theorem` | [whiskerLeft_twice](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskerleft-twice.md) | 284 | `result-track:2f2cde308b469f3c687cacd68c369002926ea667a8b70502dfd11a09b6b75958` |
| 42 | `theorem` | [whiskerRight_twice](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskerright-twice.md) | 290 | `result-track:af6a0f83f38fd70b19c74921ccbb9efde4da6e35e155d6fd2f0985540b411f67` |
| 43 | `theorem` | [whiskerRight_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskerright-left.md) | 295 | `result-track:28b67299b4efb90ed4bf06781e1f48832c4c510c985c938c769bbecdfba65efa` |
| 44 | `theorem` | [isoWhiskerLeft_twice](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/isowhiskerleft-twice.md) | 302 | `result-track:c7c8fef9bc824f136f1f0b648f10ef71385f18ccd979e1bebc247f44e8d08736` |
| 45 | `theorem` | [isoWhiskerRight_twice](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/isowhiskerright-twice.md) | 308 | `result-track:a792dd3e1120f3dba67ed0c86d374e38de6500f8d1b3b6e7e39d860813d8024f` |
| 46 | `theorem` | [isoWhiskerRight_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/isowhiskerright-left.md) | 313 | `result-track:a286ff6e0f8acae5ffe1c427a2b58d431ff5661d697685b34ef84ae63595fd6f` |
| 47 | `theorem` | [isoWhiskerLeft_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/isowhiskerleft-right.md) | 319 | `result-track:892d0b1c12925a9b483ec1a6a79fe3943896f501e8c44badbed8feeea72f17f8` |
| 48 | `theorem` | [triangleIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/triangleiso.md) | 335 | `result-track:f50d64fe0da56f04282d8ff786d2d2fbcd5c372594ace834178ac34ac07aac0d` |
| 49 | `theorem` | [pentagonIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/pentagoniso.md) | 339 | `result-track:cc7fceb31fd4d305afeebd59624268c9cbecd24bea81efd6e61d247b29cd69bb` |
| 50 | `theorem` | [triangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/triangle.md) | 344 | `result-track:7bd6e7efc3e0ee6ca6d52f22e675184037db54d4e4b43b029cd57b5e7bc56756` |
| 51 | `theorem` | [pentagon](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/pentagon.md) | 348 | `result-track:99b08f3744f1d9f823ad9d021dca5e69fe9b8a873241911dfb49193d6a2c27e5` |
| 52 | `def` | [whiskeringLeft₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskeringleft-source-edition-3.md) | 360 | `declaration-track:f6f1130440afddc0367c5bb769c5eadcc040c68c87f927f803ab4759bd41de20` |
| 53 | `def` | [whiskeringLeft₃ObjObjObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskeringleft-objobjobj.md) | 373 | `declaration-track:12a21c2155f66e01e7783cd94ae1369ffd0414f21abe43810abf3a440799fa02` |
| 54 | `def` | [whiskeringLeft₃ObjObjMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskeringleft-objobjmap.md) | 380 | `declaration-track:a4140c37e8a0b0544835cf4ac2f84943c7e4bd14754e3a023f290dd52fb72730` |
| 55 | `def` | [whiskeringLeft₃ObjObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskeringleft-objobj.md) | 388 | `declaration-track:42c046250b898d15cfa299b8913a859380bac5c67fd8524a12ba51c33f55c7b6` |
| 56 | `def` | [whiskeringLeft₃ObjMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskeringleft-objmap.md) | 396 | `declaration-track:05eef266a9e80d83a0936ffc81d9b5bd2903ef1ae01335068e2b834049fa376b` |
| 57 | `def` | [whiskeringLeft₃Obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskeringleft-obj.md) | 403 | `declaration-track:ae00b0b224659e85fb20fa3cdf74e604eee0bc689b01204755342966cfec4f7a` |
| 58 | `def` | [whiskeringLeft₃Map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskeringleft-map.md) | 411 | `declaration-track:19175eb3eb71330d297e31d3df72888334b78df2fe7b3b31e9bb81553f61c4ec` |
| 59 | `def` | [whiskeringLeft₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/whiskeringleft-source-edition-2.md) | 418 | `declaration-track:91e671876f325fca5346a73a93114a0f04ac08e9c7e4435fd854d447b9d9e322` |
| 60 | `def` | [Functor.postcompose₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/functor-postcompose.md) | 428 | `declaration-track:3b757b444acc3a32f091e38d0c9f28c166049782f58b0381d20e7ab92d8f8123` |
| 61 | `def` | [Functor.postcompose₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNatTrans.lean/declarations/functor-postcompose-source-edition-2.md) | 435 | `declaration-track:8e3bcde83ca3b9117a3a9224e4fb379d0d6d7de958589da0fd4f4968d5db6e8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1da8cb31fd2e8668d500520f9f85a8ad91f08a9888a414fc4bc72856b04522d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant51393e8e591a4c50b3555fc4f8f44207815ae29c832526b712a7ed3f23689e2c.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant51393e8e591a4c50b3555fc4f8f44207815ae29c832526b712a7ed3f23689e2c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
