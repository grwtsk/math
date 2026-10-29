# Verification target: Meromorphic Order Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66318e292faf329e4d3d60546920c8de585ae8d5",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Order/Variantb73d868bad2819a47f6ff56a09840a3931b2af40bfb03f80ef4b942bc9815b59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66318e292faf329e4d3d60546920c8de585ae8d5`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Order/Variantb73d868bad2819a47f6ff56a09840a3931b2af40bfb03f80ef4b942bc9815b59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Order/Variantb73d868bad2819a47f6ff56a09840a3931b2af40bfb03f80ef4b942bc9815b59.lean.json)

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
| 1 | `def` | [meromorphicOrderAt](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat.md) | 58 | `declaration-track:9f7dc1df1aab39f47b748bc506bc563aad3ff756e7835d96e3b8ee6ed3912cbb` |
| 2 | `lemma` | [meromorphicOrderAt_of_not_meromorphicAt](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-of-not-meromorphicat.md) | 64 | `result-track:36d0a11ae795a1ddbf518cd363cc96e6777438854d682f5e131c30063a23387f` |
| 3 | `lemma` | [meromorphicAt_of_meromorphicOrderAt_ne_zero](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicat-of-meromorphicorderat-ne-zero.md) | 68 | `result-track:b053b44bcb95f987cb3bfca36c2cf0120ffd46c653e1a50207344c06295296f8` |
| 4 | `lemma` | [meromorphicOrderAt_eq_top_iff](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-eq-top-iff.md) | 75 | `result-track:3287356566193073964196f61ac0648876c559e84226afeeae82872cfba57fca` |
| 5 | `lemma` | [eventuallyConst_nhdsNE_iff_meromorphicOrderAt_sub_eq_top](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/eventuallyconst-nhdsne-iff-meromorphicorderat-sub-eq-top.md) | 98 | `result-track:789b1db7f74740e6619beb80278c08635c25417fbe21b023d9e4e4b6189e8216` |
| 6 | `lemma` | [meromorphicOrderAt_eq_int_iff](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-eq-int-iff.md) | 105 | `result-track:2a8ae9e884b0c4c77bbad25ce70da20d36c93fb6e9cae3a17f1c6e959d48446f` |
| 7 | `theorem` | [meromorphicOrderAt_ne_top_iff](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-ne-top-iff.md) | 137 | `result-track:035aaaf6c565ce91cc2c6627fcb3a2b100aacfa49de6badd11c3ac3a4ab7c286` |
| 8 | `theorem` | [meromorphicOrderAt_ne_top_iff_eventually_ne_zero](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-ne-top-iff-eventually-ne-zero.md) | 148 | `result-track:03485cc2d004b356879a33b04b7ecf15e42ca730f92c4f144fd0c88a504a594b` |
| 9 | `theorem` | [meromorphicOrderAt_ne_top_iff_mul_inv_eventuallyEq](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-ne-top-iff-mul-inv-eventuallyeq.md) | 160 | `result-track:ebe17f03f1f4897d226af0b9243f78f595251be180195788e978f98d046d5bdf` |
| 10 | `theorem` | [MeromorphicOn.eventually_codiscreteWithin_apply_ne_zero](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicon-eventually-codiscretewithin-apply-ne-zero.md) | 169 | `result-track:e45e4356000a34b45f0028b88f3f3fce04e4357417416cb58fc3eff57101dba7` |
| 11 | `lemma` | [tendsto_cobounded_of_meromorphicOrderAt_neg](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/tendsto-cobounded-of-meromorphicorderat-neg.md) | 180 | `result-track:03f9eacd6a012c5614b6ea018b9fc49cfcecaca2855c4b725097525e718d2131` |
| 12 | `lemma` | [tendsto_ne_zero_of_meromorphicOrderAt_eq_zero](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/tendsto-ne-zero-of-meromorphicorderat-eq-zero.md) | 203 | `result-track:ebb18251dee386568322139232532a9d87f97226014d5da5ac9e188980c05092` |
| 13 | `lemma` | [tendsto_zero_of_meromorphicOrderAt_pos](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/tendsto-zero-of-meromorphicorderat-pos.md) | 213 | `result-track:85ea3f3beb69623d8906ef257069602d0dbec9158f9d345c90776bd1b0d5974b` |
| 14 | `lemma` | [tendsto_nhds_of_meromorphicOrderAt_nonneg](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/tendsto-nhds-of-meromorphicorderat-nonneg.md) | 233 | `result-track:28aeb512eee00f3e25465407b23ad7c871c7cc79b96bae7e8878e15ba740f9a1` |
| 15 | `lemma` | [tendsto_cobounded_iff_meromorphicOrderAt_neg](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/tendsto-cobounded-iff-meromorphicorderat-neg.md) | 242 | `result-track:daf104f83ec71186a9ea5b7812f9601bda44541c445ff883cb53882df1e55a48` |
| 16 | `lemma` | [tendsto_nhds_iff_meromorphicOrderAt_nonneg](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/tendsto-nhds-iff-meromorphicorderat-nonneg.md) | 251 | `result-track:b138e497eb9fcf328b965b369cdc2c875dbed2ed8094f8c9a5fcd4a1c7bc230b` |
| 17 | `lemma` | [tendsto_ne_zero_iff_meromorphicOrderAt_eq_zero](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/tendsto-ne-zero-iff-meromorphicorderat-eq-zero.md) | 262 | `result-track:70a13d25fe07f47c5e497b4f2aab274d5063e543c958a4ca16ebc4945c4eea9b` |
| 18 | `lemma` | [tendsto_zero_iff_meromorphicOrderAt_pos](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/tendsto-zero-iff-meromorphicorderat-pos.md) | 276 | `result-track:3d11cea2137920889086035f32a3a7e1023188cf8bb5ec71a2cc2021c7250d27` |
| 19 | `theorem` | [meromorphicOrderAt_congr](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-congr.md) | 292 | `result-track:1fb5880d9abfeaf0ccf193104b89cf8353734d388fa7c3e6cf6e9a2573df00d9` |
| 20 | `lemma` | [AnalyticAt.meromorphicOrderAt_eq](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/analyticat-meromorphicorderat-eq.md) | 311 | `result-track:4f9b7f17d29d255171ac16ac9d87bb8f0f25b65096211167129f7996ba25ab97` |
| 21 | `theorem` | [AnalyticAt.meromorphicOrderAt_nonneg](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/analyticat-meromorphicorderat-nonneg.md) | 323 | `result-track:78065e5d8ed23ef0a310ce464147954dedde9e57d9eda13aab2147dbf2ca0a1b` |
| 22 | `theorem` | [MeromorphicAt.meromorphicOrderAt_nonneg_iff](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicat-meromorphicorderat-nonneg-iff.md) | 328 | `result-track:86c82d237530a71fe2df846b3d7127dc669d094025d09557391519eb7f7b999e` |
| 23 | `theorem` | [MeromorphicAt.analyticAt](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicat-analyticat.md) | 341 | `result-track:e2a207a83f5a662fadfaeef482a0fad14e344c112bec8e8adfc8989863af2a42` |
| 24 | `lemma` | [AnalyticAt.of_meromorphicOrderAt_pos](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/analyticat-of-meromorphicorderat-pos.md) | 367 | `result-track:435d533826579b371d0f659a60667c847d05473e33d82886b20d079c899700a1` |
| 25 | `theorem` | [meromorphicOrderAt_const](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-const.md) | 377 | `result-track:bf9f91db1c1f08c649aca0f481e88d5063e461b57ed264ee5a5ae16a8b820a14` |
| 26 | `lemma` | [meromorphicOrderAt_id](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-id.md) | 384 | `result-track:7e15f98758ca90df3be042fc65df6917536561a3dcdae4ca0627df194ed2f728` |
| 27 | `theorem` | [meromorphicOrderAt_const_intCast](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-const-intcast.md) | 390 | `result-track:e48ce7cd375c6e84c7ce183ba74a3f4f2ba63b3c9e834eb09e3de12c3d3ae59e` |
| 28 | `theorem` | [meromorphicOrderAt_const_natCast](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-const-natcast.md) | 397 | `result-track:792f351345052259cf79b07fdb54b409103981ec65927d9bb358cf5a0434b3c1` |
| 29 | `theorem` | [meromorphicOrderAt_const_ofNat](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-const-ofnat.md) | 404 | `result-track:70db2a137e704f39627de748395802714d883b203f58efad6efcdfc4f1adb414` |
| 30 | `theorem` | [meromorphicOrderAt_zpow_id_sub_const](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-zpow-id-sub-const.md) | 410 | `result-track:f222d778dcc9935a528ce74b0cbc691cefe22111bcff2741006ed7f086a9e46c` |
| 31 | `theorem` | [meromorphicOrderAt_pow_id_sub_const](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-pow-id-sub-const.md) | 416 | `result-track:daa4fbfe01bfe53798b0094ed0495c42d705f6ee57e72db6cd4b78387833f0aa` |
| 32 | `theorem` | [meromorphicOrderAt_id_sub_const](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-id-sub-const.md) | 422 | `result-track:1bc7421cbbf20080c620316d48890fc9b8ad015fd0a98a51ad06548cbca14d6f` |
| 33 | `theorem` | [meromorphicOrderAt_neg](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-neg.md) | 433 | `result-track:6d6e428abcb6f063224b1221fbf440cdf87c9af06ee4d029ba7c8ae2c121d101` |
| 34 | `theorem` | [meromorphicOrderAt_fun_neg](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-fun-neg.md) | 448 | `result-track:58d63d5e72ef3c739a45ff8dced7c298b735cbcbc23075ba3cc2c962efe86014` |
| 35 | `theorem` | [meromorphicOrderAt_smul](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-smul.md) | 452 | `result-track:905922cf030664ab4f4cb0fbab91e21b30c4c6c2cc45c1abd05a4bdcc01cc7b3` |
| 36 | `theorem` | [meromorphicOrderAt_mul](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-mul.md) | 474 | `result-track:1842d86c020b9f30bad8cd9aed09af5bfe16ffc32986d113deb7a46cc303cb98` |
| 37 | `theorem` | [meromorphicOrderAt_prod](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-prod.md) | 482 | `result-track:8c163a2646c363fbb2e21018cc7342bcf68982965430b3c1cb296971c72ed0fd` |
| 38 | `theorem` | [meromorphicOrderAt_fun_prod](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-fun-prod.md) | 501 | `result-track:263d01ad61d29c162c1ab8f12ef321a7e57d88f055a646e775141cb9f9dd8407` |
| 39 | `lemma` | [meromorphicOrderAt_finprod_ne_top](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-finprod-ne-top.md) | 510 | `result-track:03412dd9d2027ffb816ab68429fa3c6ddfb305e1000207b36dfbbce0bab6747e` |
| 40 | `theorem` | [meromorphicOrderAt_pow](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-pow.md) | 519 | `result-track:5f062f1f15f7723df37694ff27c32dd20194bfd20b42a4b5f3d3a41579385922` |
| 41 | `theorem` | [meromorphicOrderAt_zpow](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-zpow.md) | 537 | `result-track:5c302d04ac8832c047f5ad8bd296d16a73b2aff334479dc17b40f915f74d2128` |
| 42 | `theorem` | [meromorphicOrderAt_inv](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-inv.md) | 566 | `result-track:9171a65d657f37aa74cfe6de743d6f559e744799bf7dc33ab18d724ccd6d6efe` |
| 43 | `theorem` | [meromorphicOrderAt_div](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-div.md) | 590 | `result-track:cfe8eb2573d172f55e8b324ea71228e05fdb7a739fe46970c24b36d15a14cd16` |
| 44 | `theorem` | [meromorphicOrderAt_add_of_top_left](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-add-of-top-left.md) | 599 | `result-track:d0563ac2748934d56ff659a0f2a92c54fe239e6857573f70f9cfb15d75bc7f4d` |
| 45 | `theorem` | [meromorphicOrderAt_add_of_top_right](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-add-of-top-right.md) | 610 | `result-track:ebb3b9a272f0eb35562d9ffc6a6f86ee2d0ebe518044660782a51b4430bbd4b7` |
| 46 | `theorem` | [meromorphicOrderAt_add](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-add.md) | 618 | `result-track:9cbdcac276d7cf4406a2639eea81638c889e8f98ca377d2872dc8b8835a04754` |
| 47 | `lemma` | [meromorphicOrderAt_add_eq_left_of_lt](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-add-eq-left-of-lt.md) | 653 | `result-track:f4588405a897c20c73c45f745856a0a6176d571e225cd5380cf3ed4084fbf919` |
| 48 | `lemma` | [meromorphicOrderAt_add_eq_right_of_lt](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-add-eq-right-of-lt.md) | 683 | `result-track:909fd433858d95e76f91a16c49717a8736c9e467b55dd782d9bb8df2e1adc223` |
| 49 | `theorem` | [meromorphicOrderAt_add_of_ne](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-add-of-ne.md) | 693 | `result-track:860767be70f8625a310a8913e3469a32d531213d2cc963e9f3eaa5302fbddd40` |
| 50 | `theorem` | [isClopen_setOfPred_meromorphicOrderAt_eq_top](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/isclopen-setofpred-meromorphicorderat-eq-top.md) | 711 | `result-track:d59a197a346c439ab219e69261d2e98eaa6e45e96e9cf84772c26a47f9cbce51` |
| 51 | `theorem` | [exists_meromorphicOrderAt_ne_top_iff_forall](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/exists-meromorphicorderat-ne-top-iff-forall.md) | 769 | `result-track:cd22fa72800088ef00158702050fbd3a916642100ce03685aaaf39c6f1a61984` |
| 52 | `theorem` | [exists_meromorphicOrderAt_ne_top_iff_forall_mem](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/exists-meromorphicorderat-ne-top-iff-forall-mem.md) | 791 | `result-track:5ff61e71af2e22e24c59467202e92ea50751a05c7adef40b9ffe042d7a8d5566` |
| 53 | `theorem` | [meromorphicOrderAt_ne_top_of_isPreconnected](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-ne-top-of-ispreconnected.md) | 799 | `result-track:0ad038c898039ecca9057081addb5355ff3b0681b1bfa4117b115c9eda54ab6d` |
| 54 | `theorem` | [meromorphicOrderAt_eq_top_of_isPreconnected](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-eq-top-of-ispreconnected.md) | 805 | `result-track:3ea454d21cf07ea2c62c35fa6f011eb85d636ce5a308d40c53c317c96dd8fbe0` |
| 55 | `theorem` | [mul_inv_eventuallyEq](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/mul-inv-eventuallyeq.md) | 816 | `result-track:ebe3c358862dd82f4f3c5001210f1c67948390acd64aea209df742a60dd7c209` |
| 56 | `theorem` | [eventually_analyticAt](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/eventually-analyticat.md) | 831 | `result-track:85e5b43ff2a335d268be51b79ef15b4da884b42e25110cd82239fceeaa25aef0` |
| 57 | `theorem` | [eventually_analyticAt_or_mem_compl](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/eventually-analyticat-or-mem-compl.md) | 842 | `result-track:ffbf2c39dec1eb6a4fa811c714022b6ed2c2b852dff458916863d6d0fb3bb603` |
| 58 | `theorem` | [analyticAt_mem_codiscreteWithin](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/analyticat-mem-codiscretewithin.md) | 852 | `result-track:06ad9e129c4797bf5b2a9f2285203c13d340545a7f7049dd3714cb7a2634df59` |
| 59 | `theorem` | [codiscrete_setOfPred_meromorphicOrderAt_eq_zero_or_top](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/codiscrete-setofpred-meromorphicorderat-eq-zero-or-top.md) | 863 | `result-track:7b6ca2a177630207406177b94b5ba176dc40326340662fd0dd57ea486326aa1a` |
| 60 | `theorem` | [codiscreteWithin_setOfPred_meromorphicOrderAt_eq_zero_or_top](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/codiscretewithin-setofpred-meromorphicorderat-eq-zero-or-top.md) | 893 | `result-track:a69fce9483cd1a84f6d142184c30eababc36b98ba47b96b08f9e649ac52aea80` |
| 61 | `lemma` | [MeromorphicAt.meromorphicOrderAt_comp](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicat-meromorphicorderat-comp.md) | 915 | `result-track:ae5c66c4b60f57839763e2ad31904e29dccc76e0312909ca11d35772d8e42e58` |
| 62 | `lemma` | [meromorphicOrderAt_comp_of_deriv_ne_zero](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-comp-of-deriv-ne-zero.md) | 944 | `result-track:2efc585e2b4cc82defe62a504aad0d064abf679fcc66de6d450854cb83365455` |
| 63 | `theorem` | [meromorphicOrderAt_comp_add_const_eq_meromorphicOrderAt](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-comp-add-const-eq-meromorphicorderat.md) | 956 | `result-track:c34006255bb68071bd9eee04df57e0406ec1aa5521ac7d8a5498914bc15954ea` |
| 64 | `theorem` | [meromorphicOrderAt_comp_sub_const_eq_meromorphicOrderAt](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-comp-sub-const-eq-meromorphicorderat.md) | 967 | `result-track:1c4cb1d165a7dc31517e5a9b5ff9c98e421ec57152e97d5f0e8b0486b322a04c` |
| 65 | `lemma` | [meromorphicOrderAt_smul_of_ne_zero](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-smul-of-ne-zero.md) | 977 | `result-track:2ad3ed8bb0ca874f825c95edc9490960dc27cb2c7202fa64dc207263b0787823` |
| 66 | `lemma` | [meromorphicOrderAt_mul_of_ne_zero](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-mul-of-ne-zero.md) | 985 | `result-track:8dded18e61f4f115672a8a7968ef16731608d42b80ebdc9d90f225b1bc3e17aa` |
| 67 | `theorem` | [meromorphicOrderAt_const_smul_eq_meromorphicOrderAt](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-const-smul-eq-meromorphicorderat.md) | 991 | `result-track:1ff0114024a4f411bbe122c3a20572abdb8c6e7a1b4e566e1f647c01355809fb` |
| 68 | `lemma` | [meromorphicOrderAt_deriv_eq_sub_one](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-deriv-eq-sub-one.md) | 1010 | `result-track:95d65c88ecffd5c65e91f33d292aed8b47f6d2eb1aba0cae4a1d7987273471b3` |
| 69 | `lemma` | [meromorphicOrderAt_deriv](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-deriv.md) | 1034 | `result-track:0bfa6ee8b3f1e041a4813eb0cec98ef21b1991b29b54e621a802c8d0e47d928c` |
| 70 | `theorem` | [meromorphicOrderAt_logDeriv_eq_neg_one](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-logderiv-eq-neg-one.md) | 1044 | `result-track:ef104a376096deda4855e2cb57100d346c7c4bab038dd2dcf223fed2af399d4e` |
| 71 | `theorem` | [meromorphicOrderAt_logDeriv_nonneg](../../../../FunctionalAnalysis/MeromorphicOrderNamespacedPublic.lean/declarations/meromorphicorderat-logderiv-nonneg.md) | 1058 | `result-track:eaf62907c3f2f39357911f37540a519fa9d398100e8c6f2a33969ba91c55ab10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57c4869e9dc7deb875d1a0d2bebc0db1c162b4d96e8373ee0568b7e6826d1ec4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Order/Variantb73d868bad2819a47f6ff56a09840a3931b2af40bfb03f80ef4b942bc9815b59.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Order/Variantb73d868bad2819a47f6ff56a09840a3931b2af40bfb03f80ef4b942bc9815b59.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
