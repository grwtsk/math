# Verification target: Linear Algebra Span

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6b4415b3be762e3b779b42c608e391ce93a9b2f",
  "lexical_observation_count": 130,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Span/Variantd68d0e973a4e14cbcee3673826d7ed657bd065122d75c7bc7739dd960f4b97de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6b4415b3be762e3b779b42c608e391ce93a9b2f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Span/Variantd68d0e973a4e14cbcee3673826d7ed657bd065122d75c7bc7739dd960f4b97de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Span/Variantd68d0e973a4e14cbcee3673826d7ed657bd065122d75c7bc7739dd960f4b97de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompactlyGenerated` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OmegaCompletePartialOrder` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span.md) | 49 | `declaration-track:37323987e9e094b105fdbe1ebb0e66cd6a075c09749a6690916d82425ec69366` |
| 2 | `theorem` | [mem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/mem-span.md) | 57 | `result-track:58136e585e8ed8791c3dff21bc2b3549a3ede93fa5ce6ae2cba3787656413f52` |
| 3 | `theorem` | [subset_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/subset-span.md) | 61 | `result-track:40ee638f43db18ce0e8d7eb4d79a2e3409ba17443fa2593a8f47a80087b9c6d8` |
| 4 | `theorem` | [span_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-le.md) | 64 | `result-track:a19c7b8e1b1fbeba2334e93fa86bbd31f468f40e6b3dc5994c066936be5133c7` |
| 5 | `theorem` | [span_mono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-mono.md) | 68 | `result-track:8792304ac504e903a932848dd3954721faf7fe05c252cea0619c7f7478692485` |
| 6 | `theorem` | [span_monotone](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-monotone.md) | 72 | `result-track:5ffc5f5e5f278bada8577f7d402672ae9dbe89c8b773699060a404db9354bded` |
| 7 | `theorem` | [span_eq_of_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-eq-of-le.md) | 75 | `result-track:0c9738469a15a403325325ba6522de24f0eb278340883e1b26f53058b7bd59a6` |
| 8 | `theorem` | [span_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-eq.md) | 79 | `result-track:807123c0e3f0c106f384e57592308263b2ee0b3db47ea17be3e3df3c2b25e551` |
| 9 | `theorem` | [span_eq_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-eq-span.md) | 83 | `result-track:151f4174abaec0c8f26699d1627e0f08804bd179d983ccbc7e2ace2799153bb0` |
| 10 | `theorem` | [span_coe_eq_restrictScalars](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-coe-eq-restrictscalars.md) | 89 | `result-track:c63d1933262d1e80711020f738d115f0f5cfee70a639e3ede4d3052d7bbb79a1` |
| 11 | `theorem` | [map_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/map-span.md) | 94 | `result-track:afbbf2e6156d6b5107339f1de933073b172c62f653d08135929dc3e967c17c7b` |
| 12 | `theorem` | [map_span_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/map-span-le.md) | 104 | `result-track:2e222b153e97a22b2c4677dd84d97f7050306c0e10009da55ba0c20b047a2478` |
| 13 | `theorem` | [span_insert_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-insert-zero.md) | 114 | `result-track:a3bdf1177c69b0145c26e112f8a9e527d8ec8460b0c5ffa5cc9c841ce595b915` |
| 14 | `theorem` | [span_preimage_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-preimage-le.md) | 121 | `result-track:b51f5ba8b20df9d385b674197d85112560cc8e930aa5821700b36cde4dd21da0` |
| 15 | `theorem` | [closure_subset_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/closure-subset-span.md) | 130 | `result-track:aac49fc892c0b255a0e754815846a9325d68699044169dafedb01363d6d58e36` |
| 16 | `theorem` | [closure_le_toAddSubmonoid_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/closure-le-toaddsubmonoid-span.md) | 134 | `result-track:1e7bbc099cd8598af393c5119b9a2863770f19fc23cf9e7ec1d342621d78f954` |
| 17 | `theorem` | [span_closure](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-closure.md) | 140 | `result-track:9e02bb0966f339523f150900f092706f77cc7884558fc3a386b10020ae948941` |
| 18 | `theorem` | [span_induction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-induction.md) | 148 | `result-track:085ffe5ecd740b3b89b543e4d172e91b8c69d7b53b4aad0189122d781753dbef` |
| 19 | `theorem` | [span_induction₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-induction-source-edition-2.md) | 155 | `result-track:832c778fb1f5505bb94a98736cd5e24e98a5f51aa8ae7b16333336e05f5c9826` |
| 20 | `theorem` | [span_induction'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-induction-source-edition-3.md) | 168 | `result-track:a6b452ea286391e7e5bb7a5d0abc8f40c59960ae447ccaedd5e24ed90fc0ac19` |
| 21 | `theorem` | [span_span_coe_preimage](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-span-coe-preimage.md) | 184 | `result-track:b3cdd8cf894f64714a068e6616a9916851c63a3b67e3f10b18b3c01ef8f50e43` |
| 22 | `theorem` | [span_nat_eq_addSubmonoid_closure](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-nat-eq-addsubmonoid-closure.md) | 193 | `result-track:64ae2f1ae09077135d43725e9d91dd04ccda3a73c0a822cd73cc6ccd2bb3ce32` |
| 23 | `theorem` | [span_nat_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-nat-eq.md) | 203 | `result-track:bf2085dab2578f2a66006409fe21a2ba84d9e4ca02fcefb92250b92276f97a2b` |
| 24 | `theorem` | [span_int_eq_addSubgroup_closure](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-int-eq-addsubgroup-closure.md) | 207 | `result-track:6ab9acdd9432d6158edce1fd9f09d93b3a2188e991ff97d43f062386151a61f6` |
| 25 | `theorem` | [span_int_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-int-eq.md) | 216 | `result-track:bdd575f1347c17fcf980e9a7350734d637b1dbfa3d1379e5a92b1093f011280f` |
| 26 | `def` | [gi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/gi.md) | 225 | `declaration-track:ca9755ab7fbb4fd8736d5370356284d0a82810971c2c9fd2209b294ff1c9203f` |
| 27 | `theorem` | [span_empty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-empty.md) | 236 | `result-track:c0d96ba64090841f1e60b7e7d60462a515c26fab5ef1dc4c00f813f1484e72bb` |
| 28 | `theorem` | [span_univ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-univ.md) | 241 | `result-track:5b079dd3fcf098e763391cfaa291c0f9cb5b5c3e31a183bc51840dcb6218bf90` |
| 29 | `theorem` | [span_union](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-union.md) | 245 | `result-track:4669e5838d0062f2eee04c3fe8a520d942c57cc2d90f59327d835503e99db915` |
| 30 | `theorem` | [span_iUnion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-iunion-source-edition-2.md) | 249 | `result-track:9d8a5a74f8cb19c16e58f1125a7c52ff1955ca0bca8a4b4035451cf62f1752c5` |
| 31 | `theorem` | [span_iUnion₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-iunion.md) | 255 | `result-track:2e1eb17e5c667edd58db6346cc982d7ea5f06580e63ac99c155a4720205e807f` |
| 32 | `theorem` | [span_attach_biUnion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-attach-biunion.md) | 260 | `result-track:9965ec252e41ddc60b981c37e5f6fbaff436284828bfcdfc8ffb847c22dabf5a` |
| 33 | `theorem` | [sup_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/sup-span.md) | 264 | `result-track:8edb8eddc6a6178a7735cf46fe2453e0ceb546042f5b2542b5d724a9005c11b6` |
| 34 | `theorem` | [span_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-sup.md) | 267 | `result-track:6f7a44d5fd2aa97f0f0c08c32d9acdb63ad6f1661f23f315bed9b7de7cc4aed3` |
| 35 | `theorem` | [span_eq_iSup_of_singleton_spans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-eq-isup-of-singleton-spans.md) | 276 | `result-track:55aa2c5cce8fb6fa81da418d1bcc9d8d0308490da29a02fd01adfc7e9ea1e286` |
| 36 | `theorem` | [span_range_eq_iSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-range-eq-isup.md) | 280 | `result-track:d300c709a3b0b6cdb07c02628fcbc144a47ae7b9b321cb161626acb945050882` |
| 37 | `theorem` | [span_smul_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-smul-le.md) | 284 | `result-track:33aec287c995e30b0bd5f1334cb9d687930fc9e37bfdfa439705322eb62393aa` |
| 38 | `theorem` | [subset_span_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/subset-span-trans.md) | 290 | `result-track:a64a09f49fe10f831efc80493b4d1c1e5f7d318ab6bccd6cdc3616a000b3a14b` |
| 39 | `theorem` | [span_smul_eq_of_isUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-smul-eq-of-isunit.md) | 297 | `result-track:8a504c324ef762d9be867c4eef8203e2507daabbb88c016887ebbb820a3351bc` |
| 40 | `theorem` | [coe_iSup_of_directed](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/coe-isup-of-directed.md) | 307 | `result-track:6b9063ade3cf9450220891b69b0136c1726658e3c15824bd70793200aa587a95` |
| 41 | `theorem` | [mem_iSup_of_directed](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/mem-isup-of-directed.md) | 321 | `result-track:fa7efda6a0c6a3c11f7533de11a836e13d05de8760f320e6f89badc054467c07` |
| 42 | `theorem` | [mem_sSup_of_directed](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/mem-ssup-of-directed.md) | 327 | `result-track:77e7a3d07922aadc7d4e62cb3a407875158961710babd70218ce5ae7be44e141` |
| 43 | `theorem` | [coe_iSup_of_chain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/coe-isup-of-chain.md) | 335 | `result-track:a7011aae5d5c5cbd7ae0902d1bb21fbd1ca7b0899f5c9960337c298dea6c8b61` |
| 44 | `theorem` | [coe_scott_continuous](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/coe-scott-continuous.md) | 341 | `result-track:62b4b48f20da34b1ce172ca71b81289fdd08332d1f5024cd449bd686d4b1c50f` |
| 45 | `theorem` | [mem_iSup_of_chain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/mem-isup-of-chain.md) | 347 | `result-track:065ed46835e614e17a86e8303c895f236570f5d4895551e47e72263f9c7d6609` |
| 46 | `theorem` | [mem_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/mem-sup-source-edition-2.md) | 355 | `result-track:e2f9f71d0193966854ba34d12f493e420d76c10479a64ee7bc83e3ae5f59a006` |
| 47 | `theorem` | [mem_sup'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/mem-sup.md) | 372 | `result-track:51a8a0ae4d314e9a71c9d71e5210a29b18c193e05e9b94260ea5901d8d969a31` |
| 48 | `theorem` | [coe_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/coe-sup.md) | 378 | `result-track:f02b276e9b0fba7a72de56ec13c0d4474d584592bb34d62b48744e99473cb4d9` |
| 49 | `theorem` | [sup_toAddSubmonoid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/sup-toaddsubmonoid.md) | 384 | `result-track:5ca7d728a0d8c98d95b776c515cdb07731691d4381773d841f4028e101117541` |
| 50 | `theorem` | [sup_toAddSubgroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/sup-toaddsubgroup.md) | 390 | `result-track:060d3e14f0a5a2f9c4e424972ccf36108dfb89ac3345ccf47a0ec3b8abc109d7` |
| 51 | `theorem` | [mem_span_singleton_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/mem-span-singleton-self.md) | 399 | `result-track:cace11a1c9544259211f377e976ac647788a1aea7fc481e962a8f86f228013cb` |
| 52 | `theorem` | [nontrivial_span_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/nontrivial-span-singleton.md) | 403 | `result-track:256eb16d7a6c31bc4ef6d0988c558fbf14ce1475159633a5db57b9e5d42cb47e` |
| 53 | `theorem` | [mem_span_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/mem-span-singleton.md) | 411 | `result-track:95c614ccdeaf7ce14cc1bf2eac63c3d154d4c86e93f3b023665dd39a025fffc1` |
| 54 | `theorem` | [le_span_singleton_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/le-span-singleton-iff.md) | 424 | `result-track:7a07c849712858e8e982e8dc1352a5ab1eb6369bf591422326fffb76faf93c9f` |
| 55 | `theorem` | [span_singleton_eq_top_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-singleton-eq-top-iff.md) | 430 | `result-track:be8fa66cdab2568ff5aea11660dab2d8acd45ad0ea818360dbd5960670790e52` |
| 56 | `theorem` | [span_zero_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-zero-singleton.md) | 436 | `result-track:1802fb345b226059251a6d486bcc2efa8272db972e58a4422e5e60d8c510c4f3` |
| 57 | `theorem` | [span_singleton_eq_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-singleton-eq-range.md) | 441 | `result-track:58ef69fa5825b9a0f0b739487a0890d2a519bcdafbbcf76433a6e42ddb414b11` |
| 58 | `theorem` | [span_singleton_smul_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-singleton-smul-le.md) | 445 | `result-track:b114aed25cf10aec8e76338637ea007e92301caeab6df928add1f58ef97c29a1` |
| 59 | `theorem` | [span_singleton_group_smul_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-singleton-group-smul-eq.md) | 451 | `result-track:cf3620a65312dd71d0a01ac1f794e4b421bc6c6be56b186e40364c0607442482` |
| 60 | `theorem` | [span_singleton_smul_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-singleton-smul-eq.md) | 460 | `result-track:e75af810b4ea98f166ff828f5c6dc0f21fbababc571430ea5a8d4425092af05a` |
| 61 | `theorem` | [disjoint_span_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/disjoint-span-singleton.md) | 466 | `result-track:044f0ebb6bae8685cfd8f25771f86977357ca2c8ac201eb5f066f453841b564f` |
| 62 | `theorem` | [disjoint_span_singleton'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/disjoint-span-singleton-source-edition-2.md) | 477 | `result-track:c5be46990937270096834ba33aa2230c535c5353bfc4639698426fe7380bb307` |
| 63 | `theorem` | [mem_span_singleton_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/mem-span-singleton-trans.md) | 482 | `result-track:3763f58fe72bec0e08a73bf364a44344c775e5bb918f7c6c8cdbb9592048241d` |
| 64 | `theorem` | [span_insert](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-insert.md) | 487 | `result-track:bb7b0213618889197a622b036c357f179e4e6e84a55519abf49f7fbe1727f2ab` |
| 65 | `theorem` | [span_insert_eq_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-insert-eq-span.md) | 491 | `result-track:0208158b2a6394380ac42d28d53cf1bf59e9aa5ab5dc74f96a37b653cbdb84e2` |
| 66 | `theorem` | [span_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-span.md) | 495 | `result-track:addce9e6fe173ab74a91abea88f969cac7382fef5365c44019443e713faff16b` |
| 67 | `theorem` | [mem_span_insert](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/mem-span-insert-source-edition-2.md) | 499 | `result-track:8bf9037e823aa50212e13c2893bbc3948bb9fd7c2e42a3901cc63cc16e815091` |
| 68 | `theorem` | [mem_span_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/mem-span-pair.md) | 504 | `result-track:195e4dc714ca597a1a1a87f66eefc9d4c542776da53454b60ca701f69d005352` |
| 69 | `theorem` | [span_le_restrictScalars](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-le-restrictscalars.md) | 512 | `result-track:aa617e8fa09cd72f160571e18acee0624597db9580c017a269eb735c3b018046` |
| 70 | `theorem` | [span_subset_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-subset-span.md) | 519 | `result-track:edc857c149e935b930f0fbf50203fdbb0d2e6967ba310fafded75b9447ae87aa` |
| 71 | `theorem` | [span_span_of_tower](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-span-of-tower.md) | 526 | `result-track:a2dd04623a5228c33ba451a76439fa8bb29450e5d41d3d8ec296628d4f7f2c44` |
| 72 | `theorem` | [span_eq_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-eq-bot.md) | 533 | `result-track:6c0abfdb5fa21d242125a7f3aafc3b170f49230313e4939a555bf927a7fe7bf3` |
| 73 | `theorem` | [span_singleton_eq_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-singleton-eq-bot.md) | 540 | `result-track:72b80213b8365f649fcdbe4c95143ddbe9efc1cad796a7402a2cb08826e3c36d` |
| 74 | `theorem` | [span_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-zero.md) | 545 | `result-track:331a8ec512aed04a6adf5c4fe8261c79660b5a8bd604cfcca29b7c87b6579635` |
| 75 | `theorem` | [span_singleton_le_iff_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-singleton-le-iff-mem.md) | 549 | `result-track:3648618ac3d8f36cdc13c612d49c39fe66374d30c5fd0ef5edfc323b1d717dc6` |
| 76 | `theorem` | [span_singleton_eq_span_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-singleton-eq-span-singleton.md) | 553 | `result-track:650c048779eea462c84db9c6da179461fd4cdb5fe8eb32eaa3aab4d0c8004692` |
| 77 | `theorem` | [span_image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-image.md) | 570 | `result-track:a742acea1723b1a7b5929c25d517b3752b45c1d50ce311801c08e8da595542b6` |
| 78 | `theorem` | [apply_mem_span_image_of_mem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/apply-mem-span-image-of-mem-span.md) | 575 | `result-track:2fca143af44e6f74e04c7549ac524ef9fd9fca97abf2f4b1c03c7b98eca7e80f` |
| 79 | `theorem` | [apply_mem_span_image_iff_mem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/apply-mem-span-image-iff-mem-span.md) | 581 | `result-track:92986b3e08e2ef009bd9cc6b92de2d3dd7dda8f42b7a07d5e8bd21ab63bdc8e4` |
| 80 | `theorem` | [map_subtype_span_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/map-subtype-span-singleton.md) | 587 | `result-track:3821791c02cec4794fba2099405bb3cce77da262508cccc28b1142c43acf6a7c` |
| 81 | `theorem` | [not_mem_span_of_apply_not_mem_span_image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/not-mem-span-of-apply-not-mem-span-image.md) | 592 | `result-track:7eecb0b81bf339de1f915deca14e1ec79464c380e6b7562dc81ac6673da1b8d9` |
| 82 | `theorem` | [iSup_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/isup-span.md) | 597 | `result-track:f8c26aaea897d44491b114a057fb2df0f2766f4372d6bf1b61d987f4110d707e` |
| 83 | `theorem` | [iSup_eq_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/isup-eq-span.md) | 602 | `result-track:dd1b7745f9fac1f0ed203c73a147c08b70b4a4c801a956efd4d135b68b658ff0` |
| 84 | `theorem` | [iSup_toAddSubmonoid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/isup-toaddsubmonoid.md) | 606 | `result-track:17e79daea7fe6f41be4c8f46aece47b4822fb363a68d958b558c177cfe1640d1` |
| 85 | `theorem` | [iSup_induction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/isup-induction-source-edition-2.md) | 630 | `result-track:8cc5e50a291708e36de9149a70cf719c7fc7e1eb345cff8e41a7d4433339c8b4` |
| 86 | `theorem` | [iSup_induction'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/isup-induction.md) | 639 | `result-track:7036fca1ee63796f14afad51bc757020aa5096309940ad80f7590c27fbf644a5` |
| 87 | `theorem` | [singleton_span_isCompactElement](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/singleton-span-iscompactelement.md) | 652 | `result-track:61664e9bdf8078dadfcc66f5a498b6427093fff2eb8fedcfd25e93fdd28169ac` |
| 88 | `theorem` | [finset_span_isCompactElement](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/finset-span-iscompactelement.md) | 662 | `result-track:784ded4594af49ca46e6cbe332223eaf57bbc63239564d380c0af66ad9924faf` |
| 89 | `theorem` | [finite_span_isCompactElement](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/finite-span-iscompactelement.md) | 672 | `result-track:a7c13c7490aab46c2454e47f3bbadb6b871deebc8848901b2b18f29f8fb84da3` |
| 90 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/instance.md) | 677 | `declaration-track:a5d880fa9024e40cfa9db0be3615865c89ba33ebb224a0ccda02de02d40d3d73` |
| 91 | `theorem` | [submodule_eq_sSup_le_nonzero_spans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/submodule-eq-ssup-le-nonzero-spans.md) | 686 | `result-track:96a2d81493708bc79f6a9bb2e3fb84072c34645f8ec770ebd407118894c3b522` |
| 92 | `theorem` | [lt_sup_iff_not_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/lt-sup-iff-not-mem.md) | 700 | `result-track:2deb582acd69489a6b9061660f2f642f1ceb615c83337e91bedbe2abbbada199` |
| 93 | `theorem` | [mem_iSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/mem-isup.md) | 703 | `result-track:4e57380c88d0224724aa9e754fcc15dd938b7ad460e84afcbfbc39cfb402520c` |
| 94 | `theorem` | [mem_span_finite_of_mem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/mem-span-finite-of-mem-span.md) | 713 | `result-track:cea85a59de728dc6bc4c8f69fe40a19913c0f82cdaad73f0026c489171beb740` |
| 95 | `def` | [prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/prod.md) | 738 | `declaration-track:4a2e2b6edfd7d8ea9d5881a8955a6f677f8573cac55570d8fbea7210c58f2f89` |
| 96 | `theorem` | [prod_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/prod-coe.md) | 745 | `result-track:bd871d559c895a743663c07f7d48f6b52ff2a9f84ed3309b7f14f99d62f7b328` |
| 97 | `theorem` | [mem_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/mem-prod.md) | 750 | `result-track:b8ba5c9b88fbcdf732af7946e3be0a387c65abe5cb8ed4f982b679dfeebcba57` |
| 98 | `theorem` | [span_prod_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-prod-le.md) | 755 | `result-track:2803adae7e906e49e296f76d6c584e3c7f133eef15aa13244425ccecad8f42b8` |
| 99 | `theorem` | [prod_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/prod-top.md) | 760 | `result-track:b3b417de2d37b9258b42943ce2bd026f99b4d96d0572251053bc28ae481bbc87` |
| 100 | `theorem` | [prod_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/prod-bot.md) | 764 | `result-track:053fb1349641cffc2794298a7b3dc39ae480bbbd07046c8ce0a999c9432b6e77` |
| 101 | `theorem` | [prod_mono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/prod-mono.md) | 768 | `result-track:b34e29ad1a73f7249513537c87ce637194c6f034d09901388a9baa21e67ee6b0` |
| 102 | `theorem` | [prod_inf_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/prod-inf-prod.md) | 774 | `result-track:977fa31be5446c4b1ceafe6e207022beecb9d8aef494e09d674dd0bf9d7ddbed` |
| 103 | `theorem` | [prod_sup_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/prod-sup-prod.md) | 779 | `result-track:f539138bc233e41a2032fed08eec3ce5ff69dc01161fc208c0a1888e0e1c77a9` |
| 104 | `theorem` | [span_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-neg.md) | 795 | `result-track:258cdb39b3dbabb5f01742489e6ec0230dd8bce646ef27855c2c5c2eae162dca` |
| 105 | `theorem` | [mem_span_insert'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/mem-span-insert.md) | 802 | `result-track:27efe8333dd278cf4c4b17877104536840e0a4df8fcd5bfd71b17bad91cf294e` |
| 106 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/instance-source-edition-2.md) | 811 | `declaration-track:b60648086b917e270f80ea52e8f3a655c53d4eb15300692cef6bddfebaf8b47c` |
| 107 | `theorem` | [comap_map_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/comap-map-eq.md) | 832 | `result-track:3abb2c24c58302101aa75f209205b0065fbab483a0c00de25e1003c1218bf938` |
| 108 | `theorem` | [comap_map_eq_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/comap-map-eq-self.md) | 838 | `result-track:262862d20ac1eea98850d4d0472ab8eae1900a93d72357af841f3cacb07e8be8` |
| 109 | `theorem` | [wcovby_span_singleton_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/wcovby-span-singleton-sup.md) | 849 | `result-track:da575313c858bc61225d38c748243eb084e4155f5940f9248ab32426ff752b8f` |
| 110 | `theorem` | [covby_span_singleton_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/covby-span-singleton-sup.md) | 861 | `result-track:068c2db886d71f0f7a2441e0293dd05aa206d7641e24aa2003c12d671ff0d93d` |
| 111 | `theorem` | [map_le_map_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/map-le-map-iff-source-edition-2.md) | 884 | `result-track:6ed39b405b9509c3e2c734cdf4bf9c3a6c201ffede8d95a07835d37ae1b5e723` |
| 112 | `theorem` | [map_le_map_iff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/map-le-map-iff.md) | 888 | `result-track:6940eb78e51d8e684e5675d135742d90a67e3545ddbca035e09b81963e4c9ad1` |
| 113 | `theorem` | [map_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/map-injective.md) | 892 | `result-track:42698341e35238298cc4bb76ec730d0112bdb416ac978873c322a7238846a3a3` |
| 114 | `theorem` | [map_eq_top_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/map-eq-top-iff.md) | 896 | `result-track:58d86333befbd90333b9c2ba279308dfb6c844488a7079d32207a7b1d7b77001` |
| 115 | `def` | [toSpanSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/tospansingleton.md) | 910 | `declaration-track:b2becead85fc2bb1e437e6e69fc7063db68d0afe99c0bb22bf21a00bd52d756d` |
| 116 | `theorem` | [span_singleton_eq_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-singleton-eq-range-source-edition-2.md) | 915 | `result-track:7244a5182e756e965d6ebd66af7ba4c3459b892b74770dab618c17e173460687` |
| 117 | `theorem` | [toSpanSingleton_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/tospansingleton-one.md) | 922 | `result-track:05668515b32f5c2fbc6ea66a666f0d3ae8a4cfba71fa5a4a7d3251dc49e2fb08` |
| 118 | `theorem` | [toSpanSingleton_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/tospansingleton-zero.md) | 927 | `result-track:73546707ef9f05ddc5fc5d66a1dc034edec880304b979d5e154a8ebb77527d80` |
| 119 | `theorem` | [eqOn_span_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/eqon-span-iff.md) | 943 | `result-track:4a2540b158fc19280d70f7c4f5e7f51f0e3a52a021a39b9709ba95ced239ee60` |
| 120 | `theorem` | [eqOn_span'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/eqon-span-source-edition-2.md) | 950 | `result-track:dd2a3f931e6b16d49100db65da27faee8ac6a8f5c496e51979341ed4c510db08` |
| 121 | `theorem` | [eqOn_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/eqon-span.md) | 958 | `result-track:a846d88324042ad414399d500cd669ff29d8dadc570e9b3112b6329d3061cadf` |
| 122 | `theorem` | [ext_on](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/ext-on.md) | 965 | `result-track:503acf2debc1d6e2225275ba61a9ec86c979fdc1b5ad132d5ae3af83a60b3862` |
| 123 | `theorem` | [ext_on_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/ext-on-range.md) | 971 | `result-track:aeb4b737c04b93d353fa5a1e02d2768848ab77371adb37895a2996eeb15bc2b8` |
| 124 | `theorem` | [ker_toSpanSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/ker-tospansingleton.md) | 983 | `result-track:cc6506960bdc0c7e788c017fc60e2b374c552e4379910b78e942552590930efb` |
| 125 | `theorem` | [span_singleton_sup_ker_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/span-singleton-sup-ker-eq-top.md) | 993 | `result-track:5825275fd79b061dc276abaf6e6865a003ff46daebf2fec0e783e71a583d1e2f` |
| 126 | `def` | [toSpanNonzeroSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/tospannonzerosingleton.md) | 1015 | `declaration-track:104fccf0c01dccb6155da3544fe6bc51e47a47c3633ab94574d739b8dba5a0d8` |
| 127 | `theorem` | [toSpanNonzeroSingleton_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/tospannonzerosingleton-one.md) | 1022 | `result-track:07ac441058e9d36c6e9ed84ec0c8ab40d0f5e8e7c6a5b8d7d59c70c0ee41afa6` |
| 128 | `abbrev` | [coord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/coord.md) | 1033 | `declaration-track:48591cf814986a98fd12f22b5a68f6c67120a4a60102843678e321be6f12d10d` |
| 129 | `theorem` | [coord_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/coord-self.md) | 1037 | `result-track:bbd1776c1987d3c16c39574c2cc7b444d081832fe94966b95b137644d61bbac1` |
| 130 | `theorem` | [coord_apply_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/declarations/coord-apply-smul.md) | 1041 | `result-track:6ba515b313ab7df6bca5e37b0a42ada584daccaa0366938c51ced6cd72ed4f0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=49345ad7f4e953e3d8634a135d3440c3b99b82d8fd9163821ac70c7f2f44ef74 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Span/Variantd68d0e973a4e14cbcee3673826d7ed657bd065122d75c7bc7739dd960f4b97de.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Span/Variantd68d0e973a4e14cbcee3673826d7ed657bd065122d75c7bc7739dd960f4b97de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
