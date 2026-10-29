# Verification target: Finsupp Order Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad6f687a7a5abb6a3ca389b72bf7458353dd03a0",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant4df9429617dd5f76c405fa60e8961fe7b972f7e6c84a3023180d6f1a3d75f5c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad6f687a7a5abb6a3ca389b72bf7458353dd03a0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant4df9429617dd5f76c405fa60e8961fe7b972f7e6c84a3023180d6f1a3d75f5c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant4df9429617dd5f76c405fa60e8961fe7b972f7e6c84a3023180d6f1a3d75f5c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [support_mapDomain_of_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/support-mapdomain-of-nonneg.md) | 43 | `result-track:33ef8e4d687bcfcf12fc73af68a5b08e95ba0a4a69e8fe28c27abb4fae603f30` |
| 2 | `lemma` | [sum_le_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/sum-le-sum.md) | 61 | `result-track:1fea948e4d47c73a2e83765a0ececf3c0cc979fe2eb0e6bb3afd610527923095` |
| 3 | `theorem` | [sum_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/sum-nonneg-source-edition-2.md) | 64 | `result-track:e7bb26e67f95ca1708f7a724f2da657fee42f117c52ab2f53638ce4223c8ffb9` |
| 4 | `theorem` | [sum_nonneg'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/sum-nonneg.md) | 66 | `result-track:3de63018b23a860990cf2635734683f652594de4a88501e03c704e5bb4ee88da` |
| 5 | `theorem` | [sum_nonpos](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/sum-nonpos.md) | 68 | `result-track:e93bbeab9aca90ae841647f85da628663a7eed4b5f61aca175d69a6e67032896` |
| 6 | `theorem` | [sum_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/sum-pos-source-edition-2.md) | 77 | `result-track:9a72abd08a59c601cafeeb262941fcf5e3280215497f39a237e2fe1887f4d995` |
| 7 | `theorem` | [sum_pos'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/sum-pos.md) | 80 | `result-track:5f76feec734a2aaaedd6d052b7d2082fbe0f98462c401a91fd49a335a767e96f` |
| 8 | `lemma` | [single_le_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/single-le-single.md) | 88 | `result-track:1f636a2eeed4753621394ac7ad247dc10b7ea76c707d14e7e069dbb3c8d29d8b` |
| 9 | `lemma` | [single_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/single-mono.md) | 91 | `result-track:2ac6ee0b83a384df8635088501ac97db74451be53b9468eaaa4a5fddbe9ed577` |
| 10 | `lemma` | [single_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/single-nonneg.md) | 93 | `result-track:c084641fbe58b05521c88fa564ff5d8cc1f35785bbce6850dda8a3c1f82f5349` |
| 11 | `lemma` | [single_nonpos](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/single-nonpos.md) | 94 | `result-track:d936f542ae1ca41518bb47217864225e341d32afa20f535ce34744cd72c33a0a` |
| 12 | `lemma` | [sum_le_sum_index](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/sum-le-sum-index.md) | 98 | `result-track:d55b37779bf2de6a31fa2cd081b72bea248f51f02b15cd4ceb1e2bac78e98071` |
| 13 | `lemma` | [embDomain_le_embDomain_iff_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/embdomain-le-embdomain-iff-le.md) | 111 | `result-track:772881070d63465c02ac15258657e3ae221cdf51f4419f00063310cacbdf9874` |
| 14 | `lemma` | [embDomain_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/embdomain-mono.md) | 120 | `result-track:a8acb7474c8fa8e78a2caae0e7f5d7663e12b6c978b75fdc7f4f3532315bcd5c` |
| 15 | `lemma` | [embDomain_lt_embDomain_iff_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/embdomain-lt-embdomain-iff-lt.md) | 124 | `result-track:10470705ec392daf612d0a7ce034fe34edb8ad43aaa0a2e010972ca29747826d` |
| 16 | `lemma` | [mapDomain_le_mapDomain_iff_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/mapdomain-le-mapdomain-iff-le.md) | 136 | `result-track:b634da055fcbe951f3374c6e79ae5d421df287ed1aa1dd63b48e6d16afbc5c28` |
| 17 | `lemma` | [mapDomain_lt_mapDomain_iff_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/mapdomain-lt-mapdomain-iff-lt.md) | 140 | `result-track:8a00b310bc952f7793d67e38924181522fdd56cc0d6c946a1c761919df909ae3` |
| 18 | `instance` | [isOrderedAddMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/isorderedaddmonoid.md) | 152 | `declaration-track:7949e99a87b774999e370158c0bec05577c5808f992c2a820c73402bf78a0462` |
| 19 | `lemma` | [mapDomain_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/mapdomain-mono.md) | 156 | `result-track:8394ee39d60872234a107e9d74ae46dd74c9aac2787b9df292e06ceb388e6225` |
| 20 | `lemma` | [mapDomain_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/mapdomain-nonneg.md) | 159 | `result-track:60fa73daaec09c01d951e503675ed00c37f07ba4f6ddc92aeb75f776d78b099a` |
| 21 | `lemma` | [mapDomain_nonpos](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/mapdomain-nonpos.md) | 160 | `result-track:844c3edf430ff08a9b227c57ca7fdab8a68690c7de6b3bd55986f0c57c6d821c` |
| 22 | `theorem` | [single_le_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/single-le-sum.md) | 162 | `result-track:8b40b2c18f69de8067e5647f5fe06462b0d435dd29821595dc881b3535362c30` |
| 23 | `lemma` | [single_eval_le_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/single-eval-le-sum.md) | 173 | `result-track:969578e61e18dda0d9ae602eee59eff4aab376f70a9de7f180a71c8c202b07a5` |
| 24 | `instance` | [isOrderedCancelAddMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/isorderedcanceladdmonoid.md) | 181 | `declaration-track:668e6cef6fcaf2d071da362f5dc5dc57fa6b43b28bcd1f3f379b2a59220fc13d` |
| 25 | `instance` | [addLeftReflectLE](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/addleftreflectle.md) | 185 | `declaration-track:124c7bbee49cef1e0a325d2522a9abe0d766cb50ba5401ae354608068321736e` |
| 26 | `instance` | [instPosSMulMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/instpossmulmono.md) | 192 | `declaration-track:7a9b7e7ba111dde93d3749bb22f2b99e4f59efc572e695bfc6af6a2c0891a719` |
| 27 | `instance` | [instSMulPosMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/instsmulposmono.md) | 195 | `declaration-track:a27646604ae1d21007e180f5e1fd6963b186f3937d9f4317fbb06298a0e2efa9` |
| 28 | `instance` | [instPosSMulReflectLE](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/instpossmulreflectle.md) | 198 | `declaration-track:d8a7c948a2b90dc41339e8d8319c2134c4c975ba132e91fb6da3a816f368a577` |
| 29 | `instance` | [instSMulPosReflectLE](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/instsmulposreflectle.md) | 201 | `declaration-track:1ed9efa9a48fb3814494c2849a14d01e2ab5941112cc3ce57689a35a19a8d12d` |
| 30 | `instance` | [instPosSMulStrictMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/instpossmulstrictmono.md) | 209 | `declaration-track:818a4c2b80d05c9c1ebd06ffe67dd86408f8d61194da33ab6f3e6f0cfb2a04f4` |
| 31 | `instance` | [instSMulPosStrictMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/instsmulposstrictmono.md) | 212 | `declaration-track:88cac3e6f2e0d2ea80f1382d039380572974d22eecb8f8dad66c3fc18e51c0ae` |
| 32 | `instance` | [instSMulPosReflectLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/instsmulposreflectlt.md) | 217 | `declaration-track:178044e59ace363ed5f499cb367fa6b4141e511a725af59848c17b82732f845c` |
| 33 | `instance` | [orderBot](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/orderbot.md) | 226 | `declaration-track:aa2c870e5dd9ee5537d423c6f0796bbffce461b70efdb2df60c1c7553380e29d` |
| 34 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 230 | `declaration-track:6349f38f0a441dfdc1c606bca4fa058a9fae47c5e043c34f75142a4a154d1ca8` |
| 35 | `theorem` | [bot_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/bot-eq-zero.md) | 234 | `result-track:5cd15469707af42c55cfc8874897c24a71a67ff4d6534ea2354fed2622fd703b` |
| 36 | `theorem` | [add_eq_zero_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/add-eq-zero-iff.md) | 240 | `result-track:1a0d881ad8c8b95d883ec75ab88e6eb5dd2a35c7e354af42b3bbf4638975168b` |
| 37 | `theorem` | [le_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/le-iff.md) | 243 | `result-track:2427d7ec50e6c702f2a0c96ae1c7edb9cafd528b6e1cdb7888aab021219cb865` |
| 38 | `theorem` | [le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/le-iff-source-edition-2.md) | 250 | `result-track:7c67a482067bfb1d8b5ae75c9a850900886b880e8ee47074dcaf27077c6a3bda` |
| 39 | `lemma` | [support_monotone](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/support-monotone.md) | 253 | `result-track:5554e9e35e8bd969135f9c7f83d9fc7c9849992c4dfc78e4ebc52ac37100c192` |
| 40 | `lemma` | [support_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/support-mono.md) | 256 | `result-track:72a93b3ce33c1fa63592a0d0fe86281396c497e512e00d9e7fd2b27de6de3cdc` |
| 41 | `instance` | [decidableLE](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/decidablele.md) | 258 | `declaration-track:163c63771b32b9e2a32517c9d5eb406d4fe02b70e21d8e02b3957790b1bd73c5` |
| 42 | `instance` | [decidableLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/decidablelt.md) | 261 | `declaration-track:4607adbf737d85dec2142ea63d18f011f280b6bfa6315830778a4945d1fd5cec` |
| 43 | `theorem` | [single_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/single-le-iff.md) | 265 | `result-track:971db7bed84233c8579b45cb03b1e1de7d4d5d2ae33b7213c697b41dbdbcd044` |
| 44 | `instance` | [tsub](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/tsub.md) | 272 | `declaration-track:0ec537f11bbbb178495f5d617a7a643cd914020acf41ba7c07d5c38e8cc81e10` |
| 45 | `instance` | [orderedSub](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/orderedsub.md) | 275 | `declaration-track:7af5fc78739708410fccb5418e1c63284fce17bfb9ecc185c530721452c934ca` |
| 46 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/instance.md) | 278 | `declaration-track:4e23e93ef101422821abf8b597e4eb2a05c2acf6c6603fb19b4dcd67a51fd39e` |
| 47 | `lemma` | [coe_tsub](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/coe-tsub.md) | 283 | `result-track:3cc56a36da469373977ebca17dd63b75b209778cc2ceaf2f5b9c40ad0bc7d4f8` |
| 48 | `theorem` | [tsub_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/tsub-apply.md) | 285 | `result-track:fd284f46469fd99f0983faff346f2e1fa23e5f7c5f1567e82302e3b9f8c70754` |
| 49 | `theorem` | [single_tsub](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/single-tsub.md) | 289 | `result-track:4601a249491d8d10af56b896e52cf370edbf6d421b626b171010f9fc1ad30bc1` |
| 50 | `theorem` | [support_tsub](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/support-tsub.md) | 295 | `result-track:60dc2a72cbc07600fc79b1acd284dc22f6f956f0bd4abe111417da35a759a710` |
| 51 | `theorem` | [subset_support_tsub](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/subset-support-tsub.md) | 299 | `result-track:3b44d3ab1372f6213c060714ca6b4ff0c88d7c72f671f978c88989c917b8d944` |
| 52 | `lemma` | [mapDomain_tsub](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/mapdomain-tsub.md) | 303 | `result-track:958b1ea8a7ef1dfd6f07b69240f5cc20210d9db9674fec1c4d6dfae62149a606` |
| 53 | `lemma` | [embDomain_tsub](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/embdomain-tsub.md) | 311 | `result-track:fe5babaf16322223b288e71f38b7874a1ddfbc705278ed64bfa74dfeea0c9171` |
| 54 | `lemma` | [support_add_eq_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/support-add-eq-union.md) | 320 | `result-track:e3e640a050db775673877fe86140aa5f3ab8bf20747961ca51d2a2d575587764` |
| 55 | `theorem` | [support_inf](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/support-inf.md) | 332 | `result-track:ee53adbe98235b2958601c9169ec765b2abf3d0b9cf7e93513a4698fee807f7e` |
| 56 | `theorem` | [support_sup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/support-sup.md) | 337 | `result-track:3bba7c49e2c704226195638cfbeb03bbe972c731f3aa6c058eeff698284f1bf3` |
| 57 | `theorem` | [disjoint_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/disjoint-iff.md) | 341 | `result-track:f60159773fc04b7fabb25c1cb998535305b489f9041d3ad0234c7f4b31672023` |
| 58 | `theorem` | [sub_single_one_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/sub-single-one-add.md) | 351 | `result-track:417874988aff7566238b386d2dfc22e6106344c8a9944aca33a5b850eaf6a88e` |
| 59 | `theorem` | [add_sub_single_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/add-sub-single-one.md) | 355 | `result-track:b4229421ab1a6b97438aa156efaef2639498c6bbb4b4bc19da9deed7a43c40e4` |
| 60 | `lemma` | [sub_add_single_one_cancel](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/sub-add-single-one-cancel.md) | 359 | `result-track:fed4e1a720872bf8fa0baf06cd590c4b5409ca1cd037ada4a3dd7acd70174647` |
| 61 | `theorem` | [isLowerSet_range_embDomain](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppOrderNamespacedPublic.lean/declarations/islowerset-range-embdomain.md) | 363 | `result-track:80de9e749f79aab353310516bc74191794979f9de467f43673e1f06ae1c7af4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5000d1654dc0ff8d2d03c8b14704e7c585c28431fa7165162f175e16a02630a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant4df9429617dd5f76c405fa60e8961fe7b972f7e6c84a3023180d6f1a3d75f5c0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant4df9429617dd5f76c405fa60e8961fe7b972f7e6c84a3023180d6f1a3d75f5c0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
