# Verification target: Wide Equalizers Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7443ea00d719698d25797724dd883ca195b79d1f",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variante70ffd68ab52a856ecf275e7bd362bdc5f62210a9dfaccdffbb4c6bbc43477e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7443ea00d719698d25797724dd883ca195b79d1f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variante70ffd68ab52a856ecf275e7bd362bdc5f62210a9dfaccdffbb4c6bbc43477e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variante70ffd68ab52a856ecf275e7bd362bdc5f62210a9dfaccdffbb4c6bbc43477e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [WalkingParallelFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/walkingparallelfamily.md) | 58 | `declaration-track:cfbe2e377ad3902303f7cc86da7ba8664feb0cbd87953345faa09df6a7e8f95b` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/instance-source-edition-4.md) | 65 | `declaration-track:b78d4fb6cb8bf081f02047c519bec359dffef61620392a6b48bcc0db9f4e1c04` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/instance-source-edition-2.md) | 71 | `declaration-track:39a4a04c938b4731f6e426991ecba305e230d4b8025e59bfa44c50dc9237fc28` |
| 4 | `inductive` | [WalkingParallelFamily.Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/walkingparallelfamily-hom.md) | 75 | `declaration-track:d0aaff558589fc99dfd324cf5fdc2d50631f379b78a791720800659bca266c95` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/instance.md) | 85 | `declaration-track:02efa475967af6583ec7524c34d41d4bcf88f6d455a88f5a237c2052b61e94f1` |
| 6 | `def` | [WalkingParallelFamily.Hom.comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/walkingparallelfamily-hom-comp.md) | 90 | `declaration-track:5e3d663e3fb241f531ad024a274d98481d53e41d294fab7baed99b0bb8ee2c8c` |
| 7 | `instance` | [WalkingParallelFamily.category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/walkingparallelfamily-category.md) | 101 | `declaration-track:b31b3c41c47470d7f3c4c54f73294b039a0071651c6548092cb2db874837f1f5` |
| 8 | `theorem` | [WalkingParallelFamily.hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/walkingparallelfamily-hom-id.md) | 112 | `result-track:2f65e70d100d5d60ae8ccf39c87b5e138b5a24116034d1f84d41f932865198b5` |
| 9 | `def` | [parallelFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/parallelfamily.md) | 126 | `declaration-track:1982aaf8a31efbd5b3119c4365f656f07885327dce8b8888f28bb47bc33792d1` |
| 10 | `theorem` | [parallelFamily_obj_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/parallelfamily-obj-zero.md) | 138 | `result-track:d4b18ebb48b710fd550d4335158eade93d7e99989bc31fdea808f79c17867b7b` |
| 11 | `theorem` | [parallelFamily_obj_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/parallelfamily-obj-one.md) | 143 | `result-track:09f461939ca5e1793ea80d702e18e9a6dfadf18cabbaee54691075d3cddb6f72` |
| 12 | `theorem` | [parallelFamily_map_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/parallelfamily-map-left.md) | 148 | `result-track:7978d6a90f1b191f927c7f4ca8f042e47690f503b51a0b2b2e5252222b2e6043` |
| 13 | `def` | [diagramIsoParallelFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/diagramisoparallelfamily.md) | 157 | `declaration-track:f9c72a65df4a900db2efefebd0fb268e077924fa3dc4788ccad04ad115dd4519` |
| 14 | `def` | [walkingParallelFamilyEquivWalkingParallelPair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/walkingparallelfamilyequivwalkingparallelpair.md) | 168 | `declaration-track:6a0f5248021113989dbb03f838399d7dfd2afd9feb099b8570c25de68eb45db3` |
| 15 | `abbrev` | [Trident](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/trident.md) | 183 | `declaration-track:744cc6f3f44b1997bd6f62ef0ff60273fd7309890db01ae4968c4441791c32dd` |
| 16 | `abbrev` | [Cotrident](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/cotrident-source-edition-2.md) | 188 | `declaration-track:7a2a9e81ef65a493187c6e6559d33791521d521c7907564744f0e0d2c6c37d80` |
| 17 | `abbrev` | [Trident.ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/trident-source-edition-2.md) | 197 | `declaration-track:846137cfd26c9850626344986363878c004609db1af77801e6b63a4e473a61e6` |
| 18 | `abbrev` | [Cotrident.π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/cotrident.md) | 204 | `declaration-track:0e8b7e237208fa780f8caddb468213d92719651e19d4bbe546df87a5a7c1eea9` |
| 19 | `theorem` | [Trident.ι_eq_app_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/trident-eq-app-zero.md) | 209 | `result-track:775408b335d9310fa063c1c7131cab2f15edb60d578c319e49ef24bfc09afc6f` |
| 20 | `theorem` | [Cotrident.π_eq_app_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/cotrident-eq-app-one.md) | 214 | `result-track:f0a161a6f690f49c1fbd703fb539e3609b428c9711bd95c06dda6b97401c0e8c` |
| 21 | `theorem` | [Trident.app_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/trident-app-zero.md) | 219 | `result-track:45f1d682b153a15e51ddf68c0249787b9d16b5a4ea1a7fd95e63d4b5a2a9eb9c` |
| 22 | `theorem` | [Cotrident.app_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/cotrident-app-one.md) | 224 | `result-track:59d96369e51f4fa4a830c05e01416ad30b3873ad25d33cfff7fadaf370ca9501` |
| 23 | `def` | [Trident.ofι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/trident-of.md) | 232 | `declaration-track:654620dc2bd729f15269668c49a897dd01aab2d3e8e82d0f0a95c3d543e1bcfa` |
| 24 | `def` | [Cotrident.ofπ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/cotrident-of-source-edition-2.md) | 248 | `declaration-track:fa93dda5191cc979fca42d3d98bcd3fdd3efc7743cf1192f6fa4911ca88ec9a7` |
| 25 | `theorem` | [Trident.ι_ofι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/trident-of-source-edition-2.md) | 261 | `result-track:c16a392b44f25a291d0c4b8ddfd6cf04006bccfe30a0bd590c73fc573b13f923` |
| 26 | `theorem` | [Cotrident.π_ofπ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/cotrident-of.md) | 266 | `result-track:d71945fa349be8d9fb8da25b3a1092b4c3781031ebfd53a051c2a8f2c35f50e8` |
| 27 | `theorem` | [Trident.condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/trident-condition.md) | 272 | `result-track:e471295c3be9df9941cdd41916e4ae1a9d1117ffcc5cf9e0ac257f4f5709e65a` |
| 28 | `theorem` | [Cotrident.condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/cotrident-condition.md) | 277 | `result-track:b7a5b04d71976669cfe1ad1da347b917e4e3c0d14add5e6ce4f2b72486f576a2` |
| 29 | `theorem` | [Trident.equalizer_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/trident-equalizer-ext.md) | 283 | `result-track:b17863c38d66a89e8adb1eab1bd6a6e93e6866ee27a845179a0308c7956944b6` |
| 30 | `theorem` | [Cotrident.coequalizer_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/cotrident-coequalizer-ext.md) | 291 | `result-track:f50fde502a192c653eb952c9771ccbacb5162550d62ac7b471fe1459fe1435bd` |
| 31 | `theorem` | [Trident.IsLimit.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/trident-islimit-hom-ext.md) | 299 | `result-track:19f3700b11b07d65333561a39224ec670a4138d8e20fac7289078769efc4d1be` |
| 32 | `theorem` | [Cotrident.IsColimit.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/cotrident-iscolimit-hom-ext.md) | 304 | `result-track:88d34f7539c55bf08a74ded0cf2c94889a360ed34d93ce23b0818bc46cca8e66` |
| 33 | `def` | [Trident.IsLimit.lift'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/trident-islimit-lift.md) | 314 | `declaration-track:f220b691ae0ff95701a7272744dc87aa7be8faa1d96c191e05aa2b9fff8d740c` |
| 34 | `def` | [Cotrident.IsColimit.desc'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/cotrident-iscolimit-desc.md) | 322 | `declaration-track:dc3f64df3b48c8ea122b146cb67701381706d7b76eb761e1b4450dd3dca0dea5` |
| 35 | `def` | [Trident.IsLimit.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/trident-islimit-mk-source-edition-2.md) | 331 | `declaration-track:95edd1a287f70ae292e1fc69f57b10625fa631a97c05f052bdeb3e6452508c1a` |
| 36 | `def` | [Trident.IsLimit.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/trident-islimit-mk.md) | 347 | `declaration-track:6fce8fc8b981c53514d89eff4a058d411198c6492d5b001c960fd563296d0e5e` |
| 37 | `def` | [Cotrident.IsColimit.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/cotrident-iscolimit-mk-source-edition-2.md) | 356 | `declaration-track:90628182913d8ec5e8a204cf12c3666344bd3b8868d8ed69f5647f06510eefda` |
| 38 | `def` | [Cotrident.IsColimit.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/cotrident-iscolimit-mk.md) | 372 | `declaration-track:347486e657b731c9bed2590d9f3a95548583a4fec1d752da4918683306f07d23` |
| 39 | `def` | [Trident.IsLimit.homIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/trident-islimit-homiso.md) | 386 | `declaration-track:efc8c36378589db7d411d56abeeb105da0d4fc98b074f45f749ececb884b612c` |
| 40 | `theorem` | [Trident.IsLimit.homIso_natural](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/trident-islimit-homiso-natural.md) | 395 | `result-track:d8e589f044d7d28b3847f223601369e762a36f5233471921e4bf0f4d29a736ea` |
| 41 | `def` | [Cotrident.IsColimit.homIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/cotrident-iscolimit-homiso.md) | 410 | `declaration-track:550c45300b9cd69c2f760350aaa28799d0b521c4e0733349930e61109058e3e4` |
| 42 | `theorem` | [Cotrident.IsColimit.homIso_natural](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/cotrident-iscolimit-homiso-natural.md) | 421 | `result-track:a18d4a4880e393dfef9e979e37fac3d2a2939e5cb2517fbb668fb7d1d25d29da` |
| 43 | `def` | [Cone.ofTrident](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/cone-oftrident-source-edition-2.md) | 438 | `declaration-track:c18ea8808f7e63696f365040a7c4a82b9d0b85e2a1e0a74bb4031c93d4e63077` |
| 44 | `def` | [Cocone.ofCotrident](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/cocone-ofcotrident.md) | 454 | `declaration-track:252fe5c040b6c4a86905eeabf377b84ec336404e8815eaa70bc7fffb8d45aca1` |
| 45 | `theorem` | [Cone.ofTrident_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/cone-oftrident.md) | 463 | `result-track:a5ebeb73934e56e767d49055bdc9257ac0b1fd575a9b2b337de86603b0552760` |
| 46 | `theorem` | [Cocone.ofCotrident_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/cocone-ofcotrident-source-edition-2.md) | 469 | `result-track:7874fac3810d96cc66834b3d4695b2867b689dba42aecf5f0469d6344a1b033d` |
| 47 | `def` | [Trident.ofCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/trident-ofcone.md) | 478 | `declaration-track:09acb13a4511e5b4919f8d7896c53ca179f7484fa5b07f31a92963258dc6d031` |
| 48 | `def` | [Cotrident.ofCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/cotrident-ofcocone-source-edition-2.md) | 489 | `declaration-track:3e8398b6ffacf317a740f9333e2febcf97c639cc51f8af9b3e11a1ecc5e27f17` |
| 49 | `theorem` | [Trident.ofCone_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/trident-ofcone-source-edition-2.md) | 498 | `result-track:6434666b73f4743d973e2bd44b848ec42640b46a55fde8c831e689fd5af814af` |
| 50 | `theorem` | [Cotrident.ofCocone_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/cotrident-ofcocone.md) | 504 | `result-track:184363ccfd9eeb7ae807a2262cb08fbd26a03c5ef49c264847ed8fea82b1d200` |
| 51 | `def` | [Trident.mkHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/trident-mkhom.md) | 512 | `declaration-track:b414d74648071aade836ceeadccebc12b86714240359b5c197ededa72b017418` |
| 52 | `def` | [Trident.ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/trident-ext.md) | 526 | `declaration-track:6ac66d475e673d313dfb3284b6d004eebc91c6b850d91f9534ed45c066d06e80` |
| 53 | `def` | [Cotrident.mkHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/cotrident-mkhom.md) | 535 | `declaration-track:f1c1cabe3441a521fa1184678c754239377bd1d434ad1eabec913369142ae1fa` |
| 54 | `def` | [Cotrident.ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/cotrident-ext.md) | 548 | `declaration-track:40b20fa04c96c2c87e5f9a669cd6f6281edb4ac1529cb53111e803ca208847aa` |
| 55 | `abbrev` | [HasWideEqualizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/haswideequalizer.md) | 562 | `declaration-track:f48bf529f849033169931567ca3b1ca3a6b0800a269357bfa007cd8c126ca04a` |
| 56 | `abbrev` | [wideEqualizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/wideequalizer-source-edition-2.md) | 570 | `declaration-track:91a295c04e4169c7d8aeef7a949bd50b4e18c11cb5d4154e9e664e4403c3dd99` |
| 57 | `abbrev` | [wideEqualizer.ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/wideequalizer.md) | 576 | `declaration-track:57dafbc4f7605d077b38103bc0d4d1c2da863d98f72e3bd3be04170e62fce9a6` |
| 58 | `abbrev` | [wideEqualizer.trident](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/wideequalizer-trident.md) | 582 | `declaration-track:88246f89f30b18ca03ce69c1dff2ebe2755f8e4f17f089c52ca94f39377f92e8` |
| 59 | `theorem` | [wideEqualizer.trident_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/wideequalizer-trident-source-edition-2.md) | 587 | `result-track:e20faf0e9cfeeee068fbd0d9e3183964dc12b3b384f794c120ad53a5a6ed556b` |
| 60 | `theorem` | [wideEqualizer.trident_π_app_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/wideequalizer-trident-app-zero.md) | 592 | `result-track:c4d2789e0e58c0884b069ab94e328eddf827b2dcef534914532fd2b2ca310563` |
| 61 | `theorem` | [wideEqualizer.condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/wideequalizer-condition.md) | 600 | `result-track:40e0b614d500834a849673cb02e6cdd969188993b169d3180e9a9592d97a6b39` |
| 62 | `def` | [wideEqualizerIsWideEqualizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/wideequalizeriswideequalizer.md) | 605 | `declaration-track:182e3ad56d9753fc1e80b019fad0c824ec4fb1aee8899b5bff86c30b843cad79` |
| 63 | `abbrev` | [wideEqualizer.lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/wideequalizer-lift-source-edition-2.md) | 616 | `declaration-track:7f3f17e157ab83a1d595aaac4cb3f7b1602369a580c6f540a24f61a1035d39aa` |
| 64 | `theorem` | [wideEqualizer.lift_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/wideequalizer-lift-source-edition-3.md) | 622 | `result-track:cffd21acace0206b009eed7c4560f8f7d172966e698bc572de27c436bf7826d9` |
| 65 | `def` | [wideEqualizer.lift'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/wideequalizer-lift.md) | 630 | `declaration-track:3b0a026704a885fec046a4d826239c4715ba373013edd685bb6b53a9d7f0bcea` |
| 66 | `theorem` | [wideEqualizer.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/wideequalizer-hom-ext.md) | 638 | `result-track:69df7adcf454cd06138cc6deaa450609ef7e9bd38ae7117f770e85793990e277` |
| 67 | `instance` | [wideEqualizer.ι_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/wideequalizer-mono.md) | 644 | `declaration-track:4b5935bc84403ff5ff35e562fd5630e5c8202c148108480a7fc2655f9cd5e401` |
| 68 | `theorem` | [mono_of_isLimit_parallelFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/mono-of-islimit-parallelfamily.md) | 655 | `result-track:5a4de9be16bbe6df76bb0b8062df8762794ee6915490c44ceef11cacee7e5fb7` |
| 69 | `abbrev` | [HasWideCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/haswidecoequalizer.md) | 669 | `declaration-track:e679d20b50e9dfda26ea89ce3b09769bd694a3cf9ebc77cdc170c2aa295ecc94` |
| 70 | `abbrev` | [wideCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/widecoequalizer.md) | 677 | `declaration-track:991d2aae21567c85c48f983d8fb9b86661a6446d96cfded31b49ba4d7b70e9cb` |
| 71 | `abbrev` | [wideCoequalizer.π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/widecoequalizer-source-edition-2.md) | 683 | `declaration-track:b0a7000363f8dcd7f46d62a4a2723ef1690b2a4bdb824f2f85c8ad6ac994abd1` |
| 72 | `abbrev` | [wideCoequalizer.cotrident](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/widecoequalizer-cotrident.md) | 689 | `declaration-track:3e24060bae6514593d5161042f42df2dab05eadc966372af15dc1044cbfa1ea9` |
| 73 | `theorem` | [wideCoequalizer.cotrident_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/widecoequalizer-cotrident-source-edition-2.md) | 696 | `result-track:576a350d27aa5dc933eca6b09df091e4bf428900dae0a8882e73ce818bd30365` |
| 74 | `theorem` | [wideCoequalizer.cotrident_ι_app_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/widecoequalizer-cotrident-app-one.md) | 703 | `result-track:14f4b48ec756563cbc6092f94dbf2f533f2886f655cce76f9570ec0400c33931` |
| 75 | `theorem` | [wideCoequalizer.condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/widecoequalizer-condition.md) | 711 | `result-track:116db1d44d2fcff0ac6a9021f6694209482861385341660284ace8a0b62e3d53` |
| 76 | `def` | [wideCoequalizerIsWideCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/widecoequalizeriswidecoequalizer.md) | 719 | `declaration-track:c56540d122340930687512aba54732e3c6d560cc04e8ecd3c5218eea86f62cb4` |
| 77 | `abbrev` | [wideCoequalizer.desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/widecoequalizer-desc.md) | 730 | `declaration-track:46f2ec18cc697ee937f995d9442d3c26cee38091f3f28fb17fb8957ac128e83b` |
| 78 | `theorem` | [wideCoequalizer.π_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/widecoequalizer-desc-source-edition-3.md) | 736 | `result-track:dd8dd600430ec48ee4432c64d92215d7fef4b7eec60a3132777f9f29e0ccd0c1` |
| 79 | `def` | [wideCoequalizer.desc'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/widecoequalizer-desc-source-edition-2.md) | 744 | `declaration-track:4832658bb1c92fb719d393f4694a3f88c0634532be25550eb36f52411029fa26` |
| 80 | `theorem` | [wideCoequalizer.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/widecoequalizer-hom-ext.md) | 752 | `result-track:0b228c25cc68728cc36cacb1ffe535eb0026b4f1c7d4ed8357a3e8bae895d3a5` |
| 81 | `instance` | [wideCoequalizer.π_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/widecoequalizer-epi.md) | 758 | `declaration-track:ba7248a223f7217a84387079ba19d8fb02c8ffb9b9bec8d077b2489b1f5c133f` |
| 82 | `theorem` | [epi_of_isColimit_parallelFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/epi-of-iscolimit-parallelfamily.md) | 769 | `result-track:a49947e7457a246a8e047c108f262b84244a4a6dd344273b99483781b28d0951` |
| 83 | `abbrev` | [HasWideEqualizers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/haswideequalizers.md) | 781 | `declaration-track:b012ec25aea71cb0c9582b5f8cc4986d105245fc62c3c84114dcfbcbf303d543` |
| 84 | `abbrev` | [HasWideCoequalizers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/haswidecoequalizers.md) | 786 | `declaration-track:f4f7b1c3c5fbc96ff6f5e31abcef2ceda2f389db461b318a3c76aa2f48c238aa` |
| 85 | `theorem` | [hasWideEqualizers_of_hasLimit_parallelFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/haswideequalizers-of-haslimit-parallelfamily.md) | 791 | `result-track:170981cc556955cc33d4d45d1b6486ba189cc2c4c2eeb2c981514a632c4b4980` |
| 86 | `theorem` | [hasWideCoequalizers_of_hasColimit_parallelFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/haswidecoequalizers-of-hascolimit-parallelfamily.md) | 800 | `result-track:5355ca93250e5926b08a0b877dca8b4a673de79bbdb38b125875378f02ff8b32` |
| 87 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/instance-source-edition-3.md) | 808 | `declaration-track:49c7ff600f2eb5305daa8020aeff3fe1275efe453b687eaa293f7de58ed430a6` |
| 88 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizersAligned.lean/declarations/instance-source-edition-5.md) | 815 | `declaration-track:b9c96afc1ab6ad7202f631edf5e557fb9cbcdd0a1e10458386aaf05b0c43b91f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c82e1847e68b668b432e50ca37dfdb0e0ad4f2294923c91d8c18e74ca25c0fe6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variante70ffd68ab52a856ecf275e7bd362bdc5f62210a9dfaccdffbb4c6bbc43477e0.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variante70ffd68ab52a856ecf275e7bd362bdc5f62210a9dfaccdffbb4c6bbc43477e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
