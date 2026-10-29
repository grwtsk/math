# Verification target: Comma Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79008e7460c6c88831d0516c95dad9b356e410ac",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ceb369cd027f1b127e4fcdf243c2c5e204617d836795c2448253dbf0fab3f3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79008e7460c6c88831d0516c95dad9b356e410ac`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ceb369cd027f1b127e4fcdf243c2c5e204617d836795c2448253dbf0fab3f3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ceb369cd027f1b127e4fcdf243c2c5e204617d836795c2448253dbf0fab3f3c.lean.json)

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
| 1 | `structure` | [Comma](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/comma.md) | 70 | `declaration-track:609e855e44f8f2063f201ba3791c62065c8daabe581c162e4dca0bbd7f375709` |
| 2 | `instance` | [Comma.inhabited](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/comma-inhabited.md) | 79 | `declaration-track:29a29834cf096250720fd9b9e53c88ac8e8cb9c8d6167fb0b53e098d816b5511` |
| 3 | `structure` | [CommaMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/commamorphism.md) | 92 | `declaration-track:7614fafd160a377f14b098cb3501ba351ed73936188fb431783c874a18d0977c` |
| 4 | `theorem` | [CommaMorphism.w'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/commamorphism-w.md) | 100 | `result-track:3b3b42102bec0fae34166a01314637f661461a91366530ad24b7bdcb0af9ea6e` |
| 5 | `abbrev` | [CommaMorphism.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/commamorphism-mk.md) | 107 | `declaration-track:7260576fd4f5e30773d132e44351b6fa2f1057b792108f210c65f82a0e7f6d36` |
| 6 | `instance` | [CommaMorphism.inhabited](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/commamorphism-inhabited.md) | 114 | `declaration-track:21de76b5f0280a2badd96071aad19a846311015ac5d10ecb4bb8a7af0f8b9c90` |
| 7 | `instance` | [commaCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/commacategory.md) | 121 | `declaration-track:b183c495f8bcc6e2522867ac1568f866b3766a3dd4477af6a9115b927eac1d71` |
| 8 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/hom-ext.md) | 137 | `result-track:ee2f42071cbabab843c019967a427ab2cd70bcedf083bf08a2150f057300f5d3` |
| 9 | `theorem` | [id_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/id-left.md) | 141 | `result-track:4b73de876ae7c97255092a569c207e33f067d73c6525209c4cead962c66624b1` |
| 10 | `theorem` | [comp_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/comp-left.md) | 145 | `result-track:1d87ad44e42feb2fdb0894fafdc1d03dab462695974bea7868fa8fc2cd4d3b2d` |
| 11 | `def` | [fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/fst.md) | 155 | `declaration-track:c21cd82e7e854a3d2339748a55e1ee58df1c46071c5dc879dba546a73944a52b` |
| 12 | `def` | [natTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/nattrans.md) | 165 | `declaration-track:0278d633f8eacd7bade52f8012e24055a0ee1835db4e46df889004d95820a02f` |
| 13 | `theorem` | [eqToHom_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/eqtohom-left.md) | 168 | `result-track:3a6866fca5b6e6852e1695033403881cb5eb36e419724c67d453ead6be7848f8` |
| 14 | `theorem` | [eqToHom_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/eqtohom-right.md) | 174 | `result-track:0b3b1fb1195371717ccee43790757de92eb53c771d02743759fd3aa6258b4bf6` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/instance.md) | 184 | `declaration-track:0452ac0d54c785d5e889d1cbec6fd705ad5edadcb8c4f4ecf332614b46488f0a` |
| 16 | `lemma` | [inv_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/inv-left.md) | 188 | `result-track:793f4fd3dd3356146161eb6ff38e30f3813a96b67240073d242b81852770d907` |
| 17 | `lemma` | [left_hom_inv_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/left-hom-inv-right.md) | 193 | `result-track:e378fe818ea0ff845e88b53161b01d0c69f8943f479bd0890e2e266372e8d803` |
| 18 | `def` | [leftIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/leftiso.md) | 205 | `declaration-track:683a0bc3ffcb6b60994cfc3e0ddbc62ac7d9461a1c0138a4e02a959e4460890e` |
| 19 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/isomk.md) | 211 | `declaration-track:e5bd4b3f18c88d6724f5f2b6d6dbccd36d928738bbfadc05fa79e037c6e8006e` |
| 20 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/map.md) | 236 | `declaration-track:23ea7e744b627a9785c67ce1f404367a62480f623e67d1f68a02e003b3d956a2` |
| 21 | `theorem` | [map_obj_hom'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/map-obj-hom.md) | 256 | `result-track:49e81bfea2a7d03199036f304565391c43d37004656edf617147b9b86b6aa5fb` |
| 22 | `instance` | [faithful_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/faithful-map.md) | 260 | `declaration-track:17b116f381c1c7bae61e4c3f82a9ae066ee6091d3b681f0bd320b9ffc2db239b` |
| 23 | `instance` | [full_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/full-map.md) | 267 | `declaration-track:7d18c28f10c2466e65d1a64a151115bcc324c1d7994d2c14c6f5e88ff65eaccc` |
| 24 | `instance` | [essSurj_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/esssurj-map.md) | 284 | `declaration-track:80bdaf06100887ac352e194be3dbdf3a8dd2b65db644f46dc9e79ea924dfdd33` |
| 25 | `instance` | [isEquivalenceMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/isequivalencemap.md) | 298 | `declaration-track:47837979c4701fee6e32cc173860020b4ee15098492bda9dc688665b0af60979` |
| 26 | `theorem` | [map_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/map-fst.md) | 307 | `result-track:47b1ba489bada32255c7b4c17ec1dc5678142fb2d364c10216535ee4e4d2f0fa` |
| 27 | `def` | [mapFst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/mapfst.md) | 315 | `declaration-track:de1d9ec2d5982038d1dc826c5318af6bfa69800c09b5db7fd7bebe874bbff8aa` |
| 28 | `def` | [mapLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/mapleft.md) | 323 | `declaration-track:acd20d5e36b1ff972fe2e035411766e33949ff2c5d8f199bd4d609298fc9d1b6` |
| 29 | `def` | [mapLeftId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/mapleftid.md) | 337 | `declaration-track:efb2110b4ec230c496e93a2e9b8e505ae68f47a0a1f120185e146d9a296b5731` |
| 30 | `def` | [mapLeftComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/mapleftcomp.md) | 347 | `declaration-track:acfc8be755cda1a4a5332bf055de32e5ca4e56c4278828c1013f47826dc8d985` |
| 31 | `def` | [mapLeftEq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/maplefteq.md) | 356 | `declaration-track:6de5e253025b8b5c4c3541c59acbe9ae9d6bd699e7cb8e955fcd72378dc68860` |
| 32 | `def` | [mapLeftIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/mapleftiso.md) | 365 | `declaration-track:e05753a1c1a85391067629c18d41d67ed26fd100c481a918e4051fcf1ab0e6d8` |
| 33 | `def` | [preLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/preleft.md) | 380 | `declaration-track:b28b7b025cd8e3f59b953a40e03f6503184f3455f0a1d18ef3b243ae5355bbb0` |
| 34 | `def` | [preLeftIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/preleftiso.md) | 396 | `declaration-track:02bf661f0215f0b9fcb9b853dffd415bafa819d9acdb913b479d10cf9cee0381` |
| 35 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/instance-source-edition-5.md) | 401 | `declaration-track:bff104e30092580cea39dd910a35175ccba857f0b96fcb6447543eeee2b92a55` |
| 36 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/instance-source-edition-6.md) | 405 | `declaration-track:c913866b13bc1c7df5ef676f499c03ec60cb3f78e09e27c24528a53fc485c577` |
| 37 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/instance-source-edition-7.md) | 409 | `declaration-track:fc75a536830393c08d90eb76a2e2190bb56258e8850a9d69abfd9c4e5b3a26df` |
| 38 | `instance` | [isEquivalence_preLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/isequivalence-preleft.md) | 414 | `declaration-track:a29d7cb824bf4ee8feac42d0b39efa5401dbb20068667ac4f0f0afa9ec0c9b28` |
| 39 | `def` | [post](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/post.md) | 419 | `declaration-track:195ba7849d3bd8039de7e1bdd61b79c164565a98d14f2ae00e348d48c683b2fe` |
| 40 | `def` | [postIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/postiso.md) | 434 | `declaration-track:a0a016ed748d0a638b4543d2d7ab277a615f57a0ccdfb6da4bc25a19e6a98c61` |
| 41 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/instance-source-edition-4.md) | 439 | `declaration-track:9d58365d5fcaa32b69d2c9dd57d1f27c79fda5a84b25bf8d48cc8de2225728a7` |
| 42 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/instance-source-edition-3.md) | 443 | `declaration-track:8f8497962d9dcba2ffc336461bd2a11a54f951a5ba9b11fa831625e71abe6cad` |
| 43 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/instance-source-edition-2.md) | 447 | `declaration-track:4b4873a8c181a758b49b6804cba7ce12650eb22ea2411f89ad2ddb8ca88ad7c5` |
| 44 | `instance` | [isEquivalence_post](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/isequivalence-post.md) | 452 | `declaration-track:93122e1bbe30b167388ad6a459673e43ea54365676de49b22030b19545f9ae87` |
| 45 | `def` | [fromProd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/fromprod.md) | 458 | `declaration-track:8fd8af773d50335cf5ad3e836bdca0942828817e74df7b438d49410fbbd758e3` |
| 46 | `def` | [equivProd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/equivprod.md) | 472 | `declaration-track:d9b460710b5211d20318422c8e8fa1473164bf6a39d2584ec73b062971c81600` |
| 47 | `def` | [toPUnitIdEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/topunitidequiv.md) | 481 | `declaration-track:db617ff7aed9327000c6e7226d75562a7b2a857e82c7a8b2717f8a114336f3b2` |
| 48 | `theorem` | [toPUnitIdEquiv_functor_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/topunitidequiv-functor-iso.md) | 486 | `result-track:7085a2d34beb8c02f0e1562e743432741aa92b283354da36a866d443cabe861c` |
| 49 | `def` | [toIdPUnitEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/toidpunitequiv.md) | 493 | `declaration-track:878c098fdf4c83eb8708eea5c4fbd68ce4b835ae58ca9fcd0489e3bf8f97d7ef` |
| 50 | `theorem` | [toIdPUnitEquiv_functor_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/toidpunitequiv-functor-iso.md) | 498 | `result-track:d33fa82b2d62ca3a3f77d322a0797f1b4227515f6621bb5ab5a00a80e9cb9ff7` |
| 51 | `def` | [opFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/opfunctor.md) | 512 | `declaration-track:fa49869fd2d33814a2d6cacfd02e137b448872eabf5a9c2c9a040f9fd9e4355d` |
| 52 | `def` | [opFunctorCompFst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/opfunctorcompfst.md) | 519 | `declaration-track:9996abcfb9782eb23f1a2fe4ffb32a4995734c1e04cdde1e2b53ecea269c53ba` |
| 53 | `def` | [opFunctorCompSnd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/opfunctorcompsnd.md) | 525 | `declaration-track:cf868a656b8e294e1c505118655b93294bd5678196b010ed0f9097487fdb01c3` |
| 54 | `def` | [unopFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/unopfunctor.md) | 530 | `declaration-track:fa13f3f1608383c156716ace210ac3733c7150835932d7fa408212084355fdea` |
| 55 | `def` | [unopFunctorCompFst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/unopfunctorcompfst.md) | 536 | `declaration-track:7666d470e1c313c629f758496bba1e7374e77ca1a5b84a62e13411d5a39f531c` |
| 56 | `def` | [unopFunctorCompSnd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/unopfunctorcompsnd.md) | 541 | `declaration-track:994debe58892ef40b8966a13f3bade6a41856a778c30aa0891edf781102ebb48` |
| 57 | `def` | [opEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicPublic.lean/declarations/opequiv.md) | 546 | `declaration-track:ae0698962b885b5dd3d5df8a29177e7b33ba61f034eeb943db1ea5d2f2f35ed2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ff2302a97679e2380377c8bd77fb433c07d307b15ec0a613df39955e664d73c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ceb369cd027f1b127e4fcdf243c2c5e204617d836795c2448253dbf0fab3f3c.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ceb369cd027f1b127e4fcdf243c2c5e204617d836795c2448253dbf0fab3f3c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
