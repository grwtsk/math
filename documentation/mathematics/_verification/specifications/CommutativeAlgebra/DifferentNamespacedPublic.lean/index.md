# Verification target: Different Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80aa2fd72bb8b22bf434ee45037d3305580fea98",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Different/Variant68eaea4ef0d0acf2d622cbaa114d5c350a6cf04f1fc380a12259b4206353521a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80aa2fd72bb8b22bf434ee45037d3305580fea98`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Different/Variant68eaea4ef0d0acf2d622cbaa114d5c350a6cf04f1fc380a12259b4206353521a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Different/Variant68eaea4ef0d0acf2d622cbaa114d5c350a6cf04f1fc380a12259b4206353521a.lean.json)

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
| 1 | `def` | [Submodule.traceDual](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/submodule-tracedual.md) | 65 | `declaration-track:b59ca127b75668da2dd991982c2210ff87522b54693ba654ef12fbcb363a5a61` |
| 2 | `lemma` | [mem_traceDual](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/mem-tracedual.md) | 77 | `result-track:ac0ed348b40d4932cb72b57a22eaee3b4734c72ab89def2eaabc0c2cc3243198` |
| 3 | `lemma` | [le_traceDual_iff_map_le_one](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/le-tracedual-iff-map-le-one.md) | 81 | `result-track:8afcaa81086c31e5b46784a8a47e8c154177e8499063ab46f8a434eb734b6e39` |
| 4 | `lemma` | [le_traceDual_mul_iff](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/le-tracedual-mul-iff.md) | 87 | `result-track:2689fa7b28515ed47df67bc07e1e4aa561fcb8ae1667c52b0a74d4ffbd91a4ac` |
| 5 | `lemma` | [le_traceDual](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/le-tracedual.md) | 91 | `result-track:f41074aaad6a7240b56800c02442d2c4c8f51ea6aa664d2683ee050573542c54` |
| 6 | `lemma` | [le_traceDual_comm](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/le-tracedual-comm.md) | 95 | `result-track:fa16245cb678bb630e86268e701c0515cf0d055f99cf50b25db5ea9ea8f175ee` |
| 7 | `lemma` | [le_traceDual_traceDual](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/le-tracedual-tracedual.md) | 98 | `result-track:4914bf8af6bb2d252fba6eaed03349dc17d3e384bdefd53c3e4fb3fe82eeb6ee` |
| 8 | `lemma` | [restrictScalars_traceDual](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/restrictscalars-tracedual.md) | 102 | `result-track:19b6c75b64eae99161278f478dc3f4870445a54a2b1bff5fe03e8e5429846614` |
| 9 | `theorem` | [traceDual_span_of_basis](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/tracedual-span-of-basis.md) | 110 | `result-track:f1e63efbad2b32097730ddb6a679a7ed823839a566d3c71aad5d264583fbb556` |
| 10 | `lemma` | [traceDual_bot](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/tracedual-bot.md) | 118 | `result-track:6caf87b3fec2aee2b8f04d825ef58cbc081ff9af7d558195e4c073033e9435b9` |
| 11 | `lemma` | [traceDual_top'](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/tracedual-top-source-edition-2.md) | 122 | `result-track:822b25c66fb225f8f956de657dceaef6d5d04358096893e5af20cb51994b7243` |
| 12 | `lemma` | [traceDual_top](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/tracedual-top.md) | 139 | `result-track:3233272744f2080f8df2b635116e93c86e87029c2a4a17e4e7ce553669cc2f3d` |
| 13 | `lemma` | [map_equiv_traceDual](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/map-equiv-tracedual.md) | 154 | `result-track:d501589de9edcc4b57983aba199dc1b8aa568e9756e50e63ba1c03047303d5b2` |
| 14 | `lemma` | [Submodule.mem_traceDual_iff_isIntegral](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/submodule-mem-tracedual-iff-isintegral.md) | 178 | `result-track:81213e0da8e1e66af896f4ad340a514405aa75323bf9feb95e87b394d3dc1eb3` |
| 15 | `lemma` | [Submodule.one_le_traceDual_one](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/submodule-one-le-tracedual-one.md) | 184 | `result-track:ab5802f798b19845190f3296f7085177aeb71b964dfda516904dcb993dd4828b` |
| 16 | `lemma` | [isIntegral_discr_mul_of_mem_traceDual](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/isintegral-discr-mul-of-mem-tracedual.md) | 198 | `result-track:c5a86b39608dadfdc1bb954167b42f90a7dba1db5f6d77b4fc364ac09182c346` |
| 17 | `def` | [dual](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/dual.md) | 237 | `declaration-track:0cd0ab5b872f2074cbaf53d6f6ac237a2c37273ddb34ab91c9cf6c062db5858d` |
| 18 | `lemma` | [coe_dual](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/coe-dual.md) | 273 | `result-track:e2c4c36ab0504951ba4937db80c00218b7a4a6ae466d49d45adc7cefce63065e` |
| 19 | `lemma` | [coe_dual_one](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/coe-dual-one.md) | 279 | `result-track:742b06acff5e2fc54dfc462000b1978a05b5235e4877fea88ac09814e5554459` |
| 20 | `lemma` | [dual_zero](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/dual-zero.md) | 286 | `result-track:ece54eee478f5607717a60541ee2d5f4ed93fe848e64f541e6ce27c8994602b8` |
| 21 | `lemma` | [mem_dual](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/mem-dual.md) | 292 | `result-track:228f38b66d512fcad62d2f9ad7e3579f47beffdfcf7b90d4f15ceaca27dce5b7` |
| 22 | `lemma` | [dual_ne_zero](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/dual-ne-zero.md) | 298 | `result-track:5db4452b67b1e4e24f2dee047456ee657117b93988fba260b7ac69283c79b7b7` |
| 23 | `lemma` | [dual_eq_zero_iff](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/dual-eq-zero-iff.md) | 319 | `result-track:d9a6e35bb8ebb09e3850edea653472eb14bd5f03433281e3d7c933d7ab91aed2` |
| 24 | `lemma` | [dual_ne_zero_iff](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/dual-ne-zero-iff.md) | 323 | `result-track:24792b019b74b42aad6a77456a2bc2dffeb7af10d5b659ab301400f3f5b2393a` |
| 25 | `lemma` | [le_dual_inv_aux](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/le-dual-inv-aux.md) | 329 | `result-track:ac5558c13814da64471346f9665aabc27323b00c3409324ff9d91bb028354dd9` |
| 26 | `lemma` | [one_le_dual_one](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/one-le-dual-one.md) | 341 | `result-track:4fbbd104b9bca82820ef9686298bd57fa0e0b5f90b213138e242760ba6370666` |
| 27 | `lemma` | [le_dual_iff](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/le-dual-iff.md) | 345 | `result-track:d5eb4ccc82fa21614b1229d3452e70ecdc341712cae0a41e1677ca773255baf3` |
| 28 | `lemma` | [inv_le_dual](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/inv-le-dual.md) | 353 | `result-track:48c45a6a7769bf38caa7c7d6f0c3db8741d98588b549e9a94e0482e34c7fb86f` |
| 29 | `lemma` | [dual_inv_le](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/dual-inv-le.md) | 358 | `result-track:096c3eef1b1684bf02e70b61ee4a0cb0bc88c2ebd774d5781319d7cc8d844faa` |
| 30 | `lemma` | [dual_eq_mul_inv](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/dual-eq-mul-inv.md) | 364 | `result-track:7da50e3c726c717b2e503d048ed7e557a24b5418faeefadd326004dbf79313d3` |
| 31 | `lemma` | [dual_div_dual](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/dual-div-dual.md) | 373 | `result-track:6b30178bb2507bd5693de6b889673e52e328c47bb464b8c75b22dd1d0a5b428e` |
| 32 | `lemma` | [dual_mul_self](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/dual-mul-self.md) | 379 | `result-track:1a0f9cc8acab967b7ddb62466c1bb38fbd920fb841313f2d4823905a6faabd4e` |
| 33 | `lemma` | [self_mul_dual](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/self-mul-dual.md) | 383 | `result-track:de68b3db82c76c9cfe08be57ed84a68df38ce23d386af7bc497f20101affc8d8` |
| 34 | `lemma` | [dual_inv](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/dual-inv.md) | 387 | `result-track:0e99c8e7797c406665bd9509e290559236df1a916d1921aee7dd8495bbbfff2c` |
| 35 | `lemma` | [dual_dual](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/dual-dual.md) | 393 | `result-track:7da9cd133d1999123c972e3cc39c81ad863597a191e195ccb609d1f2a9faeee8` |
| 36 | `lemma` | [dual_le_dual](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/dual-le-dual.md) | 403 | `result-track:9567657c0e9eb724168afff69bd2af1e7c62310d50b1289ed2c4abfe39ae8fa4` |
| 37 | `lemma` | [dual_involutive](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/dual-involutive.md) | 410 | `result-track:a392917de8d187b2fedace6668b268da9425a586c42dcdc1fc0e353c6b45d127` |
| 38 | `lemma` | [dual_injective](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/dual-injective.md) | 413 | `result-track:7023b6385fa4ace1da8a007133daee9e5984261a24c05aeed6f995d628b1bc8a` |
| 39 | `theorem` | [trace_mem_dual_one](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/trace-mem-dual-one.md) | 427 | `result-track:196dd7e5ad3caf415e88cd4603dd56ab601b4b31ceb4c2b5d1cc1a83b488a6ea` |
| 40 | `theorem` | [smul_mem_dual_one](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/smul-mem-dual-one.md) | 437 | `result-track:75b8271c4f40fe1ed199c15b3d9be076579d3253633dbb454c495b482ccb5d24` |
| 41 | `theorem` | [dual_eq_dual_mul_dual](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/dual-eq-dual-mul-dual.md) | 452 | `result-track:4c3e18edbcb457c69bd1d57c8d7cf591546d26204d091819315baa1b3bb19af0` |
| 42 | `def` | [differentIdeal](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/differentideal.md) | 488 | `declaration-track:8305b6473b8652d0847e04d80c32c6e75bfad7efdbaeff12eea18ae162b57ca2` |
| 43 | `lemma` | [coeSubmodule_differentIdeal_fractionRing](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/coesubmodule-differentideal-fractionring.md) | 492 | `result-track:0f950e94e70b6f7d18e34da313993ac8dce743a8536c17bef2a2d827fc2fc876` |
| 44 | `lemma` | [coeSubmodule_differentIdeal](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/coesubmodule-differentideal.md) | 511 | `result-track:bae3062b17f1baf6bd66177307ca303d0c137b10b996d51a99d683818675672d` |
| 45 | `lemma` | [coeIdeal_differentIdeal](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/coeideal-differentideal.md) | 540 | `result-track:0ffccca7cf32a115ab13f3b0437bcaede6744103c4cfe4ee9c1b70c4776a1c09` |
| 46 | `theorem` | [differentIdeal_ne_bot](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/differentideal-ne-bot.md) | 550 | `result-track:5b939c9842621a778542ff380bd198e8501362c8a094e12fcf649657e45354c4` |
| 47 | `lemma` | [differentialIdeal_le_fractionalIdeal_iff](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/differentialideal-le-fractionalideal-iff.md) | 558 | `result-track:29e7156ef41fd0da7b4f62f713fb58742f58959af18d44c0543e3fc573c5f912` |
| 48 | `lemma` | [differentialIdeal_le_iff](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/differentialideal-le-iff.md) | 567 | `result-track:4656e6bcd08c440d06495060b1c92c18e5896556ccb586cf2aeb0dfe7c81cffb` |
| 49 | `theorem` | [differentIdeal_eq_differentIdeal_mul_differentIdeal](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/differentideal-eq-differentideal-mul-differentideal.md) | 579 | `result-track:0083fb9be5519082efd5f84c6ab033b7871be4223ce9336bfa48e30d3d927f77` |
| 50 | `lemma` | [traceForm_dualSubmodule_adjoin](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/traceform-dualsubmodule-adjoin.md) | 600 | `result-track:06ba79b566c56a8f3ffbeca402472b98b8a3cbb6f17e437fe14dd033b7840df1` |
| 51 | `lemma` | [conductor_mul_differentIdeal](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/conductor-mul-differentideal.md) | 645 | `result-track:d65794d7f4d3a4a10807f06aeb073e685a57679575697f0010dcd02da603af76` |
| 52 | `lemma` | [aeval_derivative_mem_differentIdeal](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/aeval-derivative-mem-differentideal.md) | 684 | `result-track:8a8e20ea0602c476a1eaf10687621ec713ed09a8c536e778f16dcac9552816d4` |
| 53 | `lemma` | [pow_sub_one_dvd_differentIdeal_aux](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/pow-sub-one-dvd-differentideal-aux.md) | 701 | `result-track:f2f6914e865691b4d632142f16a2541094e29f1c899ec2a0c45ee569cb03313e` |
| 54 | `lemma` | [pow_sub_one_dvd_differentIdeal](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/pow-sub-one-dvd-differentideal.md) | 750 | `result-track:67a2074db4d1d0edd30a03870c170833f09c50472c1d37ce8e828f898b6b1c6e` |
| 55 | `theorem` | [not_dvd_differentIdeal_of_intTrace_not_mem](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/not-dvd-differentideal-of-inttrace-not-mem.md) | 760 | `result-track:98b646f662fff0d117365b6405b97f489351a8b8d6da666e1404a2599be3c34b` |
| 56 | `theorem` | [not_dvd_differentIdeal_of_isCoprime_of_isSeparable](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/not-dvd-differentideal-of-iscoprime-of-isseparable.md) | 820 | `result-track:b40c4ec7df9637426f063faba7246336389d8ba0e4a586bfc0cb06339a54b1d1` |
| 57 | `theorem` | [not_dvd_differentIdeal_of_isCoprime](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/not-dvd-differentideal-of-iscoprime.md) | 846 | `result-track:4243235dc7085665b4dcd6136bf0bb242d40199fccaf140d20857da1f01c4425` |
| 58 | `lemma` | [dvd_differentIdeal_of_not_isSeparable](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/dvd-differentideal-of-not-isseparable.md) | 859 | `result-track:9f26e0ee6b79dca93d1378015bbfa5b52242af0fd19a49275540746097466bf4` |
| 59 | `theorem` | [not_dvd_differentIdeal_iff](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/not-dvd-differentideal-iff.md) | 920 | `result-track:ed887557fb1e5e0d8fb5e8393242fa4eea63c205dbde27f700ac105ef90e4032` |
| 60 | `theorem` | [dvd_differentIdeal_iff](../../../../CommutativeAlgebra/DifferentNamespacedPublic.lean/declarations/dvd-differentideal-iff.md) | 966 | `result-track:c418170b9c01c0d0802f9544b12e72a80721fe16168488e9436bafe6717f2ac6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=471c14078ed083564fc462055f3fa4a11f91a94de193e341e0c27369945893b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Different/Variant68eaea4ef0d0acf2d622cbaa114d5c350a6cf04f1fc380a12259b4206353521a.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Different/Variant68eaea4ef0d0acf2d622cbaa114d5c350a6cf04f1fc380a12259b4206353521a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
