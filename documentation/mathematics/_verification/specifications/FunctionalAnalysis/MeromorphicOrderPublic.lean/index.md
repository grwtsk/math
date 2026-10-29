# Verification target: Meromorphic Order Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2a45051c74b71cf27654c2aa16bfb975ce76b04",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Order/Variantd41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2a45051c74b71cf27654c2aa16bfb975ce76b04`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Order/Variantd41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Order/Variantd41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean.json)

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
| 1 | `def` | [meromorphicOrderAt](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat.md) | 50 | `declaration-track:6507d660eae8edaf895ab138fff2a5302b531c9e62c910e5d96424e1359ae835` |
| 2 | `lemma` | [meromorphicOrderAt_of_not_meromorphicAt](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-of-not-meromorphicat.md) | 56 | `result-track:28cd474bfe288cd183dd7d82fd193ead8ee3074e05fa1c8cbe5cfa683d7ac8b6` |
| 3 | `lemma` | [meromorphicAt_of_meromorphicOrderAt_ne_zero](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicat-of-meromorphicorderat-ne-zero.md) | 60 | `result-track:30e52d02a1d228db48767fb2b10aade5ea1e4e58bb8840df2fc59f08949dd5bf` |
| 4 | `lemma` | [meromorphicOrderAt_eq_top_iff](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-eq-top-iff.md) | 67 | `result-track:98145b1bfd7ffde8548d1b73ee65a378d1dc4a2010e349399b4f2b036e9c79c4` |
| 5 | `lemma` | [eventuallyConst_nhdsNE_iff_meromorphicOrderAt_sub_eq_top](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/eventuallyconst-nhdsne-iff-meromorphicorderat-sub-eq-top.md) | 90 | `result-track:537a7823221732f61ce96a3d928e95fd73d6af7a892646e063d54b1faf47e4a3` |
| 6 | `lemma` | [meromorphicOrderAt_eq_int_iff](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-eq-int-iff.md) | 97 | `result-track:ff769239fee9e7962e162706f924b30abb6a3055ee7887b0014cfa2b167db47d` |
| 7 | `theorem` | [meromorphicOrderAt_ne_top_iff](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-ne-top-iff.md) | 129 | `result-track:cbbd35f28a1790dc3027e3386922b9acd25cf7f9439fd07d974b04dcbbdd6b5e` |
| 8 | `theorem` | [meromorphicOrderAt_ne_top_iff_eventually_ne_zero](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-ne-top-iff-eventually-ne-zero.md) | 140 | `result-track:3bdb03a1ce7353e65c9c12fae1c5bebb18696ba118dc8b31d3e5d79e40afe812` |
| 9 | `theorem` | [meromorphicOrderAt_ne_top_iff_mul_inv_eventuallyEq](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-ne-top-iff-mul-inv-eventuallyeq.md) | 152 | `result-track:c672d350d4fff53db6df38da1395dae3f6f771a146227d5ff5572ec207b72ad9` |
| 10 | `theorem` | [MeromorphicOn.eventually_codiscreteWithin_apply_ne_zero](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicon-eventually-codiscretewithin-apply-ne-zero.md) | 161 | `result-track:75b0450d1a556ac8cfd2a3d453160f61015eaaca48db8615db176da10d886641` |
| 11 | `lemma` | [tendsto_cobounded_of_meromorphicOrderAt_neg](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/tendsto-cobounded-of-meromorphicorderat-neg.md) | 172 | `result-track:13a04fca128aa99f6745d94b4e1b967c1ba14d7d57d59466dc0c4ad6fcf91bd9` |
| 12 | `lemma` | [tendsto_ne_zero_of_meromorphicOrderAt_eq_zero](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/tendsto-ne-zero-of-meromorphicorderat-eq-zero.md) | 195 | `result-track:85e9ea228ea39846083f895ee2124623ac273712d9bcdb920d6fceefaf78f6e0` |
| 13 | `lemma` | [tendsto_zero_of_meromorphicOrderAt_pos](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/tendsto-zero-of-meromorphicorderat-pos.md) | 205 | `result-track:36aa38c58a5492cd3a07ef0c33155b16bce0b5f22188f466f8c57fdfb6c86865` |
| 14 | `lemma` | [tendsto_nhds_of_meromorphicOrderAt_nonneg](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/tendsto-nhds-of-meromorphicorderat-nonneg.md) | 225 | `result-track:3f3a45b1e76ec95716afcf701d86e4c858cedaf30a2cd63236d03dc5085108b8` |
| 15 | `lemma` | [tendsto_cobounded_iff_meromorphicOrderAt_neg](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/tendsto-cobounded-iff-meromorphicorderat-neg.md) | 234 | `result-track:bde7d87df2258571b41bba36609281d837df34aacd6367cd7f8793d19941f784` |
| 16 | `lemma` | [tendsto_nhds_iff_meromorphicOrderAt_nonneg](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/tendsto-nhds-iff-meromorphicorderat-nonneg.md) | 243 | `result-track:af96f47c5f1f146f25aee0a1f069c2da3743dcafb047680a815718df1eebd19b` |
| 17 | `lemma` | [tendsto_ne_zero_iff_meromorphicOrderAt_eq_zero](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/tendsto-ne-zero-iff-meromorphicorderat-eq-zero.md) | 254 | `result-track:2ec4ee45e28986f7d66d4ac8286b7f71eb5eb06e3761a10ce15f16f461c467f5` |
| 18 | `lemma` | [tendsto_zero_iff_meromorphicOrderAt_pos](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/tendsto-zero-iff-meromorphicorderat-pos.md) | 268 | `result-track:c495eaad1ff5d2de9d7c36b5ff87265ba4209d38da4bf6380be1895c09e2d306` |
| 19 | `theorem` | [meromorphicOrderAt_congr](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-congr.md) | 284 | `result-track:b7d899ced7f01f17c6e7e49c8b53251986a26aa599158da2b108b4a3123e088e` |
| 20 | `lemma` | [AnalyticAt.meromorphicOrderAt_eq](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/analyticat-meromorphicorderat-eq.md) | 303 | `result-track:ed3b2fa0048b269af22dc87aea5a247154304ac9df2db57076af2573e510a698` |
| 21 | `theorem` | [AnalyticAt.meromorphicOrderAt_nonneg](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/analyticat-meromorphicorderat-nonneg.md) | 315 | `result-track:67db171c479700fe274e19b0991182d96afcde1029b5c800da95a3f3a45d8dd8` |
| 22 | `theorem` | [MeromorphicAt.meromorphicOrderAt_nonneg_iff](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicat-meromorphicorderat-nonneg-iff.md) | 320 | `result-track:41eaa2b269966f46b33e8b42498d6d2f0e14ced3dc6f51a4156e23d6986d3d74` |
| 23 | `theorem` | [MeromorphicAt.analyticAt](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicat-analyticat.md) | 333 | `result-track:b7b03046c7a2e10cdaa0ba7a58ea205a5df49b201a5990257c44e1f5e2049633` |
| 24 | `lemma` | [AnalyticAt.of_meromorphicOrderAt_pos](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/analyticat-of-meromorphicorderat-pos.md) | 359 | `result-track:af80efa99272b0363790b9e3f9239255ab65102b789c18d86a5f9f0eb6cf6f68` |
| 25 | `theorem` | [meromorphicOrderAt_const](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-const.md) | 369 | `result-track:f6c4ba53a842bd285518b8f55b6b10db61be4ead458548810adaced3f1138b78` |
| 26 | `lemma` | [meromorphicOrderAt_id](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-id.md) | 376 | `result-track:76fac3b6ff54c4e240ae5fd1143233b3352ed49df5e44dc101926be0bbdc9271` |
| 27 | `theorem` | [meromorphicOrderAt_const_intCast](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-const-intcast.md) | 382 | `result-track:19a04acff4f57300f6070e6ea8871d015db7c8a1bf36e8b17338d8a02ad4e94d` |
| 28 | `theorem` | [meromorphicOrderAt_const_natCast](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-const-natcast.md) | 389 | `result-track:69bee5347f5f4c249c38bcf3ed0c153f7e0f2a92be60d223937248dad7b75f8e` |
| 29 | `theorem` | [meromorphicOrderAt_const_ofNat](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-const-ofnat.md) | 396 | `result-track:d808486f1d902bd6a89b01ee12a390ba77b9681b51e053ed7037d4d2e6f577b4` |
| 30 | `theorem` | [meromorphicOrderAt_zpow_id_sub_const](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-zpow-id-sub-const.md) | 402 | `result-track:e741bb1f7d908ee0690f4135e31a85689fabf9e1dc753bb2263e2d50741a58d3` |
| 31 | `theorem` | [meromorphicOrderAt_pow_id_sub_const](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-pow-id-sub-const.md) | 408 | `result-track:f66f451cf594c119909ebd4e1c2a9f88bc0776e6d1eb264880df3a804cfa9466` |
| 32 | `theorem` | [meromorphicOrderAt_id_sub_const](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-id-sub-const.md) | 414 | `result-track:e3ccdc86804003d294339dba3a74c1b1f746e813538c627e0d8879eda8336a5c` |
| 33 | `theorem` | [meromorphicOrderAt_neg](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-neg.md) | 425 | `result-track:da169a67541ea0d7e9d39e524098abcff43ff2f7361e3073ff6ff903297b96c7` |
| 34 | `theorem` | [meromorphicOrderAt_fun_neg](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-fun-neg.md) | 440 | `result-track:309058f5cf0a57df2ede7ee3f35e0c2df69aa87da0a27aafbad509603b70a9f8` |
| 35 | `theorem` | [meromorphicOrderAt_smul](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-smul.md) | 444 | `result-track:ace20a0d16ff0898666f015ed5885d26a8437d0527a9dbce96988a1ebf926001` |
| 36 | `theorem` | [meromorphicOrderAt_mul](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-mul.md) | 466 | `result-track:7fcc97d63d241c0a7dfef548e823003c5ba9cd77637a1722f99f18fdad77e82a` |
| 37 | `theorem` | [meromorphicOrderAt_prod](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-prod.md) | 474 | `result-track:c1b725e8ba1cdac065b39e13c20649f422ed7a24eec139548956ae3db2c5de5d` |
| 38 | `theorem` | [meromorphicOrderAt_fun_prod](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-fun-prod.md) | 493 | `result-track:e548252716e1f00438f772ba0312a40dce8be6dd2bf76352bd93006c9c7bc354` |
| 39 | `lemma` | [meromorphicOrderAt_finprod_ne_top](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-finprod-ne-top.md) | 502 | `result-track:97388199c048fb094e24a757c0201c75e50256ec616124f8d7e08555334253c1` |
| 40 | `theorem` | [meromorphicOrderAt_pow](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-pow.md) | 511 | `result-track:bf19b374a36a08f63a9b1f55f66ee962e1d056e29e757eab434a142fa6450e49` |
| 41 | `theorem` | [meromorphicOrderAt_zpow](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-zpow.md) | 529 | `result-track:9a9390fa35156e5f3f036a602defad9c1acb167bc38c2ae507014c92571417f7` |
| 42 | `theorem` | [meromorphicOrderAt_inv](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-inv.md) | 558 | `result-track:e025810294665c9cc81c7d4ddcf3ea1ebfb18461c4ed4957757002032a90a59f` |
| 43 | `theorem` | [meromorphicOrderAt_div](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-div.md) | 582 | `result-track:0abfae14cff1d5a8730aee9b8bce7ba0bcb955631c1fe8cbd09555f72f528579` |
| 44 | `theorem` | [meromorphicOrderAt_add_of_top_left](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-add-of-top-left.md) | 591 | `result-track:cfe5ff7c99e9aa396b53afdf498b730a25798e42203d3ac3ad3bff5d8b40a89b` |
| 45 | `theorem` | [meromorphicOrderAt_add_of_top_right](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-add-of-top-right.md) | 602 | `result-track:aab691d64fed07bf2a368ade9462955b86262eb7268cef124d382909a9c2a4f5` |
| 46 | `theorem` | [meromorphicOrderAt_add](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-add.md) | 610 | `result-track:dd2dd7d413c2c59c550f31669312edc6db6359fb4551388e2547ce176c332bc2` |
| 47 | `lemma` | [meromorphicOrderAt_add_eq_left_of_lt](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-add-eq-left-of-lt.md) | 645 | `result-track:c7b3d164eb1b42b059325bc96fa1021ad25e480fb972fb03a535218f8cebc018` |
| 48 | `lemma` | [meromorphicOrderAt_add_eq_right_of_lt](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-add-eq-right-of-lt.md) | 675 | `result-track:045146258c1e6ec4886d2bebee4730e778820742ea2237c58984496664ab5850` |
| 49 | `theorem` | [meromorphicOrderAt_add_of_ne](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-add-of-ne.md) | 685 | `result-track:1f7d7e7d143f5bf68e1f3b294bd46e9818584fda457043bd0331c738ecf24bfc` |
| 50 | `theorem` | [isClopen_setOfPred_meromorphicOrderAt_eq_top](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/isclopen-setofpred-meromorphicorderat-eq-top.md) | 703 | `result-track:e741e30a210aa9cb6d14c15944d2de258701ae97c85d2ec2c66a7d263a4e5992` |
| 51 | `theorem` | [exists_meromorphicOrderAt_ne_top_iff_forall](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/exists-meromorphicorderat-ne-top-iff-forall.md) | 761 | `result-track:1703f6e4951c9a5b306798fa1c602fca392e3fdf549eba86ac597e167722d136` |
| 52 | `theorem` | [exists_meromorphicOrderAt_ne_top_iff_forall_mem](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/exists-meromorphicorderat-ne-top-iff-forall-mem.md) | 783 | `result-track:a37f04b17930a0dbfc2fcd4b55e578052e3cab4b2df98f6bb619d82690525dab` |
| 53 | `theorem` | [meromorphicOrderAt_ne_top_of_isPreconnected](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-ne-top-of-ispreconnected.md) | 791 | `result-track:7e1191976bceb58fffcb3cad41eda2bc6c5d3af7fcf56183240df261db547957` |
| 54 | `theorem` | [meromorphicOrderAt_eq_top_of_isPreconnected](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-eq-top-of-ispreconnected.md) | 797 | `result-track:7691af92bf5faa3457c1b54a87c19b188ca835fd1628d6e89a7bd4a30bab14b5` |
| 55 | `theorem` | [mul_inv_eventuallyEq](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/mul-inv-eventuallyeq.md) | 808 | `result-track:9a42836158f23f2274ba5067a6a83e929b2e47a582769606b488f1295e8486bf` |
| 56 | `theorem` | [eventually_analyticAt](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/eventually-analyticat.md) | 823 | `result-track:e9b849f227f16207abae6a59054330c19c5aed89429f34db521d3190b24e0723` |
| 57 | `theorem` | [eventually_analyticAt_or_mem_compl](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/eventually-analyticat-or-mem-compl.md) | 834 | `result-track:224dcf443a887190e8e10bbced45fdb81074b80bd462d1aacd24070ced107e7e` |
| 58 | `theorem` | [analyticAt_mem_codiscreteWithin](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/analyticat-mem-codiscretewithin.md) | 844 | `result-track:b4d1b7a95c8e65c0d3c3ed71ee1ebd2b7a3ca5bad2563d323146e23da4326fa3` |
| 59 | `theorem` | [codiscrete_setOfPred_meromorphicOrderAt_eq_zero_or_top](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/codiscrete-setofpred-meromorphicorderat-eq-zero-or-top.md) | 855 | `result-track:2a5c34c77137e611aaec376b2dd6905781c8949b785fa8fd534e07d658263293` |
| 60 | `theorem` | [codiscreteWithin_setOfPred_meromorphicOrderAt_eq_zero_or_top](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/codiscretewithin-setofpred-meromorphicorderat-eq-zero-or-top.md) | 885 | `result-track:ad64dae757a5b7e0f083e0f30ecbc760ac36bc77f06783bae11abc5a1126172c` |
| 61 | `lemma` | [MeromorphicAt.meromorphicOrderAt_comp](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicat-meromorphicorderat-comp.md) | 907 | `result-track:8931db40ecd3abddb1eb542315a293670f7d1f268a6f5ce25dfdc92c8f5408b8` |
| 62 | `lemma` | [meromorphicOrderAt_comp_of_deriv_ne_zero](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-comp-of-deriv-ne-zero.md) | 936 | `result-track:4992815f7da0cd8f13e948ccc5eda02208a5e26c9571100dddd6ce0accf1635b` |
| 63 | `theorem` | [meromorphicOrderAt_comp_add_const_eq_meromorphicOrderAt](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-comp-add-const-eq-meromorphicorderat.md) | 948 | `result-track:3a9e2611054a3e0dfd382a4032b8f89716548f0f93b631de7f78b6edc37cff85` |
| 64 | `theorem` | [meromorphicOrderAt_comp_sub_const_eq_meromorphicOrderAt](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-comp-sub-const-eq-meromorphicorderat.md) | 959 | `result-track:854b5f2a6ff13661519cb7bce21dede77a91b2be11682a303846845b9036e3f9` |
| 65 | `lemma` | [meromorphicOrderAt_smul_of_ne_zero](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-smul-of-ne-zero.md) | 969 | `result-track:c9a933c417765e8c2532fddf05b91d4cd4e5cfc31e08dea14f168af20721f278` |
| 66 | `lemma` | [meromorphicOrderAt_mul_of_ne_zero](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-mul-of-ne-zero.md) | 977 | `result-track:9d9b14729a9ad4ac2668587bdb30eb0ef66bbeaa2988a5b5e64a3081c329c131` |
| 67 | `theorem` | [meromorphicOrderAt_const_smul_eq_meromorphicOrderAt](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-const-smul-eq-meromorphicorderat.md) | 983 | `result-track:2455fbc854ac159cacc531542431abb18b58df329365bce1c89a906a596d1f77` |
| 68 | `lemma` | [meromorphicOrderAt_deriv_eq_sub_one](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-deriv-eq-sub-one.md) | 1002 | `result-track:5a28950deab66715bf2864f905a4e407271d3fc49f91f77adc7182c6aa11acbc` |
| 69 | `lemma` | [meromorphicOrderAt_deriv](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-deriv.md) | 1026 | `result-track:ebac2ac82b26f2ab03aeb5c9a20ef70c127cbb585098fef1377ec9508134875f` |
| 70 | `theorem` | [meromorphicOrderAt_logDeriv_eq_neg_one](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-logderiv-eq-neg-one.md) | 1036 | `result-track:62671b933bf44e1a3d36780e82da6995bf2c31afbd548a350348d6c6ba6e7bc8` |
| 71 | `theorem` | [meromorphicOrderAt_logDeriv_nonneg](../../../../FunctionalAnalysis/MeromorphicOrderPublic.lean/declarations/meromorphicorderat-logderiv-nonneg.md) | 1050 | `result-track:ef39c2c18577e91c1e4646de5ef3e367f8eeffd4f55223f9dbfe69e5ebd68f07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a71fb0e9617d5f5482c5021bf0e4b6c6690bec5f0eded891031ed326a8af6fc7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Order/Variantd41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Order/Variantd41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
