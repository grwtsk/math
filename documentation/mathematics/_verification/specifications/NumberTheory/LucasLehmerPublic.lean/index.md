# Verification target: Lucas Lehmer Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "623131436cbf76e46e2774b8801bb06ace2dfb5d",
  "lexical_observation_count": 106,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LucasLehmer/Variant3365b889f46b55900f18507ad9294b8abdc305016060135cfdb507f4d8c42094.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/LucasLehmerPublic.lean/index.md) · [Full source](../../../../NumberTheory/LucasLehmerPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `623131436cbf76e46e2774b8801bb06ace2dfb5d`.

Source path: `GRWTSK/Algebra/LucasLehmer/Variant3365b889f46b55900f18507ad9294b8abdc305016060135cfdb507f4d8c42094.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LucasLehmer/Variant3365b889f46b55900f18507ad9294b8abdc305016060135cfdb507f4d8c42094.lean.json)

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
| 1 | `def` | [mersenne](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/mersenne.md) | 38 | `declaration-track:674a94ae2a25ea9e731eb8f3c9a45dbd779eb094c9f55a2eced8860e7796842c` |
| 2 | `theorem` | [strictMono_mersenne](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/strictmono-mersenne.md) | 41 | `result-track:715249080663ce301b0ed416d8ea296e8c193f0828aae10fc1224a405c86dd40` |
| 3 | `theorem` | [mersenne_lt_mersenne](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/mersenne-lt-mersenne.md) | 45 | `result-track:5acbc22040ad53b883d07062b19b05b47339d04ef35515881c9cf7d307d7ae51` |
| 4 | `theorem` | [mersenne_le_mersenne](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/mersenne-le-mersenne.md) | 49 | `result-track:7c64810d43fd29ec76061764d4aa6ea0a058e98c01aed6da85b28d6ac8c41a93` |
| 5 | `theorem` | [mersenne_zero](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/mersenne-zero.md) | 52 | `result-track:31342bc118797a12f5f1ac9dead72a263e23e582865d4e6f4b32c1bc194a3a23` |
| 6 | `lemma` | [mersenne_odd](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/mersenne-odd.md) | 54 | `result-track:f0c36f87cd42ca9a16bdf482730fe362824af064e345adb65e913e3629f16742` |
| 7 | `theorem` | [mersenne_pos](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/mersenne-pos.md) | 60 | `result-track:2fcff4eeebaf6d2246c1d45629c5ccb751e3a94dfd83a846afaecfda6f353ea6` |
| 8 | `lemma` | [mersenne_succ](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/mersenne-succ.md) | 62 | `result-track:6ccae4308f6d63acaf8d591f9cfd72a7a5a6ee1aa9c03de951dc098c4a30fd9e` |
| 9 | `lemma` | [Nat.Prime.of_mersenne](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/nat-prime-of-mersenne.md) | 68 | `result-track:e4caec3bd219229b7aa81431ac931462a0f8a203b801d0a6761d93034564d3eb` |
| 10 | `def` | [evalMersenne](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/evalmersenne.md) | 81 | `declaration-track:d7a4279ab1d4ebc3af4a6e74ffef114611ceb2382a9b6d41f1442aa3609fd842` |
| 11 | `theorem` | [one_lt_mersenne](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/one-lt-mersenne.md) | 95 | `result-track:af758a271e8994b6d1e29124505091f1a730da8b9b4aec81dbb52a1c552881e2` |
| 12 | `theorem` | [succ_mersenne](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/succ-mersenne.md) | 99 | `result-track:d1fa5b95ab33dfc7ed3d2d02fc56e82ab57fa6d64679c6cc678534ffec17a2d6` |
| 13 | `lemma` | [mersenne_mod_four](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/mersenne-mod-four.md) | 103 | `result-track:f1ce24f6cf41f46596e9e066ada962d45e3a648d52c99bc81f2138d4122d6160` |
| 14 | `lemma` | [mersenne_mod_three](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/mersenne-mod-three.md) | 108 | `result-track:4d9fdd77671f9cbdf58ed23da5d754c9d5f70f81d08fb7c53b648dfa1d0d0b92` |
| 15 | `lemma` | [mersenne_mod_eight](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/mersenne-mod-eight.md) | 117 | `result-track:b9c72164d0b2cd9d320a9123ac2bd0fd0d6793e033ca5daf4a41fb35848da085` |
| 16 | `lemma` | [legendreSym_mersenne_two](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/legendresym-mersenne-two.md) | 123 | `result-track:513557648abd6361306ef27003960f8c14589cfe2acb05d800e19c8406d830f0` |
| 17 | `lemma` | [legendreSym_mersenne_three](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/legendresym-mersenne-three.md) | 130 | `result-track:844c3119e29dcbe82e9a5bb0a35a1e447d40b36cf2382f4fe470b291d83b53db` |
| 18 | `def` | [s](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/s.md) | 154 | `declaration-track:f3adb2a0488c3788b452cca4bef4edff6f981d9de46c8c9bff2ec33d452ba7d1` |
| 19 | `def` | [sZMod](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/szmod.md) | 159 | `declaration-track:f312be53a27478f1ae560b5b2aa3e10109f1960ffeff58f8bfa1b64d3c7ad8c9` |
| 20 | `def` | [sMod](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/smod.md) | 164 | `declaration-track:d17774cb57ba9c8a710bb977d6dcb4a92165ffcfa7c05218e2d3acfc2992f531` |
| 21 | `theorem` | [mersenne_int_pos](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/mersenne-int-pos.md) | 168 | `result-track:9d3b01cd887a245ae2d53cf0db097a02bf03e0e05487a46dc98bb09156377e9a` |
| 22 | `theorem` | [mersenne_int_ne_zero](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/mersenne-int-ne-zero.md) | 171 | `result-track:75831113d42a60e010efc736aa4eb09631cef89a38fb4c7350210a3e881dffd6` |
| 23 | `theorem` | [sMod_nonneg](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/smod-nonneg.md) | 174 | `result-track:6709fcd81cbf6c4192d956df3b443d37ac51f69662667e3e453f217d110444b4` |
| 24 | `theorem` | [sMod_mod](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/smod-mod.md) | 180 | `result-track:6dba7cb1ba0a89254c40ae139bae3c56569cd0ff780a4930a44f81cb340e3899` |
| 25 | `theorem` | [sMod_lt](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/smod-lt.md) | 182 | `result-track:07846aec6fac1060b5c403dbade81f127882c2e7e1b398e6679b37ae935e646a` |
| 26 | `theorem` | [sZMod_eq_s](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/szmod-eq-s.md) | 187 | `result-track:9bc3981141d77f71878140b3cf90d08c47836b293f6a831fd655be69a55ab7a7` |
| 27 | `theorem` | [sZMod_eq_sMod](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/szmod-eq-smod.md) | 192 | `result-track:214f883d4803664c90657f2204992718f44bc5bbcb821190bceb802d72780528` |
| 28 | `def` | [lucasLehmerResidue](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/lucaslehmerresidue.md) | 196 | `declaration-track:c98e68f78385a06c1c6e07bdac956f28cdf2cb771158acbe13c9180dcc322084` |
| 29 | `theorem` | [residue_eq_zero_iff_sMod_eq_zero](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/residue-eq-zero-iff-smod-eq-zero.md) | 199 | `result-track:4e75f04dfa8ee8201e576121e91bbe7af994150b610052d1c2bd490d41b59b97` |
| 30 | `def` | [LucasLehmerTest](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/lucaslehmertest.md) | 218 | `declaration-track:c1964ad940bffa852e797e3039812037620ed164f7898500e06fb6804a1f6a8b` |
| 31 | `def` | [q](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/q.md) | 222 | `declaration-track:f2570d3b7d12592893f7ebc698af938113b2e922c88fc64b8e4e6a76e0ed8d16` |
| 32 | `def` | [X](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/x.md) | 231 | `declaration-track:b0cc4d3d8438a780965298b318718ba5af843f4185157e0ff9ff812ef95e1a07` |
| 33 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/instance-source-edition-10.md) | 238 | `declaration-track:8d463938c0c7d9424281f1a4156a5947bd7c0e0747abf1e91b7eaf4faaa3554e` |
| 34 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/instance-source-edition-6.md) | 239 | `declaration-track:2a830cc84342c1c621bb67bd3eb75319d8b130fb615c647fc27be818cb9014c7` |
| 35 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/instance-source-edition-2.md) | 240 | `declaration-track:099e33f3ab01b205f563fcc3f7626efd39a8f3d25a557541be1f1b544a49debe` |
| 36 | `theorem` | [ext](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/ext.md) | 243 | `result-track:ed13f497a826b4c3fb479061745412afa5d39e771039d05b712bc1210fd17f7a` |
| 37 | `theorem` | [zero_fst](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/zero-fst.md) | 246 | `result-track:45d83372247c7083202526500a11cbbd6d6437288a9b7464ca7602d5b90f7104` |
| 38 | `theorem` | [zero_snd](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/zero-snd.md) | 247 | `result-track:71b1c0b44e68d643bf50f0e30e9250c5a04f2a98c73b167b1e3d54bbf2d8d533` |
| 39 | `theorem` | [add_fst](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/add-fst.md) | 250 | `result-track:febee9a0011ec71531046a8069575503c861ee9cc8e207882829d37d7f2a74d8` |
| 40 | `theorem` | [add_snd](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/add-snd.md) | 254 | `result-track:1bfdc1e76ecd84444fac28a57422439fe5939e4dc49c979e76850c54150e7548` |
| 41 | `theorem` | [neg_fst](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/neg-fst.md) | 258 | `result-track:0d2313f17ce5e166b09a6e15890a0991da5bef8ddc20228e68cebd2f2572c21d` |
| 42 | `theorem` | [neg_snd](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/neg-snd.md) | 262 | `result-track:1667e8f013edaf7bf27ae85d315df90b3bad8e0c302a03d7953281c0315f7601` |
| 43 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/instance-source-edition-11.md) | 265 | `declaration-track:9b513d4d85a604ef9e3c1974ee003ed7392dbcd4e787824885e196f1b1b1e8d3` |
| 44 | `theorem` | [mul_fst](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/mul-fst.md) | 268 | `result-track:189ebb3a83c855908964ca9646fdcd93d969b9f3b8c51518b49b9079f84c2d17` |
| 45 | `theorem` | [mul_snd](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/mul-snd.md) | 272 | `result-track:b71fa164dd93da258da8cb7525971d6cea0e195a5639e201a0d9397592ecec67` |
| 46 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/instance-source-edition-14.md) | 275 | `declaration-track:afc46e674f81660ba7c3d37108fab16a0ddd2f8fcb023f73f9374a59979f589f` |
| 47 | `theorem` | [one_fst](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/one-fst.md) | 278 | `result-track:49d0df189a7eb3d99c9923eede93ff1a7b4941dc5cfe8993330e6867a56ff9b7` |
| 48 | `theorem` | [one_snd](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/one-snd.md) | 282 | `result-track:35aef4f76e597a1a54a61cedd36986d6d5a60a3030a4a3e3421263fa4e4fcfa5` |
| 49 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/instance-source-edition-3.md) | 285 | `declaration-track:10409d87e1d026f5a3ade48d1a57b8a35b59e06e55ac7cfbbff6a207bba17120` |
| 50 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/instance.md) | 291 | `declaration-track:042b859dcf55689f1531eaafcde2ff06380d47e3ae2e7c8a3623b30c75a12319` |
| 51 | `theorem` | [fst_natCast](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/fst-natcast.md) | 294 | `result-track:7b08d4aa6a376f20797bf94d50ee5c715cfe1735f869a7c3cceae6d7b31158d6` |
| 52 | `theorem` | [snd_natCast](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/snd-natcast.md) | 296 | `result-track:5adea12787311d04462b118f796c55bd55bbd0e5cc0ddacd5382ef66d0cd9d21` |
| 53 | `theorem` | [ofNat_fst](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/ofnat-fst.md) | 298 | `result-track:b03e53808e01d0efa70a370d56841a6f5e8f83782b5f42ebe32785086f9ef3a8` |
| 54 | `theorem` | [ofNat_snd](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/ofnat-snd.md) | 302 | `result-track:7bf12accc57d96dd52b923bdd04df31c4bbb78c0379c4e2f8c5b967a23a88a1a` |
| 55 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/instance-source-edition-4.md) | 306 | `declaration-track:16f9803daccbdc807e3c461c40efd6837ea597440d7ad24fe3e3e0b3171a11ff` |
| 56 | `theorem` | [left_distrib](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/left-distrib.md) | 315 | `result-track:6481edbddd81e4a407c33f24090e10a3aef5b13f2f6008f8f16bd98f9c43892a` |
| 57 | `theorem` | [right_distrib](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/right-distrib.md) | 318 | `result-track:17b43682e825ae6bc16cfa96a30b7a28cce096754f6546506367d93ba78435a7` |
| 58 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/instance-source-edition-8.md) | 321 | `declaration-track:612a3bf65697aa437360a44babf4a99ff9a45827885fb7af480234ee871d1f76` |
| 59 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/instance-source-edition-9.md) | 329 | `declaration-track:8aa394c09553c73b9b928369d2f917e44f3527ae438c9490659f4a7495b2e901` |
| 60 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/instance-source-edition-12.md) | 333 | `declaration-track:9f5efbaa361a1def2b7437516e10dd207a396abe2e3ccc146967b2392b6c7332` |
| 61 | `theorem` | [fst_intCast](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/fst-intcast.md) | 337 | `result-track:25733f923ddf1cb3e0a7484832b2867a4a618f160be4bc2b0238db685c1edc03` |
| 62 | `theorem` | [snd_intCast](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/snd-intcast.md) | 341 | `result-track:c55496410db7777c444a5c0eef135c320a31853dd28754bb44ea0feecb5d1efb` |
| 63 | `theorem` | [coe_mul](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/coe-mul.md) | 345 | `result-track:050e748562a9a0ac4942af5af3157a89f71cc456791d44ac9ec172c5d063a828` |
| 64 | `theorem` | [coe_natCast](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/coe-natcast.md) | 348 | `result-track:d408a72498715720e669811b7450d53c4d87a01fda47eec77ca384af4d0949ca` |
| 65 | `def` | [ω](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/anonymous.md) | 351 | `declaration-track:189e476f9b734df4fdcbd87e1f93078f4a6750f9c071fd61cf3f927180b4b58d` |
| 66 | `def` | [ωb](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/b.md) | 354 | `declaration-track:18ed7bebdec512dd68c9e6c8784fa572ce8ade99d129272f79c7b133345c0d34` |
| 67 | `theorem` | [ω_mul_ωb](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/mul-b.md) | 357 | `result-track:37de76d61a4db2f6cd9784c0505c392c94f72578dfcb57c137a35846b12fd46e` |
| 68 | `theorem` | [ωb_mul_ω](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/b-mul.md) | 361 | `result-track:d3f03367821ee84519383cb35e174e590f2cc7451f888b632b2f0e28398456a6` |
| 69 | `theorem` | [closed_form](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/closed-form.md) | 366 | `result-track:5a5bb7f431d6470c27a089341fc789fb6c3e28e3fff68143395f2712c4bd03dd` |
| 70 | `def` | [α](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/anonymous-source-edition-2.md) | 382 | `declaration-track:29153eda15447426fa5690465296e8b7f82b6e3ca07c0458c2147ea946344c23` |
| 71 | `lemma` | [α_sq](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/sq.md) | 385 | `result-track:84662e48673ed6ed1cd2566edecaa10a932ed21c88b5744a16b954c573140b5d` |
| 72 | `lemma` | [one_add_α_sq](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/one-add-sq.md) | 389 | `result-track:1a10159c05eebc495589e69a742c23a8d7e563b97f24d7ee5d3405879d30e555` |
| 73 | `lemma` | [α_pow](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/pow.md) | 392 | `result-track:bf43abcc7ac540ecf5e67ee44a5cc7e1948baa0efab55fa93b4067f20e5b9783` |
| 74 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/instance-source-edition-5.md) | 397 | `declaration-track:25592fa87b3fa738167ae62099c27549700c66952e23fc887e94bf4b4f3093ba` |
| 75 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/instance-source-edition-7.md) | 402 | `declaration-track:5a65b156b5176ed3347cc5ca7759488255349d27af6718870e7793944cf9897a` |
| 76 | `lemma` | [one_add_α_pow_q](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/one-add-pow-q.md) | 406 | `result-track:fce53408ea4ea6a78b03d24510a5a26678771dc931ebb694d553d078665d2d25` |
| 77 | `lemma` | [one_add_α_pow_q_succ](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/one-add-pow-q-succ.md) | 417 | `result-track:ed43b5b8c8ecb21791f147a204fd18be4699cbf43d3b1d53cd128f86f305479d` |
| 78 | `lemma` | [two_mul_ω_pow](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/two-mul-pow.md) | 423 | `result-track:bf4d45faddf7a84f677a85194469492393c1cc504469fa0f95a00c42a13ed06e` |
| 79 | `lemma` | [pow_ω](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/pow-source-edition-2.md) | 433 | `result-track:f551e3a629fed66a00c663d7f23da1dbc0ca29d79614bf75d7ea6fef30a754f5` |
| 80 | `lemma` | [ω_pow_trace](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/pow-trace.md) | 454 | `result-track:736c2ebef05494e3241935c0579135a2453b4c3abe2884a39ebd3832f7bdba76` |
| 81 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/instance-source-edition-13.md) | 469 | `declaration-track:a3e532bab56b8c031a25c7d13b46e2ad12c044e418815fdbbfba67bc820a97ec` |
| 82 | `theorem` | [card_eq](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/card-eq.md) | 472 | `result-track:22c897f12137a720ec1dda30992bc52bfcfcbb4fa326ef0f4bc62d32667e9db7` |
| 83 | `theorem` | [card_units_lt](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/card-units-lt.md) | 477 | `result-track:1b851aadbe5ffab961adfd18ebdf05c18c519df47f69f3ab696cdd5fe4efbd62` |
| 84 | `theorem` | [two_lt_q](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/two-lt-q.md) | 491 | `result-track:5b8758d021bcd6752183fd761cb5e627f51e988b6eac344e56b0a1794db58c7d` |
| 85 | `theorem` | [ω_pow_formula](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/pow-formula.md) | 497 | `result-track:1d3684e684ed120dddc9b2e9460b05b3fc7e242c0f48a4eb14a4193f2ce541c7` |
| 86 | `theorem` | [mersenne_coe_X](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/mersenne-coe-x.md) | 519 | `result-track:40f008a705c1bf4ec4836c8d6ec4e9f1918a8785290194e06b9c799c39295dde` |
| 87 | `theorem` | [ω_pow_eq_neg_one](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/pow-eq-neg-one.md) | 522 | `result-track:24ad0a66157ddc64312730e44c0f94820a1904dd733cc568e5ad5a43ea1c3650` |
| 88 | `theorem` | [ω_pow_eq_one](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/pow-eq-one.md) | 528 | `result-track:83272d14fdf5b29a40e7cc6bd0083ec3ee7353f3069aa637501285b6321e2f4a` |
| 89 | `def` | [ωUnit](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/unit.md) | 537 | `declaration-track:b236f134e676e5c557439745bfb015b57a0e3c12ff7010e6681d532f4cceec7d` |
| 90 | `theorem` | [ωUnit_coe](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/unit-coe.md) | 544 | `result-track:20d9fdd091e220c2baa2e191e03557c187ac266774e08cc3ed55bb5e49ce7862` |
| 91 | `theorem` | [order_ω](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/order.md) | 548 | `result-track:b97886e9e0362dcccf79559222c8f33949c0eb01368825a79d5c7e5797d61672` |
| 92 | `theorem` | [order_ineq](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/order-ineq.md) | 566 | `result-track:2f9604659883b24df7a435f299cf09b2727018f6650299820b188a1b30005136` |
| 93 | `theorem` | [lucas_lehmer_sufficiency](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/lucas-lehmer-sufficiency.md) | 581 | `result-track:d07da6e9deea300a2f56b79bdf8e7764a833a668fb3b4aa351b6bfe6e0570057` |
| 94 | `theorem` | [lucas_lehmer_necessity](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/lucas-lehmer-necessity.md) | 595 | `result-track:6afc84652e2617dc179bfc6c010e469087006b0eee9759f6d0399aaa28ce17f7` |
| 95 | `def` | [sModNat](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/smodnat.md) | 630 | `declaration-track:b06d512dd79f88f50930194aec8ac5a6a12f497f97e14a11e24410657b5e8f02` |
| 96 | `theorem` | [sModNat_eq_sMod](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/smodnat-eq-smod.md) | 634 | `result-track:499af7b3cf67c7987c4a1c1ead043afea36fd28f82c58d34c1e15c6fbc3c5e21` |
| 97 | `def` | [sModNatTR](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/smodnattr.md) | 642 | `declaration-track:2b53591f24de70fd647c6a78c44632c852046d45f1b9852cb4c04bf64de7af4a` |
| 98 | `def` | [sModNatAux](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/smodnataux.md) | 655 | `declaration-track:5c30a751999f53c954a4661e59455bfe4d9dab4a361816f2f15741090431048c` |
| 99 | `theorem` | [sModNatAux_eq](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/smodnataux-eq.md) | 659 | `result-track:78f333148c0f0f39de05e72626f747298b1fa3f6761cae3defe33147320f05d7` |
| 100 | `theorem` | [sModNatTR_eq_sModNat](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/smodnattr-eq-smodnat.md) | 667 | `result-track:a560c451275c30e7a23c54e467e9e47b3f22e6fa5561b835188d987f8cb0b699` |
| 101 | `lemma` | [testTrueHelper](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/testtruehelper.md) | 681 | `result-track:16fd7d7cf2e663fbce1afc6ba2e7d32e7300980e062ab61c28cd8f1778dd1647` |
| 102 | `lemma` | [testFalseHelper](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/testfalsehelper.md) | 688 | `result-track:936ad9db7770af644cb0df0f69d2133d4f1b381ab6891adeb58d24ad514f3e95` |
| 103 | `theorem` | [isNat_lucasLehmerTest](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/isnat-lucaslehmertest.md) | 696 | `result-track:9db3495d1259ed1a8daa8860d872fbac29a18b3288e0ef907a2e810a7cc7856c` |
| 104 | `theorem` | [isNat_not_lucasLehmerTest](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/isnat-not-lucaslehmertest.md) | 700 | `result-track:194ff062c6b52e1167532f78df818dc2e568fad00dc0b94698fee4b77f80f488` |
| 105 | `def` | [evalLucasLehmerTest](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/evallucaslehmertest.md) | 707 | `declaration-track:bf47c8a3d8cf992ade2dcfe551ece8867baec2b5542dacce7767b1779668321d` |
| 106 | `theorem` | [modEq_mersenne](../../../../NumberTheory/LucasLehmerPublic.lean/declarations/modeq-mersenne.md) | 747 | `result-track:3552fc2f9857f7aea0d55eff22f2d7eb24f27748e381ad191ca06a0000cb565d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ddbe677ac9f9356918c8b600e2791f28b3a0b81d41900573b0c3fc45f51193a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LucasLehmer/Variant3365b889f46b55900f18507ad9294b8abdc305016060135cfdb507f4d8c42094.lean","GRWTSK/_verification/specifications/Algebra/LucasLehmer/Variant3365b889f46b55900f18507ad9294b8abdc305016060135cfdb507f4d8c42094.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
