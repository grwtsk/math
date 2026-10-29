# Verification target: Subgroupoid Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2910dee500394f7b63e434ee369da8e5f712fb3f",
  "lexical_observation_count": 100,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant051b198c37d68b86633489fe6d630168c8c08d2c6d939485cfdd77b3256d9e0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2910dee500394f7b63e434ee369da8e5f712fb3f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant051b198c37d68b86633489fe6d630168c8c08d2c6d939485cfdd77b3256d9e0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant051b198c37d68b86633489fe6d630168c8c08d2c6d939485cfdd77b3256d9e0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Groupoid.VertexGroup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.GaloisConnection` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Subgroupoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/subgroupoid.md) | 81 | `declaration-track:4d86d97686e9435a48d29de425383b65922c874d65fce8d7fd6c7cd526c87ee0` |
| 2 | `theorem` | [inv_mem_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/inv-mem-iff.md) | 91 | `result-track:812e2ce71592809254985017bac082aca51778817a2597d620f59c13cfacfc0d` |
| 3 | `theorem` | [mul_mem_cancel_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/mul-mem-cancel-left.md) | 99 | `result-track:f8ccd30b23b7ee97aa183e3b49b01deef2a2a9f993ed81854979864a9f1a0b74` |
| 4 | `theorem` | [mul_mem_cancel_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/mul-mem-cancel-right.md) | 109 | `result-track:12bbfee6303fa609de31534388ae8df52a3ac6da586b322e95be62d92479d8aa` |
| 5 | `def` | [objs](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/objs.md) | 120 | `declaration-track:a08370b37680147ab0738c7ed725e0100d0439ede202039b51d58ff32ee06fba` |
| 6 | `theorem` | [mem_objs_of_src](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/mem-objs-of-src.md) | 124 | `result-track:fc20522c906f8cf79c8af70c629df08b0187986e36e3830b5a43b67dde09a376` |
| 7 | `theorem` | [mem_objs_of_tgt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/mem-objs-of-tgt.md) | 128 | `result-track:491d9d80ad5c64cd339ea2efb4640cc49f2b5bba5590ec6225509b69bb6968bd` |
| 8 | `theorem` | [id_mem_of_nonempty_isotropy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/id-mem-of-nonempty-isotropy.md) | 132 | `result-track:00952159d33f999fd195aa1199641dcb21fc155121a4e2ab1de21dd2d7115187` |
| 9 | `theorem` | [id_mem_of_src](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/id-mem-of-src.md) | 138 | `result-track:8de79c91acc475e2f027b72984ae29f562e127a02e393074f3b316efe1a96e2a` |
| 10 | `theorem` | [id_mem_of_tgt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/id-mem-of-tgt.md) | 142 | `result-track:11a8867b50cdba891d0dccabad33cea85b5d8d1adcafabe22bd5fc0fcd669ba7` |
| 11 | `def` | [asWideQuiver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/aswidequiver.md) | 147 | `declaration-track:b73d5996a59e326e0932a1abba772874b267c0a51d010a04e191ef94eb820344` |
| 12 | `instance` | [coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/coe.md) | 153 | `declaration-track:456eae20ba47afb40a83488f4c050ddef2052fb9e46b2e1b3720166bea1653db` |
| 13 | `theorem` | [coe_inv_coe'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/coe-inv-coe.md) | 161 | `result-track:2de49d500cafb86c324adc210da67a42a9169ec11fac1b05b88d152233867a56` |
| 14 | `def` | [hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/hom.md) | 167 | `declaration-track:e5b7a90c0bfd430c8f1a5cc72bde306819fbd9ef0d9e1ad80b5d36f9682b7908` |
| 15 | `theorem` | [hom.inj_on_objects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/hom-inj-on-objects.md) | 174 | `result-track:f56ef5b392839fd7db2400e9d69135b8e398496793b37c89617127f847936fd7` |
| 16 | `theorem` | [hom.faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/hom-faithful.md) | 179 | `result-track:8415227b6bb46dc01fbc402b9e88b21d93d13ebd865bae8030cfa2da6fba39b1` |
| 17 | `def` | [vertexSubgroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/vertexsubgroup.md) | 184 | `declaration-track:ff02d2cbad292ac00031c083e806a268f0433bf5a4a703b6031e33d7e6acd8ca` |
| 18 | `def` | [toSet](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/toset.md) | 192 | `declaration-track:bf54f071c666f7fe1be9393cba39152dc04cb0c2231ff5e9122cf274ebf2652f` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/instance.md) | 195 | `declaration-track:33d58743a8e9167f7f4024ecc73108fde03c797c9f134d70f2a0f53aace6b963` |
| 20 | `theorem` | [mem_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/mem-iff.md) | 199 | `result-track:afbb06bdb2b8fe485f663597064b5f846f52e954a1ce87e69b7c2ed2f685b726` |
| 21 | `theorem` | [le_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/le-iff.md) | 203 | `result-track:ec9f987910e69ca329bb380febdf778a5ef189c367eb69e5c609cf741c517950` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/instance-source-edition-2.md) | 207 | `declaration-track:6ae029cdbe956d2630d0603f33f8b30605ffbc609b39dfa5af53a14ce07376c2` |
| 23 | `theorem` | [mem_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/mem-top.md) | 212 | `result-track:2d6d814b204378b0d1bc5cf4be783cbf6806c4002e9dd1573c3ccd7d2b086af9` |
| 24 | `theorem` | [mem_top_objs](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/mem-top-objs.md) | 216 | `result-track:b7ccdcc4d9f40fe614995067abeb0572d0516ad748415a8fbe2a31878da3ef2e` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/instance-source-edition-4.md) | 221 | `declaration-track:90b2b0bb2ecda7c7ff3d66998ca8c850cb0988250f4f8488420697f629c506e4` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/instance-source-edition-7.md) | 226 | `declaration-track:bd24fa5892f0f3823b67ddd9344858a95a8dfdfb7aa2d575d6c7f35ca159995b` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/instance-source-edition-5.md) | 229 | `declaration-track:9552aafdc37f6dcc99efe121fc01d2af27c01f3a857c97fae6cd3cbcb2dd6e1f` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/instance-source-edition-6.md) | 235 | `declaration-track:96621756de7bbff672a1921c3d6b3a77279838100cdcc93987b8e42b826b15fa` |
| 29 | `theorem` | [mem_sInf_arrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/mem-sinf-arrows.md) | 244 | `result-track:e68785ce7bb780f5062bdff4994bea4efc43788a8c9befe81e1417df338a0ef0` |
| 30 | `theorem` | [mem_sInf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/mem-sinf.md) | 248 | `result-track:ba000de538f8b509495dd00187376f65b03f77edb8d8bc301365b4375988b48b` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/instance-source-edition-3.md) | 252 | `declaration-track:8450a3633da5855c371c8720eb2fcaadf9d28c7bee50ad6b0d0ecf3192cf48fd` |
| 32 | `theorem` | [le_objs](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/le-objs.md) | 265 | `result-track:b3af41376ec0e7c9587acc7642630891111a593722c5fd4f967fe1fd17ca5c72` |
| 33 | `def` | [inclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/inclusion.md) | 270 | `declaration-track:00e96363fea707112073bf083519e97afedb5c40fbb950d7c0a69783df6f3564` |
| 34 | `theorem` | [inclusion_inj_on_objects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/inclusion-inj-on-objects.md) | 277 | `result-track:d93bcb62e5af015abb145c7d4a7eb17e9f49b7fb306a21d629999328f3f50d8a` |
| 35 | `theorem` | [inclusion_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/inclusion-faithful.md) | 282 | `result-track:f5658a5571f82db8c4df37c98cb5df5904ff4d4d982dc2ce7c6fbfa336a4c36d` |
| 36 | `theorem` | [inclusion_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/inclusion-refl.md) | 288 | `result-track:f8f8f888a75c6b07010c27b7e55829e8bc1df31967b18ae703a13ff9e290de78` |
| 37 | `theorem` | [inclusion_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/inclusion-trans.md) | 292 | `result-track:3fcfe82eb53bffc5ce68c0f9007607420ce607dbe143c051ee1000817a74e7a5` |
| 38 | `theorem` | [inclusion_comp_embedding](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/inclusion-comp-embedding.md) | 297 | `result-track:169c93ece43dfafdace6e3b54fb5b906fcce04755c902979dee85bc15c836dde` |
| 39 | `inductive` | [Discrete.Arrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/discrete-arrows.md) | 302 | `declaration-track:c290120cdc66075d08d4c5551ea16e41690b904a9e653232bc53605a6ab40e8a` |
| 40 | `def` | [discrete](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/discrete.md) | 307 | `declaration-track:88ff291b31db9de9bdf82004cec5ce7d8f386dbf9c467817e16c0ac2ecc6cb26` |
| 41 | `theorem` | [mem_discrete_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/mem-discrete-iff.md) | 313 | `result-track:d1fbda97b051e8e82523307254e8ca1db13b441443731958781279228ef65f95` |
| 42 | `structure` | [IsWide](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/iswide.md) | 319 | `declaration-track:1baecde0ca3751ce2f69797c8f12aba22168b76bef394fff5dc420d70db17b02` |
| 43 | `theorem` | [isWide_iff_objs_eq_univ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/iswide-iff-objs-eq-univ.md) | 323 | `result-track:db1c775d69017ca46bcb0e82ec43444b81f79ab5596bbbf30fe4b3bd0580d3a4` |
| 44 | `theorem` | [IsWide.id_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/iswide-id-mem.md) | 334 | `result-track:3e01057b2483ecf856f618a7ccfc2f8003e3905df9be009c0dc0819a49338ec3` |
| 45 | `theorem` | [IsWide.eqToHom_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/iswide-eqtohom-mem.md) | 338 | `result-track:b09c2fc5ee80dd917785d52d670fb2ab9f03a97fb4aa7783114ee6e4c9eeaa16` |
| 46 | `structure` | [IsNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/isnormal.md) | 343 | `declaration-track:9d15c6bd1113372db1d3d1386db96c6e1d601be0aa179a91b201a9d598d0ef71` |
| 47 | `theorem` | [IsNormal.conj'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/isnormal-conj.md) | 347 | `result-track:007912ddcab6d2d426bf166afe7cdaca9b87ea476860d011919fcc7ba4918eba` |
| 48 | `theorem` | [IsNormal.conjugation_bij](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/isnormal-conjugation-bij.md) | 352 | `result-track:bfb5c0ea4b81aa8fb5dfbecced91bf729c96907277d4613d3c742881487b2a21` |
| 49 | `theorem` | [top_isNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/top-isnormal.md) | 362 | `result-track:459bdaed04a9af0cbcedbbd383a0f0b24fdd35a5ca22a06b52bd567e0fcef114` |
| 50 | `theorem` | [sInf_isNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/sinf-isnormal.md) | 367 | `result-track:c4d7ab864174a3f2bc29acfb64b6edcc4b7b8b631e434e7d981796c603935f3e` |
| 51 | `theorem` | [discrete_isNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/discrete-isnormal.md) | 372 | `result-track:66f59ada0ec2a2d93ee0b48ed2887ea42d4bb0a43541fa18325008e8a23512fb` |
| 52 | `theorem` | [IsNormal.vertexSubgroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/isnormal-vertexsubgroup.md) | 379 | `result-track:cabe3f043a149c3723b24b78b4a8078b91744d7db2cfe634d884afa16590abc9` |
| 53 | `def` | [generated](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/generated.md) | 390 | `declaration-track:ba7a0dd6f3055c72a7a5a4cccbb43352dddd76aa1ed4e24c406528b4ac965a29` |
| 54 | `theorem` | [subset_generated](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/subset-generated.md) | 394 | `result-track:4b786736db92b1b3f62d71d25f462e689d2694639ffb725345c5ef5790e7ce27` |
| 55 | `def` | [generatedNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/generatednormal.md) | 401 | `declaration-track:567b76f1aaa636571d2557c63aa728c878b299aa5f0d5c1801e69f7c8c845d91` |
| 56 | `theorem` | [generated_le_generatedNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/generated-le-generatednormal.md) | 405 | `result-track:8364a3857bdf2fe2f0f2289bd616e25d36b422968f6563f4f169abe352cfb4fb` |
| 57 | `theorem` | [generatedNormal_isNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/generatednormal-isnormal.md) | 410 | `result-track:66334b4a51573b69133424403908c75a47f5d89e02804fab374edcf754475101` |
| 58 | `theorem` | [IsNormal.generatedNormal_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/isnormal-generatednormal-le.md) | 414 | `result-track:d416bd919ce5bf7efd5902b81e33c519c70925be8809ffbc2e556507a4c3c6e8` |
| 59 | `def` | [comap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/comap.md) | 435 | `declaration-track:00126a065692ef83a4e901a3ea541dc4413e5c2e1cdbe198c5a04dc8a541bba6` |
| 60 | `theorem` | [comap_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/comap-mono.md) | 444 | `result-track:4b42d0220b87670bbcfc1e0b739cf5d1a711196c7f94167fa731eae4cf34f2b2` |
| 61 | `theorem` | [isNormal_comap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/isnormal-comap.md) | 448 | `result-track:080f6b50a403be951020a5e62e68358c793c0fab35927c035239df0776b346c8` |
| 62 | `theorem` | [comap_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/comap-comp.md) | 456 | `result-track:84bce4a474d20441c18f6ae4cb0372797ff0638ce0ecb4059ce0fae7c57ba021` |
| 63 | `def` | [ker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/ker.md) | 461 | `declaration-track:767ebb1f9bd1ba7d129edd22699090b1a13f803595bab769ebc95e987d472256` |
| 64 | `theorem` | [mem_ker_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/mem-ker-iff.md) | 465 | `result-track:5aa17cc7f7f767839a8855b13a29d79ca4cdd8c210f5f7d126835d5b0342182b` |
| 65 | `theorem` | [ker_isNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/ker-isnormal.md) | 470 | `result-track:3f61109d208a9c298ff6b4dc57abc82ee2bd74fe93723b8a914f8943bf9c39be` |
| 66 | `theorem` | [ker_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/ker-comp.md) | 475 | `result-track:8217a113855efffc5365bc7a755f912e417126d6794f8de9f9f20ed988e9a32f` |
| 67 | `inductive` | [Map.Arrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/map-arrows.md) | 480 | `declaration-track:1ff0bd950fa872ca04ff82302bd9c22e75363c6e701efc47c0e1e24df4178a4e` |
| 68 | `theorem` | [Map.arrows_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/map-arrows-iff.md) | 484 | `result-track:5027b8160163746a6950cc9fb582eff2d4e8b1ff639340a24b42535c8ceb1831` |
| 69 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/map.md) | 494 | `declaration-track:05f1e290072e0bba90474819a58bc1b73826ee38f255a12808dfe4fe69173870` |
| 70 | `theorem` | [mem_map_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/mem-map-iff.md) | 507 | `result-track:0b38117bd957fcdc3aec802c6a31a3a6f4970caeb25bd67b6f6ae5e67d0a98ad` |
| 71 | `theorem` | [galoisConnection_map_comap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/galoisconnection-map-comap.md) | 514 | `result-track:a5d511314286c9f5868e9995e7d06794d5936b26b6a2dd86be4cd5bba0741f1c` |
| 72 | `theorem` | [map_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/map-mono.md) | 522 | `result-track:5e40e2aea26f21008ae2be8ef8b4d331c219f929452702540e84983cb1a87273` |
| 73 | `theorem` | [le_comap_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/le-comap-map.md) | 526 | `result-track:11a5f590bb3e586686bbef643602d187b55f37737cba7b32424fc923023267a3` |
| 74 | `theorem` | [map_comap_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/map-comap-le.md) | 531 | `result-track:9929977a3c5fb1ee4f40d4e5b99cff813f49e6664002afef45d4ca691a9486fa` |
| 75 | `theorem` | [map_le_iff_le_comap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/map-le-iff-le-comap.md) | 536 | `result-track:4354068df2476e546a0b50d23fe24daaf23d13adab75e992ad999e1e42250f72` |
| 76 | `theorem` | [mem_map_objs_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/mem-map-objs-iff.md) | 541 | `result-track:22ccac74aa0056a9c70dae369287a9ba4701d53e73f7fb44061dc38d9b84ee94` |
| 77 | `theorem` | [map_objs_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/map-objs-eq.md) | 554 | `result-track:24007a7607fbbe68eb41d8ded8f3f8225cd190ba586811395289e676f4a49388` |
| 78 | `def` | [im](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/im.md) | 559 | `declaration-track:157fe0884c499ef99426e1a2311700319ed900a7da58e674923a2e1ef42214db` |
| 79 | `theorem` | [mem_im_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/mem-im-iff.md) | 563 | `result-track:b8a3cf71c2de0867b60081658f1b86ad0c7788253f8c317e34743c68481d6da5` |
| 80 | `theorem` | [mem_im_objs_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/mem-im-objs-iff.md) | 570 | `result-track:99f9233202b4dbcfc5ccebaa46b3fdebdf86072f54ac3c916fa50a16015acdf2` |
| 81 | `theorem` | [obj_surjective_of_im_eq_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/obj-surjective-of-im-eq-top.md) | 575 | `result-track:53699342905e715f46faef0b04a5e13b5c6b407bb5fc2ef9b05a3f2a2a069256` |
| 82 | `theorem` | [isNormal_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/isnormal-map.md) | 582 | `result-track:cb4d03708ad2a0665bd082479d4554efbba46875063db448c0b06a05a6bc6e4f` |
| 83 | `abbrev` | [IsThin](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/isthin.md) | 610 | `declaration-track:51ed7751dbc9456a708534fdc9c2bb4c2d81e5c80d2166b6d872a2fb30af30ba` |
| 84 | `theorem` | [isThin_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/isthin-iff.md) | 614 | `result-track:36c2db38205ea2781756a45a52ed0d6a2a8d0324e7bb89e70f32e6fb31136514` |
| 85 | `abbrev` | [IsTotallyDisconnected](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/istotallydisconnected.md) | 622 | `declaration-track:e610039465ee44a97434355e6de4b06350e68d9ab71b9958c2b7a935527e8a37` |
| 86 | `theorem` | [isTotallyDisconnected_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/istotallydisconnected-iff.md) | 626 | `result-track:fdbd6217a8add80cdfec00f075cecb8ef5a0bb1ba7f7bc66c60124a5960961cd` |
| 87 | `def` | [disconnect](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/disconnect.md) | 638 | `declaration-track:361f6a0a5c172c65c38d853aff6dd41ae014868e9c69c915659026e2417ad547` |
| 88 | `theorem` | [disconnect_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/disconnect-le.md) | 644 | `result-track:940ea096d933617c5b050cc955c59f7201d9adb34a30a812b3b9e79411ef19d1` |
| 89 | `theorem` | [disconnect_normal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/disconnect-normal.md) | 647 | `result-track:2d424543f733cb9b2610f112a26b07e84bd18c8780b313b1ab8bf08f0cc88a7b` |
| 90 | `theorem` | [mem_disconnect_objs_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/mem-disconnect-objs-iff.md) | 653 | `result-track:6af82063aaf636e3cf51423fdae676ce24163298cb973d7b505ab28a97767b2b` |
| 91 | `theorem` | [disconnect_objs](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/disconnect-objs.md) | 657 | `result-track:b93fc949ffe881349237c5bb8f4537e1052bbfd1ac0822e855c9e9c4db671d3f` |
| 92 | `theorem` | [disconnect_isTotallyDisconnected](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/disconnect-istotallydisconnected.md) | 660 | `result-track:d53d3112e16b4860beff2b706e4909bb0dbe6fe3dcef080968a737215f65e7e3` |
| 93 | `def` | [full](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/full.md) | 671 | `declaration-track:d35df605030730040c0bddefa4f2b1006b0c58410bf55b938c6456feac23ca76` |
| 94 | `theorem` | [full_objs](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/full-objs.md) | 677 | `result-track:addf7dfffe3b594485d9c916df4b85ad86bbfb83317d668d119a782ad63245f4` |
| 95 | `theorem` | [mem_full_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/mem-full-iff.md) | 682 | `result-track:884427c9602bd57f58a95527ffcdf116215f7c3865fbf2ba2c71a32f82af159f` |
| 96 | `theorem` | [mem_full_objs_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/mem-full-objs-iff.md) | 687 | `result-track:ad5b3b9011a61705f64598b22033c8ac77afb9c37b8ed17941bc009c63f75a02` |
| 97 | `theorem` | [full_empty](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/full-empty.md) | 691 | `result-track:22739162eb8f803508e825c37323eff8f27d2b31534585713c4ba6788db08a69` |
| 98 | `theorem` | [full_univ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/full-univ.md) | 697 | `result-track:460df4ed254fd2982f2389f446787362a2a3c26a71da25daf9ce19ff83022842` |
| 99 | `theorem` | [full_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/full-mono.md) | 702 | `result-track:e4d385d5f8d24d9c4eed52f6e7ed3720d7965b1c2030aface333808adda25a64` |
| 100 | `theorem` | [full_arrow_eq_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubgroupoidNamespacedAligned.lean/declarations/full-arrow-eq-iff.md) | 710 | `result-track:5411700d716742a0ca01c50adac7f11da9462f10e3b2b481c79c5a1a5c60d8fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=21bf71a103a16c801ea812fd0ff7fb5c6ec296d1940016dce52cc25c56962e86 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant051b198c37d68b86633489fe6d630168c8c08d2c6d939485cfdd77b3256d9e0c.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant051b198c37d68b86633489fe6d630168c8c08d2c6d939485cfdd77b3256d9e0c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
