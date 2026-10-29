# Verification target: Group Add Char Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fb285becf88e22c4630e9dc16d1c1d36b0367a1",
  "lexical_observation_count": 104,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/AddChar/Variant953f042d59d408ae4dd8a2505aafaf127e7c7142e0dfc828464a2bd4f8713730.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fb285becf88e22c4630e9dc16d1c1d36b0367a1`.

Source path: `GRWTSK/Algebra/GroupTheory/AddChar/Variant953f042d59d408ae4dd8a2505aafaf127e7c7142e0dfc828464a2bd4f8713730.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/AddChar/Variant953f042d59d408ae4dd8a2505aafaf127e7c7142e0dfc828464a2bd4f8713730.lean.json)

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
| 1 | `structure` | [AddChar](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/addchar.md) | 70 | `declaration-track:9e4f7cba15edaa1c11b081c6d183242eb2c1192b822713a2dcdcdab37faf67cd` |
| 2 | `instance` | [instFunLike](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/instfunlike.md) | 96 | `declaration-track:554cd29dc078c2068b731c7a7f7a8067c38c67af69ce1e4c15003e012de5f396` |
| 3 | `lemma` | [ext](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/ext.md) | 102 | `result-track:6cc5651834c8210d5312863b2c2d33a221e6a54fcac49065adf46f441409b6b5` |
| 4 | `lemma` | [coe_mk](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/coe-mk.md) | 105 | `result-track:a011d13a41e233fbb00d5813c9e5cb943c10f0edfb34644dfacb28136af65de9` |
| 5 | `lemma` | [map_zero_eq_one](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/map-zero-eq-one.md) | 111 | `result-track:51a2a71dc9b9fbbbe0e1a72b951fc2459ade3b2d7290bc4eac4abd28e154cf4e` |
| 6 | `lemma` | [map_add_eq_mul](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/map-add-eq-mul.md) | 114 | `result-track:6f72fb19271e96917c5747fd9d63f23dc36844997b298adee14c23ffd57aba99` |
| 7 | `def` | [toMonoidHom](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/tomonoidhom.md) | 117 | `declaration-track:742e476b803b94d1ce9230901efabf0c2d485731afd1de3cb6ce9dbb4b337852` |
| 8 | `lemma` | [toMonoidHom_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/tomonoidhom-apply.md) | 124 | `result-track:3dd697bda4fbcf508fc455004f08482685a66b4c1e9b12af4a2f3e998285ddcf` |
| 9 | `lemma` | [map_nsmul_eq_pow](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/map-nsmul-eq-pow.md) | 129 | `result-track:3547212308fc62e92b1fcc4af4bb37e1c023ea0750e650833f6adee34ff5559a` |
| 10 | `def` | [toMonoidHomEquiv](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/tomonoidhomequiv.md) | 134 | `declaration-track:dcbf982a096fff5e0bd10a4802452ebeded2e85ddf1c8c6516b6bdb295cdb1ec` |
| 11 | `lemma` | [coe_toMonoidHomEquiv](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/coe-tomonoidhomequiv.md) | 141 | `result-track:519d59e8cc08520642df4633fe2dce8e82922b3e20f395a7d3c6d20d0da5b74c` |
| 12 | `lemma` | [coe_toMonoidHomEquiv_symm](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/coe-tomonoidhomequiv-symm.md) | 144 | `result-track:7564adee6ffce18ead26302178d893b790ce83af1408fbea1d215adba285d61f` |
| 13 | `lemma` | [toMonoidHomEquiv_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/tomonoidhomequiv-apply.md) | 147 | `result-track:31f7744c8225cf7c3bdad07007c016bed13d26d955631fb19316784bde688f15` |
| 14 | `lemma` | [toMonoidHomEquiv_symm_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/tomonoidhomequiv-symm-apply.md) | 150 | `result-track:45b8a2b31995c0103724074bf7c7b6116e599845badcd5696e66d49f570b79d8` |
| 15 | `def` | [toAddMonoidHom](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/toaddmonoidhom.md) | 154 | `declaration-track:1582c9b53179c1a3f1c95fe34cbed7755860b6ae2e1b839270ea8dc6c350cc23` |
| 16 | `lemma` | [coe_toAddMonoidHom](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/coe-toaddmonoidhom.md) | 159 | `result-track:cc9d68cac21552637b5b7014013717d57d9ceb41ae789d6735037e323bb00e7b` |
| 17 | `lemma` | [toAddMonoidHom_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/toaddmonoidhom-apply.md) | 161 | `result-track:749b626d0008c18e27fcc70f7d6b0aac51aefabcc4341b13a9823b0468dfdba9` |
| 18 | `def` | [toAddMonoidHomEquiv](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/toaddmonoidhomequiv.md) | 166 | `declaration-track:1795ef6d7e878918c0eca5c328f8a3af6fd322e425d9fbe73808440fb033367d` |
| 19 | `lemma` | [coe_toAddMonoidHomEquiv](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/coe-toaddmonoidhomequiv.md) | 174 | `result-track:64fe2c4e6d47f7e064f8b31ea41a8dd6b970ed9da05c777d2761d0e8fe57fa35` |
| 20 | `lemma` | [coe_toAddMonoidHomEquiv_symm](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/coe-toaddmonoidhomequiv-symm.md) | 177 | `result-track:59b230b94557a14b72d62b14fffbbf3d9e6443a2bb141f9a26da88e8e60f1f4f` |
| 21 | `lemma` | [toAddMonoidHomEquiv_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/toaddmonoidhomequiv-apply.md) | 180 | `result-track:a941eb4068b8a8c29bcbffba8ec3f8fbe573a2308616f46112e03b13e896ad56` |
| 22 | `lemma` | [toAddMonoidHomEquiv_symm_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/toaddmonoidhomequiv-symm-apply.md) | 183 | `result-track:afdc4cfbc8cc858162054e608c7df9c46a7f9843225a2a4fe1704da20efd4deb` |
| 23 | `instance` | [instOne](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/instone.md) | 187 | `declaration-track:af096aa5a4d9a2b655d99ca9cd1ec7b10d4bd019f768b91a8c59452c5642f7c6` |
| 24 | `instance` | [instZero](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/instzero.md) | 190 | `declaration-track:2b892cf5064361bdfde0e027739f5d52068bc84e7543aa49ca5d9359071d9af0` |
| 25 | `lemma` | [coe_one](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/coe-one.md) | 192 | `result-track:3f2b0072e3d4a06e84baecef2a254b1d83e50890beb173b7d15ca3bd20927aae` |
| 26 | `lemma` | [coe_zero](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/coe-zero.md) | 193 | `result-track:4135dfdfb6e954ade8e74521615757bbfef379b632ac19a601bc4098790a86d0` |
| 27 | `lemma` | [one_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/one-apply.md) | 194 | `result-track:81f3f45bb65944027c19e47f46cd2f5f7f1ff64000e43d65871a6aeb2bba7caa` |
| 28 | `lemma` | [zero_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/zero-apply.md) | 195 | `result-track:3354ec2806f3df04945d432f1e4691b734dbbc0de6f3ba52e1118d70be91f79f` |
| 29 | `lemma` | [one_eq_zero](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/one-eq-zero.md) | 197 | `result-track:a5f8fbff1362576f742b05762f3a4ea69acd44e4c61b736221ffc5090372e520` |
| 30 | `lemma` | [coe_eq_one](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/coe-eq-one.md) | 199 | `result-track:b3fdb6bbed49cfea73598997194b31c438bffe3aa78cc2bda429729d7b5091eb` |
| 31 | `lemma` | [toMonoidHomEquiv_zero](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/tomonoidhomequiv-zero.md) | 201 | `result-track:e9da8329ef4c02573c2bbdbabe8138c28fb856e4595404182a3b0875d48c7fa2` |
| 32 | `lemma` | [toMonoidHomEquiv_symm_one](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/tomonoidhomequiv-symm-one.md) | 202 | `result-track:18e097c56b9ae32cc0b7f4eaa8fb09797cd660b14c8766ea3223a4f1f7a440f1` |
| 33 | `lemma` | [toAddMonoidHomEquiv_zero](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/toaddmonoidhomequiv-zero.md) | 205 | `result-track:a2af09fd0a44a0d44b6b89450b00d27ac1290b91743ddeb1eb2be878ffa02e4b` |
| 34 | `lemma` | [toAddMonoidHomEquiv_symm_zero](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/toaddmonoidhomequiv-symm-zero.md) | 206 | `result-track:26bc5f9bbf8f7acbc7b4f2da01a7d358fa2912f9e3078d182b2cc6515f125222` |
| 35 | `instance` | [instInhabited](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/instinhabited.md) | 209 | `declaration-track:f834914cb91c8657b0f827a71983ffb0b86bcaef9bfe83276323eaf9f3ca007d` |
| 36 | `def` | [_root_.MonoidHom.compAddChar](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/root-monoidhom-compaddchar.md) | 212 | `declaration-track:497dd39058bd66536baf7a598e8e671f7ce5a6d0e5ccad1cefcdb88c61af0d92` |
| 37 | `lemma` | [_root_.MonoidHom.coe_compAddChar](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/root-monoidhom-coe-compaddchar.md) | 216 | `result-track:b71bbb84bbb74272b17d404151228427f4429b71f5fb12790cccd257e6072655` |
| 38 | `lemma` | [_root_.MonoidHom.compAddChar_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/root-monoidhom-compaddchar-apply.md) | 221 | `result-track:5a7d07653ab30f3ce3f256800227060fc3d519fd5e2a578ea1e7c24ba3474a46` |
| 39 | `lemma` | [_root_.MonoidHom.compAddChar_injective_left](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/root-monoidhom-compaddchar-injective-left.md) | 224 | `result-track:752fd2c665db91c42a56e6716d87920099df9c96592c0c568feb4762a78c76df` |
| 40 | `lemma` | [_root_.MonoidHom.compAddChar_injective_right](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/root-monoidhom-compaddchar-injective-right.md) | 228 | `result-track:a850f8d7013a506c4f9b1b629c11b9b204c2ad2d1242f08a1b38563a8ae574db` |
| 41 | `def` | [compAddMonoidHom](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/compaddmonoidhom.md) | 233 | `declaration-track:c5ef1e0f86c62c1bd4d570d4088c29bcc74a285df14a2e3956c5b07da7ef000b` |
| 42 | `lemma` | [coe_compAddMonoidHom](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/coe-compaddmonoidhom.md) | 237 | `result-track:9f0e917bff95342feb4abf56cd6a548d25b3792581e56cac5d681d7e2f7f9925` |
| 43 | `lemma` | [compAddMonoidHom_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/compaddmonoidhom-apply.md) | 239 | `result-track:f74ee325eebb9b10fa15d2642fada6e05c3e52599c5d8f48e46646d63315fb57` |
| 44 | `lemma` | [compAddMonoidHom_injective_left](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/compaddmonoidhom-injective-left.md) | 242 | `result-track:04b2141c8db15cc30858fd1f82215d600c5dd2a55f44cd20cef7bd911c5f15c8` |
| 45 | `lemma` | [compAddMonoidHom_injective_right](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/compaddmonoidhom-injective-right.md) | 246 | `result-track:13950a91851de541e97838417afe21029506cc479950f14ca1ff5ddc25657572` |
| 46 | `lemma` | [eq_one_iff](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/eq-one-iff.md) | 251 | `result-track:0968a93f06aea64995e816a822c1cea6a5c2cd6f8f08cccbf57bdcc6d4bb5420` |
| 47 | `lemma` | [eq_zero_iff](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/eq-zero-iff.md) | 252 | `result-track:21e45cddd3644e5a7aecc3b799d60797515e0a85abbc64a2f3ddd42ef4b5b8e2` |
| 48 | `lemma` | [ne_one_iff](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/ne-one-iff.md) | 253 | `result-track:23d028ac6d9a568a649895b13d3fcc1511c9e39bee53af41c2a5063afdb4f676` |
| 49 | `lemma` | [ne_zero_iff](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/ne-zero-iff.md) | 254 | `result-track:7d998606c2534b7fb8de08fad9443e8749276e364397419a14070ccf3eb2b7f7` |
| 50 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/instance.md) | 256 | `declaration-track:0ddaa564fcf55c2e4769372b2888e19b8bac76e7bc6674ab4d62fda2fcbaf8d4` |
| 51 | `instance` | [instCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/instcommmonoid.md) | 265 | `declaration-track:1219ee6b1752ce2355abb770714602a590e9a12442330acb9d573fe2c720d7e3` |
| 52 | `instance` | [instAddCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/instaddcommmonoid.md) | 269 | `declaration-track:4edcfeccca685a6c678baef47111de8ac396617ab5c010e460247c572cbe5a3e` |
| 53 | `lemma` | [coe_mul](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/coe-mul.md) | 272 | `result-track:89819f78cb09bc70692dad442d6f56f664badd745703a857ab898881fd1c55a9` |
| 54 | `lemma` | [coe_add](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/coe-add.md) | 273 | `result-track:8b2660e6dfb639a4c1cf30c7be1be6d4d3c88316bb96039e9e90a1dbdcf80563` |
| 55 | `lemma` | [coe_pow](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/coe-pow.md) | 274 | `result-track:697dcc0d8640a52d891adb40fe9348470795ec6968b0c6048d7b2bd8ff9416ce` |
| 56 | `lemma` | [coe_nsmul](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/coe-nsmul.md) | 275 | `result-track:79e064cd76d460df6abf53acefadd9062a1227fb4e262ecd368a879ffb68717a` |
| 57 | `lemma` | [coe_prod](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/coe-prod.md) | 278 | `result-track:f85f3ceca6fe28fd25513fee943ea267c6a1b79fb6444ac5ec2f3671419fef54` |
| 58 | `lemma` | [coe_sum](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/coe-sum.md) | 282 | `result-track:f53c1e691dac37dd537c33a84abe15ea6fb3fa92c36f1a48cd23a36257f516de` |
| 59 | `lemma` | [mul_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/mul-apply.md) | 285 | `result-track:3ad8362600bc4b1411de728ebf9d19718d1434c4791684e8572fb65f5eb51e5c` |
| 60 | `lemma` | [add_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/add-apply.md) | 286 | `result-track:aa0fce901d0fe1fdab58134eb598bb104d1b164c741b662d7c38f8a328ce9a5f` |
| 61 | `lemma` | [pow_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/pow-apply.md) | 287 | `result-track:51a793decf0d1200a8ab9cda3daaf6c1dfb7e770b868b3edda67439fd0c9e381` |
| 62 | `lemma` | [nsmul_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/nsmul-apply.md) | 288 | `result-track:b16ff13154194392c16f1284fe5bd34d9303bee8496860fd074b663019704695` |
| 63 | `lemma` | [prod_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/prod-apply.md) | 290 | `result-track:5135f52353d133e8669ccb2be0e32da5858757bb08250c833b4efb6197a4252b` |
| 64 | `lemma` | [sum_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/sum-apply.md) | 293 | `result-track:658073e68c636817bf177b24156939aff33eef0be42a270b688d7116354283ab` |
| 65 | `lemma` | [mul_eq_add](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/mul-eq-add.md) | 296 | `result-track:b968f66e0bf4a36ceb8ec7bb2339339a982edf0d96814a24e15aed5960b120cb` |
| 66 | `lemma` | [pow_eq_nsmul](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/pow-eq-nsmul.md) | 297 | `result-track:d87eece0f09cdf75f61b2374f130d09984c838f46effe9bb82c5461cfde0ee62` |
| 67 | `lemma` | [prod_eq_sum](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/prod-eq-sum.md) | 298 | `result-track:1de0305a0cf0d9fa6ebe120879016540e9c5c3f8b0d2195206dddd1619eff5d1` |
| 68 | `lemma` | [toMonoidHomEquiv_add](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/tomonoidhomequiv-add.md) | 300 | `result-track:995584d267986c13bff1f4083ad2053f364dcf5da074e880df6099b9210aad35` |
| 69 | `lemma` | [toMonoidHomEquiv_symm_mul](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/tomonoidhomequiv-symm-mul.md) | 302 | `result-track:f7110414a4aca578c36b7b8820d8415d1279e5921c328c81e2865b3a1fd215c1` |
| 70 | `def` | [toMonoidHomMulEquiv](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/tomonoidhommulequiv.md) | 306 | `declaration-track:39777775e297232e5235e77a0c31efd17061fad7a0c1602bcc3a9bba5d8e7633` |
| 71 | `def` | [toAddMonoidAddEquiv](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/toaddmonoidaddequiv.md) | 311 | `declaration-track:660ebf228b6cfea1c97869b5067a836b17a7f3955af86bf3cc895640eb85416d` |
| 72 | `def` | [doubleDualEmb](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/doubledualemb.md) | 315 | `declaration-track:ee66fa00517988da68d11660f51e329d1262793d801c6f1909ce391b176bdcca` |
| 73 | `lemma` | [doubleDualEmb_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/doubledualemb-apply.md) | 322 | `result-track:a9d073365c2e8bd38228c3acc7b8dfd92e805bdd67ede97bb6abe7239cc2673d` |
| 74 | `lemma` | [sum_eq_ite](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/sum-eq-ite.md) | 330 | `result-track:cfe4a0ed08527f9bf940a3e023dfcae9eb1db6b74a9107cf6b0370d16a73b4a2` |
| 75 | `lemma` | [sum_eq_zero_iff_ne_zero](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/sum-eq-zero-iff-ne-zero.md) | 341 | `result-track:2137fe28133356fe61069e06bce7343e896a9a32f4be2d840ae4914282b22f95` |
| 76 | `lemma` | [sum_ne_zero_iff_eq_zero](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/sum-ne-zero-iff-eq-zero.md) | 344 | `result-track:40d00039012b5faf3e065d3dcc1f97c790950b7cfa1d5191f4666fa6e350894a` |
| 77 | `instance` | [instCommGroup](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/instcommgroup.md) | 359 | `declaration-track:48c31e154b8060fed16ba984d36f0daa4a69e190c76a69fd0e3378bcb86a01e2` |
| 78 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/instance-source-edition-2.md) | 364 | `declaration-track:b339dbb6b2c14db27394f9d9e514b75b6dbfd04b689e0f5f397fbd6508df9574` |
| 79 | `lemma` | [inv_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/inv-apply-source-edition-2.md) | 366 | `result-track:d93894a99dc01e3d94479e39a60cffa287a95a272e2303112ea605df4e55299f` |
| 80 | `lemma` | [neg_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/neg-apply-source-edition-2.md) | 367 | `result-track:243144ad1e84dd533b17daae6f79871542321cd0c1386333eb097d6cd732e421` |
| 81 | `lemma` | [div_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/div-apply.md) | 368 | `result-track:9d55c03d92b12bafa89a47bd8ec10c1d04fa48a5a62f782b07897894013dd58b` |
| 82 | `lemma` | [sub_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/sub-apply.md) | 369 | `result-track:1b8d4f1767606b62146b2a52f44204045846b8ddb640f392a27a416410ec945f` |
| 83 | `lemma` | [val_isUnit](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/val-isunit.md) | 376 | `result-track:17b534a2a6a3f30e7d82673d6041a0fb9626cb639526ffcc2eb3a4bcd05390ee` |
| 84 | `lemma` | [map_neg_eq_inv](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/map-neg-eq-inv.md) | 386 | `result-track:9080ba5d307d073075165c73ec5080f763f3a29122b4c3d176baae20b4984cd0` |
| 85 | `lemma` | [map_zsmul_eq_zpow](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/map-zsmul-eq-zpow.md) | 391 | `result-track:33f336107d18aa5bca635d4e2cde5112afbb712f6da4347a0e4be3159f525a85` |
| 86 | `lemma` | [inv_apply'](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/inv-apply.md) | 399 | `result-track:3e95080f7e81ef388c4022fa37e660a2338d10e2e8b4971f91dc245a7f5a469b` |
| 87 | `lemma` | [neg_apply'](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/neg-apply.md) | 400 | `result-track:20c947035c8f67144e3ce76c4219639a788139690a5c9faa57182c939a634c68` |
| 88 | `lemma` | [div_apply'](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/div-apply-source-edition-2.md) | 402 | `result-track:e9dfc7b2d50a46b0d9a35e0cd91eeb302aa4c1e6928bd4588dbc666238a93896` |
| 89 | `lemma` | [sub_apply'](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/sub-apply-source-edition-2.md) | 405 | `result-track:79d0966bac84addb27e0d20c33f0d5dd76c54177e5b4734822a6bdc2f909d863` |
| 90 | `lemma` | [zsmul_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/zsmul-apply.md) | 408 | `result-track:bd2d3c70cfbf01321ed3cb45812444ec196bbcbaaa65a725e19e753c6bcfe286` |
| 91 | `lemma` | [zpow_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/zpow-apply.md) | 411 | `result-track:f16854e33f06225d91ff63ffdd42abee9b1ed546975717e97ac1a723fe9c0495` |
| 92 | `lemma` | [map_sub_eq_div](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/map-sub-eq-div.md) | 413 | `result-track:4a8805d0bbae70a2165522481b57c4b76bcbe47967a4ac625fbcadd83af72ac5` |
| 93 | `lemma` | [injective_iff](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/injective-iff.md) | 416 | `result-track:45b407437f9431ae16523a3cd9536fd1c9cc2536fd94234909dcd9a85858c39b` |
| 94 | `lemma` | [coe_ne_zero](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/coe-ne-zero.md) | 424 | `result-track:37b60860d2b531584e3a09a875b47735f7ce7c6ededaa2c07aff85c5a69dcfd7` |
| 95 | `def` | [mulShift](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/mulshift.md) | 439 | `declaration-track:ff50b4134081268cdc875362cc187ca419500d3243248f44f881b9ddd64a784e` |
| 96 | `lemma` | [mulShift_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/mulshift-apply.md) | 442 | `result-track:2dbe3c529fb6bc2b3909c1fcd11b4b0be7161fda458000c62298225cce57ec9e` |
| 97 | `theorem` | [inv_mulShift](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/inv-mulshift.md) | 446 | `result-track:5fd10cb0ca4a325ef54751dc340bd018d3085f8f142f65b9525b0637d91f4126` |
| 98 | `theorem` | [mulShift_spec'](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/mulshift-spec.md) | 451 | `result-track:fa61ae0c51f6c18a25c4a6084550ec51aea3b3421f6d488806d0dc33f942f399` |
| 99 | `theorem` | [pow_mulShift](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/pow-mulshift.md) | 455 | `result-track:dd8cdf5163163e9429af896e72146efe07698684dea888a7f37b8dc355fe82c9` |
| 100 | `theorem` | [mulShift_mul](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/mulshift-mul.md) | 460 | `result-track:b4bb0e6f693e916457435dbb5ecb4322ff39db1e11f2735a94e6581cfd24ec91` |
| 101 | `lemma` | [mulShift_mulShift](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/mulshift-mulshift.md) | 465 | `result-track:fad52a7d5fa5f1c07237ff1b25e06c71815c7fa5f686e7fbdb2759e15549a7a1` |
| 102 | `theorem` | [mulShift_zero](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/mulshift-zero.md) | 472 | `result-track:5be4b31b472465168fa855813ae03eb50756b577434040a007f887d26f51326b` |
| 103 | `lemma` | [mulShift_one](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/mulshift-one.md) | 476 | `result-track:7dd928ed806135bc0dc1da6e0f1c34eb5281165f99f24e40317087437155710b` |
| 104 | `lemma` | [mulShift_unit_eq_one_iff](../../../../GroupTheoryAndGeneralizations/GroupAddCharPublic.lean/declarations/mulshift-unit-eq-one-iff.md) | 479 | `result-track:3f8a649a77ef8b0ac540e727f91ba91a4a35fe6ad2ab3c69414a979581f3c6f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b384d5e8da984eae5ac09e236852926c461c03299480cdf9b2295aae029206aa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/AddChar/Variant953f042d59d408ae4dd8a2505aafaf127e7c7142e0dfc828464a2bd4f8713730.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/AddChar/Variant953f042d59d408ae4dd8a2505aafaf127e7c7142e0dfc828464a2bd4f8713730.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
