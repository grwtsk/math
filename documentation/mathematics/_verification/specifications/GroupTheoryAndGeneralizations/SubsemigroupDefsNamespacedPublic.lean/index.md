# Verification target: Subsemigroup Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afda6bcffb2250e5bf67ee9bd6141033789f4178",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant238a6cda9956a8691844d2a7f127ea2a8d9f678795b044796652709ed56fcda3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afda6bcffb2250e5bf67ee9bd6141033789f4178`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant238a6cda9956a8691844d2a7f127ea2a8d9f678795b044796652709ed56fcda3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant238a6cda9956a8691844d2a7f127ea2a8d9f678795b044796652709ed56fcda3.lean.json)

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
| 1 | `class` | [MulMemClass](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/mulmemclass.md) | 70 | `declaration-track:8c7e29aedbe11614f97650de34360dbc9948e5b755333b8893253ca384e6c674` |
| 2 | `class` | [AddMemClass](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/addmemclass.md) | 77 | `declaration-track:966429929d0ff92ed294b3a811cb173add2101f7c4b83a5adf835f636aac8356` |
| 3 | `structure` | [Subsemigroup](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/subsemigroup.md) | 88 | `declaration-track:b97b465b13abe4816ca85938ba4dd12ff9395c5554d8772b036d82314ae8d872` |
| 4 | `structure` | [AddSubsemigroup](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/addsubsemigroup.md) | 95 | `declaration-track:b1da5c3c542e6d74bdb98f86ad4c0ae7a5eade4148683e8a9e5638722abd5d72` |
| 5 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 106 | `declaration-track:dd99bf44a1fa6bec99b6c4f65efe3163bea96062577639c488ff0f46efc674d0` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 109 | `declaration-track:0fe0321f6b4691d736e9bedd853676ab3f9ce59ce72a170acae6c7731013086d` |
| 7 | `def` | [ofClass](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/ofclass.md) | 117 | `declaration-track:e68477cc6e9ca863bd8f0981ffd1e6c100c39a357cf637dda5ecb743b55ccc5c` |
| 8 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 121 | `declaration-track:bead73441392eab81db82cf0c91b879a92d0a20b1356f4e8b2c173b7bf85d644` |
| 9 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 126 | `declaration-track:ead25de5707c952527a6b92e8f23d64028cc36242bbe4ec6f10e6e2ccd3e61ee` |
| 10 | `theorem` | [mem_carrier](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/mem-carrier.md) | 129 | `result-track:7f56787bc99a9ff50ba5519baf36279ff209fb72b4577423336d8d28db58f942` |
| 11 | `theorem` | [mem_mk](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/mem-mk.md) | 133 | `result-track:2e00155d272032c415e366409b8d812e3c888d351611efc3f4f4e50ec8dfcfdc` |
| 12 | `theorem` | [coe_set_mk](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/coe-set-mk.md) | 137 | `result-track:44dd3ea3e47c0f673d0dcf0e16cc303780afe6df7dba456d3e5fcc040df2066e` |
| 13 | `theorem` | [mk_le_mk](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/mk-le-mk.md) | 141 | `result-track:bf425f7d8ac1e9098ecad736c700deaacf040475c4d9aa7d006647473185cb87` |
| 14 | `theorem` | [ext](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/ext.md) | 146 | `result-track:528c3dc5714ba48f03965bc874908ec83e3976958991641d473ac8b8be67cb90` |
| 15 | `def` | [copy](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/copy.md) | 152 | `declaration-track:3081883a830224fa60d0b597847b5492fe298910329741d8a8ef3a3ddb80f0ac` |
| 16 | `theorem` | [coe_copy](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/coe-copy.md) | 160 | `result-track:6660a03c2c07ecdae597d02debdf9c5da9fc978fea1cb2c870f635c89b7fcee8` |
| 17 | `theorem` | [copy_eq](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/copy-eq.md) | 164 | `result-track:cb4854fca0ba0081d108dc268c8e26eec685b1a2fea82779ce8f1bea0edcea04` |
| 18 | `theorem` | [mul_mem](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/mul-mem.md) | 171 | `result-track:bbd178e22e4ef9a978ce252a13b5e080fe7f18d0881fc1def8119a6bfa771449` |
| 19 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 176 | `declaration-track:897c896404cfd198b88d32b365aea1b922b1f76f4070c593c987464e998080b8` |
| 20 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 182 | `declaration-track:5e65363cb3054c2a2895fe3f5577cf25dae4059efa8d2eaeb7d6b181921e764e` |
| 21 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 187 | `declaration-track:475448337796af77774ccea1f188ea3ef1df09f6ed40a970abdc99a7f2a0f2a3` |
| 22 | `theorem` | [notMem_bot](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/notmem-bot.md) | 191 | `result-track:93408933be146e702be96d88d06b1cb270ba1d850344dc4cd60a4bcd2d91b760` |
| 23 | `theorem` | [mem_top](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/mem-top.md) | 195 | `result-track:f21738ec567802adf9d28efdbbd17f5d00e88de2e5ffeb9cf75f2daafca216b0` |
| 24 | `theorem` | [coe_top](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/coe-top.md) | 199 | `result-track:48e30669486542e755c7e58a728a971062a87406e4fbdda53d672360e147949d` |
| 25 | `theorem` | [coe_bot](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/coe-bot.md) | 203 | `result-track:8a8c083ac5b293212e3206b853a169654411d725b262fa0ff649d530905905fd` |
| 26 | `lemma` | [mk_eq_top](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/mk-eq-top.md) | 207 | `result-track:469e5a079d203210ce6d568821dca7cc8e7dee738e6bbace83219b33f3b5ecd3` |
| 27 | `lemma` | [mk_eq_bot](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/mk-eq-bot.md) | 211 | `result-track:7a59595c97f5f812691968a6470c900bb3ebf65642a5063d9a2dc5f0cffff442` |
| 28 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 216 | `declaration-track:14463f8cda661ada7c5400a9141bca81f607dd838619791f3e1b56554bb5fa4e` |
| 29 | `theorem` | [coe_inf](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/coe-inf.md) | 222 | `result-track:3b05cd7be0465c595420c990c08e951cd54c97377712c996cbc5301abe569eb4` |
| 30 | `theorem` | [mem_inf](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/mem-inf.md) | 226 | `result-track:1cce20ef7e34870b585c6bc27f8045f8673fa9c79decd87a291271d394b55b57` |
| 31 | `theorem` | [subsingleton_of_subsingleton](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/subsingleton-of-subsingleton.md) | 230 | `result-track:8ca2e705c76a63cd09bebb095c3bc8fb86a4bbf288874d644966c96c0952f2f7` |
| 32 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 236 | `declaration-track:94ba68e537b5f350aab627b3982f4ee698ec8dc5cd09a2dcdf8ea15340c92760` |
| 33 | `def` | [eqLocus](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/eqlocus.md) | 252 | `declaration-track:7952c563ca717f0926684af1aeb8f03e34333ce39c04bb80fcd312f58108c1bf` |
| 34 | `theorem` | [mem_eqLocus](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/mem-eqlocus.md) | 257 | `result-track:2a765f80175c931e705510bfd6a823173a628240358d996349cffe3d71918950` |
| 35 | `theorem` | [eq_of_eqOn_top](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/eq-of-eqon-top.md) | 260 | `result-track:a5e6d4abaa9d73a3c1ffa8ed1f50d24ff4052dd25f07b25c81c1b801e285139f` |
| 36 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 274 | `declaration-track:1c4a1dde93bcd68f5d55801bc347b29e253065b4cf0d83bad2a3f1283e4de9a5` |
| 37 | `theorem` | [coe_mul](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/coe-mul.md) | 279 | `result-track:2f4250be67f4147598914b9094606d392dafb8e398728627927b76a432e61755` |
| 38 | `theorem` | [mk_mul_mk](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/mk-mul-mk.md) | 284 | `result-track:38ce8a0469f09233d80d8be0e07a3eb056effd3d1cb58488658bccc435973fe9` |
| 39 | `theorem` | [mul_def](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/mul-def.md) | 289 | `result-track:bcc925f7c35a4271f98227b71eb5382b4e58425871140d4307d54a7c4388d241` |
| 40 | `instance` | [toSemigroup](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/tosemigroup.md) | 295 | `declaration-track:7077fde85aa976aeac5aa0877e66b09a42ffafb127b07cfb08a94319967f2d58` |
| 41 | `instance` | [toCommSemigroup](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/tocommsemigroup.md) | 301 | `declaration-track:515218c15b483b415ac678577000ca77d3b4066e49ec170830cdff7275bad1ac` |
| 42 | `instance` | [isLeftCancelMul](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/isleftcancelmul.md) | 308 | `declaration-track:65e687c25884de5e5cbabf810b666db539da4a636f51985fe584bb72dbb598c2` |
| 43 | `instance` | [isRightCancelMul](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/isrightcancelmul.md) | 314 | `declaration-track:ddad1f3588e98e17f45d7f26786d3cb74102bd81ed3f14baea5f5ca7d77c0106` |
| 44 | `instance` | [isCancelMul](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/iscancelmul.md) | 319 | `declaration-track:6b0d7d131848ec25a3019b8c4714f515c610c662097465017ec061deed6e157b` |
| 45 | `def` | [subtype](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/subtype.md) | 324 | `declaration-track:8e04399c77b43b5586b159265ed8a327fd289ff90d0a5fc809bc145b9b0e227f` |
| 46 | `lemma` | [subtype_apply](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/subtype-apply.md) | 329 | `result-track:f9497f4fb7b1dc65348e9e9cc984fadebbbfa305db9e29a0bce02b4ffad3a8b4` |
| 47 | `lemma` | [subtype_injective](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/subtype-injective.md) | 333 | `result-track:3f3243b5b9182555543846f3ad2bcb01907d4e41474b0c3a51507a611a014a9a` |
| 48 | `theorem` | [coe_subtype](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/coe-subtype.md) | 338 | `result-track:202875f9d863d15ac3bec7b0e17c9c8a1570510da6a06c717076c69a9a13033f` |
| 49 | `lemma` | [isMulCommutative_iff_of_setLike](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/ismulcommutative-iff-of-setlike.md) | 348 | `result-track:ec7f777c6d55d5cc6506fe99dda794169a6406ab77e69a65d577451f03980f13` |
| 50 | `lemma` | [setLike_mul_comm](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/setlike-mul-comm.md) | 357 | `result-track:e74db79ab5e948d779161ae20e2ae2373b7f10df63f50792ffeba0d4541ec3ba` |
| 51 | `lemma` | [isMulCommutative_anti](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/ismulcommutative-anti.md) | 363 | `result-track:7b4ba434c3ddba96102a42a5044533602936931114f23e09046da7b88480fefb` |
| 52 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 368 | `declaration-track:397181a9d6fe51c57ea9c0ca59e9853eee888f02d2a193bba3a4942587289299` |
| 53 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsNamespacedPublic.lean/declarations/instance.md) | 371 | `declaration-track:0476ec04d96ef67b27c55c92535c0962313f41673ac1ba0d95dcfc3a9d785635` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=938a0903a0ca026354a93ee92eb4d26427e9e46963c594d912c74fe6fa9817c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variant238a6cda9956a8691844d2a7f127ea2a8d9f678795b044796652709ed56fcda3.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variant238a6cda9956a8691844d2a7f127ea2a8d9f678795b044796652709ed56fcda3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
