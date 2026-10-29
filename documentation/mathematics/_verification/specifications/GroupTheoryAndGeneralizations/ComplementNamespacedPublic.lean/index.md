# Verification target: Complement Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53f23fbe79300b362b4d05124ef7f35025a90aa4",
  "lexical_observation_count": 102,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Complement/Varianteba1d534a224519efcdcb4f18a2b7eae7a15809a6937791c413124f93f344ec9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53f23fbe79300b362b4d05124ef7f35025a90aa4`.

Source path: `GRWTSK/Algebra/GroupTheory/Complement/Varianteba1d534a224519efcdcb4f18a2b7eae7a15809a6937791c413124f93f344ec9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Complement/Varianteba1d534a224519efcdcb4f18a2b7eae7a15809a6937791c413124f93f344ec9.lean.json)

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
| 1 | `def` | [IsComplement](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement.md) | 56 | `declaration-track:34965586c137f6125fb54efb5f225eb0763f2aa0ced79db0b78c45e69fd73f63` |
| 2 | `abbrev` | [IsComplement'](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-source-edition-2.md) | 61 | `declaration-track:72c3ee87d4a490c0860d302eda80127762c5cc978eae327984a92523445f2f95` |
| 3 | `theorem` | [isComplement_iff_bijective](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-iff-bijective.md) | 68 | `result-track:47f9341fa6e112d9164cae6c70e52eb23ebf56c31bd9712563a9a8f789e425d6` |
| 4 | `theorem` | [isComplement'_def](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-def.md) | 73 | `result-track:b815f5a92805b89ae2edbbe6b43d51cb96200335c3f86bff81135102011ba531` |
| 5 | `theorem` | [isComplement_iff_existsUnique](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-iff-existsunique.md) | 77 | `result-track:e0c6aa5b9f1c78fedd6f6955018fe99d5fc550c7aa6f71650fd696e73b90b106` |
| 6 | `theorem` | [IsComplement.existsUnique](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-existsunique.md) | 82 | `result-track:938399e2f9714140ff09a6e5754e1b1da95649e2cd191778e2b47358c9030d13` |
| 7 | `theorem` | [IsComplement'.symm](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-symm.md) | 87 | `result-track:46b03cbf273a7e68e4726a50d71db1b80d904858f1f127742002822fef1adfc1` |
| 8 | `theorem` | [isComplement'_comm](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-comm.md) | 98 | `result-track:6fb844a4a4ea90dd4c67dd8f7a6b52eb4d387b4a59d60fe9b6fea78febe304ee` |
| 9 | `theorem` | [isComplement_univ_singleton](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-univ-singleton.md) | 102 | `result-track:ea354f5740f775d32b04564d64f7d2289c0c2387b11667d42a32d33db8d5cd71` |
| 10 | `theorem` | [isComplement_singleton_univ](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-singleton-univ.md) | 107 | `result-track:1b98d59c6496d73e32c40ad7f3e24f34bb9bdd3f4b82b367c20cb86c13334ac6` |
| 11 | `theorem` | [isComplement_singleton_left](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-singleton-left.md) | 112 | `result-track:8c63aa16cec536c64189a82727770bf537a3b0ee455810d7f753e917a7c5604d` |
| 12 | `theorem` | [isComplement_singleton_right](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-singleton-right.md) | 119 | `result-track:3241ce8edc32fef6c8b77c82e814fdf02a084d330ac2d0f3b2847a764620c220` |
| 13 | `theorem` | [isComplement_univ_left](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-univ-left.md) | 128 | `result-track:4981a97d836c47f2a7a8a4705052a6092e3b4b64746c7bcc635902b18fb02a53` |
| 14 | `theorem` | [isComplement_univ_right](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-univ-right.md) | 140 | `result-track:8ab8e6ea03220f7d1aba586b434bf9c0a5f7fb5143ab5585d6524e3fcf3aac72` |
| 15 | `lemma` | [IsComplement.mul_eq](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-mul-eq.md) | 152 | `result-track:984f55bfacb3522638b59b32ab3a0d4fc1a08d0b35cdf9a8ed40a0fe4f82e9cc` |
| 16 | `lemma` | [not_isComplement_empty_left](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/not-iscomplement-empty-left.md) | 156 | `result-track:7fe9c075645c29346fd2bd069662cc292e92ff19812bdc84b373f9190147592d` |
| 17 | `lemma` | [not_isComplement_empty_right](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/not-iscomplement-empty-right.md) | 160 | `result-track:2268b9ebe369b8e0606b347bcb634fc595fa35ca3760409538b9d4a096bf2820` |
| 18 | `lemma` | [IsComplement.nonempty_left](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-nonempty-left.md) | 164 | `result-track:cd190137908f71ac7bfa13b3b455187df9b201d9a4382a15694814e6a44b0cc4` |
| 19 | `lemma` | [IsComplement.nonempty_right](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-nonempty-right.md) | 168 | `result-track:a3c97f1c3fb19e79a68a824673298cac540495e8b705c4710fdf3b625614aab7` |
| 20 | `lemma` | [IsComplement.pairwiseDisjoint_smul](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-pairwisedisjoint-smul.md) | 171 | `result-track:90e42288f081fa8d81e7e574c1dc2987ce54da7f47f28c11875e139fa5b96313` |
| 21 | `lemma` | [IsComplement.card_mul_card](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-card-mul-card.md) | 177 | `result-track:0cf9083dd53e7ea990ed776ea455699b3a89bea1a74f8d84c05bc382e94b09b7` |
| 22 | `theorem` | [isComplement'_top_bot](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-top-bot.md) | 181 | `result-track:50fc38c2419d4ee0971e70637dc806ecaba3e1be4c4ac3ca4c86234ccf8971f9` |
| 23 | `theorem` | [isComplement'_bot_top](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-bot-top.md) | 185 | `result-track:ef571382f7f477ec111b037cd256c0c80c83bebae6db3a5361f37e9f10a66c8c` |
| 24 | `theorem` | [isComplement'_bot_left](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-bot-left.md) | 189 | `result-track:998129d74d8b2404fd020db336287bc20d95bc46b5a866f6aec76bfd7d8b4ae8` |
| 25 | `theorem` | [isComplement'_bot_right](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-bot-right.md) | 193 | `result-track:37e96217929d9fc4f728ef0398413c72408da1a12bab1d722dc41dd5d8bdf463` |
| 26 | `theorem` | [isComplement'_top_left](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-top-left.md) | 197 | `result-track:01a6d6765886a238141bc021e1733b83453e28a7e1e918854b53595a2c28d3c3` |
| 27 | `theorem` | [isComplement'_top_right](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-top-right.md) | 201 | `result-track:b8ab2afd7b9aec2bf19cc7ce84b44461c09a761eb98ef477626a7f50e269bf1c` |
| 28 | `lemma` | [isComplement_iff_existsUnique_inv_mul_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-iff-existsunique-inv-mul-mem.md) | 205 | `result-track:2f3e7b19d2e99baef6973136ed0c41a01507bf997a1613ac96d424fe433ae8f5` |
| 29 | `lemma` | [isComplement_iff_existsUnique_mul_inv_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-iff-existsunique-mul-inv-mem.md) | 213 | `result-track:088313754da6f0426df115663efcf69a33facf259b47e1995dc61af6e8ca3d9e` |
| 30 | `lemma` | [isComplement_subgroup_right_iff_existsUnique_quotientGroupMk](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-subgroup-right-iff-existsunique-quotientgroupmk.md) | 221 | `result-track:8b7d5ccf23de3f51614f731ebc4cd31179acb41fa941743b0fc8d5f3cedcffc0` |
| 31 | `lemma` | [isComplement_subgroup_left_iff_existsUnique_quotientMk''](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-subgroup-left-iff-existsunique-quotientmk.md) | 228 | `result-track:496447807e81ce1143d804ba1c60b7df12b73592067e21ebf1f04f2884c79b8b` |
| 32 | `lemma` | [isComplement_subgroup_right_iff_bijective](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-subgroup-right-iff-bijective.md) | 235 | `result-track:fd94222932ec5333cd620ba00807c91fdfc2bb492b9bdf478fa48c6fbb789eb5` |
| 33 | `lemma` | [isComplement_subgroup_left_iff_bijective](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-subgroup-left-iff-bijective.md) | 241 | `result-track:fc90ff736f47be93a0e37db8ad369eee97dd621a79e3fad1456df18abe8b71b4` |
| 34 | `lemma` | [IsComplement.card_left](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-card-left.md) | 248 | `result-track:a27f3cd864cf7ed42f3ddb2fd5fc1edb04b860f64b2af318d03972004b4b636c` |
| 35 | `theorem` | [IsComplement.ncard_left](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-ncard-left.md) | 252 | `result-track:aa02d42aea790a03e02324e359600b6cc3ba4bc887783b87679dad3996b31b20` |
| 36 | `lemma` | [IsComplement.card_right](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-card-right.md) | 256 | `result-track:c4fd008a05ca5a19ab306267ff8bbf020ce8005f1b9e2c5665cb7587f66c433e` |
| 37 | `theorem` | [IsComplement.ncard_right](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-ncard-right.md) | 261 | `result-track:36ebb2453653c94734cbb469f917d452e0f7d029cd9b7d53a1f0b54aafb4d017` |
| 38 | `lemma` | [isComplement_range_left](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-range-left.md) | 265 | `result-track:13586a03c78ba3b7e680b3064231aaf95c2fcf3624423572d7aa1f99fd781cd5` |
| 39 | `lemma` | [isComplement_range_right](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-range-right.md) | 273 | `result-track:4ff74b904e1c9fd2796a5546b066e7d36da8b45a57fa4e3bd8499e6f7e03e92e` |
| 40 | `lemma` | [exists_isComplement_left](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/exists-iscomplement-left.md) | 281 | `result-track:5af33d625dd2a64f6a9f5d36dd0f6b9b07bc1fb16fc0ac5ddd8e532b5b248e41` |
| 41 | `lemma` | [exists_isComplement_right](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/exists-iscomplement-right.md) | 290 | `result-track:60ce65acdb05fe6ba8766a66d70d67e5971ec22cc9df3fd73defd8ad67788935` |
| 42 | `lemma` | [exists_left_transversal_of_le](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/exists-left-transversal-of-le.md) | 301 | `result-track:b23942141b5585004267176837e5b807adbf4267549e14e106e22b2c1cbd552e` |
| 43 | `lemma` | [exists_right_transversal_of_le](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/exists-right-transversal-of-le.md) | 317 | `result-track:db6c6b5075cc1ab8561f602febc325c638826ede29745710b5c43d64c7268efa` |
| 44 | `def` | [equiv](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/equiv.md) | 335 | `declaration-track:cbdef3f4f5c330a294da709c2cd739ce9a4443bde148404ad34bd0d3dfee13d7` |
| 45 | `theorem` | [equiv_symm_apply](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/equiv-symm-apply.md) | 340 | `result-track:7ecc45aca6e3eab5ef0254e85f1e3417b30e7051cbccdb915c062c9678b9eb3c` |
| 46 | `theorem` | [equiv_fst_mul_equiv_snd](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/equiv-fst-mul-equiv-snd.md) | 343 | `result-track:61da1b85ba18122b452baddefb37b840157f30d1018a5a055916bbfc79e4c985` |
| 47 | `theorem` | [equiv_fst_eq_mul_inv](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/equiv-fst-eq-mul-inv.md) | 346 | `result-track:ac1f2df479b93ff65cd3d001cce2ede93d5ac3c46bb6ab7df66c8854e96689b5` |
| 48 | `theorem` | [equiv_snd_eq_inv_mul](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/equiv-snd-eq-inv-mul.md) | 349 | `result-track:74370899d0e844b52aaf03760b32f83b2acad55e3a342c2c86166cc2847052c2` |
| 49 | `theorem` | [equiv_fst_eq_iff_leftCosetEquivalence](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/equiv-fst-eq-iff-leftcosetequivalence.md) | 352 | `result-track:27eed158d6d3036f0c6eee90d29cf2c1227fdd2909664dc65f5cc22d3894831a` |
| 50 | `theorem` | [equiv_snd_eq_iff_rightCosetEquivalence](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/equiv-snd-eq-iff-rightcosetequivalence.md) | 368 | `result-track:ded814ba9f7de2483b9c761934a36217d0f03f3d374a1a0d284e77079cfdf6ad` |
| 51 | `theorem` | [leftCosetEquivalence_equiv_fst](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/leftcosetequivalence-equiv-fst.md) | 384 | `result-track:841b13fe0ca86ba6ede14db7798ddff9f134bb00e0ae66cfeb0b3fc67ff4da31` |
| 52 | `theorem` | [rightCosetEquivalence_equiv_snd](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/rightcosetequivalence-equiv-snd.md) | 389 | `result-track:bae60d22c7f3e36099daedc31f48e71ae0a4e93b0a4d7f8c95eb3a1cd0020ee4` |
| 53 | `theorem` | [equiv_fst_eq_self_of_mem_of_one_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/equiv-fst-eq-self-of-mem-of-one-mem.md) | 395 | `result-track:931c9b13aed0f0b79fdbe7f52f6a4d9c302176484e266e4bab71c76a5efa2050` |
| 54 | `theorem` | [equiv_snd_eq_self_of_mem_of_one_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/equiv-snd-eq-self-of-mem-of-one-mem.md) | 402 | `result-track:1f0cd80c1c6c50835330398aeaa11f5049d2f32a9f4cb0ffc4f5c7456e315bea` |
| 55 | `theorem` | [equiv_snd_eq_one_of_mem_of_one_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/equiv-snd-eq-one-of-mem-of-one-mem.md) | 408 | `result-track:b9f60d015752e4ae71461af4a1697effb4bf6ac9b93ab1776a7ab283871425c5` |
| 56 | `theorem` | [equiv_fst_eq_one_of_mem_of_one_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/equiv-fst-eq-one-of-mem-of-one-mem.md) | 413 | `result-track:2fb4c4344406277bc06644641347bee3aa5f9c2ea985262088eb46969f17b10c` |
| 57 | `theorem` | [equiv_mul_right](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/equiv-mul-right.md) | 418 | `result-track:52c3f700f219ea955601eace0e8941b36bd96ab4351d80cabc4cc27cad38df4c` |
| 58 | `theorem` | [equiv_mul_right_of_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/equiv-mul-right-of-mem.md) | 427 | `result-track:dd24316e0a7a138793892784b6dd29f656dd8d16e0d50c6e5212dc72f7781cb9` |
| 59 | `theorem` | [equiv_mul_left](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/equiv-mul-left.md) | 431 | `result-track:bb19f54d70942c9e9d7e807a19a9ad3bce00b2a679f2b60545baec18ec670ee8` |
| 60 | `theorem` | [equiv_mul_left_of_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/equiv-mul-left-of-mem.md) | 439 | `result-track:6fcd910c1a285c4e0a5c3ba847869451427c6e0b1bfcab1e2e31b244f40e7451` |
| 61 | `theorem` | [equiv_one](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/equiv-one.md) | 444 | `result-track:f10d6eb34d660f51a434763d08ae78fa68f302b1cf1be0ccbdaf53816288f2a1` |
| 62 | `theorem` | [equiv_fst_eq_self_iff_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/equiv-fst-eq-self-iff-mem.md) | 448 | `result-track:6a82b2dd8260d6b1a6e0e2d6ecbca465545cd103ad40645cefb8e9798ff80e01` |
| 63 | `theorem` | [equiv_snd_eq_self_iff_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/equiv-snd-eq-self-iff-mem.md) | 457 | `result-track:8b94837eb5232a68a30eb57810e4292cef2d12a7aa80bc3baaec2c80f63fe8ec` |
| 64 | `theorem` | [coe_equiv_fst_eq_one_iff_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/coe-equiv-fst-eq-one-iff-mem.md) | 466 | `result-track:55b47aa57175e5eb7f8693d61c51ac3e8e8fce8deca0c1f401c8ed5e5e9e5eb0` |
| 65 | `theorem` | [coe_equiv_snd_eq_one_iff_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/coe-equiv-snd-eq-one-iff-mem.md) | 470 | `result-track:c79665369cbbfad48abcb4d8f0039e3403321f16f0c4355d60415f140e1637dd` |
| 66 | `def` | [leftQuotientEquiv](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/leftquotientequiv.md) | 476 | `declaration-track:4edf1f41ed9d1a25c1c2acb07f1a33f343b6c239d72c4b4172ecd9d4f88a797a` |
| 67 | `theorem` | [finite_left_iff](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/finite-left-iff.md) | 481 | `result-track:2b076028b6b816be30a3c187b18a6e78b9bb5328af03b6ac12ead8954c5a62a6` |
| 68 | `lemma` | [finite_left](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/finite-left.md) | 486 | `result-track:adf663fb2537f56455f71743d5d418951886056e8fdb6504adf169d4a05205a7` |
| 69 | `theorem` | [quotientGroupMk_leftQuotientEquiv](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/quotientgroupmk-leftquotientequiv.md) | 489 | `result-track:69ddfb675c1d7af7dd40f3c68662654e37e58e9dfd2e882e0629ae4dc231e45a` |
| 70 | `theorem` | [leftQuotientEquiv_apply](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/leftquotientequiv-apply.md) | 494 | `result-track:9c361843da934eb7e69ecb5e287422f8d338094171a1dbf504faf99ff80e985a` |
| 71 | `def` | [toLeftFun](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/toleftfun.md) | 503 | `declaration-track:98705e1bae49df8be3cab4de8fea89b1569c670f34d1d57ef4e01337119223d5` |
| 72 | `theorem` | [inv_toLeftFun_mul_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/inv-toleftfun-mul-mem.md) | 506 | `result-track:bf56745a8cf153190605d9fc03b92f4712170ce3e82b08c9722b5bd2a45039d0` |
| 73 | `theorem` | [inv_mul_toLeftFun_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/inv-mul-toleftfun-mem.md) | 511 | `result-track:0003d1ffbc789522c9ad5b43a60cba689efad478afe5c7fae79dc975ea1338ad` |
| 74 | `def` | [rightQuotientEquiv](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/rightquotientequiv.md) | 517 | `declaration-track:ecaed23b923db11ca2d181a803c9804dce444aabb0ba0a6af0e2bd284811e4a6` |
| 75 | `theorem` | [finite_right_iff](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/finite-right-iff.md) | 523 | `result-track:a905a210780e16c356dba959712277ae21d4febdc862681e743ee5de48cb715b` |
| 76 | `lemma` | [finite_right](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/finite-right.md) | 529 | `result-track:73a58fc03a1b30e0cb06c6a932729859793bd8b4c437f530f1954228be8739bf` |
| 77 | `theorem` | [mk''_rightQuotientEquiv](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/mk-rightquotientequiv.md) | 532 | `result-track:d94bd972d0e150d2acf61df3e9765c5d566b6a07b8df4d7bcf92b8c55f35977d` |
| 78 | `theorem` | [rightQuotientEquiv_apply](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/rightquotientequiv-apply.md) | 537 | `result-track:9c26bbba393c2d3b7beb58195aeb7b4360c8f7b8b8d922498ed108e78a699749` |
| 79 | `def` | [toRightFun](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/torightfun.md) | 547 | `declaration-track:b8cb729677e9d1680cc052badeebc94c20341251518b761788858f8d9080783f` |
| 80 | `theorem` | [mul_inv_toRightFun_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/mul-inv-torightfun-mem.md) | 550 | `result-track:06b09f0bc585e7a400ab30add446f440dc41e9fccf0a732bf2bc975413981a26` |
| 81 | `theorem` | [toRightFun_mul_inv_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/torightfun-mul-inv-mem.md) | 555 | `result-track:b17a52c354f09c48a78f983291294e126aad9f65b2aea92cb0232692594fa6f5` |
| 82 | `theorem` | [encard_left](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/encard-left.md) | 560 | `result-track:eb4fb2d0be08c452463ad29cd08f0a24ceb1365cd67fd658ed0c53e31c18b3dc` |
| 83 | `theorem` | [encard_right](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/encard-right.md) | 564 | `result-track:2ef4362c6baf7aa9999dd67c51a8f5df398cd1df7689137026a9f0d25fde0b16` |
| 84 | `abbrev` | [LeftTransversal](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/lefttransversal.md) | 576 | `declaration-track:a98cb955b63c4deeeab1f0f07dd3548cb27ada30eba12bc32daad2483cb4bf84` |
| 85 | `abbrev` | [RightTransversal](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/righttransversal.md) | 580 | `declaration-track:a3339ae52c93ef919e42ddb6cd69a7fcdc8e20392b14c3333bdaef9de8d8bc7f` |
| 86 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/instance.md) | 585 | `declaration-track:322e0a221d84574432bb07ed4033cea468ee8de05c051ca62111a5a95ed1674b` |
| 87 | `theorem` | [smul_toLeftFun](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/smul-toleftfun.md) | 600 | `result-track:4bb210625c3d9bd3f356a50e0b52f011113dbdef63c973ba7c655fddeb0a5070` |
| 88 | `theorem` | [smul_leftQuotientEquiv](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/smul-leftquotientequiv.md) | 610 | `result-track:dd9a1f66a1daddfd9eaac1b4f1556dcc9ecf00f9147325c7ffaae054027fde36` |
| 89 | `theorem` | [smul_apply_eq_smul_apply_inv_smul](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/smul-apply-eq-smul-apply-inv-smul.md) | 615 | `result-track:f73cf1ae8930835ba90248268c1d0d32572c376460488eff7dce702b79e1e489` |
| 90 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 624 | `declaration-track:5c774653537a9cacf6315211bb03f04b4dc0c37112c4eb658d056ccfbc88e77c` |
| 91 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 630 | `declaration-track:7b34751b710171545b2872b09e7d4518144f4656ad0e27d85913ce8cc59f93c2` |
| 92 | `theorem` | [IsComplement'.isCompl](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-iscompl.md) | 633 | `result-track:385fda910f4511c88ef768751453ad2ef19eef1c94760e76e62476da590321c8` |
| 93 | `theorem` | [IsComplement'.sup_eq_top](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-sup-eq-top.md) | 644 | `result-track:82801f201be4fb295fed37ccb139ba17a73ed4292017616cde190d5d9fb8ac47` |
| 94 | `theorem` | [IsComplement'.disjoint](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-disjoint.md) | 647 | `result-track:b187abc446cbd87b77e9774e69e86ece34559fe667e10cac02e8bd78824d6082` |
| 95 | `theorem` | [IsComplement'.index_eq_card](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-index-eq-card.md) | 650 | `result-track:4a3dc76cb4f55cf1de7a2fee80664beda08d530e6ce80730ae9d76574e83a7b8` |
| 96 | `def` | [IsComplement'.QuotientMulEquiv](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-quotientmulequiv.md) | 658 | `declaration-track:7f0b76933c34330f0a0b21ac70cd9059c30d9cca0baa0e24958fb2dab44873c7` |
| 97 | `theorem` | [IsComplement'.card_mul_card](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-card-mul-card-source-edition-2.md) | 664 | `result-track:ec7a5c2bb97e89664532164bca9b743e6d9edf365f2eac4dc99e0237b49ed623` |
| 98 | `theorem` | [isComplement'_of_disjoint_and_mul_eq_univ](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-of-disjoint-and-mul-eq-univ.md) | 674 | `result-track:27ec1ad26247b40c1441a5a8e7ec90c5ab361dde1b9ec51cfdd4597d261e745f` |
| 99 | `theorem` | [isComplement'_of_card_mul_and_disjoint](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-of-card-mul-and-disjoint.md) | 680 | `result-track:b66e507c23ff9679727117461f372db1a746d361e654ca40e0e0388cf484e22e` |
| 100 | `theorem` | [isComplement'_iff_card_mul_and_disjoint](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-iff-card-mul-and-disjoint.md) | 686 | `result-track:9b0d562767afbd934d435f1c595e5a32f7b1b1b7bc0e4f60797018d8c846a563` |
| 101 | `theorem` | [isComplement'_of_coprime](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-of-coprime.md) | 690 | `result-track:f7945c83aa5c41ef3ec2c493f1472c91ed0e7e89e83bb3c24c177b9b58591e66` |
| 102 | `theorem` | [isComplement'_stabilizer](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedPublic.lean/declarations/iscomplement-stabilizer.md) | 695 | `result-track:b3d5cf25ab0dfdb263e798f78ce17caa5ebea65052f8d77569cb46f9d8976218` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6fa91b91009aa41edba0049d5a8516e64b15e70ab58df9a414c87c09490b4ff9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Complement/Varianteba1d534a224519efcdcb4f18a2b7eae7a15809a6937791c413124f93f344ec9.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Complement/Varianteba1d534a224519efcdcb4f18a2b7eae7a15809a6937791c413124f93f344ec9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
