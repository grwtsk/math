# Verification target: Over Pullback Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a51cbaef55731094a1dfda7a2d84db014415e2c5",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant7fac1a543337446fe7d2c7dfa23e632675298a6733f77de419310599655e01ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a51cbaef55731094a1dfda7a2d84db014415e2c5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant7fac1a543337446fe7d2c7dfa23e632675298a6733f77de419310599655e01ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant7fac1a543337446fe7d2c7dfa23e632675298a6733f77de419310599655e01ad.lean.json)

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
| 1 | `def` | [pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/pullback.md) | 61 | `declaration-track:5a10730dcc062a5d7648f07d784b18f2c915e29e596c52a7b9831648176d11e0` |
| 2 | `def` | [mapPullbackAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/mappullbackadj.md) | 72 | `declaration-track:a21ce92a1e50d5eb7d883e1b25d392a286a591a734bcc4d419e18a2be17fbc96` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/instance.md) | 88 | `declaration-track:050642199c97eebdf554dd0af9138a1b41d6fba97a50353ed2d67f870c696b78` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/instance-source-edition-6.md) | 91 | `declaration-track:d10603ed1e0b0fe70f4cf2ded82d259a1084d6deeb1e4dd6584a4b72be037206` |
| 5 | `instance` | [faithful_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/faithful-pullback.md) | 101 | `declaration-track:c32124c88180b9de2c3373812304301692a564d6fc37c0b6b7ea4ab91cc03474` |
| 6 | `def` | [pullbackId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/pullbackid.md) | 108 | `declaration-track:2367fab7691a3bcf2b5514183d9a2615031b181ed2eda28ddd356cc621c50911` |
| 7 | `def` | [pullbackComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/pullbackcomp.md) | 112 | `declaration-track:1c12a08597abbe6b3ed70615f8cd2f06c702e4f51e81c102bde7f63f22547ade` |
| 8 | `instance` | [pullbackIsRightAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/pullbackisrightadjoint.md) | 117 | `declaration-track:fa13b8568ed2cf5999715e7c9b0e9999b7a5e3dd0c11dc94f22e7f59ed767ded` |
| 9 | `def` | [postAdjunctionLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/postadjunctionleft.md) | 129 | `declaration-track:e61550ab0fb0889fc20b75c49b92a9ddbd89ea0bebda120c98d8218d27f1c821` |
| 10 | `instance` | [isLeftAdjoint_post](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/isleftadjoint-post.md) | 134 | `declaration-track:f9ca36715b1ae747a72fa9f4ab186352518ef4fb17b9cbe6bc8f250d90651279` |
| 11 | `def` | [forgetMapTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/forgetmapterminal.md) | 143 | `declaration-track:8584164b1f80107a44ac75ac3a6236ff9d7d454ea8f9a8fdf25d7d50b70a2932` |
| 12 | `def` | [star](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/star.md) | 154 | `declaration-track:eaac8e4d3bb551e26eca3af8d689bf43784d5ac1c812b13b56b625323a030dda` |
| 13 | `def` | [forgetAdjStar](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/forgetadjstar.md) | 161 | `declaration-track:8df1a7c3121149593a27727440f6b2d2598f81e911789cf13ee81e0d342ce3dc` |
| 14 | `lemma` | [forgetAdjStar_counit_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/forgetadjstar-counit-app.md) | 166 | `result-track:06cce1ac6d62230cb1cc0ee45da286fd6e0fae4148b2ce5515fc171bacf45fdd` |
| 15 | `lemma` | [forgetAdjStar_unit_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/forgetadjstar-unit-app-left.md) | 172 | `result-track:65256b09511fa40600156784e2b851bf6f641cd3d40a7126d987871b720cd9b5` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/instance-source-edition-4.md) | 176 | `declaration-track:65d16b699701dec33668c25e14abfa8305a5c5cd6edd6f919efea0e5f0153ea9` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/instance-source-edition-3.md) | 180 | `declaration-track:3b5a460d6d33b0423357cc2c97c639192b8cc9d7f8490e35e6cf8c893de98b28` |
| 18 | `def` | [starPullbackIsoStar](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/starpullbackisostar.md) | 185 | `declaration-track:93d428b5774b6b281c4bc6580262259c21a21db11f8f4751c816367e43eb65f5` |
| 19 | `def` | [pushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/pushout.md) | 204 | `declaration-track:737a27944158babd0677f4162a7124c307b2feac9bc0e4c562f71dcb49e19ead` |
| 20 | `def` | [mapPushoutAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/mappushoutadj.md) | 214 | `declaration-track:bdb6154df324e4d3c45893153d467f4bd510beedf9d7dc0e3b91c75d1c7ece0b` |
| 21 | `instance` | [faithful_pushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/faithful-pushout.md) | 242 | `declaration-track:7eee9f2fabf2881fda956c092cefbe3fb27c7e6445b375fed3a2d7c76c0e3733` |
| 22 | `def` | [pushoutId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/pushoutid.md) | 249 | `declaration-track:a977d6a950ac88b8f192d5aa8cf473c2fcf2274637817d755fc7d6b989af8225` |
| 23 | `def` | [pushoutComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/pushoutcomp.md) | 254 | `declaration-track:7bd72d441581f459adbd701eb0d00bacb3c146f731441a866d6fce718651115c` |
| 24 | `instance` | [pushoutIsLeftAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/pushoutisleftadjoint.md) | 260 | `declaration-track:f393add75df7d25c2eb555b60e9400b60f6cb6870d6a9023e8f4dfdda0ecab1d` |
| 25 | `def` | [postAdjunctionRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/postadjunctionright.md) | 272 | `declaration-track:40030d808e6d866065a69eafc9946305d1b3ace3416da78e8f49b415f54a917e` |
| 26 | `instance` | [isRightAdjoint_post](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/isrightadjoint-post.md) | 278 | `declaration-track:2b8e685c634cb51e3e8300cf3ac0a4f5ed69f08d161974265f49b35b751f9c72` |
| 27 | `def` | [forgetMapInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/forgetmapinitial.md) | 284 | `declaration-track:69b8153f0e19e3de8b9321d8382aaea1cd307c2372410fc25f517eb465690d6f` |
| 28 | `def` | [costar](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/costar.md) | 293 | `declaration-track:06de2ebcaec62759512bd3663383d46c8cfef58a898b296725b170ad38cd2e32` |
| 29 | `def` | [costarAdjForget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/costaradjforget.md) | 299 | `declaration-track:6a641536a653c85738442b53ce6bd42fd8c46f4726a75d4ad4179427edecf09e` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/instance-source-edition-2.md) | 301 | `declaration-track:0e88f09bdd819260a1dd1c21eedb1289f01c31dcaca4c93e840cd56fb990a16e` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverPullbackPublic.lean/declarations/instance-source-edition-5.md) | 305 | `declaration-track:7c702864e19d0c09aadfe51014a9d8d937b020dcf1da761d27a3db0d74563b2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=67c95542629dba8322581f329badbf0a58cc7e8091878cb22c80afba241ca904 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant7fac1a543337446fe7d2c7dfa23e632675298a6733f77de419310599655e01ad.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant7fac1a543337446fe7d2c7dfa23e632675298a6733f77de419310599655e01ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
