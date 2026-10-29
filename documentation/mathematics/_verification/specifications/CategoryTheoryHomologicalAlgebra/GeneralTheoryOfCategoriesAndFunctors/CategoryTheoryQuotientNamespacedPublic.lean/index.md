# Verification target: Category Theory Quotient Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0daf3964c443ea1147c2967e6b21c3e20cf8df88",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant9cf1737e5089f4bb7359ae0041d75f06b66732919f6131ed4ff5f58fbeac0a37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0daf3964c443ea1147c2967e6b21c3e20cf8df88`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant9cf1737e5089f4bb7359ae0041d75f06b66732919f6131ed4ff5f58fbeac0a37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant9cf1737e5089f4bb7359ae0041d75f06b66732919f6131ed4ff5f58fbeac0a37.lean.json)

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
| 1 | `def` | [HomRel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/homrel.md) | 33 | `declaration-track:3aecc9b64e2acebfbea6ef579a473e8634dc0430ff0d81d2311c13f8130ef0b2` |
| 2 | `def` | [Functor.homRel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/functor-homrel.md) | 46 | `declaration-track:5620aac4ede5cd34b2809e9970f2dac08e5d00bdc841135a00b04aaccc8f99ed` |
| 3 | `lemma` | [Functor.homRel_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/functor-homrel-iff.md) | 50 | `result-track:004f74b1845d5aff1708faa25f4997ca0cc1f7e1ad174716d8832ede0e8aec8a` |
| 4 | `class` | [IsStableUnderPrecomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/isstableunderprecomp.md) | 60 | `declaration-track:c5ed11257b9081d6a0b02f5d3d8f9d6bde25188121acac2a672a84a751a0d099` |
| 5 | `class` | [IsStableUnderPostcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/isstableunderpostcomp.md) | 64 | `declaration-track:a2198f87a82cd3af8db49372413008ccd0ffb49932b6114d83ff1843ccb3c281` |
| 6 | `inductive` | [CompClosure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/compclosure.md) | 71 | `declaration-track:05ea75b7050cd51a968a0db02f09dc05089ec17a112fc0fe4bf9331243f33f69` |
| 7 | `theorem` | [CompClosure.of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/compclosure-of.md) | 76 | `result-track:ac75f431c6823eda5411c9c1779a796436f1c5f95f62f9c61465f5cf0935417f` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 79 | `declaration-track:adfe1c9cf19b076dca85d0421c98f8c57f124aea548057f125c790f06f8fd4e2` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 84 | `declaration-track:e2cdcdbe5e7475954b2175cce7bd223d69b57add031630a637da1fe02bac6b40` |
| 10 | `lemma` | [compClosure_iff_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/compclosure-iff-self.md) | 93 | `result-track:9caebcccb47e304747f54943f3eec426b96fe34cc110e12aeac3931ae84f7940` |
| 11 | `theorem` | [compClosure_eq_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/compclosure-eq-self.md) | 100 | `result-track:63f427d49d578190618f79710f5e1dda14eaa3715edccbfa7440079540e1fa38` |
| 12 | `class` | [Congruence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/congruence.md) | 112 | `declaration-track:bd0c18abacf62044eb353b6fd0a3297f84a33992313b4498061dadff6c762787` |
| 13 | `instance` | [Functor.congruence_homRel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/functor-congruence-homrel.md) | 118 | `declaration-track:2dd573de3c43e1d911b8344722a99885daade791ed0b7c3b66159d7298fd529b` |
| 14 | `structure` | [Quotient](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/quotient.md) | 129 | `declaration-track:da675e156242a130cae3e32ff58da890023a1fae92f33b37dc6470ff82edb667` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 133 | `declaration-track:2cb7d024da303b70a1731bfc22bce583abbd4d155b7bf72279d53f638167ce93` |
| 16 | `def` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/hom.md) | 139 | `declaration-track:6f03fd38c4adf504a9c7eb089904906aefbb10fb54efeefb3c499cc5a463083b` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 142 | `declaration-track:9d475d7a70b7c5cd7279e178259a066d62f5fb9b638428aecf2a0cca31190e11` |
| 18 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/comp.md) | 146 | `declaration-track:0e264579ebe68a4fb82812d167b364d1eb2a9c88e67a389ffa595b00ecf6debb` |
| 19 | `theorem` | [comp_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/comp-mk.md) | 154 | `result-track:96b24a56e25bf7e5b7da4010bd49ffc823ce146dea60047744dd9176829162b2` |
| 20 | `instance` | [category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/category.md) | 159 | `declaration-track:91e45522bd17deca61ea08adeed4a19f6eb2a7b90298fc77a8f1b2ce4b06e6a4` |
| 21 | `def` | [equiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/equiv.md) | 169 | `declaration-track:8bdfc38f6bb717941335d53cadca262da67ad984e11ba92111f8092126df5e27` |
| 22 | `def` | [inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/inv.md) | 178 | `declaration-track:af84e34094575f737541e917a770e14595a0d5d5d60c80780ffbda5a70ecd37d` |
| 23 | `theorem` | [inv_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/inv-mk.md) | 185 | `result-track:bb010150bd9375a0d093aaf984e6e3a7b545fbf68271d42fe5b3c931604d6309` |
| 24 | `instance` | [groupoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/groupoid.md) | 191 | `declaration-track:059e928701c45b6dc2b488f938e3e2e0b9e01c2c964b906e02ce3bc84ae3a55c` |
| 25 | `def` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/functor.md) | 200 | `declaration-track:671fae8bc7edb80d724fef6c3640d6bc6e607a3e1c18a1e85451038c680d0dd7` |
| 26 | `instance` | [full_functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/full-functor.md) | 205 | `declaration-track:285c63e53312c17db0426c87ac5164f90e059e200617d02d9fbfb30946a6677b` |
| 27 | `instance` | [essSurj_functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/esssurj-functor.md) | 208 | `declaration-track:82d797c990dba48e4abbd7892be1492a490b2cc05a92502de12a325f16f54fee` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 211 | `declaration-track:76712cf9347f1e2fcd6d684b68e4b02f1bba96b77a5198f292358ff8541ed95c` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 214 | `declaration-track:aae0b911bbc4f843bba40053f85326504d22b429c9588778af3ab3bb0316e02b` |
| 30 | `theorem` | [induction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/induction.md) | 217 | `result-track:2d1c7464f5de5d963714ea214b92c2549ce483a3034e4b36b0631c208371efd0` |
| 31 | `theorem` | [sound](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/sound.md) | 223 | `result-track:13f4b791df525fbf5f3a9abea9b98edad0e91005c088158cf80cf6683cd0734e` |
| 32 | `theorem` | [functor_map_eq_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/functor-map-eq-iff.md) | 228 | `result-track:28afb0ca63308ed1f87bf2fbc10d3e23db34cdfe7d51f81b0df4f8f52d5d6ce1` |
| 33 | `theorem` | [functor_homRel_eq_compClosure_eqvGen](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/functor-homrel-eq-compclosure-eqvgen.md) | 234 | `result-track:0a9dc48629aeb02c20fcfc9a993d5f9814edc09d9963345c584f1db9cee5d282` |
| 34 | `theorem` | [compClosure.congruence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/compclosure-congruence.md) | 239 | `result-track:cca8d67d67bde995813fb0986b77a4809b1caf84835d685bd642021d1b611ac0` |
| 35 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/lift.md) | 249 | `declaration-track:da73ffabbd4ed2b865989d49f8da6b75976335eedb8f11ba1737ff214f616a86` |
| 36 | `theorem` | [lift_spec](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/lift-spec.md) | 263 | `result-track:53b3281bd2d574f2687b5c810e87d2c7f5f30cf810856d8e4efeaf7ed67bbc67` |
| 37 | `theorem` | [lift_unique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/lift-unique-source-edition-2.md) | 266 | `result-track:45b2acb0d190b28ec091a21e32c47e522d9fce1f5c60dc309bd6166c81348b18` |
| 38 | `lemma` | [lift_unique'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/lift-unique.md) | 278 | `result-track:20b78a2da50f0cf46f2db388514cef7c1a3d7a9cc9cc28a3a3ae080ba8f3775e` |
| 39 | `def` | [lift.isLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/lift-islift.md) | 288 | `declaration-track:c6a915957f8f3d270c1f8e8223f937fa48563fd8cd2151bcf27023e6fc2a69fd` |
| 40 | `theorem` | [lift.isLift_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/lift-islift-hom.md) | 292 | `result-track:e94c37f2c2ef7b0d81f0c87c58ee3eeb17884ffd5ea78b0232c34a717d70eb07` |
| 41 | `theorem` | [lift.isLift_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/lift-islift-inv.md) | 296 | `result-track:bf1a5b5ab5a519c38e0ba9f5b61ab157ae09b85d230d071271eadcdd33e5d3d4` |
| 42 | `theorem` | [lift_obj_functor_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/lift-obj-functor-obj.md) | 299 | `result-track:ea85150fa9899888ef96b8226f1920de042a2177b9a0a59678a7ac2ed6490afd` |
| 43 | `theorem` | [lift_map_functor_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/lift-map-functor-map.md) | 302 | `result-track:75ba9ef406fd805186be91431b6c65f95221880a0591b2b11ce5b37ce291dd15` |
| 44 | `lemma` | [natTrans_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/nattrans-ext.md) | 308 | `result-track:1f047ea8bc0a75545ad8e1678b41553e674198cc5e20575c2d8da955e8f25a4a` |
| 45 | `def` | [natTransLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/nattranslift.md) | 316 | `declaration-track:03b2f085599c6c5f585974d111ba238f765fcb6b306ce9f8d9379be9dc38236b` |
| 46 | `lemma` | [natTransLift_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/nattranslift-app.md) | 324 | `result-track:40074469c419b656f7cf289920d13f64bd97cafab0600a01ff7133d19adfad1f` |
| 47 | `lemma` | [comp_natTransLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/comp-nattranslift.md) | 329 | `result-track:68d483ee92253c26725e82a2c7a2f786d1827e85deaf93b7a5640e4cc0f57589` |
| 48 | `lemma` | [natTransLift_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/nattranslift-id.md) | 335 | `result-track:fa1935895a55c1653d550678d4f54627ae9cf706914bb2f162da0936971c6a25` |
| 49 | `def` | [natIsoLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/natisolift.md) | 341 | `declaration-track:b041a48f5599a54d0060f49696e06d6d9fa40fbfac9b3e54d5ed5c1479cafd5b` |
| 50 | `instance` | [full_whiskeringLeft_functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/full-whiskeringleft-functor.md) | 350 | `declaration-track:efd05217373470cee4444a0d1a751a2e547d81686ffa4142e4bf18f0b54beebf` |
| 51 | `instance` | [faithful_whiskeringLeft_functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/faithful-whiskeringleft-functor.md) | 354 | `declaration-track:f2f28d796f683b7d99739b385dd712774a80426849fde449e29f7ef8fdfa3b26` |
| 52 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/instance.md) | 363 | `declaration-track:19382af5be206d4c122d3ae43734d731822ba213cc080ff7eb90af4122640d0a` |
| 53 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 369 | `declaration-track:77783e862e3df279f6f21640331673fe57d04ed29f27b4a167374ed9cb8eeb98` |
| 54 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 374 | `declaration-track:9f4ce24f7cd7103d7141baa7f0a3836acb557a2bb2015dd8cc9b4855f5136f74` |
| 55 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 378 | `declaration-track:2b6d63d2f0cf9a118541be30277bc15bd0d9578ef0b46cd77024f36aadc20937` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=87d779a4e2b3fba6d0afbcab64c60e57eee5237a4eaf9e2967a4838ea5ca4e72 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant9cf1737e5089f4bb7359ae0041d75f06b66732919f6131ed4ff5f58fbeac0a37.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant9cf1737e5089f4bb7359ae0041d75f06b66732919f6131ed4ff5f58fbeac0a37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
