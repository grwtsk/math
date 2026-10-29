# Verification target: Limits Presheaf Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ddb46af21d198d628c869af60087d04d52b185e",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant097631abb66abdf9570086d0efde850ad6f60ae12b05e88851c34e1a9ec16ae0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ddb46af21d198d628c869af60087d04d52b185e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant097631abb66abdf9570086d0efde850ad6f60ae12b05e88851c34e1a9ec16ae0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant097631abb66abdf9570086d0efde850ad6f60ae12b05e88851c34e1a9ec16ae0.lean.json)

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
| 1 | `def` | [restrictedULiftYoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/restricteduliftyoneda.md) | 86 | `declaration-track:c9d350fbac30529182167822fc31677e21c362b600f0a4c7437fb027ea3d0b72` |
| 2 | `lemma` | [map_comp_uliftYonedaEquiv_down](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/map-comp-uliftyonedaequiv-down.md) | 92 | `result-track:fa682249dd90819cd0bf9bc46a7918821a155f284158ee5f0f72ef27d8444626` |
| 3 | `def` | [restrictedULiftYonedaHomEquiv'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/restricteduliftyonedahomequiv.md) | 103 | `declaration-track:a5b856eed24d58d7be9c29c6ff7ff38ae1afe202ac8270b410cc5a6edaae8f6c` |
| 4 | `lemma` | [restrictedULiftYonedaHomEquiv'_symm_naturality_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/restricteduliftyonedahomequiv-symm-naturality-right.md) | 140 | `result-track:a10c7e605ab57308308778793271609da0a2f1a6d58d9965989759c562f71180` |
| 5 | `lemma` | [restrictedULiftYonedaHomEquiv'_symm_app_naturality_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/restricteduliftyonedahomequiv-symm-app-naturality-left.md) | 147 | `result-track:97c74477c27aa6ce0123b8a1e4f6ee232880f5e818bf9b7b7c7f6c50a5081ff3` |
| 6 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/example-source-edition-2.md) | 160 | `declaration-track:b28de2d3045076c7ddd1150f7c404a6195d3063a11be2a3cf7fc2808d63f5230` |
| 7 | `def` | [restrictedULiftYonedaHomEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/restricteduliftyonedahomequiv-source-edition-2.md) | 171 | `declaration-track:eb93637e6d9c124b1d6b60f282ef827e3f55d0bb3dbbf2094db70cff0a3d768f` |
| 8 | `def` | [uliftYonedaAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/uliftyonedaadjunction.md) | 180 | `declaration-track:d3869c2453ddf871dc39cc270e055b1fc19f5a71b79744a9f596731d5470d791` |
| 9 | `lemma` | [uliftYonedaAdjunction_homEquiv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/uliftyonedaadjunction-homequiv-app.md) | 208 | `result-track:1c98574deb03c4a03e877e6c3fc76eca27dfbc9a115a54b52e1ba8a84ffce23c` |
| 10 | `lemma` | [uliftYonedaAdjunction_unit_app_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/uliftyonedaadjunction-unit-app-app.md) | 218 | `result-track:bf671ebc68ef63946a3e6dada7760b55e584ce07bc579846a62c38fd54f70f6c` |
| 11 | `lemma` | [preservesColimitsOfSize_of_isLeftKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/preservescolimitsofsize-of-isleftkanextension.md) | 228 | `result-track:86aca445a96490c2ec64946094a59017dd11962572ecd4df98f79a899bb921aa` |
| 12 | `lemma` | [isIso_of_isLeftKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/isiso-of-isleftkanextension.md) | 232 | `result-track:c4e35cffdb0747fa91012fb5f984ad29c1248660bf0c32d4e9b8a47506df90b3` |
| 13 | `instance` | [preservesColimitsOfSize_leftKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/preservescolimitsofsize-leftkanextension.md) | 238 | `declaration-track:6d54c797b50bbf8be9634ccac1e9d8434bebe029b39c41da28029238cb7c38b9` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 242 | `declaration-track:e29b5873acad7d5f8bd5499059d2546f8b6bf235ef00a4d5b06d83c6e789a227` |
| 15 | `def` | [isExtensionAlongULiftYoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/isextensionalonguliftyoneda.md) | 246 | `declaration-track:4a2105cd52c478c1fa6f5b8bf17096964303068aabd32e997445af80cdd34aa2` |
| 16 | `def` | [functorToRepresentables](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/functortorepresentables.md) | 258 | `declaration-track:56aa81a4eabb37c36d99bab7a8fb6f44a199d06d6059fa4959341322815e8ebe` |
| 17 | `def` | [coconeOfRepresentable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/coconeofrepresentable.md) | 270 | `declaration-track:6745a86ad5be90b61c32502aee9b4426c54b92cf51dede4082490e689920177a` |
| 18 | `theorem` | [coconeOfRepresentable_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/coconeofrepresentable-naturality.md) | 282 | `result-track:7d90ee4d4fd0f284dc0c578502c2c6054be9d330e0cf6396f2529e8e7b807eb5` |
| 19 | `def` | [colimitOfRepresentable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/colimitofrepresentable.md) | 296 | `declaration-track:857fe0ebb6740df50399965da09dad4ac553446921a2e0653b40ec737537fe9c` |
| 20 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/example.md) | 328 | `declaration-track:4b2ae4d21430b261b8c5194b8c99e7b36a0ab49cf13653e37acb732d5e2c7efa` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 338 | `declaration-track:e3593d801596143c43385d59dd2105372c03c398276b5cb71e75cb6f2ed37861` |
| 22 | `lemma` | [isLeftKanExtension_along_uliftYoneda_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/isleftkanextension-along-uliftyoneda-iff.md) | 343 | `result-track:0b2de2f10e0780c2c79d584fa8187f8b5ea8d33d80fd78f89b71db4768800582` |
| 23 | `lemma` | [isLeftKanExtension_of_preservesColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/isleftkanextension-of-preservescolimits.md) | 367 | `result-track:98b01fcb1023dfe74679c5deecf7106dad9270d000e8bc0c05539668ffdb6049` |
| 24 | `def` | [uniqueExtensionAlongULiftYoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/uniqueextensionalonguliftyoneda.md) | 382 | `declaration-track:1aefe7af3138a6a8489dacace808525ba7f7d11e816cab32518c55cca4d73b9e` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 389 | `declaration-track:aa50ae23d9ad3ba1482958d227677a70f6f68ef325274e51b810e77f4286665f` |
| 26 | `lemma` | [isLeftAdjoint_of_preservesColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/isleftadjoint-of-preservescolimits.md) | 397 | `result-track:2d35184dee988795a0a94e6a56ba6148cf0148db0d5bdd9c9535b1b1f730e8a6` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 411 | `declaration-track:6c9cdf506071f89a25324883e98068a65217f1b1ce00867626908b9f678f3cf8` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 425 | `declaration-track:2c7bc8fb63509803270bd5b34eb727a5f6131653fda02be489381e466503fdb6` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 436 | `declaration-track:3cbabc5ac88cfeb87773176cb61e1cfb2cea76e687c78732e52fb10ba519852d` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 450 | `declaration-track:3b5f20f05875f134962eddb0c306341a1d1f13981d35ff0b335bd357b9b54c5a` |
| 31 | `def` | [compULiftYonedaIsoULiftYonedaCompLan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/compuliftyonedaisouliftyonedacomplan.md) | 460 | `declaration-track:5f20da10c22c9711a61bac990f69934807bf01f02f16a14c343ded11d49c77f9` |
| 32 | `lemma` | [compULiftYonedaIsoULiftYonedaCompLan_inv_app_app_apply_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/compuliftyonedaisouliftyonedacomplan-inv-app-app-apply-eq-id.md) | 483 | `result-track:7c8185a0bc3b19ff99cf3777569eb940b5d797632a579bed7f269ab21bd2678e` |
| 33 | `def` | [coconeApp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/coconeapp.md) | 503 | `declaration-track:b21777371049ad827eca5dce5fcfe4d4fa16a1281b35b06afb7b5261d52d6cb6` |
| 34 | `lemma` | [coconeApp_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/coconeapp-naturality.md) | 512 | `result-track:24ec0b3eba2a82bbcf9c6b626a73aaf6d0b3806327a6395f5b5308fa4eee4ea2` |
| 35 | `def` | [presheafHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/presheafhom.md) | 538 | `declaration-track:dfd17c2f0385ddc0fb4d805fe0b73f597ff7b1502b46a18466bb5c9fcbde8cff` |
| 36 | `lemma` | [uliftYonedaEquiv_ι_presheafHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/uliftyonedaequiv-presheafhom.md) | 542 | `result-track:f53377915eca20d0af48f7cc7948fef3c552b516b65bb45af41504ee986d82d2` |
| 37 | `lemma` | [uliftYonedaEquiv_presheafHom_uliftYoneda_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/uliftyonedaequiv-presheafhom-uliftyoneda-obj.md) | 551 | `result-track:c7ee0a18ea4aa6e46cc8c9c713fb74381952623f94dac56645c6cca50113ba97` |
| 38 | `lemma` | [presheafHom_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/presheafhom-naturality.md) | 558 | `result-track:ed75d5c6efa512059e68eb0ce29c055297fa995245492d661c4fb7fbe0510bed` |
| 39 | `def` | [natTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/nattrans.md) | 575 | `declaration-track:063eed656ea647e7ecde0f785dbf33956acf36b3f02edd4baaba4c521762ab3d` |
| 40 | `lemma` | [natTrans_app_uliftYoneda_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/nattrans-app-uliftyoneda-obj.md) | 584 | `result-track:eb7ce2f2bd195d0242af1bbde1adb2e8ab178d69a2c4745999472b5b584f2e94` |
| 41 | `def` | [extensionHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/extensionhom.md) | 604 | `declaration-track:34a7081955199b6198ef92e91d0de41a7924edfd638ca0291eb61396cba07949` |
| 42 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/hom-ext.md) | 615 | `result-track:bef52c60333b034d77285c69bd1a9b699a0da8560f97fcac2e0ba3f5b8861662` |
| 43 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 639 | `declaration-track:eaa8c271a259ba0999e0183a9a64f5daffea8eaa375e153dc7e41b4753356a48` |
| 44 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/instance.md) | 649 | `declaration-track:2c4efd7343509e79567b0db23f42a84dc3d1d808e68b20761902b21d0f9b664f` |
| 45 | `def` | [tautologicalCocone'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/tautologicalcocone-source-edition-2.md) | 661 | `declaration-track:fd4b47989a7c024359c75d9baaca02d3c59f17c263544da21982ea15894859f1` |
| 46 | `def` | [isColimitTautologicalCocone'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/iscolimittautologicalcocone.md) | 671 | `declaration-track:6c3e46f32a06b9b51c0fd353349b7de994bd7146dc25fcc84f7a3b4ef1957624` |
| 47 | `def` | [tautologicalCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/tautologicalcocone.md) | 684 | `declaration-track:210166a5f8036e7a8b1980f8de6b7a7993551d5cd34849039f17ab2aeb154d28` |
| 48 | `def` | [isColimitTautologicalCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/iscolimittautologicalcocone-source-edition-2.md) | 693 | `declaration-track:71af0db2e9ca24e84b8c42765f43bc045fa6db017ed1f0352539e8ddcbaffa7c` |
| 49 | `theorem` | [final_toCostructuredArrow_comp_pre](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/final-tocostructuredarrow-comp-pre.md) | 713 | `result-track:46bee3f8f62199945bc6713f9d752b42e437ba68d1d476f2d98f56be45f60dad` |
| 50 | `def` | [coconeπOpCompShrinkYonedaObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/cocone-opcompshrinkyonedaobj.md) | 741 | `declaration-track:43fee5f439f97b0fb54a17fd7a5d2acb7f378438e4262496e7b41f9c0f599443` |
| 51 | `def` | [isColimitCoconeπOpCompShrinkYonedaObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/iscolimitcocone-opcompshrinkyonedaobj.md) | 755 | `declaration-track:b605438e751b0fce8ab6db469bb88dfd51feec75ee442b4e9f0534c00da5161d` |
| 52 | `lemma` | [shrinkYoneda_map_app_coconeπOpCompShrinkYonedaObj_ι_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/shrinkyoneda-map-app-cocone-opcompshrinkyonedaobj-app.md) | 779 | `result-track:a32e6777806febc1cb0afc88ebe0fd22ce7b399886c861ee3a09ede22f0186fc` |
| 53 | `def` | [coconeπOpCompShrinkYonedaFlip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/cocone-opcompshrinkyonedaflip.md) | 791 | `declaration-track:14717c896678619ca4167d2f6d90160a827775aeb2f622285fcac4ffbfd2a3a3` |
| 54 | `def` | [isColimitCoconeπOpCompShrinkYonedaFlip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/iscolimitcocone-opcompshrinkyonedaflip.md) | 807 | `declaration-track:f5dd20159fe56e53d0e54bdbe761d93ffa0f03dd519a8e625fee88e4214a4916` |
| 55 | `def` | [shrinkYonedaCompWhiskeringLeftObjπCompColimIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/shrinkyonedacompwhiskeringleftobj-compcolimiso.md) | 815 | `declaration-track:73d0e58766de376e6978a0afeab836ebe6f0a921d70698001f9b8cffd09d3bb4` |
| 56 | `lemma` | [shrinkYonedaCompWhiskeringLeftObjπCompColimIso_inv_app_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/shrinkyonedacompwhiskeringleftobj-compcolimiso-inv-app-apply.md) | 825 | `result-track:dac02921ed6ff53c65d2c2631f1e870f6f9e2e03fba770a87c904f0e1f8c22ea` |
| 57 | `def` | [isInitialElementsMkShrinkYonedaObjObjEquivId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/isinitialelementsmkshrinkyonedaobjobjequivid.md) | 840 | `declaration-track:721b4f4daf7d045e97b44309c7b43fded7d09bb2d79e9f80ee5f7620d3f61f7a` |
| 58 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 849 | `declaration-track:41433fb1eb9a39f3fd98c8a9171b67bc17c0bb2ef9c85063fdecc6deb95166b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1268751fcbe9ef8ab63c4a8b41fcafef8e4ec816d62a7f38fe0f95bd158fa56 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant097631abb66abdf9570086d0efde850ad6f60ae12b05e88851c34e1a9ec16ae0.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant097631abb66abdf9570086d0efde850ad6f60ae12b05e88851c34e1a9ec16ae0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
