# Verification target: Presheaf Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc12908818976b12d8864c397ae5520b6efd7b0b",
  "lexical_observation_count": 82,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7fd874c9c8cce9fc65f10885d1ba6a93ab0a94849912445305678a63d6fbb23b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc12908818976b12d8864c397ae5520b6efd7b0b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7fd874c9c8cce9fc65f10885d1ba6a93ab0a94849912445305678a63d6fbb23b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7fd874c9c8cce9fc65f10885d1ba6a93ab0a94849912445305678a63d6fbb23b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.HomCongr` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Over.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MakesOverArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/makesoverarrow.md) | 84 | `declaration-track:4c58c2a376eb3f01f785278d4d312c8d928ce2fb3dc61a97b6d1cd9bf284baeb` |
| 2 | `lemma` | [map₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/map-source-edition-5.md) | 91 | `result-track:a718e8a616d975a27d08a2a9eb4c731ed89b6770eeea98508779765c9ddf67cf` |
| 3 | `lemma` | [map₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/map-source-edition-4.md) | 97 | `result-track:7006e94550a45dfae571b87630ae7ebb744db2587c667876708c7c674650900f` |
| 4 | `lemma` | [of_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/of-arrow.md) | 102 | `result-track:7fda0c52bacc4f68f639f16188970f5d973208375fa1a980c7cb161910bc0763` |
| 5 | `lemma` | [of_yoneda_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/of-yoneda-arrow.md) | 106 | `result-track:e2741514117299f0c9bdc184c20193f4dc92956b787f79c9a361332637c8e6d1` |
| 6 | `def` | [OverArrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/overarrows.md) | 115 | `declaration-track:10a53e6f563e27883ab50b3bbd9804ebfb20b7c71f0a16c5ab3e866aeacf4169` |
| 7 | `def` | [val](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/val.md) | 122 | `declaration-track:34e26d6e45505da77d87f80909a93722bfddff7dee2f7bac68f92f91cf4a7abd` |
| 8 | `lemma` | [val_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/val-mk.md) | 127 | `result-track:f152989845053be2dcca58cf1c6524ba3361b8391da1fef446e1dde2e51e9297` |
| 9 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/ext.md) | 132 | `result-track:3e8f86fa4da3fe7e67a6146876dacd85dd5a4a8176116f892c4df5c05c0cbe3e` |
| 10 | `lemma` | [app_val](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/app-val.md) | 137 | `result-track:ba0fad3da1b63efcf83d29c4e3a1f4a47e90e4ed31a70fd5de91438ed977ab7e` |
| 11 | `lemma` | [map_val](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/map-val-source-edition-3.md) | 144 | `result-track:fbd9be2566987626d8699b3931e7f9c8d6cdf65fa2681ad00e45edfc9d27884e` |
| 12 | `def` | [map₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/map.md) | 150 | `declaration-track:0103c31e753837cd309701fec349f06c7d2bfc737d94887b1553fe476a1b56f1` |
| 13 | `lemma` | [map₁_val](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/map-val-source-edition-2.md) | 155 | `result-track:ddaa88d69e60fe3e2a59771612b60caaf266430cbdf3486cae5efedf2d2b4b5e` |
| 14 | `def` | [map₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/map-source-edition-2.md) | 161 | `declaration-track:344db28bdf95ca414af88b49835f69481d8ddb4ac43a9e7fa3c0c345f9f2eed4` |
| 15 | `lemma` | [map₂_val](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/map-val.md) | 167 | `result-track:b999d2d268756cde9f44ef3efe81987e8d0ef40996726a7a647b37abc16787f2` |
| 16 | `lemma` | [map₁_map₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/map-map.md) | 173 | `result-track:16bc97f7b0b6d3a10894680063919f39165a0c0d85ec4f6411c1e41d357b75d7` |
| 17 | `def` | [yonedaArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/yonedaarrow.md) | 181 | `declaration-track:c5d61f3b2184c55a16e626c4eca9656b125db1a25193c56bb9738920b4be1994` |
| 18 | `lemma` | [yonedaArrow_val](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/yonedaarrow-val.md) | 186 | `result-track:137b244c7566a88dc9b00d976bdf5801fb40feb3ab6e32d819dd8ea3bfe88c7a` |
| 19 | `def` | [costructuredArrowIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/costructuredarrowiso.md) | 192 | `declaration-track:6f31fe821c64db49b7dcfcd78f45357f4bba012ec62923eb39658555b1c9277f` |
| 20 | `def` | [restrictedYonedaObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/restrictedyonedaobj.md) | 202 | `declaration-track:d3d01a718dbeabdeffac250547ed46408f513dcca78378a795a4b5e81783437b` |
| 21 | `def` | [restrictedYonedaObjMap₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/restrictedyonedaobjmap.md) | 209 | `declaration-track:6d8636ee7669568baf2ca9f4dcae375f59ffa5bcf6d9986919567f4c546826fa` |
| 22 | `def` | [restrictedYoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/restrictedyoneda.md) | 219 | `declaration-track:0db4a4392705215dbd3031e1b538b8aa01e9296425a1e4bebc2819d4c009b0dc` |
| 23 | `def` | [toOverYonedaCompRestrictedYoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/tooveryonedacomprestrictedyoneda.md) | 228 | `declaration-track:8542476501260d9bcabe47669b0e869444ac454fc788e6d94b052a0c90503427` |
| 24 | `lemma` | [map_mkPrecomp_eqToHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/map-mkprecomp-eqtohom.md) | 237 | `result-track:2220e715bf757dfa6f1106647d24cb0543eed205a3fad56a626b15b8046c45fd` |
| 25 | `def` | [YonedaCollection](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/yonedacollection.md) | 253 | `declaration-track:a65b3cc13184c601b1ceb299ff3ae10ec6c1852d3845da90a3eca3d7e714feb8` |
| 26 | `def` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/mk.md) | 262 | `declaration-track:c0bbfdab6aca66bf71a227de5d45ed30077f12dfa911b3b6e5a171d6f6d656d1` |
| 27 | `def` | [fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/fst.md) | 266 | `declaration-track:8d00c6418ffc44b25334324a402ca5486c6501d2506e2fb29e748dd113b7b12e` |
| 28 | `def` | [snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/snd.md) | 270 | `declaration-track:0801869a79f1289b2c39f49b4fe87ba8bf2517085419a705666138bfdf627b88` |
| 29 | `def` | [yonedaEquivFst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/yonedaequivfst.md) | 275 | `declaration-track:2cff12d274b30e075aa55d0e2190452cc7e6f7d67b13176f31883d49e0ecb9c0` |
| 30 | `lemma` | [yonedaEquivFst_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/yonedaequivfst-eq.md) | 278 | `result-track:76965fbfb9c54b9a86defca2f2d1a55a9975d6435914b8f9968a19d702b47f14` |
| 31 | `lemma` | [mk_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/mk-fst.md) | 282 | `result-track:334a509d6c4e60785a5d8df349a363e9ecbada849606d77ea51230bf31a992ad` |
| 32 | `lemma` | [mk_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/mk-snd.md) | 286 | `result-track:3d5a213da8d369f33043bbcfeaba8bc89fecb4d3e54824484957084ca99047bd` |
| 33 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/ext-source-edition-2.md) | 291 | `result-track:6e7c68e5969f282c5853a9bd1d0f1c511b30522bc1984abf91419e91ea3127cb` |
| 34 | `def` | [map₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/map-source-edition-6.md) | 299 | `declaration-track:ba1f2db8225223a2a8588b412ef83180f86de57ca10269b1da7bb72069d7c3fa` |
| 35 | `lemma` | [map₁_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/map-fst-source-edition-2.md) | 304 | `result-track:dc7a0cfdf9f665b5deff59c8e93008c7eb264333880197465cb0b21f69df2f2f` |
| 36 | `lemma` | [map₁_yonedaEquivFst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/map-yonedaequivfst.md) | 309 | `result-track:d774374040d33453324c7f1e21d75116e416f4dacd12e15324844f2014b3ea68` |
| 37 | `lemma` | [map₁_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/map-snd.md) | 315 | `result-track:d639f1911fa126225caa1f43137af60c1643f775c03a22e44e585420acf9db45` |
| 38 | `def` | [map₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/map-source-edition-3.md) | 321 | `declaration-track:3861be57a827759a002ca31dc7547c97e010655cb8df10d092fee3cf4a2e24db` |
| 39 | `lemma` | [map₂_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/map-fst.md) | 326 | `result-track:a5f654ed7ee4ecaea952139d90d754db66559b585c8a20b2ece9840f6fefeb89` |
| 40 | `lemma` | [map₂_yonedaEquivFst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/map-yonedaequivfst-source-edition-2.md) | 331 | `result-track:f01132e342e1040dc313054b0fe4ea518bcfa44a894ec67fef84198dc80c0551` |
| 41 | `lemma` | [map₂_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/map-snd-source-edition-2.md) | 336 | `result-track:e51bdea9246666026d9159399ea37130b5eb97d2dfafe704b1b60f462fe1864e` |
| 42 | `lemma` | [map₁_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/map-id-source-edition-2.md) | 344 | `result-track:f39831c980e60b7cbd431a51e1c757117a7a9bdcb23b3bed4ba7d11edea90362` |
| 43 | `lemma` | [map₁_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/map-comp.md) | 348 | `result-track:1c33720f3798ad1acf294e50ca6556e23f3b1c1067656508ddc8b9ff069cd1ac` |
| 44 | `lemma` | [map₂_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/map-id.md) | 354 | `result-track:0f751c6175ff62b43abf1dcb386cb29494dd5f92b150008bbe39a5321099c881` |
| 45 | `lemma` | [map₂_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/map-comp-source-edition-2.md) | 358 | `result-track:fad8791071573a08b8bf5a37cbce165018b8f81788b7ff3f11b3ddf4937a9e2e` |
| 46 | `lemma` | [map₁_map₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/map-map-source-edition-2.md) | 363 | `result-track:3d476a77807ec7049a9703898a96f5e9c10cc463afac95bb7d1c02201723ba8a` |
| 47 | `def` | [yonedaCollectionPresheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/yonedacollectionpresheaf.md) | 374 | `declaration-track:5f5afdb214157c09ba30eeb8d84452dee1b4ab98e90a5cbcfe13798699f1b99a` |
| 48 | `def` | [yonedaCollectionPresheafMap₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/yonedacollectionpresheafmap.md) | 381 | `declaration-track:2c317321a9d2989b34f55d787e082295ae4686bc7b4e86d76b889dd49aa9e99f` |
| 49 | `def` | [yonedaCollectionFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/yonedacollectionfunctor.md) | 391 | `declaration-track:d1c4bf1eb663c430c95c8df14e8d6cdd240da255075175cbcf4a4a077a623f7c` |
| 50 | `def` | [yonedaCollectionPresheafToA](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/yonedacollectionpresheaftoa.md) | 398 | `declaration-track:ca13387e470026fbbc670917b47d9d8febe5b926e6d3c323238f434908c937c8` |
| 51 | `def` | [costructuredArrowPresheafToOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/costructuredarrowpresheaftoover.md) | 404 | `declaration-track:0dbea6edf561436f989bd90db13111be4df3679bc3f88deb1c9461efe103501c` |
| 52 | `def` | [unitForward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/unitforward.md) | 413 | `declaration-track:77b97bbfd34b76f3a2696d7f475fa2ed415df63c80c49593dc1ae1de4c459966` |
| 53 | `lemma` | [unitForward_naturality₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/unitforward-naturality.md) | 418 | `result-track:0dd3dfeca7d0cd478b4292238db6b04eb40c61c92f2bc9a71b5d92a528aedad1` |
| 54 | `lemma` | [unitForward_naturality₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/unitforward-naturality-source-edition-2.md) | 424 | `result-track:96e783dcdf103566ba129b84cb82eddb523841e4db1cd9b91e97eb21f5986a96` |
| 55 | `lemma` | [app_unitForward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/app-unitforward.md) | 431 | `result-track:d77a3caaaf3e6038795eb27b59b92e3a2bbab5f7b048ffbd2049a74afb588e30` |
| 56 | `def` | [unitBackward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/unitbackward.md) | 437 | `declaration-track:b8c679717b8c53aa2534f2df8d9f0b45b327de223b21569f8fb89accea9ed441` |
| 57 | `lemma` | [unitForward_unitBackward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/unitforward-unitbackward.md) | 441 | `result-track:9b9ed6eb31a4e2ff48c6f360c50a7ae4e78d512d8073399d074de2b7b879a7a1` |
| 58 | `lemma` | [unitBackward_unitForward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/unitbackward-unitforward.md) | 445 | `result-track:df986f46b876f551d66c9c19fe11f8fdecaba7cb2ca8d318f46bb8a83c0f0a66` |
| 59 | `def` | [unitAuxAuxAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/unitauxauxaux.md) | 453 | `declaration-track:79da90bb513d4e102903fe42794bcd3a50bcc8d25cc18aa322387b6295ba8c5d` |
| 60 | `def` | [unitAuxAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/unitauxaux.md) | 462 | `declaration-track:ad0f4f083f84a829b00cc24a6bc3686ca9588644a9c1cbc98b55dedabab491a0` |
| 61 | `def` | [unitAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/unitaux.md) | 468 | `declaration-track:4a52dbb67e36d5b5434b73a0c8abf1f9fc0a3acd246d4138df1336da2760e21b` |
| 62 | `def` | [unit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/unit.md) | 472 | `declaration-track:c314986f02cfbf43ebd3c25b64cb1e5158238a0699abe8d57a08f97bf0194d3b` |
| 63 | `lemma` | [OverArrows.yonedaCollectionPresheafToA_val_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/overarrows-yonedacollectionpresheaftoa-val-fst.md) | 484 | `result-track:171c968e4817d904846fa6f9df76fc4b3246768e32b24d103a6a5f046cb6bcf8` |
| 64 | `def` | [counitForward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/counitforward.md) | 489 | `declaration-track:83d4a08c96f0c7235a10ca16e00ff57298853285966a17c76ba7fdbbce60e52a` |
| 65 | `lemma` | [counitForward_val_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/counitforward-val-fst.md) | 493 | `result-track:1febbef9e2d3f7f386df008493547bdeba32ba672318a6c5022e89cfce7e52a9` |
| 66 | `lemma` | [counitForward_val_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/counitforward-val-snd.md) | 498 | `result-track:6cd6d2c4a10a60160dadd75b95fc94409cc883022e0ba0b3afe07759b26bea21` |
| 67 | `lemma` | [counitForward_naturality₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/counitforward-naturality.md) | 503 | `result-track:753649f011ef58d25b82f817ed131ae0ab6b5f5a7ef7a62dc788f74b04274d19` |
| 68 | `lemma` | [counitForward_naturality₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/counitforward-naturality-source-edition-2.md) | 509 | `result-track:c4252afabeab767016439e97d71c8919ae9b162ab10fd1382afa9abbc05799f7` |
| 69 | `def` | [counitBackward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/counitbackward.md) | 520 | `declaration-track:196813d50411994ac0df56b0186b10257b7d18aa8acd7a0042335e7a7049a155` |
| 70 | `lemma` | [counitForward_counitBackward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/counitforward-counitbackward.md) | 524 | `result-track:1e1d3a07c57c04e9884b7a97f78d665cb3eba8c902f501ea63a57333eece5ca6` |
| 71 | `lemma` | [counitBackward_counitForward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/counitbackward-counitforward.md) | 528 | `result-track:b5a29d9b1e717c8027dd64e60562c919e3d0f96ac65ad9d6ef39d093ae72a55c` |
| 72 | `def` | [counitAuxAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/counitauxaux.md) | 534 | `declaration-track:24818c7d92a92fb15dc717a8a9d954727b81cac8ff077f2da7d75477bfe1d5e1` |
| 73 | `def` | [counitAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/counitaux.md) | 543 | `declaration-track:6d6336b7cfa63a3ad8d6fc5edc24a3f08c7bfc26acd07caf3733e604c8522aaf` |
| 74 | `def` | [counit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/counit.md) | 548 | `declaration-track:fc20dca70eb0a19dd93119f7cbb3c1cf57c9662d233594101fb54f573036a5e8` |
| 75 | `def` | [overEquivPresheafCostructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/overequivpresheafcostructuredarrow.md) | 563 | `declaration-track:01e32625321ef7db4ba64e9cc6de8efef96a790e23a377658390a8fce803bc0a` |
| 76 | `def` | [CostructuredArrow.toOverCompOverEquivPresheafCostructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/costructuredarrow-toovercompoverequivpresheafcostructuredarrow.md) | 572 | `declaration-track:30de0195a5fb2ca9392f0b2f955a19bce6af9c6b6e48d816592c7d99f75b384f` |
| 77 | `def` | [CostructuredArrow.toOverCompYoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/costructuredarrow-toovercompyoneda.md) | 581 | `declaration-track:964c8b8a5645f88f10cf1537507c0cfb3e2bd915eed5276b7897d8bb94a99080` |
| 78 | `theorem` | [CostructuredArrow.overEquivPresheafCostructuredArrow_inverse_map_toOverCompYoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/costructuredarrow-overequivpresheafcostructuredarrow-inverse-map-tooverc-source-edition-2.md) | 592 | `result-track:d117d2d566d04bf3c26774386f67cb8dcbfed062949cf25f0d8e1f659796ebe6` |
| 79 | `theorem` | [CostructuredArrow.overEquivPresheafCostructuredArrow_functor_map_toOverCompYoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/costructuredarrow-overequivpresheafcostructuredarrow-functor-map-tooverc.md) | 602 | `result-track:304c53136ba1f922dc836436c95129f9483b1a1294452f2a7b5797676b3b46bf` |
| 80 | `def` | [CostructuredArrow.toOverCompCoyoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/costructuredarrow-toovercompcoyoneda.md) | 615 | `declaration-track:143d44e2e27b3f0f1f2a4fdcaa9fa82880f6626a986d005c6da878f210f33dac` |
| 81 | `theorem` | [CostructuredArrow.overEquivPresheafCostructuredArrow_inverse_map_toOverCompCoyoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/costructuredarrow-overequivpresheafcostructuredarrow-inverse-map-tooverc.md) | 626 | `result-track:78ecd247e6fe4be387649c0e365ea6bb357b047327d94e4e4378a3ae8a822812` |
| 82 | `theorem` | [CostructuredArrow.overEquivPresheafCostructuredArrow_functor_map_toOverCompCoyoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafBasic.lean/declarations/costructuredarrow-overequivpresheafcostructuredarrow-functor-map-tooverc-source-edition-2.md) | 636 | `result-track:e35da4a00cf53b766369a40d4b7fc8bae64ffc95560f60b0ee653a145521ddcc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86e12ef62e60614ff33a22f84d8762a4c4c060da208e81083b8c22618e0a3c6d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7fd874c9c8cce9fc65f10885d1ba6a93ab0a94849912445305678a63d6fbb23b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7fd874c9c8cce9fc65f10885d1ba6a93ab0a94849912445305678a63d6fbb23b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
