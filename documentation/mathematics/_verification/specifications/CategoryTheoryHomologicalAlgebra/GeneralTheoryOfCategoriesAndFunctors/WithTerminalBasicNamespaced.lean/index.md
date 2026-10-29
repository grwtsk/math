# Verification target: With Terminal Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4abb85b8f21c1bcceb1ec843c8aca4bb8a154ed",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb0cae3084d848b36913a7b0f03a678f6c83a71d62279bf79b7d07cd96cf12b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4abb85b8f21c1bcceb1ec843c8aca4bb8a154ed`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb0cae3084d848b36913a7b0f03a678f6c83a71d62279bf79b7d07cd96cf12b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb0cae3084d848b36913a7b0f03a678f6c83a71d62279bf79b7d07cd96cf12b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.IsTerminal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.Functor.Pseudofunctor` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [WithTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/withterminal.md) | 56 | `declaration-track:d8a1742aafe5b3ebe8d75694bccdfdc92020d3866c2786a7fdf2881d78afa15d` |
| 2 | `inductive` | [WithInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/withinitial.md) | 64 | `declaration-track:f12e164c3ccb286d02fc32cd09ce514da7f67243a453bd669685e2a2d5040b06` |
| 3 | `def` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/hom.md) | 77 | `declaration-track:0f8fc1550be68f1d8b55309cc3f6a1addceee12cd1335585a7f0ddd85dbe5fed` |
| 4 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/id-source-edition-2.md) | 85 | `declaration-track:a20a23e14c2c5ff35af2a2e9c85fbdbaa37528990e689598277acf79f5a45b64` |
| 5 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/comp-source-edition-2.md) | 91 | `declaration-track:cc2d00d3c22c54fdf3809c1d0276002c02dd6556aed70dfce585396438d3df34` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 100 | `declaration-track:aeaf7f92e0543d1e687885b1fecf16eabebbdf6b31a6e4d6e943ed5a52a44607` |
| 7 | `def` | [down](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/down-source-edition-2.md) | 115 | `declaration-track:c70f0d3247439c0b321e4bd54ece04a4ac23add069ceef5a44013bf2a6dea333` |
| 8 | `lemma` | [down_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/down-id.md) | 117 | `result-track:77a9e5e864d4ff4312f5b5c875521c3c743d03afa77b0cce485247a6151ea606` |
| 9 | `lemma` | [down_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/down-comp.md) | 118 | `result-track:9463ac7c55ef812f8e8be4b2172cf86855c701ae01874ca4dbecfe38dcfe23b6` |
| 10 | `lemma` | [false_of_from_star](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/false-of-from-star.md) | 123 | `result-track:641a019c94d9261040bc804973dcc50e021d318a67b87fa0a72e846cad5da836` |
| 11 | `def` | [incl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/incl-source-edition-2.md) | 126 | `declaration-track:c2ba04eb161972307f98814883e2b24ef8faf0b596fa9f1127039470f5853a74` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 130 | `declaration-track:3c9757ae2197b6fd1861f9eaea31ee9f90be63947df3c917e1097b4199995435` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/instance.md) | 133 | `declaration-track:1fe901e52d26d3ac1858e6ee145fc5cc10a27e5e23d90bf90c3f92a84daffd7c` |
| 14 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/map-source-edition-3.md) | 137 | `declaration-track:8594dd74cfa6f3a491b547ff60ff74f02f767e8001f6423ff8473872004fd21a` |
| 15 | `def` | [mapId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/mapid.md) | 150 | `declaration-track:51bacf5c1d1394a9263ad5384d0c4e8f4cad4c448cc04759f75987a64b7c8be9` |
| 16 | `def` | [mapComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/mapcomp.md) | 157 | `declaration-track:83b64f63604ed15c071a43b39f06f608cd6213e2dddca52fe6ce073ad8aa18c6` |
| 17 | `def` | [map₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/map.md) | 166 | `declaration-track:2ea8d16ad5d0a828f1a988808d942eb400eaf4aa4a7d14e4f8481cbc67a858c1` |
| 18 | `def` | [prelaxfunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/prelaxfunctor-source-edition-2.md) | 180 | `declaration-track:61efbd302343a666cda97955f2e42575da2017d5769a6e54f522b5711353c9ba` |
| 19 | `def` | [pseudofunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/pseudofunctor.md) | 197 | `declaration-track:53131f5cee7679aa4a59a28d60c19162a6a3f6e98b0514fa61b1c1a50b5e5cb5` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 275 | `declaration-track:7ec330f26041abd79490483ee7e1ae3e5d23365466059000020c2538f2e324de` |
| 21 | `def` | [starTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/starterminal.md) | 283 | `declaration-track:5c39b30361a4d504d934dfbf42410575b56d77257e5dd8a2b149e29d08c95bc8` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 286 | `declaration-track:506366b59b315b11c434fd186f6070a580017afab3205430f2f2b4c6ac7526fd` |
| 23 | `def` | [starIsoTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/starisoterminal.md) | 290 | `declaration-track:819fe38d11c44318314ee8efa6fbca75af4cd4239555dd2c01d339b37756556d` |
| 24 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/lift.md) | 295 | `declaration-track:2928ebdc0d72bc1357eff6304fdc7cbab1199e885e8d71d30bc80fba6f31e9fb` |
| 25 | `def` | [inclLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/incllift-source-edition-2.md) | 309 | `declaration-track:73e1423a7bf40e9d507f702f4725710f6be06432f8dcc7b470deee9979e1863c` |
| 26 | `def` | [liftStar](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/liftstar.md) | 316 | `declaration-track:66c030c6be27eb741dd0d905ed8af02172d3359f1799aa7bd53cecb22f9c3bc2` |
| 27 | `theorem` | [lift_map_liftStar](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/lift-map-liftstar.md) | 320 | `result-track:df9ce21d6d74453b946a3bd2d3149edd0edcd31707b384da3982abc8ebdd3786` |
| 28 | `def` | [liftUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/liftunique-source-edition-2.md) | 329 | `declaration-track:3646c0cf2dc098030c5758b24af31cbf9a89e934b3886e7f2e4770cc4665e452` |
| 29 | `def` | [liftToTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/lifttoterminal.md) | 352 | `declaration-track:2ded3ae695bfe89c6527662f8806bc8272527e81d7f468aad2d2451f5a16d706` |
| 30 | `def` | [inclLiftToTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/incllifttoterminal.md) | 358 | `declaration-track:d5e6ee47d9b4c690f6a6493c2ba3e9f5ed088ec17608df42c1bba4ed76e213d8` |
| 31 | `def` | [liftToTerminalUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/lifttoterminalunique.md) | 364 | `declaration-track:3583af4f4238d62a21a38ae1dc2d397a7d1c40c4f2e0c353a49cf2daba12e646` |
| 32 | `def` | [homFrom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/homfrom.md) | 371 | `declaration-track:aa17431e03e246034f1cc687993062c5597c0783ffd42ec9e0f02bef7e6efdb0` |
| 33 | `instance` | [isIso_of_from_star](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/isiso-of-from-star.md) | 374 | `declaration-track:7ca6de716fd23ff5be5513a4508ac174369525ca4f7a9a048ec5f68ebb4fbc77` |
| 34 | `def` | [mkCommaObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/mkcommaobject-source-edition-2.md) | 386 | `declaration-track:34e7693873894bccf03cd66f5516f88e86e15de135b14224fa48d6fc21f92acc` |
| 35 | `def` | [mkCommaMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/mkcommamorphism-source-edition-2.md) | 399 | `declaration-track:8451ccf4c0cf0cbac949f51ca66c881e813b1a3cc1ee38277a749cbd5f8cc9aa` |
| 36 | `def` | [ofCommaObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/ofcommaobject.md) | 406 | `declaration-track:90d5a1f67194d4b68126037753a49e73ba51940054b05671886dd39927d641bf` |
| 37 | `def` | [ofCommaMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/ofcommamorphism.md) | 412 | `declaration-track:90a8f025755cbd4ec389599515cc2da2b80ece90d40ed7efc7f9a2d985c4d044` |
| 38 | `def` | [equivComma](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/equivcomma-source-edition-2.md) | 427 | `declaration-track:f5f7c1a9a250b3c4b3147e1c48cb9d7fe088d45e7179e8348c887ee58369c60d` |
| 39 | `def` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/hom-source-edition-2.md) | 466 | `declaration-track:52b99918418879819282bc6a679402662cf51c69e6e01725a891a6ec139c51cc` |
| 40 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/id.md) | 474 | `declaration-track:220ac94ff8ab1d7130661af28862eec0fe3283c936c94565fcbadcb4bb050ab5` |
| 41 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/comp.md) | 480 | `declaration-track:82c5bc47342820cfb5c4dd62eac3012de7fab2e2a707f701ea57ef3c113ab7da` |
| 42 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 489 | `declaration-track:5b501a0b3b246d45e9a30b358026bc02e9733dd6aa2489ecdb5de6cdd51c4175` |
| 43 | `def` | [down](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/down.md) | 502 | `declaration-track:16d28aaa18f3928a2139bb413f086b5ce032e5f11b43602d7abe6c3eff80e1d8` |
| 44 | `lemma` | [down_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/down-id-source-edition-2.md) | 504 | `result-track:eca2b384f0596d296afe04aab0ba47deb64c386a0d26085d50dc8f97c9002055` |
| 45 | `lemma` | [down_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/down-comp-source-edition-2.md) | 505 | `result-track:cb123eb77e29e565cf5f97b7ddee11787a6e6491c3e8518ddb954567936ed36a` |
| 46 | `lemma` | [false_of_to_star](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/false-of-to-star.md) | 510 | `result-track:9b16df37a1c5f6411d025a31ac4cea8420be3a725d09b6d720ecf737399f1cb2` |
| 47 | `def` | [incl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/incl.md) | 513 | `declaration-track:51545ae5c51bef396a8945ffdd550c9f7bc395c65040017db649ff4eb064cecc` |
| 48 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/instance-source-edition-9.md) | 517 | `declaration-track:fd38dde171ba5cff262f3796119719552b7bc2c6dea6ea8d023bb118d811a271` |
| 49 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 520 | `declaration-track:e07ba3dc3b0cb0bdfc3872df6af387641d5c41848e1ded5cf9d9b909bd7044b7` |
| 50 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/map-source-edition-2.md) | 524 | `declaration-track:54d7e91199af006ffa0d16c80f5b1497bce2e92e1109e3bd457f8eb48eb8bb0a` |
| 51 | `def` | [mapId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/mapid-source-edition-2.md) | 537 | `declaration-track:9406008f95f9e589ebe5f0fc58b05ac6bbbd9073003e98aef4473c05c43060c4` |
| 52 | `def` | [mapComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/mapcomp-source-edition-2.md) | 544 | `declaration-track:fa75354ae8353c79c77218c707c99f7a1a888a38cebc82b38c46f5436018f3af` |
| 53 | `def` | [map₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/map-source-edition-4.md) | 553 | `declaration-track:fc53e7ecbe86a5ab94ef86c5605baacf14275153d7c599fbafc281b1a8a2e3ff` |
| 54 | `def` | [prelaxfunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/prelaxfunctor.md) | 566 | `declaration-track:5715494ff39b970e8fcb50b2ba4119d527f950a89546165a45b9132818e47da4` |
| 55 | `def` | [pseudofunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/pseudofunctor-source-edition-2.md) | 583 | `declaration-track:5ddb95fbe1d67a5808985ed8e81c4069f68417cd1967844234dd5f6b3366ddcf` |
| 56 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 658 | `declaration-track:e40271d131455e022dca1705d577463572485c23abb3236f70fa064e21281324` |
| 57 | `def` | [starInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/starinitial.md) | 666 | `declaration-track:92ca20cd200e8f716c20b5ce45f50cce2ebde2aaff7a164294658ee43284c89a` |
| 58 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/instance-source-edition-10.md) | 669 | `declaration-track:fe79ffe5af01947f62cbdd0f59017fed8ff3299c0b279c455fa1c07e8f951c2c` |
| 59 | `def` | [starIsoInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/starisoinitial.md) | 673 | `declaration-track:049160ec8a51ce401183a3343d93919d7a873be0573d8f562f7647f91b1ca69e` |
| 60 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/lift-source-edition-2.md) | 678 | `declaration-track:447ff23e6f031d248fe019d50f18b2cb4493aecd76d812266588db0ebb51fc7e` |
| 61 | `def` | [inclLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/incllift.md) | 692 | `declaration-track:4e5a405f409147bf04ce5e3709ac6202231fa2bd4400ec6b5113c356a0c0345a` |
| 62 | `def` | [liftStar](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/liftstar-source-edition-2.md) | 699 | `declaration-track:ebd2e1426f87eca379173058461680644a2501a97b806b4a52b6de1dbb82dbb7` |
| 63 | `theorem` | [liftStar_lift_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/liftstar-lift-map.md) | 703 | `result-track:ab36b4b65ad1b0e479a2031db7b7fbe752edfd928c1e494ac06c757905bc9232` |
| 64 | `def` | [liftUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/liftunique.md) | 712 | `declaration-track:0a65ff7ef3b1b94ae9dbaab0be8afe731fe0b1890bccabda35535d49d275a05f` |
| 65 | `def` | [liftToInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/lifttoinitial.md) | 738 | `declaration-track:460c1f89d0c177ac2a9ed7344c547557a1348a583e2d7224e07ddf9fc48a0d7d` |
| 66 | `def` | [inclLiftToInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/incllifttoinitial.md) | 744 | `declaration-track:09c1546d7f6ccf8b07638787b16c9df41ab993fb5a3c51b0047d01bfbef5c99e` |
| 67 | `def` | [liftToInitialUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/lifttoinitialunique.md) | 750 | `declaration-track:c11772853a197dcd3ab705c40a8bffcb753b1a764b052c8a6b8f8e6ab77529ff` |
| 68 | `def` | [homTo](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/homto.md) | 756 | `declaration-track:d9b836ae9d56716370741120bc862eabd41008ed95c9bdc5ff4bc7ff463ab147` |
| 69 | `instance` | [isIso_of_to_star](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/isiso-of-to-star.md) | 759 | `declaration-track:62f31da5c00420daf6970135388dc88829d5a8c31228c02324fb0b50ec5f8db4` |
| 70 | `def` | [mkCommaObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/mkcommaobject.md) | 771 | `declaration-track:22f0165e1ad370803c0140fb8da252e7b22637b4b7b9e41075a2f3b28540585a` |
| 71 | `def` | [mkCommaMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/mkcommamorphism.md) | 784 | `declaration-track:49d5d22cef9c3dbac0940fa04dff8bc620f5161fb358e840cc31d66ecc712ebe` |
| 72 | `def` | [ofCommaObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/ofcommaobject-source-edition-2.md) | 791 | `declaration-track:e0fa329d53566b27bfc15b925b9bb0932d8fbecb14500dd726615b693e1e95af` |
| 73 | `def` | [ofCommaMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/ofcommamorphism-source-edition-2.md) | 798 | `declaration-track:e4cec25fe502bf2a6fa58624189bc3659407d000126f43af938d791042035f1a` |
| 74 | `def` | [equivComma](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/equivcomma.md) | 813 | `declaration-track:01009941ef49b93f946aca1f375750321abf7aa2d552b9b793c030ef7be863e9` |
| 75 | `def` | [WithTerminal.opEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/withterminal-opequiv.md) | 849 | `declaration-track:ffe22c59b68ea4d93f9fd4fc548e6c8f439b5d41f0dc7f8bc6fa9269798f1bde` |
| 76 | `def` | [WithInitial.opEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WithTerminalBasicNamespaced.lean/declarations/withinitial-opequiv.md) | 911 | `declaration-track:de3d664db0038be2a9a863ff22ff93fdb30647d609dc1f3e2e878c3d9d248c0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0865386853c46acedb4b1cf7e40388642cf1d60817caecc1d572f06005e4d5af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb0cae3084d848b36913a7b0f03a678f6c83a71d62279bf79b7d07cd96cf12b1.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb0cae3084d848b36913a7b0f03a678f6c83a71d62279bf79b7d07cd96cf12b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
