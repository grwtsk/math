# Verification target: Dense Subsite Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ced1ba6d6f0a95c7992a7d0489e0b2eac6d37151",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantda4aff72ba8c1f4ee643bce52a7d93b18fefa4453bda51d197a038e4f9fb3c71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ced1ba6d6f0a95c7992a7d0489e0b2eac6d37151`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantda4aff72ba8c1f4ee643bce52a7d93b18fefa4453bda51d197a038e4f9fb3c71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantda4aff72ba8c1f4ee643bce52a7d93b18fefa4453bda51d197a038e4f9fb3c71.lean.json)

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
| 1 | `structure` | [Presieve.CoverByImageStructure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/presieve-coverbyimagestructure.md) | 71 | `declaration-track:e44e7bb1c6d42eb7040288050c428c17ea4eb2fb2f41ae1c03930e5dd16bcb44` |
| 2 | `def` | [Presieve.coverByImage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/presieve-coverbyimage.md) | 84 | `declaration-track:d0d945205f8011a653f461658871b1542d01a46c2179fc9b704b90750ac16bee` |
| 3 | `def` | [Sieve.coverByImage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/sieve-coverbyimage.md) | 90 | `declaration-track:1c656e8cc0afeeafffb012e8ae8558d15c18bafda55c577ce8f7299fe58e2862` |
| 4 | `theorem` | [Presieve.in_coverByImage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/presieve-in-coverbyimage.md) | 94 | `result-track:3e15c1b3ba8a288af4a2eec4294c900bd215f26263843a957698dc673936fbb5` |
| 5 | `class` | [Functor.IsCoverDense](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/functor-iscoverdense.md) | 103 | `declaration-track:39e66fe01ba204314fd588d96a01826860d9f7c11e50858a580c6c6ff36dc419` |
| 6 | `lemma` | [Functor.is_cover_of_isCoverDense](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/functor-is-cover-of-iscoverdense.md) | 106 | `result-track:ff98daa2af6930af17d31d6a9624148285ced9e17a88c31e4e79c7d2f6919ef0` |
| 7 | `lemma` | [Functor.isCoverDense_of_generate_singleton_functor_π_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/functor-iscoverdense-of-generate-singleton-functor-mem.md) | 110 | `result-track:0c503e8e9ad81db75feccf67afc80f92f6901a6ef80f1e7c19812afc5d4baa0f` |
| 8 | `theorem` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/ext.md) | 133 | `result-track:e090731b4e808814bd0594ea88ed73466b196c401702c6d8d66dd918b7a26670` |
| 9 | `theorem` | [functorPullback_pushforward_covering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/functorpullback-pushforward-covering.md) | 142 | `result-track:ed155ad4061122971d5863ccfd738f7bbdccf886512215700c0e2af5dba9d964` |
| 10 | `def` | [homOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/homover.md) | 156 | `declaration-track:8cd5fa2a49ba9e9b0cbd37e758f4e2d91c7cba8c65101e96aa07eaca91c450c1` |
| 11 | `def` | [isoOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/isoover.md) | 164 | `declaration-track:fedaf71a2f2d9ded923df537192ea5af67da255e3a356171c2533c7d39eadd84` |
| 12 | `theorem` | [sheaf_eq_amalgamation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/sheaf-eq-amalgamation.md) | 168 | `result-track:6f9f23b6a9609732f6c1f7af209504b8e89062170baa8cb90dfe9110c1c63674` |
| 13 | `theorem` | [naturality_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/naturality-apply.md) | 177 | `result-track:928d7b20994a6dee8babca6175d79144e9886efe42435d1cb311cc011184df13` |
| 14 | `theorem` | [naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/naturality.md) | 189 | `result-track:0ab2cadc4f30380ee797adad88babe3be446f7deb7835be054cbb1e0baa54006` |
| 15 | `def` | [pushforwardFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/pushforwardfamily.md) | 195 | `declaration-track:4dfcb51d94b2451e4965192a70f1fede87d17530ab554abc927c9537c422ede0` |
| 16 | `theorem` | [pushforwardFamily_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/pushforwardfamily-def.md) | 199 | `result-track:2781b0e29849ab3aabadbfc3bd3ea28ccbe8f90cf40ba0eef0eb5b4d46a93f48` |
| 17 | `theorem` | [pushforwardFamily_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/pushforwardfamily-apply.md) | 205 | `result-track:4f64927550663eced4c819b47f6acf48c67564665e39d9f060c309d5bc15f96d` |
| 18 | `theorem` | [pushforwardFamily_compatible](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/pushforwardfamily-compatible.md) | 216 | `result-track:80edf5e2eea230499453762556555151be6478931eda09eaf9e4d36e5a9e8a45` |
| 19 | `def` | [appHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/apphom.md) | 234 | `declaration-track:49cee2701cf5f52a172963b448abcf79a1d44e7cefb6d87f4b3c58b049a7dbb6` |
| 20 | `theorem` | [appHom_restrict](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/apphom-restrict.md) | 240 | `result-track:cf19bc0f7cd15219673414ec10576ec8c71a0877dcbddc347cfee6fefc967a4c` |
| 21 | `theorem` | [appHom_valid_glue](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/apphom-valid-glue.md) | 247 | `result-track:94f8d00da83866876b486ab447c2331e20483fe8fd9370d468153ac77e92468a` |
| 22 | `def` | [appIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/appiso.md) | 261 | `declaration-track:bd709bb6a9313c9e42c2c6f16712f3f5c352cef7de743e9b30d1587beae4f907` |
| 23 | `def` | [presheafHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/presheafhom.md) | 282 | `declaration-track:b42a605898bbade9ca1beb00738aeacb03ac1dc2c372676e86059187f4a349cf` |
| 24 | `def` | [presheafIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/presheafiso.md) | 298 | `declaration-track:3de5af7ee6f40bc76878aa42f5bdde07e58cef989ca0af1a3af50692b2a21fe7` |
| 25 | `def` | [sheafIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/sheafiso-source-edition-2.md) | 308 | `declaration-track:b0a7e640074d465a1d0b2e05badbbcb869fdbdbdf71f490ae203cb431960aae0` |
| 26 | `def` | [sheafCoyonedaHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/sheafcoyonedahom.md) | 322 | `declaration-track:79ddbbd88b6ed32759d13e1e5e4ea3e46057294ab64754abe58b201d35aa7261` |
| 27 | `def` | [sheafYonedaHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/sheafyonedahom.md) | 348 | `declaration-track:b14e6a4ec4c66acc286b08a73dbfd8c436c7604ad7d2e35ca88b6c2e24ea2ebd` |
| 28 | `def` | [sheafHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/sheafhom.md) | 363 | `declaration-track:cda04d7ec740e38902086bd81f4a219e12ff77da508ab2482b854e7e5d3decc1` |
| 29 | `def` | [presheafIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/presheafiso-source-edition-2.md) | 374 | `declaration-track:fb60ec9fbc246cce12f0479feab229fed2b434de758f093a483607a1d589880f` |
| 30 | `def` | [sheafIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/sheafiso.md) | 393 | `declaration-track:52e50e2c76812d6af55afd71d10e5e4282a6720f4b09ad1a8558488be7d555f5` |
| 31 | `theorem` | [sheafHom_restrict_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/sheafhom-restrict-eq.md) | 399 | `result-track:20406860bdce194e591a1b5ebebf3ddfd23ec2c00481e0a6c3012e1376879b8c` |
| 32 | `theorem` | [sheafHom_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/sheafhom-eq.md) | 430 | `result-track:c2f2457fe3b6460fee508144c43ed9541b774d646045dc203a07305cb331f6e9` |
| 33 | `def` | [restrictHomEquivHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/restricthomequivhom.md) | 449 | `declaration-track:5be56233b44f7207f6039100b942bdba203bf0b8b51d3d67b7279f50bf5f9703` |
| 34 | `lemma` | [restrictHomEquivHom_naturality_right_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/restricthomequivhom-naturality-right-symm.md) | 456 | `result-track:c98efc40bb0e62c54458401276ef4f3ffaf45a3026c250bf6c656258ac09cda2` |
| 35 | `lemma` | [restrictHomEquivHom_naturality_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/restricthomequivhom-naturality-right.md) | 462 | `result-track:2fa319037b27011eb7ee7edf58d2d750b891bc83d070d60a66fee94970eeded0` |
| 36 | `lemma` | [restrictHomEquivHom_naturality_left_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/restricthomequivhom-naturality-left-symm.md) | 471 | `result-track:07863fef1d70d569dc3dc9b154aaab52bcbdd1dc4b45acc5217eda18e542505f` |
| 37 | `lemma` | [restrictHomEquivHom_naturality_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/restricthomequivhom-naturality-left.md) | 477 | `result-track:7b8f022dd2385a8c4a617833677420b16fd116e540ef9783f6d94e673d51a1e0` |
| 38 | `theorem` | [iso_of_restrict_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/iso-of-restrict-iso.md) | 489 | `result-track:7aca95d1d4465effaefab4606c45367337016e9131e74ad446a76cea4ffead4f` |
| 39 | `lemma` | [compatiblePreserving](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/compatiblepreserving.md) | 498 | `result-track:99e188c0d7dca7d8349ddcbd689aabb6fec2fb0b0ce805efe7fed7675e414907` |
| 40 | `lemma` | [isContinuous](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/iscontinuous.md) | 511 | `result-track:21a3ba6d352a21bc2003233c896f97e8965c2927ad4b454fba4b725e2a00a5bf` |
| 41 | `instance` | [full_sheafPushforwardContinuous](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/full-sheafpushforwardcontinuous-source-edition-2.md) | 514 | `declaration-track:86e752dab50e521c2784fcae5a4b0887565b4bfe6392ed543986532bc96ef0d0` |
| 42 | `instance` | [faithful_sheafPushforwardContinuous](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/faithful-sheafpushforwardcontinuous.md) | 519 | `declaration-track:2a61941d4775ad2828e2511f72d8e4473a5a7f48f7b71820ee92e0b2a52e063e` |
| 43 | `lemma` | [whiskerLeft_obj_map_bijective_of_isCoverDense](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/whiskerleft-obj-map-bijective-of-iscoverdense.md) | 532 | `result-track:557ade460175408b2c34f79e7b0d8d5140b5f6deb98970d2a40492d69c4da3ba` |
| 44 | `class` | [IsDenseSubsite](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/isdensesubsite.md) | 543 | `declaration-track:7eaaf2c17f28659db28603a7d5563f87ab1e6268eee06a2dff64bbfcb4d52e6c` |
| 45 | `lemma` | [functorPushforward_mem_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/functorpushforward-mem-iff.md) | 549 | `result-track:c2678f8af239c7684f4951dd80ab1db41870e09f719223494da5087f2a946470` |
| 46 | `lemma` | [isCoverDense](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/iscoverdense.md) | 558 | `result-track:daa3f1bcf0774e1259374b0e9e155554ff9f1e60cc679c89d827a52f3293014a` |
| 47 | `lemma` | [isLocallyFull](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/islocallyfull.md) | 559 | `result-track:3ee0475f3a7a72c2df1c9f9434108e61cd724b5ee67ef1a892bba79f638264b6` |
| 48 | `lemma` | [isLocallyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/islocallyfaithful.md) | 560 | `result-track:a1f8364faad18a826df5914a217823094bc8afef53b788fd26a5a4d2b853657f` |
| 49 | `lemma` | [coverPreserving](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/coverpreserving.md) | 562 | `result-track:bab5fecc249fc9a1107dcdfa8d6e8684ac4152397d837ca3359b8e7fa2b738ae` |
| 50 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/instance.md) | 565 | `declaration-track:75e686beed1ebe90b279a10c2e14d2e2d3dab3bdeed3fc48dae1ea0710659014` |
| 51 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 571 | `declaration-track:cbe2b3f2608003977cdf81c1bb9192aa1f124e85accad36b9afd167207aa10a8` |
| 52 | `instance` | [full_sheafPushforwardContinuous](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/full-sheafpushforwardcontinuous.md) | 578 | `declaration-track:4e2ca97b572598872b3c938055c0d37e8daabffce18442e5201545136770542e` |
| 53 | `instance` | [faithful_sheafPushforwardContinuous](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/faithful-sheafpushforwardcontinuous-source-edition-2.md) | 584 | `declaration-track:f32c92cc7fd0d9ad041e13ee3e334fa43830c9caa6bc8197b3e3f17c31dd03b7` |
| 54 | `lemma` | [imageSieve_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/imagesieve-mem.md) | 590 | `result-track:d5ebb5e8ab86e3bba1eb0966eb8a338893db07b32549d71f36c64aaffeb05b1f` |
| 55 | `lemma` | [equalizer_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/equalizer-mem.md) | 595 | `result-track:211a8af7959e971b517ef17e764969bb6265473b3fffd34ba58f84f328a57131` |
| 56 | `lemma` | [map_eq_of_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/map-eq-of-eq.md) | 603 | `result-track:fb985c2c90b17176cfb5edde3117fa507ea3ed8858f30ab5708a7dbeae159f0c` |
| 57 | `def` | [mapPreimage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/mappreimage.md) | 615 | `declaration-track:77db59963beb337d28d3adb34b36ad70f38d7a59a3b82eb4a142aaa8b982b55c` |
| 58 | `lemma` | [mapPreimage_map_of_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/mappreimage-map-of-fac.md) | 625 | `result-track:fc21d15d3486249335b86028159c993dc53f837f12ba22f261e04b793a059918` |
| 59 | `lemma` | [mapPreimage_of_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/mappreimage-of-eq.md) | 639 | `result-track:3490a411fd8085ebca1a19a12b6cc9e64f0845a4539708ab8d7b6ea5e7f09417` |
| 60 | `lemma` | [mapPreimage_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/mappreimage-map.md) | 645 | `result-track:f0a8b0d7daf2a4d9b1a2dd0c45552be2e38b5cfd8b4d4ea1241434df37e15dca` |
| 61 | `lemma` | [mapPreimage_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/mappreimage-id.md) | 650 | `result-track:e7cfd161f68edd3172bb565870ffba91ef3694c7e978d1773c10c9112dabb68c` |
| 62 | `lemma` | [mapPreimage_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/mappreimage-comp.md) | 655 | `result-track:c09296c3a0501047e76fb50e7ec08c6b82aa2549b41474e6230abd0bc834dcec` |
| 63 | `lemma` | [mapPreimage_comp_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/mappreimage-comp-map.md) | 673 | `result-track:f2abd001629e082bc33781f565dafe2de1de73b4a603bbdc89e5fa6e1fa8f82f` |
| 64 | `def` | [sheafifyOfIsEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/sheafifyofisequivalence.md) | 692 | `declaration-track:7450befd02e85b3c919644becc6992ac01380e144295e69af4e188f95edf060b` |
| 65 | `def` | [sheafifyOfIsEquivalenceCompIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/sheafifyofisequivalencecompiso.md) | 702 | `declaration-track:d325276149db119047986656a0e3916ccc7ae1e387e06dcdc0a9dc8b317795fc` |
| 66 | `def` | [sheafifyHomEquivOfIsEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/sheafifyhomequivofisequivalence.md) | 710 | `declaration-track:91da326488797b18cea83636730d3256cdb0414fbbd538b14ca94d3ef5575e2f` |
| 67 | `lemma` | [sheafifyHomEquivOfIsEquivalence_naturality_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/sheafifyhomequivofisequivalence-naturality-left.md) | 720 | `result-track:c0e291c25ff00dd90444b965338ea2f3ac37cdf3d5382282f93195f7934616d7` |
| 68 | `lemma` | [sheafifyHomEquivOfIsEquivalence_naturality_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/sheafifyhomequivofisequivalence-naturality-right.md) | 743 | `result-track:5753f42c669c76ffce8fc5baa27aa0688f21f6c3c3866e69080239b7b3d09c10` |
| 69 | `def` | [sheafifyAdjunctionOfIsEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/sheafifyadjunctionofisequivalence.md) | 763 | `declaration-track:9e84837d1c057a6c8f4cf590b209e96e59cf81658e77754af016f59d25fdc30b` |
| 70 | `lemma` | [hasWeakSheafify_of_isEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/hasweaksheafify-of-isequivalence.md) | 774 | `result-track:719ecbb4ad3465bff175ea600375038faa7d38e29dcb83c97b933551b89c131f` |
| 71 | `lemma` | [hasSheafify_of_isEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/hassheafify-of-isequivalence.md) | 781 | `result-track:529624ef417dc31643c63303104d250449f8ecaf49edab14db0e309bdb5c6e91` |
| 72 | `def` | [sheafEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/sheafequiv.md) | 801 | `declaration-track:664883cafc9504cb49a906a4f9d795b76d2968770c4501f7dfb00aaf853c9cd1` |
| 73 | `def` | [sheafEquivSheafificationCompatibility](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasicNamespacedPublic.lean/declarations/sheafequivsheafificationcompatibility.md) | 809 | `declaration-track:5d0bcf872ecc532e0ca006f346d22df75be7127d571b4b5942c0ad8b901906ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=912b0b81afa8669d441543f835a1af2546af4c19b3bb7fd71fdcb13f8c5c1428 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantda4aff72ba8c1f4ee643bce52a7d93b18fefa4453bda51d197a038e4f9fb3c71.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantda4aff72ba8c1f4ee643bce52a7d93b18fefa4453bda51d197a038e4f9fb3c71.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
