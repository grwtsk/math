# Verification target: Span Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29f56a3fa4b45053eb08e6e8f1dfc19d1294b988",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Varianta2c41f37929e70695c0d80e6d85bc78362b7ab518c00d711009c6e80fc7d66d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29f56a3fa4b45053eb08e6e8f1dfc19d1294b988`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Varianta2c41f37929e70695c0d80e6d85bc78362b7ab518c00d711009c6e80fc7d66d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Varianta2c41f37929e70695c0d80e6d85bc78362b7ab518c00d711009c6e80fc7d66d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span.md) | 52 | `declaration-track:43bad5b3c813be144fe3fb67df88527ad6932cd18ef75b9a2ddf68e2bfc21741` |
| 2 | `class` | [IsPrincipal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/isprincipal.md) | 57 | `declaration-track:88f9f32e9fa8c79aeb00340ede39b508267cd8326cd473c6ceffb3974f56fff4` |
| 3 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/instance.md) | 60 | `declaration-track:6f5567c2a3dedf5dde6717afe88a70ed3c7b2d34fe34988962a740b3d7cda8b6` |
| 4 | `theorem` | [mem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/mem-span.md) | 66 | `result-track:3dc1d32cf6d49c9174d30ba7e9c293b779e76946b8f60e13dc470052c9147019` |
| 5 | `theorem` | [subset_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/subset-span.md) | 70 | `result-track:4bcaca31f0104ffb27a356df34decbb3b64f5535185998ae8c6981bdf0e7ad56` |
| 6 | `theorem` | [span_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-le.md) | 72 | `result-track:2b53b87ffb66aebd595cedd6a18c40b53023435807373a2b7fa4d965427d4059` |
| 7 | `theorem` | [span_mono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-mono.md) | 75 | `result-track:ae4ba168e0471e39de88c01b56be298657c41ebe58d95f30d04ca199bc5bbcb7` |
| 8 | `theorem` | [span_monotone](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-monotone.md) | 78 | `result-track:c9c9d67e47f860968db32f0adc70b893997863c297a61b15af95ecee90012a75` |
| 9 | `theorem` | [span_eq_of_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-eq-of-le.md) | 80 | `result-track:faaa14cac6c8c05cb3e674413a0b46161c945268c1d4ffe6cf5ea7c3f359881d` |
| 10 | `theorem` | [span_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-eq.md) | 83 | `result-track:10339dd5f395d38896ed4b987430b84fc0c41cce73ecf6c72561fd041a24b3aa` |
| 11 | `theorem` | [span_eq_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-eq-span.md) | 86 | `result-track:f9e7f1bab8bc89e2933a3591863d81856f58a251c47d6c4335b79e90c3421abe` |
| 12 | `lemma` | [coe_span_eq_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/coe-span-eq-self.md) | 92 | `result-track:583f63d0f645f2cf013dd495bafa43c23213da20eb90cef611855dceba0f93cc` |
| 13 | `theorem` | [span_insert_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-insert-zero.md) | 103 | `result-track:c6601ed22ecd9b4cb23fa7179f8f2f291d1809fd1c2f21868f96cb597362739b` |
| 14 | `lemma` | [span_sdiff_singleton_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-sdiff-singleton-zero.md) | 109 | `result-track:f507517859108dc2d22c0e74fe2e994b43de102bf5de5915414c92ea96d42b91` |
| 15 | `theorem` | [closure_subset_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/closure-subset-span.md) | 114 | `result-track:f724207bfa31577a3e0a29dfbb570dae5a6d94e045db2916cf17a3a8733f491b` |
| 16 | `theorem` | [closure_le_toAddSubmonoid_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/closure-le-toaddsubmonoid-span.md) | 117 | `result-track:c0f1ae9e5b1a8bbe63a2231223c5d1d14241ed34ec82a611f223ccdb4c25f4df` |
| 17 | `theorem` | [span_closure](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-closure.md) | 122 | `result-track:1f8ae14446954b66b65dd0dfb5c6fb09c5df6e806cbe497e1b0965cd6d48036b` |
| 18 | `theorem` | [span_induction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-induction-source-edition-2.md) | 129 | `result-track:974b1e9c4282043b37a63d9d194ef5692e38e1e545450937739bb67721ad2caf` |
| 19 | `theorem` | [span_induction₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-induction.md) | 144 | `result-track:391f7e9323e58bcfde05f9b0e676d12b1db5de100c5954a491706ef892cfae81` |
| 20 | `theorem` | [span_eq_closure](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-eq-closure.md) | 165 | `result-track:683c277b7ec1dd5fc2ba929fe9ff1dffcb998971073ea11740ef3ac9b3048de9` |
| 21 | `theorem` | [closure_induction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/closure-induction.md) | 189 | `result-track:3e3fd735b6ba63e24e09cb6978790289f728b74a7422545ad82751716aa5c68f` |
| 22 | `theorem` | [span_span_coe_preimage](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-span-coe-preimage.md) | 201 | `result-track:9309f1b6db77e33c4020277e6e8ac90d50d1c2af98db8cfa9dde7066a402b33d` |
| 23 | `lemma` | [span_setOf_mem_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-setof-mem-eq-top.md) | 207 | `result-track:0d9fa3376d99478822237c421cfe122994aab64d3d488b3f95e047cfc5088144` |
| 24 | `theorem` | [span_nat_eq_addSubmonoid_closure](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-nat-eq-addsubmonoid-closure.md) | 211 | `result-track:8914ac9b5b0fce5a25c958d66ddb88b2de1c9d7feeb63012557bdd295d7d3850` |
| 25 | `theorem` | [span_nat_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-nat-eq.md) | 220 | `result-track:c94b41e42dacbc51eef0c2d4da4413e53d5caab59d6d079153977a2b02777348` |
| 26 | `theorem` | [span_int_eq_addSubgroup_closure](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-int-eq-addsubgroup-closure.md) | 223 | `result-track:3036bee7f0812cd955f247cc9fccb54594d2fbd51932a73a4cceb0ca86df1fb6` |
| 27 | `theorem` | [span_int_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-int-eq.md) | 231 | `result-track:6523bb637898889749525c5b96c401c8e21ff160a2792529ea5f0c88e6ddd336` |
| 28 | `theorem` | [Span Defs Namespaced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/of-span.md) | 234 | `result-track:3fcd0fb1e96125a091c080d1ce19e2b57b9fca70786d21a866bd96249004d53c` |
| 29 | `theorem` | [Span Defs Namespaced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/of-span-source-line-240-occurrence-2.md) | 240 | `result-track:8b744efe91bd6bbcc01afc41cd1a9726c9fb53efe09ff2c46ef1e20713fdb5e4` |
| 30 | `def` | [gi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/gi.md) | 250 | `declaration-track:2fc0ef7352eac12530474a2fd4b6f5c1a1f35ac75386b5b9520157314cbb8313` |
| 31 | `theorem` | [span_empty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-empty.md) | 259 | `result-track:5241b33498aadfcea6005384730495f79f77add71257f4024d2d976a9e42cd50` |
| 32 | `theorem` | [span_univ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-univ.md) | 263 | `result-track:61439fe52d0b8b42329f7fe06286f1dd475091a404cccac804a6e2820d0bdd22` |
| 33 | `theorem` | [span_union](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-union.md) | 266 | `result-track:400a1e7a63723941124a0b5d642ac42e3696fa8241ef382951d3765279f5794f` |
| 34 | `theorem` | [span_iUnion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-iunion-source-edition-2.md) | 269 | `result-track:e2723f761214a77ca723a10c53c0ee1a7acba3992a8cf5d42134203f99b6bc31` |
| 35 | `theorem` | [span_iUnion₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-iunion.md) | 272 | `result-track:22c0aec281750022393dc0cfd3340f2e6603f234c6e14cac397c2c0c812f6912` |
| 36 | `theorem` | [span_attach_biUnion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-attach-biunion.md) | 276 | `result-track:8d0f953509ad8bb7ae38b154c02a877e71a1a6e692cecce7b85005b08b01870d` |
| 37 | `theorem` | [sup_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/sup-span.md) | 279 | `result-track:7f88b395d048606b2dd301ad379c0035a91ff29b8af31a4e82f23dc029198041` |
| 38 | `theorem` | [span_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-sup.md) | 281 | `result-track:a594e3214202c7ce3cd13fc205275bf6e86ba4aac53abc41039e47483550e06b` |
| 39 | `theorem` | [span_eq_iSup_of_singleton_spans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-eq-isup-of-singleton-spans.md) | 288 | `result-track:4d4733ff72f5e072b592cee0c9c304d7122f283307e010ab11881cb765d29302` |
| 40 | `theorem` | [span_range_eq_iSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-range-eq-isup.md) | 291 | `result-track:79ce544e48f9e83207903bd40182406ff130f316ceba09e2b279890e20bf6463` |
| 41 | `theorem` | [span_smul_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-smul-le.md) | 294 | `result-track:b23124f46a7fcad7a07a1ac409490fb4ec05529c1b3796295f02b0766bc84874` |
| 42 | `theorem` | [subset_span_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/subset-span-trans.md) | 299 | `result-track:e64a7cad08f96299bb4615efd569efba7c2b50b88877025cdc32aefcf9f926d9` |
| 43 | `theorem` | [coe_iSup_of_directed](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/coe-isup-of-directed.md) | 304 | `result-track:3074cef0bea7927f60a40f1e95c1d52fdb2a2e16c636f96e28cbd5201333f625` |
| 44 | `theorem` | [mem_iSup_of_directed](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/mem-isup-of-directed.md) | 315 | `result-track:e4fe768e81220e63097cd32ab939cfb328164d9edc4f88df10e263ba5e032e20` |
| 45 | `theorem` | [mem_sSup_of_directed](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/mem-ssup-of-directed.md) | 320 | `result-track:408576feb25de8bf53956b767626b94b88446c75bba9fd729533117a85758c24` |
| 46 | `theorem` | [coe_iSup_of_chain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/coe-isup-of-chain.md) | 327 | `result-track:e403e0fac5ff3fda6bd840ff7c655c9e48d28ded1ed1f64d89e3d526a0f5e38c` |
| 47 | `theorem` | [mem_iSup_of_chain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/mem-isup-of-chain.md) | 331 | `result-track:ba8a6da33108f2fd6de6f79a6ed263915dec7e4e14fbcdfc99060ff1e54a9396` |
| 48 | `theorem` | [mem_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/mem-sup.md) | 338 | `result-track:5299b158cb44c615e8fbfdc3160142864d2a6d4078467d75b87ed4b660b12869` |
| 49 | `theorem` | [mem_sup'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/mem-sup-source-edition-2.md) | 354 | `result-track:b7fbaa9235f8624d013176a9b0d3ab1e360f50bb6e4da9edbe7e1d37079f5d5c` |
| 50 | `lemma` | [exists_add_eq_of_codisjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/exists-add-eq-of-codisjoint.md) | 357 | `result-track:5d1071571fc7b29458dd89283d9bbb9e62d6a245b069db7f7dc0630bc8d32be4` |
| 51 | `theorem` | [coe_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/coe-sup.md) | 364 | `result-track:48064f295a8516b5bd3d2dc4bb1e9acd6a67fae31a2e3480923179d7a3be5fab` |
| 52 | `theorem` | [sup_toAddSubmonoid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/sup-toaddsubmonoid.md) | 369 | `result-track:98cff774e10964e37101758b1339e807402705010dd6ed79a762b332507a644b` |
| 53 | `theorem` | [sup_eq_top_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/sup-eq-top-iff.md) | 374 | `result-track:a84ba3c0fe2d57d8d112dadec3f0cba739bf3bfa0702e7efafe49db46ffc95e0` |
| 54 | `theorem` | [mem_span_singleton_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/mem-span-singleton-self.md) | 383 | `result-track:9fa2ace03d67f6e7f7aa647b6a7bc394275ed15e9606b8b2e50d5284c4a132b3` |
| 55 | `theorem` | [nontrivial_span_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/nontrivial-span-singleton.md) | 386 | `result-track:beeb83a314aefb521a93112695c03ed350d8eb642e6fb0efbd0e1247743231d1` |
| 56 | `theorem` | [mem_span_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/mem-span-singleton.md) | 393 | `result-track:07eb2ba700de1f106daba1e9eec341de1951792975324c71670fad1002e55380` |
| 57 | `theorem` | [le_span_singleton_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/le-span-singleton-iff.md) | 405 | `result-track:0e640322ca1dce887bb1d6182a771ccf0194763ce669a3ae0f675a1ed14033e5` |
| 58 | `theorem` | [span_singleton_eq_top_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-singleton-eq-top-iff.md) | 410 | `result-track:0c4ef29cd2716b92f70792bac8108c8c9d803ba90dce50e463ef96c7403fae6f` |
| 59 | `theorem` | [span_zero_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-zero-singleton.md) | 415 | `result-track:efbc74f7c7caf7367fc782d2784fec05bce3c1101a86078dfd952591eedf4cf9` |
| 60 | `theorem` | [span_singleton_eq_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-singleton-eq-range.md) | 419 | `result-track:674061bfff4b813665023333181a059fe69a4ec706df3467d0867b7ef41372a4` |
| 61 | `theorem` | [span_singleton_smul_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-singleton-smul-le.md) | 422 | `result-track:b6d2ff9f3470db8fe78c1c07e186e058c9366900f9fc3d3d8a400570d0e3afda` |
| 62 | `theorem` | [span_singleton_group_smul_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-singleton-group-smul-eq.md) | 427 | `result-track:6ba4a6ef36b5842bd25b625c50f7feae552532c824e525d6b2d190e279ef4853` |
| 63 | `theorem` | [span_singleton_smul_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-singleton-smul-eq.md) | 435 | `result-track:5718ca83a8a1372385de4917ae388c7c370a8bc3fc00569884e87fe2573f706f` |
| 64 | `theorem` | [mem_span_singleton_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/mem-span-singleton-trans.md) | 440 | `result-track:952850bab83113d1a1248a70e0d6272ebd866908fbe4e177674d6729b9a2442e` |
| 65 | `theorem` | [span_insert](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-insert.md) | 444 | `result-track:fea4b7cbd1ed31ac2e5fde96827b556fcaf24d534785664b564d2f449be2917b` |
| 66 | `theorem` | [span_insert_eq_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-insert-eq-span.md) | 447 | `result-track:f2b1896b6ed8c867f861aef13023361ab7848c5c1c9824ec2cebac8664aa6e66` |
| 67 | `theorem` | [span_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-span.md) | 450 | `result-track:76666f5d86580d9aa24116b4de6707ef9d87b929606cd5f1eb2d5d5f2b8deb03` |
| 68 | `theorem` | [mem_span_insert](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/mem-span-insert-source-edition-2.md) | 453 | `result-track:f459bc7ec8efc2f46f9a5dc255b176a7878dfe588ac4b09c8957345600312db2` |
| 69 | `theorem` | [mem_span_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/mem-span-pair.md) | 457 | `result-track:e2f280c7723c5770e9e6e776d46ab51ee1816320f7907282cd84168e69db28c2` |
| 70 | `theorem` | [mem_span_triple](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/mem-span-triple.md) | 461 | `result-track:48f7079c9d585de625ea47cc0b74570bc41d74c3fd8bf999bf1eafad62674828` |
| 71 | `theorem` | [span_eq_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-eq-bot.md) | 472 | `result-track:0668e79526d9f2446996e48962cfdfc5adf296a2f43fe4fd70fa6f391f1fcc6a` |
| 72 | `theorem` | [span_singleton_eq_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-singleton-eq-bot.md) | 477 | `result-track:040ab86c9c7ee1e3c7e93584f33ac0617771a6980a763843e2c9a700c6bdde7a` |
| 73 | `theorem` | [span_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-zero.md) | 480 | `result-track:1ede5422116ce700f19435c1cdeb6a75d3be7cbc1fd6683423423a5d69fabf6a` |
| 74 | `theorem` | [span_singleton_le_iff_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-singleton-le-iff-mem.md) | 483 | `result-track:4b6d30c1bca7d218a84aaaba2d5dcac6b184cf40b35bc8cf89aad54bd115cc27` |
| 75 | `theorem` | [iSup_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/isup-span.md) | 486 | `result-track:a8ed0219cd5a37210a0bde4137a3422e701fe31e536f88e1bfa6929ffb9eac0c` |
| 76 | `theorem` | [iSup_eq_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/isup-eq-span.md) | 490 | `result-track:62e587f043b8de1ca52ff34e538ac572bff5f3fd299481f3bdd2a9e77a876501` |
| 77 | `theorem` | [submodule_eq_sSup_le_nonzero_spans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/submodule-eq-ssup-le-nonzero-spans.md) | 494 | `result-track:abbf3878b9f1200623686d5223590ec29433518639e57e6cfbdd7f92b716f5e9` |
| 78 | `theorem` | [lt_sup_iff_notMem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/lt-sup-iff-notmem.md) | 507 | `result-track:4c2183445ff04d637ab43195c01656fd1f2657753100c47c4009c829e2902a28` |
| 79 | `theorem` | [mem_iSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/mem-isup.md) | 511 | `result-track:705cb9dc071941fc2321545d2ce2f64d000f62444397ce099c3f4df63ed27106` |
| 80 | `theorem` | [mem_sSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/mem-ssup.md) | 516 | `result-track:373c2ea93be4d94e4348319374495a8fcad1614a66deeb858204f08e440e704b` |
| 81 | `theorem` | [mem_span_finite_of_mem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/mem-span-finite-of-mem-span.md) | 524 | `result-track:55d1a6e1efd7571004dab1f4fed178e982970d3371a80fe2eb4afe5ed6cc7fb0` |
| 82 | `theorem` | [subset_span_finite_of_subset_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/subset-span-finite-of-subset-span.md) | 543 | `result-track:2422c6afec54009e20fa31523f1920ee6352dde125f60eb0229471a7512166b4` |
| 83 | `lemma` | [sup_toAddSubgroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/sup-toaddsubgroup.md) | 563 | `result-track:ca18c2235da90a13f935df7e7cc2c89cd1801f05f452f8d50f3d83daf4f0652f` |
| 84 | `theorem` | [mem_span_insert'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/mem-span-insert.md) | 569 | `result-track:232ac45fbdc9aa3f58c1221174911c2fc03b8c712de32787d56e867ea4aa14c9` |
| 85 | `lemma` | [span_range_update_add_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-range-update-add-smul.md) | 577 | `result-track:c4b49c19ce3205ca5312dfdeb9e5a1c3529d6fe95c36feff4d90bf1d472d2e7b` |
| 86 | `lemma` | [span_range_update_sub_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespaced.lean/declarations/span-range-update-sub-smul.md) | 589 | `result-track:1d59fd9d512c0434094f173dfa87b1c8331aeb899a86cd3170c2a755b64ac5a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c50fa632addb475641e1fb78b348369d8f23f9ce79e03bf1c170abc69bdd6675 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Varianta2c41f37929e70695c0d80e6d85bc78362b7ab518c00d711009c6e80fc7d66d0.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Varianta2c41f37929e70695c0d80e6d85bc78362b7ab518c00d711009c6e80fc7d66d0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
