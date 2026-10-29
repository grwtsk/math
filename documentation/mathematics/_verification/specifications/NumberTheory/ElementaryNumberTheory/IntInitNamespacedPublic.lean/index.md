# Verification target: Int Init Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2b65e2829a5030ca2996142f86850a585101d39",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Variant5e3f93656d7cdffbe78c407b3384a379a95d65b284f859c87ffcf584fcef8619.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2b65e2829a5030ca2996142f86850a585101d39`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Init/Variant5e3f93656d7cdffbe78c407b3384a379a95d65b284f859c87ffcf584fcef8619.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Init/Variant5e3f93656d7cdffbe78c407b3384a379a95d65b284f859c87ffcf584fcef8619.lean.json)

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
| 1 | `theorem` | [neg_eq_neg](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/neg-eq-neg.md) | 40 | `result-track:add1c56eb4812f24393eefd512bf10b432991aa14252a90b410c7f220e98c8cf` |
| 2 | `def` | [succ](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/succ.md) | 45 | `declaration-track:ea6b055726c7d84ee43630986935c5c64b68a47c8c0e9906c507771207f27e83` |
| 3 | `def` | [pred](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/pred.md) | 48 | `declaration-track:bf1d7ed9722f23edf7af3db5257e6ad53259176e9ce48edc88fceb3f7cfa0d4a` |
| 4 | `lemma` | [pred_succ](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/pred-succ.md) | 50 | `result-track:58183470bc9d8f7df432cb97fe1065ab622a122c569c44b46c73cbfac6f2f79f` |
| 5 | `lemma` | [succ_pred](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/succ-pred.md) | 52 | `result-track:b3e08792af27f231409f9f0210cdef5836be523d9b3a2a6a0f7cd70910f64fb5` |
| 6 | `lemma` | [neg_succ](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/neg-succ.md) | 54 | `result-track:e9f647aab4f80cd431df4c30afd743efbac2fa00d51571c5137c0f1d537fda2a` |
| 7 | `lemma` | [succ_neg_succ](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/succ-neg-succ.md) | 56 | `result-track:173718057ea6c4995e490dabe142fa4ccd66ad9ace2f3b9d2b138746f55b4304` |
| 8 | `lemma` | [neg_pred](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/neg-pred.md) | 58 | `result-track:cb3e9c90923f44d6e239e58bfe617dff7767ff0a2c98b68baa782dadfbe65c8d` |
| 9 | `lemma` | [pred_neg_pred](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/pred-neg-pred.md) | 61 | `result-track:bc272940d87f2620b68b9d4871dc57bf244b175760ab6f3147c37e32ad5a72ed` |
| 10 | `lemma` | [pred_nat_succ](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/pred-nat-succ.md) | 63 | `result-track:0ca4eadb5ff9ea019a6033cceda531e16fa4668ae3f88fc55bbebcdff1dec8f8` |
| 11 | `lemma` | [neg_nat_succ](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/neg-nat-succ.md) | 65 | `result-track:4350259d79b1d26eb827c3cec7e9c5f72daa28870e35f9c8dde3af4a5a226dbd` |
| 12 | `lemma` | [succ_neg_natCast_succ](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/succ-neg-natcast-succ.md) | 67 | `result-track:bc7d72b91aa45ae1034f33067e8778362b88504b49e3ac89cf2d5fec15944197` |
| 13 | `lemma` | [natCast_pred_of_pos](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/natcast-pred-of-pos.md) | 69 | `result-track:1c5ad32fa9f9233505fcc9d5cecffc0454347857f7b126c3723919f87c44c57f` |
| 14 | `lemma` | [lt_succ_self](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/lt-succ-self.md) | 72 | `result-track:8b826e2f30c97420455e8b101cb97fd66adf1b218039bd481151d519472c423a` |
| 15 | `lemma` | [pred_self_lt](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/pred-self-lt.md) | 74 | `result-track:2d9adfd22fca24a4dcfe679cdfcfe9c4182bef84fd70db7d7d392a2b5ddc2537` |
| 16 | `lemma` | [induction_on](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/induction-on.md) | 82 | `result-track:413f32fa49c79c2743ff6aa1fd358e3635b272a5d270c7fb1599bcc2ab4ffc47` |
| 17 | `def` | [inductionOn'](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/inductionon.md) | 103 | `declaration-track:391dfb519df3b2d31345c5c09847e916261a249f85a2974d78c90d825b4efcd3` |
| 18 | `lemma` | [inductionOn'_self](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/inductionon-self.md) | 120 | `result-track:d6dc2be15204dfcbf4e38d800dc0a5b23eef2abb6659b539e02830f7cfa7832a` |
| 19 | `theorem` | [inductionOn'_add_one](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/inductionon-add-one.md) | 123 | `result-track:671406de2336d49cdbcacecffc90df760ac3849f604a527c2980ef6facfcbaef` |
| 20 | `theorem` | [inductionOn'_sub_one](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/inductionon-sub-one.md) | 129 | `result-track:2b5f3c0c933e6ad76ca9f001f63afab081d80a4e9b50b3af2b7c8e0088e2b9ab` |
| 21 | `def` | [negInduction](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/neginduction.md) | 142 | `declaration-track:ddc411a05a9474171f1f8ec28df06e0699a3c8c6c168b25d6b5b59e0e2bb94ae` |
| 22 | `def` | [leInduction](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/leinduction.md) | 149 | `declaration-track:4951147bc384220a705476e4fd9ee05b2cd33fa316a6ef74b3137c8f4211c8c2` |
| 23 | `theorem` | [leInduction_base](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/leinduction-base.md) | 156 | `result-track:0a98180789d94bd78b5e32f18da4782f2b878076912ae2c1beebf456b89f53dc` |
| 24 | `theorem` | [leInduction_add_one](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/leinduction-add-one.md) | 161 | `result-track:ed704e8a044471468290a9d2be6018a336769fae6775e1f4097b19a253b479b6` |
| 25 | `def` | [leInductionDown](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/leinductiondown.md) | 170 | `declaration-track:1447e35194728ee922674d93d111d4677c6edf4b834b3b5460d576155ff1280f` |
| 26 | `theorem` | [leInductionDown_base](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/leinductiondown-base.md) | 175 | `result-track:721b925ff0bd47b0cbec33ccac48a39509664d6a03a92d8927583ea939e29ee3` |
| 27 | `theorem` | [leInductionDown_sub_one](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/leinductiondown-sub-one.md) | 180 | `result-track:1f7834ae51e727b79fd1a119816baf26238eb08d3c0cc8d2e05aed6ceeffb979` |
| 28 | `def` | [strongRec](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/strongrec.md) | 196 | `declaration-track:ff8a632c3753d5a3c74b35e42d5327f7102a5d8fa15a7f8215fbc7bad0c1e58e` |
| 29 | `lemma` | [strongRec_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/strongrec-of-lt.md) | 203 | `result-track:c7e790e161fbdceb9d99f6662baa012a44ab96c708006323f65e1ffa7c68fbb3` |
| 30 | `theorem` | [sign_mul_self_eq_natAbs](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/sign-mul-self-eq-natabs.md) | 213 | `result-track:555925bd313530dbb9d9cfc3fd20c5ae0e27c1967e2c81e23f3101efe00356c9` |
| 31 | `lemma` | [natCast_div](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/natcast-div.md) | 218 | `result-track:157355f3b353a43e440ea3f402ccda3fab94bf08efd06b46ba5c8f934da29ee6` |
| 32 | `lemma` | [ediv_of_neg_of_pos](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/ediv-of-neg-of-pos.md) | 220 | `result-track:f072337a01656097e0e378be19f259452e386f85db820e6385f29ae4654cd456` |
| 33 | `lemma` | [natCast_mod](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/natcast-mod.md) | 227 | `result-track:e8fa69e5d1e15789fe7df7fd71847affc0a9c59225fb2ac429e985ba0474dfe6` |
| 34 | `lemma` | [div_le_iff_of_dvd_of_pos](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/div-le-iff-of-dvd-of-pos.md) | 229 | `result-track:ffdce50fd433d7fdf27738406639e28f58c26be81fefa7556b91bd9d397ececf` |
| 35 | `lemma` | [div_le_iff_of_dvd_of_neg](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/div-le-iff-of-dvd-of-neg.md) | 232 | `result-track:25b09a5b1e1e95397acbffda59722ab20962d851087ba846c8e2a4eac2012579` |
| 36 | `lemma` | [div_lt_iff_of_dvd_of_pos](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/div-lt-iff-of-dvd-of-pos.md) | 235 | `result-track:9983ddc50bebf6881ae6a0a24c1dbf3b746f877c43f517b8bbc02af302ab10ba` |
| 37 | `lemma` | [div_lt_iff_of_dvd_of_neg](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/div-lt-iff-of-dvd-of-neg.md) | 238 | `result-track:3aa0219e46789c7e0dd9f726ed311c13fd405ee96e242354eff48e22c656e137` |
| 38 | `lemma` | [le_div_iff_of_dvd_of_pos](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/le-div-iff-of-dvd-of-pos.md) | 241 | `result-track:73f5cb51c444aea5a84ac4a12e47e7aacc3a0f5288b8b54e60575e4df79e1959` |
| 39 | `lemma` | [le_div_iff_of_dvd_of_neg](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/le-div-iff-of-dvd-of-neg.md) | 244 | `result-track:b2895381a59c43a100be9c0b1fe4f1e1981ff26f2d64699d640a7b8589e9430b` |
| 40 | `lemma` | [lt_div_iff_of_dvd_of_pos](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/lt-div-iff-of-dvd-of-pos.md) | 247 | `result-track:d5e8404f8a8d20175a4d43c520bc89c3856519644e6807f23606a132d376bccf` |
| 41 | `lemma` | [lt_div_iff_of_dvd_of_neg](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/lt-div-iff-of-dvd-of-neg.md) | 250 | `result-track:bd8989b9dad5e582d23eeffe2fa21602f4061fe3165802e00ff62d236b1ca4ca` |
| 42 | `lemma` | [div_le_div_iff_of_dvd_of_pos_of_pos](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/div-le-div-iff-of-dvd-of-pos-of-pos.md) | 253 | `result-track:bbdcac5440a1fc8ca8fded57b0d437fbd8d8e4926413e4bfdea7f6ca84934294` |
| 43 | `lemma` | [div_le_div_iff_of_dvd_of_pos_of_neg](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/div-le-div-iff-of-dvd-of-pos-of-neg.md) | 257 | `result-track:4d03111e8609924bbc193d38aa2ef8b8bcb24301d2536cca01b2f3ad529d2661` |
| 44 | `lemma` | [div_le_div_iff_of_dvd_of_neg_of_pos](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/div-le-div-iff-of-dvd-of-neg-of-pos.md) | 261 | `result-track:38edd5891c12f370d45cd5aa886aba65fad18b1dbcd23f26760c82343a709a52` |
| 45 | `lemma` | [div_le_div_iff_of_dvd_of_neg_of_neg](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/div-le-div-iff-of-dvd-of-neg-of-neg.md) | 265 | `result-track:15ef77d7de01ea9f992173c6eb2bfac43acfc6956204291f7de9e0c8ef9f25fb` |
| 46 | `lemma` | [div_lt_div_iff_of_dvd_of_pos](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/div-lt-div-iff-of-dvd-of-pos.md) | 269 | `result-track:90c34ae30f431f719f40c5570030b9f5ad0bc5330cdb2bbcea9339ac61c9c398` |
| 47 | `lemma` | [div_lt_div_iff_of_dvd_of_pos_of_neg](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/div-lt-div-iff-of-dvd-of-pos-of-neg.md) | 273 | `result-track:ad97b7607de6a426d8c3781a1054a5c18ad82dcf91571d285f5b025b59d91483` |
| 48 | `lemma` | [div_lt_div_iff_of_dvd_of_neg_of_pos](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/div-lt-div-iff-of-dvd-of-neg-of-pos.md) | 277 | `result-track:6eeb19d8be33a18eccb69b338aeb0d23b3cff5077475b41b9c44da91a3e50074` |
| 49 | `lemma` | [div_lt_div_iff_of_dvd_of_neg_of_neg](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/div-lt-div-iff-of-dvd-of-neg-of-neg.md) | 281 | `result-track:83a5cb7e42d42076ebdda4035060957175ac000942c617c139158739a9886090` |
| 50 | `lemma` | [emod_two_eq_zero_or_one](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/emod-two-eq-zero-or-one.md) | 287 | `result-track:c5bb5382ffd4543aa6578a865f8b440daac1a1ff157521ebb157c9d634873662` |
| 51 | `lemma` | [dvd_mul_of_div_dvd](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/dvd-mul-of-div-dvd.md) | 292 | `result-track:1142f86b654c2a98b158d0df57de764e18ec1085c4166b3b834064414c670cac` |
| 52 | `lemma` | [div_dvd_iff_dvd_mul](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/div-dvd-iff-dvd-mul.md) | 295 | `result-track:60c88f04695df4edf74cca2a1302af25b317eb064b8956e32ab22e4ffc774afa` |
| 53 | `lemma` | [mul_dvd_of_dvd_div](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/mul-dvd-of-dvd-div.md) | 298 | `result-track:1d5bf554d0a468aa905093324e8160337e83519e035f2ab704c65f55e2124cb0` |
| 54 | `lemma` | [dvd_div_of_mul_dvd](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/dvd-div-of-mul-dvd.md) | 301 | `result-track:0d3ffeb015dafeaf42283932b6a57bcaef474133f714f35df7e8f3483a8ed4d7` |
| 55 | `lemma` | [dvd_div_iff_mul_dvd](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/dvd-div-iff-mul-dvd.md) | 304 | `result-track:4aaa76460fd5c5b281cf819b4330bb8239e02b34d3938dd435136dbab9d9ab05` |
| 56 | `lemma` | [exists_lt_and_lt_iff_not_dvd](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/exists-lt-and-lt-iff-not-dvd.md) | 309 | `result-track:b1c767ddd3973f357f61b98265301fc48bfbf510f48ba2b28dbbaa3307a46c9b` |
| 57 | `lemma` | [eq_mul_div_of_mul_eq_mul_of_dvd_left](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/eq-mul-div-of-mul-eq-mul-of-dvd-left.md) | 313 | `result-track:4ca94f35a0c203db223e7a45f9d6942af09e3c52f69ed726145ccd1c434cbd71` |
| 58 | `lemma` | [ofNat_add_negSucc_of_ge](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/ofnat-add-negsucc-of-ge.md) | 319 | `result-track:d75df80c2323ce910e0b75cdc047c61ee49f14b382df14d35ac14d535f26df93` |
| 59 | `lemma` | [le_iff_pos_of_dvd](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/le-iff-pos-of-dvd.md) | 326 | `result-track:0afdde25d782e26f6e7abd34e7c68a2fd9d0e91f6b40b8247e19661d3f372cf2` |
| 60 | `lemma` | [le_add_iff_lt_of_dvd_sub](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/le-add-iff-lt-of-dvd-sub.md) | 329 | `result-track:1f3fd0d93f587ca26e4e35a167fe599bea3882e0f2ad81d7e25fb1c01f3d9c2b` |
| 61 | `lemma` | [sign_add_eq_of_sign_eq](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/sign-add-eq-of-sign-eq.md) | 334 | `result-track:6865650f4f0d204e829de5114bdf0e8fcd4e398c30e12ff252603357f9f2abb9` |
| 62 | `lemma` | [toNat_pred_coe_of_pos](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/tonat-pred-coe-of-pos.md) | 348 | `result-track:eb6f97051597aef03bd8b73e8a31cdafa99ce471ed1ad052e46a3802e03a4357` |
| 63 | `lemma` | [toNat_lt_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/tonat-lt-of-ne-zero.md) | 351 | `result-track:a61556c0b4ae3baef05ad42315d02114c9cd03cda989ea8517578989ec5be066` |
| 64 | `def` | [natMod](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/natmod.md) | 354 | `declaration-track:c11e14d16ea8aa0d577d6f490b306bac8bdf166bc7b62eafa88a683a2c3bdb9b` |
| 65 | `lemma` | [natMod_lt](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/natmod-lt.md) | 356 | `result-track:549417376e2770499865af65d8a2a66c6caa12881b23994dd275e78cf38c255c` |
| 66 | `lemma` | [pow_eq](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/pow-eq.md) | 360 | `result-track:11c4677f1a4ea93a73344d706a767f3d8163e3318ee256659347eebd087277b3` |
| 67 | `lemma` | [gcd_ofNat_negSucc](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/gcd-ofnat-negsucc.md) | 362 | `result-track:dc3638c4a212f61250f44c08b405cdebf4131e6683faa1d35934dec628d5c2ac` |
| 68 | `lemma` | [gcd_negSucc_ofNat](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/gcd-negsucc-ofnat.md) | 363 | `result-track:9112795ce97356dc430ad8160a9f7a7f683f2b26bb538a478a75f287bac3a18f` |
| 69 | `lemma` | [gcd_negSucc_negSucc](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/gcd-negsucc-negsucc.md) | 364 | `result-track:5765725ca15582cc1cdd8f0d30b8d33499a32ff390b220715112cc066ac6133e` |
| 70 | `theorem` | [gcd_right_comm](../../../../../NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/declarations/gcd-right-comm.md) | 367 | `result-track:22b2d77fbe1de1b8552ef005f2eaa087661ba2981a8e02cc3a44059de829cab0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ad9399fefaf8364566907fb38cad80d32fdc97d0ff79b300199442ac27d1e5f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Init/Variant5e3f93656d7cdffbe78c407b3384a379a95d65b284f859c87ffcf584fcef8619.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Init/Variant5e3f93656d7cdffbe78c407b3384a379a95d65b284f859c87ffcf584fcef8619.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
