# Verification target: Principal Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f861d902ab73fb9d15ebb284b22fb433054e57d4",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant4a133e78870ffd2fe2da6991fe5a021113de02308e6fca6a8b58b1dff5f73396.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f861d902ab73fb9d15ebb284b22fb433054e57d4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant4a133e78870ffd2fe2da6991fe5a021113de02308e6fca6a8b58b1dff5f73396.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant4a133e78870ffd2fe2da6991fe5a021113de02308e6fca6a8b58b1dff5f73396.lean.json)

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
| 1 | `def` | [IsPrincipal](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal.md) | 69 | `declaration-track:25a70bbb457acf8a6c3392694033b1d0882b291362057450aa1ee16364070b59` |
| 2 | `theorem` | [isPrincipal_swap_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-swap-iff.md) | 75 | `result-track:a25c15012f100c9dae6559b9b83795da7e9fa484a0d982dffbfccc0aa5cf4b8d` |
| 3 | `theorem` | [not_isPrincipal_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/not-isprincipal-iff.md) | 81 | `result-track:9cdb3b540f63414ea8bb0b2ab08fd3f9b1c70efb65b72312f3e38a3f23e3976c` |
| 4 | `theorem` | [isPrincipal_iff_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-iff-of-monotone.md) | 87 | `result-track:496c8280ed1531f17460b366729344edb14f05e061670a2e86b7aa6a01952901` |
| 5 | `theorem` | [not_isPrincipal_iff_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/not-isprincipal-iff-of-monotone.md) | 99 | `result-track:9b35fcfb97a86f04e28f080cc59bc20f2d3a7309e2af737cad9d589785e1fd62` |
| 6 | `lemma` | [isPrincipal_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-zero.md) | 107 | `result-track:aac3575d608779c197cea126c052a52ed81ca698635399756844a4d8af011179` |
| 7 | `theorem` | [isPrincipal_one_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-one-iff.md) | 112 | `result-track:5329a82fef74012856ebee77872df55cb4b7c45566c2a6f9dc5283d77afd8823` |
| 8 | `theorem` | [IsPrincipal.iterate_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-iterate-lt.md) | 117 | `result-track:bae125084c8c174f6f38d42714b9cc8d689e9e91e748fc698848e9672ccc32ff` |
| 9 | `theorem` | [op_eq_self_of_isPrincipal](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/op-eq-self-of-isprincipal.md) | 128 | `result-track:287cf6f0a90820e23f79c9a15bfe95f7d070918eb441ee6248f371b75fe268ac` |
| 10 | `theorem` | [nfp_le_of_isPrincipal](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/nfp-le-of-isprincipal.md) | 137 | `result-track:0350ce5402bbdd2089c2ee85af45cad316fcd7247ce2497afe00ca66647e2603` |
| 11 | `theorem` | [IsPrincipal.sSup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-ssup.md) | 143 | `result-track:303b1ee4156e7237d5cf9bb8634c6858e10acab2066198cba55aa1edb46f736a` |
| 12 | `theorem` | [IsPrincipal.iSup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-isup.md) | 158 | `result-track:0094e157069270b94b63e102f4e3aa0d25dc8a2cb0bca7bb61a4bb07c831f3d8` |
| 13 | `theorem` | [isPrincipal_nfp_iSup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-nfp-isup.md) | 167 | `result-track:e56960c95c0e6ba58516ae4fd5c1479c122d3a2702b1c56623d8825215294260` |
| 14 | `theorem` | [not_bddAbove_setOfPred_isPrincipal](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/not-bddabove-setofpred-isprincipal.md) | 188 | `result-track:b4880a2df0a28f3e374f1d965cb1c5146a150b5f34c06e75a5cb122a4cbf7422` |
| 15 | `theorem` | [isPrincipal_add_iff_add_self_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-add-iff-add-self-lt.md) | 201 | `result-track:3f1067f1b3e641057739044d8dbc53d815de138a3c033328574c7646934fb635` |
| 16 | `theorem` | [IsPrincipal.mul_natCast_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-mul-natcast-lt.md) | 205 | `result-track:1b807243ec42b55fb0b996a507eea1fdc4004d2a46e0ae714b4c04124fb28bed` |
| 17 | `theorem` | [isPrincipal_add_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-add-one.md) | 213 | `result-track:ba395de85f234217a9706db0620a8cbdb590fcfb4a8df715130157efba0c5a42` |
| 18 | `theorem` | [isPrincipal_add_of_le_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-add-of-le-one.md) | 218 | `result-track:6817ea11d7abe3606cc84a99330e134ae2fc016ea755812ad279ac14d4f0be99` |
| 19 | `theorem` | [isSuccLimit_of_isPrincipal_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/issucclimit-of-isprincipal-add.md) | 226 | `result-track:e89d79138c84270c8a6cc2812b1197ba061515388d2e192f5250d0ca47aa4a89` |
| 20 | `theorem` | [isPrincipal_add_iff_add_left_eq_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-add-iff-add-left-eq-self.md) | 234 | `result-track:00c0c88bfad306666956db8002a65d2620d2b3c1c6e0e05ebf5d49b2ec54014d` |
| 21 | `theorem` | [IsPrincipal.add_eq_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-add-eq-right.md) | 246 | `result-track:503fa9f6278b188022f349532290d2bdb31cad8c801d428d41fa26f7afdf3ebf` |
| 22 | `theorem` | [IsPrincipal.add_eq_right_of_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-add-eq-right-of-le.md) | 249 | `result-track:9c1ae9d3fb4675383b50110c7772a59f04c3c74a4ebc90cb7c56f347a92cfb20` |
| 23 | `theorem` | [exists_lt_add_of_not_isPrincipal_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/exists-lt-add-of-not-isprincipal-add.md) | 254 | `result-track:dd4d009adc1ef7336499dcd2eb5692a325a321ed783b941e0d8984b0bd836ed0` |
| 24 | `theorem` | [isPrincipal_add_iff_add_lt_ne_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-add-iff-add-lt-ne-self.md) | 266 | `result-track:7f6282e4d37bf5c7a59ca39defff0154b51d977cab12cebf0aa4af8aecc4aade` |
| 25 | `theorem` | [isPrincipal_add_omega0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-add-omega0.md) | 275 | `result-track:70224144e1124d034cf2ff77ffa63f9a64fffe92e35c5a80c207d3cdf95202b8` |
| 26 | `theorem` | [add_of_omega0_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/add-of-omega0-le.md) | 283 | `result-track:a19e4acf1c75cfa95143de78dbd4fe1960c5f3e3f678cf8902adca648e70f5ab` |
| 27 | `theorem` | [isPrincipal_add_omega0_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-add-omega0-opow.md) | 286 | `result-track:4807cd4281d6ce1ea53e1ec41ad163f73f7d9a3aaba98fe91c8066b95c9fbdc0` |
| 28 | `theorem` | [add_omega0_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/add-omega0-opow.md) | 299 | `result-track:f282184572ee18b2b6ccefaa41207d606b2c8ae3678e9dab0d4cd00088348c74` |
| 29 | `theorem` | [add_of_omega0_opow_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/add-of-omega0-opow-le.md) | 302 | `result-track:a03be47136d0f0d67d5b1676d3bdbdb927046395b4ecd733c6c155acbf75b6bd` |
| 30 | `theorem` | [isLeast_sub_lt_omega0_opow_log](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isleast-sub-lt-omega0-opow-log.md) | 310 | `result-track:acb2f2176f63d8a1a9eed4b228fd5beafd238d23f753d35d05be373627d41d2e` |
| 31 | `theorem` | [isPrincipal_add_iff_zero_or_omega0_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-add-iff-zero-or-omega0-opow.md) | 316 | `result-track:fcb3b57ce5319d2ddf4ee3f1f64121b6f12a733390ab6433097d25611d02900f` |
| 32 | `theorem` | [isPrincipal_add_opow_of_isPrincipal_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-add-opow-of-isprincipal-add.md) | 329 | `result-track:2468c341e0fe800fa45a814762da204b7206721dc7440553262d190c5d0dc8e4` |
| 33 | `theorem` | [isPrincipal_add_mul_of_isPrincipal_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-add-mul-of-isprincipal-add.md) | 342 | `result-track:28fa46ed4f702e8a2445d54ea4afebafe6d843b338dc0ed06fda52c4330d06c7` |
| 34 | `theorem` | [isPrincipal_mul_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-mul-one.md) | 365 | `result-track:49ce37d2fc026d94488bd05aa8a8e33395814eb1567a965d9418b86e31e0c09c` |
| 35 | `theorem` | [isPrincipal_mul_two](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-mul-two.md) | 370 | `result-track:f93d4f908a2af9ce198512f94bab7413efcfa4a806d45c4dcc442d05106fc7bf` |
| 36 | `theorem` | [isPrincipal_mul_of_le_two](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-mul-of-le-two.md) | 378 | `result-track:fcb24bc29361d73a2046b971312397ddd3f3d47ca53aec9736a9dc016338f9f1` |
| 37 | `theorem` | [isPrincipal_add_of_isPrincipal_mul](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-add-of-isprincipal-mul.md) | 385 | `result-track:174e4cee9a60bfe938bb457e0c520e4ae50c63bcd6314761a41c4991b92cbb0c` |
| 38 | `theorem` | [isSuccLimit_of_isPrincipal_mul](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/issucclimit-of-isprincipal-mul.md) | 395 | `result-track:407d140fcb17cf9b89dcc88df4f659b4e821d985652909203e747c71e12de50c` |
| 39 | `theorem` | [isPrincipal_mul_iff_mul_left_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-mul-iff-mul-left-eq.md) | 402 | `result-track:f4784aa3eb3b75800f6fe8b3e8d2ea1d2bfd3d6aa9165a118e11154e7876de84` |
| 40 | `theorem` | [isPrincipal_mul_omega0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-mul-omega0.md) | 422 | `result-track:542c25ea94cd6254673339fc1e6280f4852e533e1217560c98c7e6dd53232f63` |
| 41 | `theorem` | [mul_omega0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/mul-omega0.md) | 431 | `result-track:99b8e5ae1789218178c2de98187724e4939afa73e054daed3aeb8a0e6f6a1d42` |
| 42 | `theorem` | [natCast_mul_omega0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/natcast-mul-omega0.md) | 434 | `result-track:ca619121e5b88934da738f62625f31a0ba617920870185169714f077473d24cf` |
| 43 | `theorem` | [mul_lt_omega0_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/mul-lt-omega0-opow.md) | 437 | `result-track:6f5dc5b9839126ad31b015887b035b4a74f9f8c422b857d8966268537e95e54b` |
| 44 | `theorem` | [mul_omega0_opow_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/mul-omega0-opow-opow.md) | 451 | `result-track:9f6e2720a0538ebd54bebd5c8c85e2e7fc7f93ca1b4baea61dcb009b53d86ad9` |
| 45 | `theorem` | [isPrincipal_mul_omega0_opow_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-mul-omega0-opow-opow.md) | 462 | `result-track:8f7d2c9bec74514709f5e4cac3ea48c217f6a98d1a05795e532a1f438318dda5` |
| 46 | `theorem` | [isPrincipal_add_of_isPrincipal_mul_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-add-of-isprincipal-mul-opow.md) | 468 | `result-track:220c3774fd6620e128306ad936526332390f4c6552fb774848eb6c297149ff26` |
| 47 | `theorem` | [isPrincipal_mul_iff_le_two_or_omega0_opow_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-mul-iff-le-two-or-omega0-opow-opow.md) | 479 | `result-track:56e129f8f21416688e6c37815e7caaee47e621669e5211b0a03ac0c2a156fde4` |
| 48 | `theorem` | [mul_omega0_dvd](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/mul-omega0-dvd.md) | 498 | `result-track:43c61e4dcfee40ef2ee23ef51b9aef25af26ed7b04f4ae3c6504865c93706be5` |
| 49 | `theorem` | [mul_eq_opow_log_succ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/mul-eq-opow-log-succ.md) | 501 | `result-track:1423eedbdb7c3d980ae275bbde85c2e491348ac4aaef1962b75e63644e689642` |
| 50 | `theorem` | [isPrincipal_opow_omega0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/isprincipal-opow-omega0.md) | 521 | `result-track:5bdbd2e24a28a3281bb17c05e6187e8fa69254d8135673727a056c9f89423f15` |
| 51 | `theorem` | [opow_omega0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/opow-omega0.md) | 528 | `result-track:7c8be4e79708e96a6c8876af5f7998a0fb2319b58544ab1af7e3a6cadf92776e` |
| 52 | `theorem` | [natCast_opow_omega0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalNamespacedPublic.lean/declarations/natcast-opow-omega0.md) | 533 | `result-track:ec6f0123a3f028361f391700a344a7d89682cc2155b4c51bc1f8102d3c7b7cfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d78fd18d2fbae74794104475183ee0fa323bb3d4dc9270f13235f23dd1008e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant4a133e78870ffd2fe2da6991fe5a021113de02308e6fca6a8b58b1dff5f73396.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant4a133e78870ffd2fe2da6991fe5a021113de02308e6fca6a8b58b1dff5f73396.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
