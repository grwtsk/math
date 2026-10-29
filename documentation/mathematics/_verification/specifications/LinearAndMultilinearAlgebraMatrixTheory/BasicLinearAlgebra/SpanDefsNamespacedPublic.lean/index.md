# Verification target: Span Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5cbc952388035aacbf1dd73f4d9d56feb0e66559",
  "lexical_observation_count": 108,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant0def4b10ddc30722c6ab19ba32c8b533355a6f78932e07e18082cc3bf537b527.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5cbc952388035aacbf1dd73f4d9d56feb0e66559`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant0def4b10ddc30722c6ab19ba32c8b533355a6f78932e07e18082cc3bf537b527.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant0def4b10ddc30722c6ab19ba32c8b533355a6f78932e07e18082cc3bf537b527.lean.json)

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
| 1 | `def` | [span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span.md) | 54 | `declaration-track:f30fca611570c4e8ec038e7d24ed0ef1d98d93383e39c92fb1a226e08d851909` |
| 2 | `class` | [IsPrincipal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/isprincipal.md) | 59 | `declaration-track:ca2657efe0c75e0f8073c17c4f3bd90a8f6a8a76f39f6fb8efe231bdcfe90af9` |
| 3 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/instance.md) | 62 | `declaration-track:1d50cf057fcafc8da5fa2a61319be0114e3dea895cba3f995984d6617bf10310` |
| 4 | `def` | [generator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/generator.md) | 67 | `declaration-track:d62c1224cbbefeb7eba15d5204da3fb054ff37e4ce6993ac1420d63d8b46ff11` |
| 5 | `theorem` | [span_singleton_generator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-singleton-generator.md) | 70 | `result-track:55e363682a90df234fa236bc4e52bc9b419e5c2839e79826cdbc39c3fe5e7a48` |
| 6 | `theorem` | [mem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/mem-span.md) | 79 | `result-track:86d4de0f321bbedebf9f13d27ef24ccba24cc4960152e35e796fe2a7965631af` |
| 7 | `theorem` | [subset_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/subset-span.md) | 83 | `result-track:5b18ef30508a76676b6a362f81c6b0e8511523927cd9cb1bf98b0690dc983922` |
| 8 | `theorem` | [mem_span_of_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/mem-span-of-mem.md) | 86 | `result-track:049eef80ff5212fdd7255c36adf131355e8fba6e52b16e937d7eb0fe9eb0827c` |
| 9 | `theorem` | [span_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-le.md) | 88 | `result-track:70981476c5b9f5b3732a24c245dced157660c42b711e684f6b124dc0550bf6e8` |
| 10 | `theorem` | [span_mono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-mono.md) | 91 | `result-track:6e9aaae7cc282b425a820f974bc1837ee5acd1f48f4898f902fcac949a607544` |
| 11 | `theorem` | [span_monotone](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-monotone.md) | 94 | `result-track:e1d0756d8c04478df5f62f99f73664e6eaa9ba64572d2b71b2505c332729980f` |
| 12 | `theorem` | [span_eq_of_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-eq-of-le.md) | 96 | `result-track:b8d123490b523d85894dc3b88523fcb2380579f8ebe57b096bf15ca691a754fa` |
| 13 | `theorem` | [span_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-eq.md) | 99 | `result-track:a3c2a7fbde30abf6edb9f91ce01472ae7d95f146806585ae72e1602018be3d37` |
| 14 | `theorem` | [span_eq_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-eq-span.md) | 102 | `result-track:0b0bc680135fb2c49d527b75fd495a2f13a0e2c2b7e5190b2e0707f3c2384c5f` |
| 15 | `lemma` | [coe_span_eq_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/coe-span-eq-self.md) | 108 | `result-track:5c80446e83cfccb063d3983ca577ad814ec7f5a535b783f8201a9907a5f84ea6` |
| 16 | `theorem` | [span_insert_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-insert-zero.md) | 119 | `result-track:ac6254ca2d00c2caf5851ebeafd787716cc6f62c99d9b7e83270edf07a454375` |
| 17 | `lemma` | [span_sdiff_singleton_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-sdiff-singleton-zero.md) | 125 | `result-track:afad1b25c20cf95e299524372067788c7beefccdd2388040cee52d03e692af86` |
| 18 | `theorem` | [closure_subset_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/closure-subset-span.md) | 130 | `result-track:e3404634701f4f907ab6977bef295e1785c2fe066e2cfbfe50da40dca61a5e00` |
| 19 | `theorem` | [closure_le_toAddSubmonoid_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/closure-le-toaddsubmonoid-span.md) | 133 | `result-track:411764bbe025e7200d1d32f58e474e7fdcd3ce3a4b01528bc0cf20a03305fb3f` |
| 20 | `theorem` | [span_closure](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-closure.md) | 138 | `result-track:034a6773366e33c21e6728626fb96ffb48ec8480fa9c6cf10199e01dcd122d95` |
| 21 | `theorem` | [span_induction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-induction-source-edition-2.md) | 145 | `result-track:309fd3bea4be2aedfdec6119bc9995831d3027740c71b6cc759eeda7e44acd22` |
| 22 | `theorem` | [span_induction₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-induction.md) | 160 | `result-track:0398dccf548d1c09f841c7a612b0ca73eccbcb9d4510ce3e4cbc3c83cc86449c` |
| 23 | `theorem` | [span_eq_closure](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-eq-closure.md) | 181 | `result-track:350f3f800d9ac070b03198d8ffd2b99dfe3d4661cd63c35b9f736350d7b3d986` |
| 24 | `theorem` | [closure_induction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/closure-induction.md) | 205 | `result-track:2a4b4335c9bf29e54c5d54707126725314e069bde9f4a701381adb0596629dad` |
| 25 | `theorem` | [span_span_coe_preimage](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-span-coe-preimage.md) | 217 | `result-track:6de645c5936f8c5266d1113d50d90bbee5277617b9ef7633df7fd2156c3d43c1` |
| 26 | `lemma` | [span_setOfPred_mem_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-setofpred-mem-eq-top.md) | 223 | `result-track:7e7fecada6d774a3d19fbdd463b7a3351ba7447010aa1f3cdc476cc8083574e8` |
| 27 | `theorem` | [span_nat_eq_addSubmonoidClosure](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-nat-eq-addsubmonoidclosure.md) | 229 | `result-track:eedcb21f625055a483cd7c05b1b27d46baf61a9a3b1304de470e7c4353a62462` |
| 28 | `theorem` | [span_nat_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-nat-eq.md) | 238 | `result-track:05039b6e365225f9a72c333b7aebb42d642373eece9d42766204dd94d511e7df` |
| 29 | `theorem` | [span_int_eq_addSubgroupClosure](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-int-eq-addsubgroupclosure.md) | 241 | `result-track:aa25e7de66109d3e73eaa73c1ac399db93645fd2577868ded151e1fffbf21e2e` |
| 30 | `theorem` | [span_int_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-int-eq.md) | 249 | `result-track:33ed7da59743ed18ad8224abb11047da49265a5a2b118ecc29130a935c74e482` |
| 31 | `theorem` | [Span Defs Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/of-span-source-line-252-occurrence-2.md) | 252 | `result-track:cf0c4ecd87071b55377acb1cf7d26f779c4d82420b841916253191020f656321` |
| 32 | `theorem` | [Span Defs Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/of-span.md) | 258 | `result-track:3f1b76277982b9f0e8acf25bc89c5e8871855bfd7f10ee47997194f8f9b4a165` |
| 33 | `def` | [gi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/gi.md) | 268 | `declaration-track:247d34ed860eb0fa4d432018ba0efda71979a728b749f4c7ffb5eb60220f71bc` |
| 34 | `theorem` | [span_empty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-empty.md) | 277 | `result-track:9261976e4ffe12f27bd8c897868c954e9a07a23e9c7be7d0537d9f7e1e02439d` |
| 35 | `theorem` | [span_univ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-univ.md) | 281 | `result-track:0b8d9188fb290e87bee6e321f2d6d0bc698354d2103c7796cc948dc8e426ce52` |
| 36 | `theorem` | [span_inter](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-inter.md) | 285 | `result-track:bd86da782ce4bf3861e1b297524f535f21d904a0890f416560df2941b44b4ea0` |
| 37 | `theorem` | [span_sInf_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-sinf-le.md) | 288 | `result-track:49cb2a7af43c92d907bef1770bffc76ec1d05be5323240792b358857663f86fd` |
| 38 | `theorem` | [span_sInf](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-sinf.md) | 291 | `result-track:401b5616b837cdad28222dca974807fb5a2b393b6752460b2f87bf1cef5e75f0` |
| 39 | `theorem` | [span_biInter](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-biinter.md) | 294 | `result-track:dc8864aa54b642f83db58f44cdc199649d4038eceeb690cfb9be0e844b1c3ac1` |
| 40 | `theorem` | [span_union](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-union.md) | 298 | `result-track:b12378081bd39c6feabf01bd6ba3f5ccef90cfad127de9823bea567db1eac672` |
| 41 | `theorem` | [span_sSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-ssup.md) | 301 | `result-track:d1c19e5a1f87bb56e8e35276d2451e12622947cf28d6b89b62ab9e2c3b6ec698` |
| 42 | `theorem` | [span_sSup'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-ssup-source-edition-2.md) | 306 | `result-track:d8065e67d868d37e07ab1b917d1571524c2b82c966de5b493d520a8d30a30865` |
| 43 | `theorem` | [span_iUnion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-iunion-source-edition-2.md) | 309 | `result-track:70313eee1f5092fe8a359e8490762cab16cac6cbd523e761935f6e7d6e66c89c` |
| 44 | `theorem` | [span_iUnion₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-iunion.md) | 312 | `result-track:5ebd763497c19c0e82260ca1eb9ae6a918ee4090c9bcae45faa27783c0c070a5` |
| 45 | `theorem` | [span_biUnion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-biunion.md) | 316 | `result-track:e8f20b3d5c81201891c9a4df8214be52d9e875e361331ebad50519d085d14feb` |
| 46 | `theorem` | [span_attach_biUnion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-attach-biunion.md) | 319 | `result-track:cdb4274d1843f679222a4302931655125761cd3995738312377606d0eeb3a323` |
| 47 | `theorem` | [sup_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/sup-span.md) | 322 | `result-track:fa5026bb3811fd45dd7873bba6bb25fd6b5260f9fbd36234ed0188bbad8ac89f` |
| 48 | `theorem` | [span_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-sup.md) | 324 | `result-track:c17bf6db1e25358689b04c546b018ce9013b4c8543e64f0d5c686b34b5ab9496` |
| 49 | `def` | [span.unexpander](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-unexpander.md) | 333 | `declaration-track:875dd44e4037d928a0df0aaa7460921ccbd54f15068808e689e4cd97c55c3f25` |
| 50 | `theorem` | [span_eq_iSup_of_singleton_spans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-eq-isup-of-singleton-spans.md) | 339 | `result-track:ee59ffb402f8238ccaa8fb1e3b48393216deffb379b9252101a540c5a4821a32` |
| 51 | `theorem` | [span_range_eq_iSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-range-eq-isup.md) | 342 | `result-track:9ba7978a01661de5ec878fca5b01ef1aa719ee1732bfa7205ffdff295a98b839` |
| 52 | `theorem` | [span_smul_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-smul-le.md) | 345 | `result-track:6ccffb04bff762e3abaaf0aad1649735a8338e9c714939c9644670411d7416a0` |
| 53 | `theorem` | [subset_span_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/subset-span-trans.md) | 350 | `result-track:770a47f1f018debd048cff073c071d3d6cafdd51176fa60dd8ae15d043607aa7` |
| 54 | `theorem` | [coe_iSup_of_directed](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/coe-isup-of-directed.md) | 355 | `result-track:5f06636435a2f15275c99561a2cac0b2791d0be86be8d520a25f2e555cac0166` |
| 55 | `theorem` | [mem_iSup_of_directed](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/mem-isup-of-directed.md) | 366 | `result-track:d21a8e0f75484ae10899be070c3342d33dc771654551e16cbe2de68f78ea5143` |
| 56 | `theorem` | [mem_sSup_of_directed](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/mem-ssup-of-directed.md) | 371 | `result-track:fe60c2d45f75e4cca14df6c6bd1dcc13f3b4492177ca2af3b100d42019dd6a71` |
| 57 | `theorem` | [coe_iSup_of_chain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/coe-isup-of-chain.md) | 378 | `result-track:e08582291e821a660997fe481d146054156e852ebdd113478407e5b9fd05d917` |
| 58 | `theorem` | [mem_iSup_of_chain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/mem-isup-of-chain.md) | 382 | `result-track:bbc2a0ec9737f4bc6e24d462191c1241e9153be0d5215dd848a896311956a172` |
| 59 | `theorem` | [mem_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/mem-sup.md) | 389 | `result-track:01380575d8d18ea53d950dc61bfcd9ad69cf3d17f6bb2d70dc1bec8fccfa3b48` |
| 60 | `theorem` | [mem_sup'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/mem-sup-source-edition-2.md) | 405 | `result-track:f7a1af9a724c39f26d0a21bc8fdfedec9a1c8ba7ba9e17c6c4ab095cc6140365` |
| 61 | `theorem` | [codisjoint_iff_exists_add_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/codisjoint-iff-exists-add-eq.md) | 408 | `result-track:1f8bd0484bd78fe36bb5a84e2c40f43309d8c774a2ec269b26d9eaf158edfab5` |
| 62 | `theorem` | [coe_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/coe-sup.md) | 415 | `result-track:1020180663ffa8faecc4e71125ba5d31503a70e1f78159a5581f23a896f2ac56` |
| 63 | `theorem` | [sup_toAddSubmonoid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/sup-toaddsubmonoid.md) | 420 | `result-track:99b8f7c0584fcb370073b726fdf9088ae413e77baae60fa145d477dbf163a931` |
| 64 | `theorem` | [sup_eq_top_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/sup-eq-top-iff.md) | 425 | `result-track:b3dd1c38100f0b7f0cc8f6793e5c5006a8a30b637bc2834aa26641f3953a7e51` |
| 65 | `lemma` | [forall_mem_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/forall-mem-sup.md) | 434 | `result-track:5a52b543ed2247537c77a773792389e24dcb491b39a5957d35c96574052b7818` |
| 66 | `lemma` | [exists_mem_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/exists-mem-sup.md) | 439 | `result-track:767ce3696b72539e61ef2c10067a3e866e241fc2464c44358990281dc9918933` |
| 67 | `theorem` | [mem_span_singleton_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/mem-span-singleton-self.md) | 445 | `result-track:ea57c3dd1bb9c07e10e01e5c776384263b11807d29eb8914d6d7babca5bab2fe` |
| 68 | `theorem` | [nontrivial_span_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/nontrivial-span-singleton.md) | 448 | `result-track:6d045259b51b8c2a9c92d44623c5e6436b32aacf49e08eb00b3ca60ec39b22b5` |
| 69 | `theorem` | [mem_span_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/mem-span-singleton.md) | 455 | `result-track:b3b500e17b69acffc8db098243a093626c061a404cec5a2a9fb5a4d4a7bf769c` |
| 70 | `theorem` | [le_span_singleton_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/le-span-singleton-iff.md) | 467 | `result-track:11a9bb4e75b543c3181cbf35c19bca99f70ef7da0866f6cd1d538104e1a4f13b` |
| 71 | `theorem` | [eq_span_singleton_of_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/eq-span-singleton-of-surjective.md) | 470 | `result-track:ec8af8f1163dfb68ddb87f24b05e9474ae1d08baffee9e18fdf75e4af692e3ac` |
| 72 | `theorem` | [span_singleton_eq_top_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-singleton-eq-top-iff.md) | 479 | `result-track:86ee51d6a79ce2eda5d87f90275a134897894e17029b1ab1a1f50038768b4280` |
| 73 | `theorem` | [span_zero_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-zero-singleton.md) | 484 | `result-track:ef059350e6c3a0c56d05049a55f936c03eceb98093624b945930ba56b4dda411` |
| 74 | `theorem` | [span_singleton_eq_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-singleton-eq-range.md) | 488 | `result-track:5babbdc5c77c216d8e66b9d3bf8ef0b21d4ab61ea1877fc35aa2a3aaad0c9941` |
| 75 | `theorem` | [span_singleton_smul_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-singleton-smul-le.md) | 491 | `result-track:6bcf96e277621c0d20603f2e59e609e657fe2b97d3ac986fbcd3a6f465729ba2` |
| 76 | `theorem` | [span_singleton_group_smul_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-singleton-group-smul-eq.md) | 496 | `result-track:6371ffd05ba69860b5e4918fe4c966f2d7fdadb843558188e83d3c73be4a900a` |
| 77 | `theorem` | [span_singleton_smul_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-singleton-smul-eq.md) | 504 | `result-track:cfa33e00b849f3d90daef0e76d5ff2f578b85d2b3600e730cf70e428e92efc53` |
| 78 | `theorem` | [mem_span_singleton_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/mem-span-singleton-trans.md) | 509 | `result-track:a0b57c32d202d8a2ca1e8fd82408eae223c5686cf2cd1dc0f1762c15ca3c2fef` |
| 79 | `theorem` | [span_insert](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-insert.md) | 513 | `result-track:18e730dd02a850b5ad39cb0d539ca05297b7460d17b2c640423b578df3db1ed6` |
| 80 | `theorem` | [span_insert_eq_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-insert-eq-span.md) | 516 | `result-track:9d603e717cf85b00dd1f1738c1ae2475ef3883a4d4642bafb71ed1390b1fad33` |
| 81 | `theorem` | [span_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-span.md) | 519 | `result-track:cdbb45e4dec2a77d2fc132b71bc5406ddae86ec2d9dfb4d41a357b15898a7c76` |
| 82 | `theorem` | [mem_span_insert](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/mem-span-insert.md) | 522 | `result-track:015d09df9d3b2497945a82adf69d3bb2d1e0f66589815f99a73e685fac59f977` |
| 83 | `theorem` | [mem_span_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/mem-span-pair.md) | 526 | `result-track:73a4732bb71dda04c9cdade8dfad49d2b8a03815f4618e5eb6683c2a67f58b77` |
| 84 | `theorem` | [mem_span_triple](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/mem-span-triple.md) | 530 | `result-track:3cdd0345dca8e3d1b5c43830a5f804d5d5d57e32f43314bda62fcfcd066a4fb9` |
| 85 | `theorem` | [span_eq_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-eq-bot.md) | 541 | `result-track:b6d9813ff92c056f26a2496bc869a59b7989585dff1ce04e687b67f3e4622194` |
| 86 | `theorem` | [span_singleton_eq_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-singleton-eq-bot.md) | 546 | `result-track:f24d8bd0e2cc4d24cb6ace817b781773ccd8442c5525a3c243322d8f7abb57f7` |
| 87 | `theorem` | [span_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-zero.md) | 549 | `result-track:1e30ffae9b28ee70f88cbb3eb5827d3db54fb5648165167bd6f21d7293c813d9` |
| 88 | `theorem` | [span_singleton_le_iff_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-singleton-le-iff-mem.md) | 552 | `result-track:f671bbb950c93aa3142e480a536af20dcfc6f3f3623baa8c70a7b281b7f34727` |
| 89 | `theorem` | [iSup_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/isup-span.md) | 555 | `result-track:8070db5a0cee143021d548844dd1cecffdfbe3c06fb7562bd5661336f9b55c86` |
| 90 | `theorem` | [iSup_eq_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/isup-eq-span.md) | 559 | `result-track:41787054a4804228b4915b6b6008d3591a325fc936421dad57a376178fd7c26e` |
| 91 | `theorem` | [iSup_eq_span'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/isup-eq-span-source-edition-2.md) | 562 | `result-track:7e7995e71b920cb47f8e0295cef1ae95086b5588f14814de2bc28c462a74f7e8` |
| 92 | `theorem` | [submodule_eq_sSup_le_nonzero_spans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/submodule-eq-ssup-le-nonzero-spans.md) | 567 | `result-track:a85efef0b7fbf440b93b108c79e9a826e46dcce391caad87fb67ed4c6d7bf70e` |
| 93 | `theorem` | [lt_sup_iff_notMem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/lt-sup-iff-notmem.md) | 580 | `result-track:88b4d80b355bbc4250b09fe750b9331f60069d110669e55a93699c644ad44e21` |
| 94 | `theorem` | [mem_iSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/mem-isup.md) | 582 | `result-track:f317e48496909e1cf6c367e8d8c215a34f194a6c210a0aef03e85a11427746a8` |
| 95 | `theorem` | [mem_sSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/mem-ssup.md) | 587 | `result-track:2b6b321f3410d5a913ef11253cf9d38768de16a32fb75dff0309478cd30d07ce` |
| 96 | `theorem` | [mem_span_finite_of_mem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/mem-span-finite-of-mem-span.md) | 595 | `result-track:3cdd98f10c314a2fd613ffcf0b1f92c9eaf959c8b93e5385a557b2c2dc7aff86` |
| 97 | `theorem` | [subset_span_finite_of_subset_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/subset-span-finite-of-subset-span.md) | 614 | `result-track:0d90b75d474ea638d93ba0f5be1ace1b5ee70bcbcad8e8b7d08b2b31c8b72b54` |
| 98 | `lemma` | [sup_toAddSubgroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/sup-toaddsubgroup.md) | 634 | `result-track:b81bf91d956c6f3ce264109257763aa07f1f0cd4271bf0895b7c2c8a2e272b94` |
| 99 | `theorem` | [mem_span_insert'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/mem-span-insert-source-edition-2.md) | 640 | `result-track:fb649d94ea710d57a4744a030cf27d356929a23b49dfbf3a849b25485ed88778` |
| 100 | `lemma` | [span_range_update_add_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-range-update-add-smul.md) | 648 | `result-track:ff14dcc572083b9e38caf4ca6304f06d7d024e3dfe4a20f6b32b0f5ca56aaa17` |
| 101 | `lemma` | [span_range_update_sub_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/span-range-update-sub-smul.md) | 660 | `result-track:1d050bdf8d74a182c2e384ba5723faa994ff44fad05abb5a637524fb10e00d55` |
| 102 | `abbrev` | [Module.IsPrincipal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/module-isprincipal.md) | 671 | `declaration-track:f4cb1d452e033d75e2d6aa75b07dea57f42c4c5834da3d79e46c3a8d10159ff3` |
| 103 | `theorem` | [Module.isPrincipal_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/module-isprincipal-def.md) | 675 | `result-track:413a69343003a2495d4732509a4cb27b474c2c5c90c5c3973b3e7266017b28b4` |
| 104 | `theorem` | [Module.isPrincipal_submodule_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/module-isprincipal-submodule-iff.md) | 679 | `result-track:b0847c8904fbde7c6b63a9f8537060a8e13dcd848d8356aa86fa329695f932d6` |
| 105 | `theorem` | [Module.IsPrincipal.of_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/module-isprincipal-of-surjective.md) | 690 | `result-track:aca732fbe82ad96c9264d3183e207112d93c6fe28279e0129a03bf689cf37266` |
| 106 | `theorem` | [LinearEquiv.isPrincipal_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/linearequiv-isprincipal-iff.md) | 699 | `result-track:a347b93785de12f6796a3266ccdd5983adb09e0ff401d36e3d957a21c485dbea` |
| 107 | `theorem` | [Commute.span_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/commute-span-left.md) | 713 | `result-track:7b95056ebe2de8834620d6caf956a13b25980c09d9492bda218bc407104dd66f` |
| 108 | `theorem` | [Commute.span_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpanDefsNamespacedPublic.lean/declarations/commute-span-right.md) | 724 | `result-track:88093111f6d5c2286ecff3ef4a04a9104d3ddc799292016945833127c8b55e01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=edf0f5f440ea2df1bd5ac924f9335bd9af11787e1670f050ea529d062788be75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variant0def4b10ddc30722c6ab19ba32c8b533355a6f78932e07e18082cc3bf537b527.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Variant0def4b10ddc30722c6ab19ba32c8b533355a6f78932e07e18082cc3bf537b527.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
