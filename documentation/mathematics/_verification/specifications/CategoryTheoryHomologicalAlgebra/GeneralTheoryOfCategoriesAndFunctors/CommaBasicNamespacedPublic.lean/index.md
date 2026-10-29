# Verification target: Comma Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a6bab572962a2a3adfc6b1c06b74b1cb26cc635",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1cb4fa89d6489017a2de4f3c485b0ffb997116fd731c812a8921a9020367d4ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a6bab572962a2a3adfc6b1c06b74b1cb26cc635`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1cb4fa89d6489017a2de4f3c485b0ffb997116fd731c812a8921a9020367d4ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1cb4fa89d6489017a2de4f3c485b0ffb997116fd731c812a8921a9020367d4ab.lean.json)

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
| 1 | `structure` | [Comma](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/comma.md) | 78 | `declaration-track:aa922884aad3de54700f3b3a1c88ea2539e24c981f25e298a21eef092f5ace37` |
| 2 | `instance` | [Comma.inhabited](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/comma-inhabited.md) | 87 | `declaration-track:a031cc2070855b983cfd069c06c56de1269c78de3040a6b17642558172c9d717` |
| 3 | `structure` | [CommaMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/commamorphism.md) | 100 | `declaration-track:8faf31709e5c6c7811b556acb67f33848c45f4432e1f7b4aa138bed8253a2071` |
| 4 | `theorem` | [CommaMorphism.w'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/commamorphism-w.md) | 108 | `result-track:7c2254debfd29b5d06fc5b11c42ac41ad9fdba0c4ec7ca381129bdc1fcf46977` |
| 5 | `abbrev` | [CommaMorphism.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/commamorphism-mk.md) | 115 | `declaration-track:068cb0d07a4d96d9678f95311f4d26796b5d1bf52e9ceb10265c6314553bb7c6` |
| 6 | `instance` | [CommaMorphism.inhabited](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/commamorphism-inhabited.md) | 122 | `declaration-track:98a33ab19e77062628c9974484e628fca8b05d68d7e2aad9a18c96e4a83148a9` |
| 7 | `instance` | [commaCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/commacategory.md) | 129 | `declaration-track:074f0465aab18b64437dfa186d1939b396500a04faa721c6937617175a367f3f` |
| 8 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/hom-ext.md) | 145 | `result-track:387eadef0573cd170fcee33973ed4eddf4f1282d00f6946418f4aa47b59c17a5` |
| 9 | `theorem` | [id_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/id-left.md) | 149 | `result-track:8d995ad53a15d3e911f3ca217e23815e70f4b8e47d7e7ff9ccda090fd20bd55d` |
| 10 | `theorem` | [comp_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/comp-left.md) | 153 | `result-track:2a725a135234072d49366c297191d5525b0f0f16cdad623570af8f3343cae032` |
| 11 | `def` | [fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/fst.md) | 163 | `declaration-track:8a521d82dbd1b5beaad586660455d325879685c60091285cbde289d56f4e6c23` |
| 12 | `def` | [natTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/nattrans.md) | 173 | `declaration-track:bfd61f36f70626f0cba61c74509740be737306e1c8fabca2e7fb987842ff32cb` |
| 13 | `theorem` | [eqToHom_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/eqtohom-left.md) | 176 | `result-track:5038baf32c46d80a2527edc4bbef2a314269d234dd8b3c879216876e41533799` |
| 14 | `theorem` | [eqToHom_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/eqtohom-right.md) | 182 | `result-track:e9af59f6856b88d8be23aea2c6654481ef77574796cd487e62073fa635c24ef2` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 192 | `declaration-track:410195e491423dc9b45f10849cd36fc608d20b8e417adf381650d4cca26b413d` |
| 16 | `lemma` | [inv_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/inv-left.md) | 196 | `result-track:6bb396e67932895fe9f59eb9227a959ea92b5b79c3c4d294838872c62cadc6e4` |
| 17 | `lemma` | [left_hom_inv_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/left-hom-inv-right.md) | 201 | `result-track:9ebaaa246b7ffb2f30aa82abebe18d386a5ab89d0d0dcdcef349f8ed0121d0f4` |
| 18 | `def` | [leftIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/leftiso.md) | 213 | `declaration-track:ccf1e848778afccfa12134059449b881fb0123129a4dab2f89d3b975434b78ae` |
| 19 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/isomk.md) | 219 | `declaration-track:76836f9f8f46f5323838a83e06513a420dccb4a5f7031c3e935c02ca2c6dc031` |
| 20 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/map.md) | 244 | `declaration-track:547e1014361732dbd9f19fa4bbe159d95685c27a49b26e8ae2654a0310ae379c` |
| 21 | `theorem` | [map_obj_hom'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/map-obj-hom.md) | 264 | `result-track:01ca0fea837f6bd1bad994d3007d05b6a664279ae1b2bc49b9799978662248e1` |
| 22 | `instance` | [faithful_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/faithful-map.md) | 268 | `declaration-track:ab28f9de806daf0667a9ce2fff1109c56d1fa25df106a11548e9bd347e801924` |
| 23 | `instance` | [full_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/full-map.md) | 275 | `declaration-track:21b908ddbe02188438641922e93dc7c3d1847453f1df630db0ff2d705f89d9f5` |
| 24 | `instance` | [essSurj_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/esssurj-map.md) | 292 | `declaration-track:2c19a35239eca88c928c6f45c60c787807cefeed8b0b36f0d0b69e77b81b25fe` |
| 25 | `instance` | [isEquivalenceMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/isequivalencemap.md) | 306 | `declaration-track:e101876e335af5d790259fbf5cf1dfe2d9f52553ffeafc4d386e52ef1f0d4137` |
| 26 | `theorem` | [map_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/map-fst.md) | 315 | `result-track:e8538de4ca6c3e03e5b9ad61a8d7393a6267c6ce3ae22fccf8ae1a3f1719a247` |
| 27 | `def` | [mapFst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/mapfst.md) | 323 | `declaration-track:a2212229efe525cabbfb4240971db70d106553c965943b4aa6b7bb557358efba` |
| 28 | `def` | [mapLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/mapleft.md) | 331 | `declaration-track:b7bb00da1a5f4c150014567c6e4a15ead9d5c68e4ce5a70602b6ab64abdf6393` |
| 29 | `def` | [mapLeftId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/mapleftid.md) | 345 | `declaration-track:35d1ca6a0c61f309e1ba518a12824e006d3f788058e1a1ef4f0dfda0b53e2acf` |
| 30 | `def` | [mapLeftComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/mapleftcomp.md) | 355 | `declaration-track:c2d021fa58ec2d82e550a92274b1515ad8c3fe49824af5f01c53d3d5b6432aa1` |
| 31 | `def` | [mapLeftEq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/maplefteq.md) | 364 | `declaration-track:7796358b71b34ee9d840742842d362946a2f40307456704bb52ce28b4dd4501b` |
| 32 | `def` | [mapLeftIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/mapleftiso.md) | 373 | `declaration-track:9f9a04fbdaa4c94d0b3925ff11a30d4b690b0875a8c78b377cc72c944003799b` |
| 33 | `def` | [preLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/preleft.md) | 388 | `declaration-track:9f9fdd9543050e78528019c017e81818871f5fc99752b33903c191b5c32988cf` |
| 34 | `def` | [preLeftIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/preleftiso.md) | 404 | `declaration-track:f0d9ace5b1eafc33d2bcf073ee86a828b469c690c58405ec468c4a623e4380e1` |
| 35 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 409 | `declaration-track:31bbd752be6aaaff9665189ac649fe852892620035f3726e226901e0480f1beb` |
| 36 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 413 | `declaration-track:8f3fe412071fa574182bace1127b04d207b9c0d3a505826f550fbf374e26c392` |
| 37 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/instance.md) | 417 | `declaration-track:29f09fe2dddad3710a6318b5e4999366b0eb40fdaec36769dc905aa7ce2b642a` |
| 38 | `instance` | [isEquivalence_preLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/isequivalence-preleft.md) | 422 | `declaration-track:5023b7c33a15d50fc69380c6f4212487cfc89aa96818686aa26a0dc8d5094fec` |
| 39 | `def` | [post](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/post.md) | 427 | `declaration-track:715a5266c1e5d35ea253c37c68ef76fca9dceab17ca7e75dce61f99788836f64` |
| 40 | `def` | [postIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/postiso.md) | 442 | `declaration-track:d2ebc15a548e2dc86bcf3f666fef9cbdbe4e58fffb193782dd85e49c170e32d8` |
| 41 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 447 | `declaration-track:7cfc17ace3af5d94def62d6a0eb43556ebd72ced0424648273ce7c494ec64033` |
| 42 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 451 | `declaration-track:df2af46bef8a908763d4b15e06b543202f6bd6c02525e837386da8e1af9aa740` |
| 43 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 455 | `declaration-track:d03029d21012b2cf3ebb168aa89396c60b8348a81f3c5c3cf458adefe740af47` |
| 44 | `instance` | [isEquivalence_post](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/isequivalence-post.md) | 460 | `declaration-track:00e3a753686fcd0795a2028eab2e46c4b1b4c8ae5592548b81805cd29cfe16a1` |
| 45 | `def` | [fromProd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/fromprod.md) | 466 | `declaration-track:6471b479c5dcd366e4eab8b93d8c8f6a4126401d04472307bba4b414ef6a24b7` |
| 46 | `def` | [equivProd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/equivprod.md) | 480 | `declaration-track:7dce0942c8d22b961fb0caa7f10625dd5adea710ef33747bdf67ac65433147ce` |
| 47 | `def` | [toPUnitIdEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/topunitidequiv.md) | 489 | `declaration-track:0c209547103bba0c8951da93624bcf5afb1b4db055a44d619e458655f394acf1` |
| 48 | `theorem` | [toPUnitIdEquiv_functor_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/topunitidequiv-functor-iso.md) | 494 | `result-track:3bf11f81f59d2e479b4c55c2fa056ee3424426c3be7c169718d2abe32dff107c` |
| 49 | `def` | [toIdPUnitEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/toidpunitequiv.md) | 501 | `declaration-track:ab3d81961a0103f3ae90178e4da727609862c42d1570b0d933b5ccc8048b699c` |
| 50 | `theorem` | [toIdPUnitEquiv_functor_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/toidpunitequiv-functor-iso.md) | 506 | `result-track:e805241ce26c3d01b33c2ac27bd712bf54e0b0482991f21de3c6dc150164ca6e` |
| 51 | `def` | [opFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/opfunctor.md) | 520 | `declaration-track:5e40545adae4c12cdd9820405787904b5a8f833e6829db6fc2bafa6932e1e6c3` |
| 52 | `def` | [opFunctorCompFst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/opfunctorcompfst.md) | 527 | `declaration-track:8b00b2d210c9487d9204bb938afa0e9b8957010d84dd7fe6c5f7238df79a3819` |
| 53 | `def` | [opFunctorCompSnd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/opfunctorcompsnd.md) | 533 | `declaration-track:46200dd71ef75a9925160cf5d19ae2754d911c6341e325a5fd2bc9456d92e041` |
| 54 | `def` | [unopFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/unopfunctor.md) | 538 | `declaration-track:3187be13154692dc4c77111d2fba60cc54a154c56a73e9274f4b3ec8938dbf9a` |
| 55 | `def` | [unopFunctorCompFst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/unopfunctorcompfst.md) | 544 | `declaration-track:fd7ff3ad62a831c13ce1487f786137498d3196e7e449bb0bdff4301dff843ee9` |
| 56 | `def` | [unopFunctorCompSnd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/unopfunctorcompsnd.md) | 549 | `declaration-track:d230a85f57cecba74e6067dc2edf10b23e4dfdeacb4dcdf6934f925aae1fbde8` |
| 57 | `def` | [opEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespacedPublic.lean/declarations/opequiv.md) | 554 | `declaration-track:88e9377b8db3dcfca7cad29024a876c09ed65af604e4269a5a4a046119a6210f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1b0247edbb6fc35129b5f520f827b5c5d2fe497719e1381b75a35d362836453 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1cb4fa89d6489017a2de4f3c485b0ffb997116fd731c812a8921a9020367d4ab.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1cb4fa89d6489017a2de4f3c485b0ffb997116fd731c812a8921a9020367d4ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
