# Verification target: Weighted Homogeneous Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37c4fb410c8eefe73cdfb95ff517de8036ea4277",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant2e6a01a2f03ae1d91348a8af28ee7df250f91cacd37f9089e616d875edd198fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37c4fb410c8eefe73cdfb95ff517de8036ea4277`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant2e6a01a2f03ae1d91348a8af28ee7df250f91cacd37f9089e616d875edd198fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant2e6a01a2f03ae1d91348a8af28ee7df250f91cacd37f9089e616d875edd198fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedTotalDegree'](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedtotaldegree-source-edition-2.md) | 75 | `declaration-track:c847326d4abdec939b36bd5df7ff52c2ed93703be0b9b697dd7db1a5696dc41a` |
| 2 | `theorem` | [weightedTotalDegree'_eq_bot_iff](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedtotaldegree-eq-bot-iff.md) | 79 | `result-track:6f0b8e40fdb30ab339665d4b8c4a61e43302625ed64408be8e4d26efdd46de61` |
| 3 | `theorem` | [weightedTotalDegree'_zero](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedtotaldegree-zero.md) | 86 | `result-track:1a2d0d743da212c3108a2ae262485a8d0151dc5115f014703c077bde272d653b` |
| 4 | `def` | [weightedTotalDegree](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedtotaldegree.md) | 96 | `declaration-track:4aa9fb7f1f11612325a4dc8305a3efa02905ef84026fe3f96b2ddd182a6bd72c` |
| 5 | `theorem` | [weightedTotalDegree_coe](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedtotaldegree-coe.md) | 100 | `result-track:9efb743d533676a8902a1990ed6bd88884ff80302bccc9e8ed13930c30847244` |
| 6 | `theorem` | [weightedTotalDegree_zero](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedtotaldegree-zero-source-edition-2.md) | 114 | `result-track:259d55dd48f8082dc2f92304569ccb613bd0d2dc7c0ab67c662d8a08af74abe9` |
| 7 | `theorem` | [le_weightedTotalDegree](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/le-weightedtotaldegree.md) | 118 | `result-track:42cecf61674c5f2e43c6e4afab3a61b037ef88965576d46ff0dee248902c30a8` |
| 8 | `def` | [IsWeightedHomogeneous](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/isweightedhomogeneous.md) | 128 | `declaration-track:7b89f16f6abb37ee27c0b3085de5a810aa2d6f8f21cad81dcd6701a602861ecb` |
| 9 | `def` | [weightedHomogeneousSubmodule](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedhomogeneoussubmodule.md) | 134 | `declaration-track:758e5558b7ec68f741fd541ea404af7d828c01f18dbd4af230ab0a2c7ee5ac7a` |
| 10 | `theorem` | [mem_weightedHomogeneousSubmodule](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/mem-weightedhomogeneoussubmodule.md) | 149 | `result-track:5fc78e04a926230f704712699eb4b6eed4553bc47955cc2caf5a4c724cad6225` |
| 11 | `theorem` | [weightedHomogeneousSubmodule_eq_finsupp_supported](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedhomogeneoussubmodule-eq-finsupp-supported.md) | 157 | `result-track:07a2ea480ed4d7efe9dce3e49330e88c0a80d0cdb7d85a1fa1e592a52a2e3cb2` |
| 12 | `lemma` | [weightedHomogeneousSubmodule_fg](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedhomogeneoussubmodule-fg.md) | 163 | `result-track:af86b6af703d01c2f95d19616bea22fa1f8f20d002ec0e69cfad4a49aad8d16e` |
| 13 | `theorem` | [weightedHomogeneousSubmodule_mul](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedhomogeneoussubmodule-mul.md) | 173 | `result-track:1727f25a4eb3e440ff3fa0ba95e7734f2fc46643030978bc8fcff2cefd617a52` |
| 14 | `theorem` | [isWeightedHomogeneous_monomial](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/isweightedhomogeneous-monomial.md) | 188 | `result-track:621f517a2624b12db758191d1bcbd9cecd591a1a2032b0c6ab0161b2e1d855fd` |
| 15 | `theorem` | [isWeightedHomogeneous_of_total_degree_zero](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/isweightedhomogeneous-of-total-degree-zero.md) | 199 | `result-track:ee460b6dee74f6a7eb3eccf836c71db8197a00bab8728dec0167e0a557b13f07` |
| 16 | `theorem` | [isWeightedHomogeneous_C](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/isweightedhomogeneous-c.md) | 209 | `result-track:5810f3d479fb61c3a5fb744a2326fb23d6088500bade75dc5877c40436913915` |
| 17 | `theorem` | [isWeightedHomogeneous_zero](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/isweightedhomogeneous-zero.md) | 216 | `result-track:35532c1eb064341e9a856ecbf268a525c7a837e7a51d25a6524fff3be219632d` |
| 18 | `theorem` | [isWeightedHomogeneous_one](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/isweightedhomogeneous-one.md) | 221 | `result-track:1c0d2ce8eccd1d727efe05e584040d6b53663dee6ad12e7d67acb756d6c311b4` |
| 19 | `lemma` | [isWeightedHomogeneous_of_isEmpty](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/isweightedhomogeneous-of-isempty.md) | 224 | `result-track:ca7747c58975214ffea52d952ed7e5c33300c8968768b34f093733f95df7d528` |
| 20 | `theorem` | [isWeightedHomogeneous_X](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/isweightedhomogeneous-x.md) | 230 | `result-track:d823b81e3bfbeaac5bdbe2bbf068814f255e9eaadd578ef7d15b628e1ccd819d` |
| 21 | `theorem` | [coeff_eq_zero](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/coeff-eq-zero.md) | 241 | `result-track:eb1ac7a4b3b48bc6d334f2855078a6e0ce525762572cf7ed8c2618ca91854063` |
| 22 | `theorem` | [inj_right](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/inj-right.md) | 247 | `result-track:4e855bb4b00affe4de680f3eea22dd5ddaac1880f1d3d30b5f03b80ad7c79207` |
| 23 | `theorem` | [add](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/add.md) | 254 | `result-track:805de2cfaec36ed99cb0d872399bf06cb3b563084a32882e10b1793e24467a68` |
| 24 | `theorem` | [neg](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/neg.md) | 265 | `result-track:a6e0732afdcd59d154acfba76e51ced08f5d71e09bd55132a6faf17b9effef8b` |
| 25 | `theorem` | [sub](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/sub.md) | 270 | `result-track:9e8fdf7c80e139518f8e50a539729b68f86cdb747a52d719bd65a73bc4d4b8d3` |
| 26 | `theorem` | [eq_zero_of_no_monomials](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/eq-zero-of-no-monomials.md) | 277 | `result-track:b9421eed0895a9b602e203f11e7220684ec7dce77e27556856d225331c3bfb5a` |
| 27 | `theorem` | [eq_monomial_of_unique_weight](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/eq-monomial-of-unique-weight.md) | 284 | `result-track:2c73fe0836f43908f86cb39aac453fef082ee6d834511b340dd57dd22b09a83f` |
| 28 | `theorem` | [sum](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/sum.md) | 290 | `result-track:8686040fcbe29935dbc866890ccfa0cf65c3c281485afcf23bad44c4fd5e7e04` |
| 29 | `theorem` | [mul](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/mul.md) | 296 | `result-track:7d7537dda2eb6e5330e9948f7c3084f35e73a73c328c0fe166656fec89ab5ae8` |
| 30 | `lemma` | [C_mul](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/c-mul.md) | 300 | `result-track:92f7184a8d0f1a5e5cabcdedac91980388a06dd5d0a68c736a4cb0ea8fe4cc89` |
| 31 | `theorem` | [pow](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/pow.md) | 305 | `result-track:b8f70394a7dc07da118b5dd17ed2570da2f8faa4fc3870abbc6fab31681496b1` |
| 32 | `theorem` | [prod](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/prod.md) | 313 | `result-track:307a1be1a28c30de3dc5e6e6ae66c4ebd906a86418f3bc1662adddc642a14780` |
| 33 | `theorem` | [weighted_total_degree](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weighted-total-degree.md) | 328 | `result-track:8a95675f61e4799d64f324268df5dc4c5817f5e7403fb8f4c600a8a0fed99598` |
| 34 | `lemma` | [induction_on](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/induction-on.md) | 340 | `result-track:f93719cf460fd8a611ca12ac22a49004b8a9269810b6671fb52bb4eff7f6ecb2` |
| 35 | `lemma` | [WeightedHomogeneousSubmodule.gradedMonoid](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedhomogeneoussubmodule-gradedmonoid.md) | 372 | `result-track:854e60b43953bcbd18b79b23652d3271ec39f03b715f37a1fff48ffe273b80bf` |
| 36 | `def` | [weightedHomogeneousComponent](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedhomogeneouscomponent.md) | 381 | `declaration-track:2b23323f3c365c4f307d5b6044ebcde5991633c175decdb604a78af7eae0488e` |
| 37 | `theorem` | [coeff_weightedHomogeneousComponent](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/coeff-weightedhomogeneouscomponent.md) | 390 | `result-track:856cf29362d4cbb0a9c4d7abba656aca18dd703128b5321d748f13d6fcc52e32` |
| 38 | `theorem` | [weightedHomogeneousComponent_apply](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedhomogeneouscomponent-apply.md) | 395 | `result-track:5307167bfcb98b4b2b31433def6c9cd0f66051307d68623375260b76b8dbcd4e` |
| 39 | `theorem` | [weightedHomogeneousComponent_isWeightedHomogeneous](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedhomogeneouscomponent-isweightedhomogeneous.md) | 403 | `result-track:87b7b83b7c22cff5f0da44edd204cc708b3a514f8d61de531c5141480ae5d9b2` |
| 40 | `theorem` | [weightedHomogeneousComponent_mem](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedhomogeneouscomponent-mem.md) | 410 | `result-track:5435e2824252089855ad9b646a1378500e3b89508a8666ee24fc13dda76003bb` |
| 41 | `theorem` | [weightedHomogeneousComponent_C_mul](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedhomogeneouscomponent-c-mul.md) | 416 | `result-track:88ee28195dfeec88d55f227e5b2db7d6c1d432a2fc50ecd9ee8f679fad13430c` |
| 42 | `theorem` | [weightedHomogeneousComponent_eq_zero'](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedhomogeneouscomponent-eq-zero.md) | 420 | `result-track:32cf2a09ab5890b8dfc045deb07c77d1c370ab5c795a88c7c0dd0ce59e64b310` |
| 43 | `theorem` | [weightedHomogeneousComponent_eq_zero](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedhomogeneouscomponent-eq-zero-source-edition-2.md) | 428 | `result-track:872ec672f72397c063569ad917f9ddf68dbeeb663684cafeea64306c9ff7675c` |
| 44 | `theorem` | [weightedHomogeneousComponent_finsupp](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedhomogeneouscomponent-finsupp.md) | 439 | `result-track:b21d243e1611b8b893da6f12723152af13a9a732085cbae9ad9bad41df1a2ebe` |
| 45 | `theorem` | [sum_weightedHomogeneousComponent](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/sum-weightedhomogeneouscomponent.md) | 451 | `result-track:4d70eb57bb6faeedf013d6e15826e604a37ba428110b535e6956d0b2f1b5ced2` |
| 46 | `theorem` | [finsum_weightedHomogeneousComponent](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/finsum-weightedhomogeneouscomponent.md) | 468 | `result-track:1403808d63f3a7ba8a2c935ead3c5bc20f69386cd45394fd043cf37cf686a5a2` |
| 47 | `theorem` | [IsWeightedHomogeneous.weightedHomogeneousComponent_same](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/isweightedhomogeneous-weightedhomogeneouscomponent-same.md) | 474 | `result-track:722afa677569af9fc4ac00fa793b02e70cc218617b7269cf38ab1040ad30e0df` |
| 48 | `theorem` | [IsWeightedHomogeneous.weightedHomogeneousComponent_ne](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/isweightedhomogeneous-weightedhomogeneouscomponent-ne.md) | 486 | `result-track:e2953d3e789776abff4dcc741f06a766bb23fa6fa288ef50531aca2d0491a231` |
| 49 | `theorem` | [weightedHomogeneousComponent_of_mem](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedhomogeneouscomponent-of-mem.md) | 500 | `result-track:d0dff35d17d1dc046d69fc64f7bc467f69edfdca79ed6e0e694e9867648511e5` |
| 50 | `lemma` | [weightedHomogeneousComponent_eq_self](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedhomogeneouscomponent-eq-self.md) | 515 | `result-track:2e8a5dfb912ec964e10c5560f661acb874eeed761b20079862618dc5de227dcf` |
| 51 | `lemma` | [support_weightedHomogeneousComponent](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/support-weightedhomogeneouscomponent.md) | 519 | `result-track:87aaac97bb17448fa6633f9893ab27a3e8ef1689ee4a3f02797c82a7b88d13ea` |
| 52 | `theorem` | [DirectSum.coeLinearMap_eq_dfinsuppSum](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/directsum-coelinearmap-eq-dfinsuppsum.md) | 528 | `result-track:c571549a360d8a9bdaa1099cb690d3a2b3ff6b51ea22c90990f4f42ef785bc68` |
| 53 | `theorem` | [DirectSum.coeAddMonoidHom_eq_support_sum](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/directsum-coeaddmonoidhom-eq-support-sum.md) | 534 | `result-track:3c903244db15062f362589337cc34f3ad2c1ad02bf3fad0991e4d2a408288fda` |
| 54 | `theorem` | [DirectSum.coeLinearMap_eq_finsum](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/directsum-coelinearmap-eq-finsum.md) | 540 | `result-track:3de81b5283aeacb21bef7db02cf9156ab63b9c5740bee3826e3a1ca801168c70` |
| 55 | `theorem` | [weightedHomogeneousComponent_directSum](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedhomogeneouscomponent-directsum.md) | 548 | `result-track:5d37f18eb7bfaa2adc87df811cf43edbcc5cf326878dd4f14cd316a28809113d` |
| 56 | `theorem` | [weightedHomogeneousComponent_zero](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedhomogeneouscomponent-zero.md) | 573 | `result-track:47440f6ad7357be113564b77255d6af1e90268c3d3c4ede8c2db9d8509042a23` |
| 57 | `def` | [NonTorsionWeight](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/nontorsionweight.md) | 589 | `declaration-track:2cb6123bcc33e14f843643377019cb582329ab5b35f9c90bd66e8209f05d1814` |
| 58 | `theorem` | [nonTorsionWeight_of](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/nontorsionweight-of.md) | 593 | `result-track:816be3b38f5d3b040de48a2d1e013709b8ad2e318a6c73a84fdfac7f8153f077` |
| 59 | `theorem` | [weightedDegree_eq_zero_iff](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weighteddegree-eq-zero-iff.md) | 599 | `result-track:b2fd274acebb1b956d06ec56658f4957285b10f24803e1ca7cff10971af0484a` |
| 60 | `theorem` | [isWeightedHomogeneous_zero_iff_weightedTotalDegree_eq_zero](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/isweightedhomogeneous-zero-iff-weightedtotaldegree-eq-zero.md) | 623 | `result-track:566e9ef6a576c7638801d56168c4ac315925fc7f6fedb9d88d626abfa7236b9b` |
| 61 | `theorem` | [weightedTotalDegree_eq_zero_iff](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedtotaldegree-eq-zero-iff.md) | 632 | `result-track:fc4caff9b5e081e6d07e14156fcedec043c5cdcfd4823ee7b3ba31067c34e5c2` |
| 62 | `theorem` | [weightedHomogeneousComponent_eq_zero_of_notMem](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedhomogeneouscomponent-eq-zero-of-notmem.md) | 650 | `result-track:e6452f1f8f58a0d4d2ae3ce84f24d84b4bcad270a9261b2a0983d157008b9ca0` |
| 63 | `def` | [decompose'](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/decompose.md) | 660 | `declaration-track:58076b9bed39e1cd6b7c25c7432fb8f6a86d757bbf9d67d58732a5c0e8dc1628` |
| 64 | `theorem` | [decompose'_apply](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/decompose-apply.md) | 665 | `result-track:955ecd65c395b28112c05932eeccc039902ec0311cc04240466de8f0b81e8a57` |
| 65 | `def` | [weightedDecomposition](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weighteddecomposition.md) | 677 | `declaration-track:960160a50623fa2614f9606f1ded44588b2f4bebe1d3f11d1e5cd6751d93c8b9` |
| 66 | `def` | [weightedGradedAlgebra](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedgradedalgebra.md) | 702 | `declaration-track:413e9510326ccf07be51f25a2693c8939ca9213338037936482e596318372f3d` |
| 67 | `theorem` | [weightedDecomposition.decompose'_eq](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weighteddecomposition-decompose-eq.md) | 707 | `result-track:6210ba44dc197a16f65480464c9dae2e70b00cbfeae3ba1f085b8bd6d252892b` |
| 68 | `theorem` | [weightedDecomposition.decompose'_apply](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weighteddecomposition-decompose-apply.md) | 713 | `result-track:e46de4f201054087c1023a01276123567803cbb7f67506efabbbdc0bfb095dd8` |
| 69 | `lemma` | [mem_iff_weightedHomogeneousComponent_mem](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/mem-iff-weightedhomogeneouscomponent-mem.md) | 721 | `result-track:d5a89b66cb656680c885735a12f04bfe6e893aed6f07b9e16434f74187d39a7f` |
| 70 | `lemma` | [weightedHomogeneousComponent_mem_of_mem](../../../../CommutativeAlgebra/WeightedHomogeneousPublic.lean/declarations/weightedhomogeneouscomponent-mem-of-mem.md) | 727 | `result-track:a783583bfbbcd53e809fedfc2c7b1e9da3f0273ae2512bc41d6c545d90621cc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb6ac2b18e486ed51bc04a8518bc1907fbf16b49a79c07bc408923e44b4cffd6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant2e6a01a2f03ae1d91348a8af28ee7df250f91cacd37f9089e616d875edd198fb.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant2e6a01a2f03ae1d91348a8af28ee7df250f91cacd37f9089e616d875edd198fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
