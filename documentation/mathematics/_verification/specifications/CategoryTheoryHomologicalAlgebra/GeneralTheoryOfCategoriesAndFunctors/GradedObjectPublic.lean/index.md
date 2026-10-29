# Verification target: Graded Object Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e683eed1e19d5c3e122c6befca999a4141f0051",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant6c2306dbc013a65c032fa18d9ad4194aaf56903faa3304bed7a8f35b919e6fb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e683eed1e19d5c3e122c6befca999a4141f0051`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant6c2306dbc013a65c032fa18d9ad4194aaf56903faa3304bed7a8f35b919e6fb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant6c2306dbc013a65c032fa18d9ad4194aaf56903faa3304bed7a8f35b919e6fb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GradedObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/gradedobject.md) | 44 | `declaration-track:fc6360f1896e4c56bae40312e63ea98059afd00e7c1bd539df15926e372dfcb6` |
| 2 | `instance` | [inhabitedGradedObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/inhabitedgradedobject.md) | 48 | `declaration-track:2e4d298d9b58953e36d214569a8aa940e91547b7597d697e22515e9509cbbe5a` |
| 3 | `abbrev` | [GradedObjectWithShift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/gradedobjectwithshift.md) | 57 | `declaration-track:40a5f46c4ef5093edb3e336be5e642227fd966663b52eba89cd158ae5491d6ed` |
| 4 | `instance` | [categoryOfGradedObjects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/categoryofgradedobjects.md) | 65 | `declaration-track:4d4f1ff0a521700af4d99b0892da7c930196d055bfd3052a4ad0e87fc93b7807` |
| 5 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/hom-ext.md) | 69 | `result-track:f4724afe721d1ba531bbe18a93ed40057e3d4011c0828a0ddae68656a61bdfa0` |
| 6 | `def` | [eval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/eval.md) | 75 | `declaration-track:9dd47b7933729435b3d7899a7f8af723c9c292cc0cc6fd9a40f79709e3330660` |
| 7 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/isomk.md) | 85 | `declaration-track:4a35dec55615830709969372440177e85ba84bdd189dc33af39aa42ace7e6b34` |
| 8 | `lemma` | [isIso_of_isIso_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/isiso-of-isiso-apply.md) | 93 | `result-track:da894df42b68d3bdad367890a57f2efee2e2a11a1d1948ac7c996716a8759e89` |
| 9 | `instance` | [isIso_apply_of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/isiso-apply-of-isiso.md) | 98 | `declaration-track:7531b251c41462ceafe3c673eccea8c8457b8965ac888feba6064a9f777f2d4e` |
| 10 | `lemma` | [hom_inv_id_eval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/hom-inv-id-eval.md) | 112 | `result-track:15bd6f486d467193ce513a0cec4e4e52d8ca5e0ee4ada802fe06f4b002cc8d61` |
| 11 | `lemma` | [inv_hom_id_eval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/inv-hom-id-eval.md) | 118 | `result-track:96b52ff74fa40775f051b91747a7da3d6661e7f2d78868aa3978667eb8028f28` |
| 12 | `lemma` | [map_hom_inv_id_eval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/map-hom-inv-id-eval.md) | 124 | `result-track:852045c77ef9fee4e6d5c7aff8ad99d1772bd47d54c2d55b7b01b6da06723d3e` |
| 13 | `lemma` | [map_inv_hom_id_eval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/map-inv-hom-id-eval.md) | 130 | `result-track:6c1286d9c8fd3aa306c38accd933400a1040644dbc69d218a36a3928476bf5ee` |
| 14 | `lemma` | [map_hom_inv_id_eval_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/map-hom-inv-id-eval-app.md) | 136 | `result-track:6dcfa69ff359ddce44b95428b78c84c88c9104ed39d9290dfc21cc2505400e73` |
| 15 | `lemma` | [map_inv_hom_id_eval_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/map-inv-hom-id-eval-app.md) | 142 | `result-track:d92982bc030e0dd05268922edaf3716519b7d2bb0c492944b8965b5347077ae2` |
| 16 | `abbrev` | [comap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/comap.md) | 158 | `declaration-track:08e02fed5b31192af16447564d7266105bc82ce7d5cc881cad229bab3166e7a2` |
| 17 | `theorem` | [eqToHom_proj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/eqtohom-proj.md) | 162 | `result-track:6498f09be19e121c53de4282941121ba6fb41adbf8a9509f394f6ebac87fbcab` |
| 18 | `def` | [comapEq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/comapeq.md) | 171 | `declaration-track:9b395c6279c44e0ecf8a8aa760cce8331dc6257d54630ebcf360264bc0d68343` |
| 19 | `theorem` | [comapEq_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/comapeq-symm.md) | 175 | `result-track:3fd09e6e90dfd6f0fd49ee32a0457a814b878315988ed028b46399f8baa515f4` |
| 20 | `theorem` | [comapEq_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/comapeq-trans.md) | 178 | `result-track:b3de7cef6a65dae41346781541756a0647eed99288fc58d8f4221b2397e2c37c` |
| 21 | `theorem` | [eqToHom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/eqtohom-apply.md) | 181 | `result-track:509c72e34deded58b69811e0f490c08eb3841139d5978c1fd5932b9947494595` |
| 22 | `def` | [comapEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/comapequiv.md) | 190 | `declaration-track:1cf5717b3f280377ddfb6adb6a4d72f26146e75ef55facb8dfb852d1bbab1e3f` |
| 23 | `instance` | [hasShift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/hasshift.md) | 201 | `declaration-track:053a6315e07eb82586b3fb09e20289512772f14ade56f18800dabbe19b1bbf42` |
| 24 | `theorem` | [shiftFunctor_obj_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/shiftfunctor-obj-apply.md) | 209 | `result-track:ef97eba19317644106827c94f42c609bbed07974b306114924c8d8f7b65f6919` |
| 25 | `theorem` | [shiftFunctor_map_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/shiftfunctor-map-apply.md) | 214 | `result-track:90765082802ce2cadfae0c0a5bd132a586d201238f667f1332f3aef384f38d32` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/instance.md) | 219 | `declaration-track:57e7064817b157c8e97194cc7f7e0b75f85ada05601ffa49aebd1592fee291e8` |
| 27 | `theorem` | [zero_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/zero-apply.md) | 223 | `result-track:05c5f1c9984a68dd4e3670604eb49569452492358a025d76791b5e6d0b4b41a6` |
| 28 | `instance` | [hasZeroMorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/haszeromorphisms.md) | 227 | `declaration-track:aacbf3d5a6dbadb3d6b0002c14cc5d07cb4c28c9fd7adaa538a73ab1a7571d13` |
| 29 | `instance` | [hasZeroObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/haszeroobject.md) | 234 | `declaration-track:999f4c7116cf228d5269c13f732087837fd1630c9dff417730b5fc267f5a89c7` |
| 30 | `def` | [total](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/total.md) | 256 | `declaration-track:5a31d2226e02b6da2ce55d30719b09e925b7de30f02390d3ca31323a297469af` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/instance-source-edition-2.md) | 269 | `declaration-track:f8432520661881ddfcbbc504a09422ca7d104b4ed9c17a5260db528ffcad3026` |
| 32 | `abbrev` | [mapObjFun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/mapobjfun.md) | 287 | `declaration-track:d98c97c5b39f24bd736e3176bf69fa62e39071a496398185672d412318b88e29` |
| 33 | `abbrev` | [HasMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/hasmap-source-edition-2.md) | 293 | `declaration-track:63b11c4f8b772674f60c06ed0711323eba1dd9383cc274c9d5cc30020504d5d7` |
| 34 | `lemma` | [hasMap_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/hasmap-of-iso.md) | 296 | `result-track:f5665a125f55b46e94a63e04fbf0fe567c3d3ac7311fe4d047ee4c7c34631d07` |
| 35 | `def` | [mapObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/mapobj-source-edition-2.md) | 306 | `declaration-track:fbdb2c4e8d61cdde42cbe57f78b480bc79ab309c6f9358032bbfcaa90e9aba59` |
| 36 | `def` | [ιMapObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/mapobj.md) | 310 | `declaration-track:46c02ed5b56427509dd262bd6d11b688632fced09f599b2090dfc6fb6c476f47` |
| 37 | `abbrev` | [CofanMapObjFun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/cofanmapobjfun.md) | 316 | `declaration-track:0be03ca9786eca1f3523e974862166b3ba9bbd4949f8afe1e59b772e6aa9366d` |
| 38 | `def` | [CofanMapObjFun.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/cofanmapobjfun-mk.md) | 322 | `declaration-track:b088eaf0067f9e10dfaf46bcefa06474175fc19abf8b8e1cd376afd20b138910` |
| 39 | `def` | [cofanMapObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/cofanmapobj.md) | 328 | `declaration-track:60dff0db83630793a93b75fdf9e056b8fd42d99f2c5d8b6f72594b48c3e6cabd` |
| 40 | `def` | [isColimitCofanMapObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/iscolimitcofanmapobj.md) | 333 | `declaration-track:dadfeb6764fbee59442a49dcd2342d3908bf5e9837dd7e933215f83e6354cde1` |
| 41 | `lemma` | [mapObj_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/mapobj-ext.md) | 337 | `result-track:d1ac4a997dfbedeb344487e06955b7b16a6a310eeca639be39bc4a41b6549c19` |
| 42 | `def` | [descMapObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/descmapobj.md) | 344 | `declaration-track:1a375b62620695d24c238b127b3c2d455ba46f974f33081238c49e60895436df` |
| 43 | `lemma` | [ι_descMapObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/descmapobj-source-edition-2.md) | 349 | `result-track:d7537de3b00d0327224492d003e70455423e09ef27f4d6bbbe0eb55ad411a9ca` |
| 44 | `lemma` | [hasMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/hasmap.md) | 357 | `result-track:0345db9cc51b9d42e75a72d70100e879f8da1e700dbbd60f03a0de2b4b0bc750` |
| 45 | `def` | [iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/iso.md) | 366 | `declaration-track:56ed5313fc0b29a99b25752ffc25238cd003847a38804496e14249b1a2f89054` |
| 46 | `lemma` | [inj_iso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/inj-iso-hom.md) | 370 | `result-track:9d43909f5f1d1f0cf2cd00f155e7aea43547b3dc8a1202eefbb028717adc7978` |
| 47 | `lemma` | [ιMapObj_iso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/mapobj-iso-inv.md) | 375 | `result-track:0217baa85616330ec5cb68c01cf11f065dfa98d3292af848dc16aa13807808a9` |
| 48 | `def` | [mapMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/mapmap.md) | 386 | `declaration-track:20249e51a8003f730ab388684f35edef88362d3efef1d158ce10a97f3c567ad9` |
| 49 | `lemma` | [ι_mapMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/mapmap-source-edition-2.md) | 390 | `result-track:e0e9636d2af1192f6f5729728698af13e1edaeefcb4ba8f6bfac5d2abc1877b0` |
| 50 | `lemma` | [congr_mapMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/congr-mapmap.md) | 394 | `result-track:df5c38de9cc15d10fd56eb0ea071276a5af8785bfbccc407c0e64d59e5058705` |
| 51 | `lemma` | [mapMap_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/mapmap-id.md) | 401 | `result-track:955f704f7e2fc1990742d681c8dbe8c14b4a2d61cbb974e24ee6a455c9b9934a` |
| 52 | `lemma` | [mapMap_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/mapmap-comp.md) | 406 | `result-track:89235b4e91948f9b8f1d2018dd8ba2ffbb8db7f532087a5a67398664caaf4c23` |
| 53 | `def` | [mapIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/mapiso.md) | 411 | `declaration-track:65fcd33aaf1b4a5dc24225aa567c03bf39c5bcd1af21c3145581d09a439b84db` |
| 54 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/map.md) | 421 | `declaration-track:d6fb550143e4858a6628aa5837de9589ca90cbdeb16c5eb135bdfceeda8474f7` |
| 55 | `def` | [cofanMapObjComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/cofanmapobjcomp.md) | 441 | `declaration-track:8df980437b5aa78d9c66e270c732d67b1e311d78d95443ea77bfecb869ee6663` |
| 56 | `def` | [isColimitCofanMapObjComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/iscolimitcofanmapobjcomp.md) | 455 | `declaration-track:6917030bbd42099653d8a0f5127cf5eab7cbad03c21295b5f43b4d0957843813` |
| 57 | `lemma` | [hasMap_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/hasmap-comp.md) | 474 | `result-track:076883ef781e192daf801200642bb513d4dee4517a8d0df632b7db42c4e487f6` |
| 58 | `def` | [ιMapObjOrZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/mapobjorzero.md) | 483 | `declaration-track:ba11f02d85285c22810f3a8962a1e95844da1ac1105f08198cab330a9476634b` |
| 59 | `lemma` | [ιMapObjOrZero_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/mapobjorzero-eq.md) | 488 | `result-track:a2800b4b91037255443ce9c081c12a7b759da03ca358fb3625c3d99dafdf508d` |
| 60 | `lemma` | [ιMapObjOrZero_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/mapobjorzero-eq-zero.md) | 490 | `result-track:cf4cda54dad0825a0c214cfca6b6f60d70af585b95a423faaa3b43625e0dd621` |
| 61 | `lemma` | [ιMapObjOrZero_mapMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectPublic.lean/declarations/mapobjorzero-mapmap.md) | 494 | `result-track:feb4f81b961e04cd70f3d0b6a4f438b3205234fece34ea55d04e110a11cdf356` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=942756acaf8816514752ec9e36d14e886a92857015e8af356d57ece58fa1c8bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant6c2306dbc013a65c032fa18d9ad4194aaf56903faa3304bed7a8f35b919e6fb6.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant6c2306dbc013a65c032fa18d9ad4194aaf56903faa3304bed7a8f35b919e6fb6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
