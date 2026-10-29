# Verification target: Star Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bed47465b009816e4394655fddb3319e4c22bd76",
  "lexical_observation_count": 101,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant3103ba9d246323bb0fd3670604c221c3c5c367cd60d0970a6b122cce0d7eaee6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bed47465b009816e4394655fddb3319e4c22bd76`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant3103ba9d246323bb0fd3670604c221c3c5c367cd60d0970a6b122cce0d7eaee6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant3103ba9d246323bb0fd3670604c221c3c5c367cd60d0970a6b122cce0d7eaee6.lean.json)

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
| 1 | `class` | [StarMemClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/starmemclass.md) | 57 | `declaration-track:84b2160583f9b5f813d17784d51e9f3ce9f666009a929b93b3cc3288cc6956f9` |
| 2 | `instance` | [instStar](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/inststar.md) | 69 | `declaration-track:15748419e22fc9d37362ab2027cc79d6f94dc5f6359047789c38c3e681278156` |
| 3 | `lemma` | [coe_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/coe-star.md) | 72 | `result-track:49c203d8eb415045ba267cc4198cf1709ce2ca8478d9e446362dfff1cb2f0cb7` |
| 4 | `class` | [InvolutiveStar](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/involutivestar-source-edition-2.md) | 78 | `declaration-track:d76d6e3ded7934ac939e2d924997dccb4edfe3c2af09f5996b5ac3575130160f` |
| 5 | `theorem` | [star_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-star.md) | 85 | `result-track:96a1bbea2349b7065b3bb4868639538aea51e074cc01df91c09b8eb768b97dec` |
| 6 | `lemma` | [star_mem_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-mem-iff.md) | 88 | `result-track:25a64cf4962a187750b532fe9ca7ba27bdb6826e961ad9a6dc6e5da10377ef98` |
| 7 | `theorem` | [star_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-injective.md) | 92 | `result-track:911dba4c7bf7212b7eb02e729c3ce60abfa3c9896dbf77337839ea656dc8d7ad` |
| 8 | `theorem` | [mem_of_star_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/mem-of-star-mem.md) | 96 | `result-track:43d62badc71f1ef463aef756d361a9894c0cf4aeecb1bf990f77d0d8d920f72d` |
| 9 | `theorem` | [star_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-inj.md) | 100 | `result-track:1b74ec0d2b4ff20e2c5f2476f367523407810257b6d49c3fa4250d89c40aef48` |
| 10 | `def` | [Equiv.Perm.star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/equiv-perm-star.md) | 105 | `declaration-track:cc423399bc317817be8dcf7c2a509e56222649db1d76cb779d1f29a5e4f80199` |
| 11 | `theorem` | [Equiv.Perm.symm_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/equiv-perm-symm-star.md) | 111 | `result-track:3caed5fd37348477c4f8c5574f135e0b09d03d9a0b02f9ac9639c0920c387874` |
| 12 | `theorem` | [eq_star_of_eq_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/eq-star-of-eq-star.md) | 115 | `result-track:943f5896fa2a607f7d0e0a37b23169f9cd5fe7763c1d3fd77b5a9134767f47ad` |
| 13 | `theorem` | [eq_star_iff_eq_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/eq-star-iff-eq-star.md) | 118 | `result-track:727586b049eccb67d221c982da7291529d0c0d3109def220d5b2654d243eba51` |
| 14 | `theorem` | [star_eq_iff_star_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-eq-iff-star-eq.md) | 121 | `result-track:efdf3a8beb04128c85f7eff088eee4b7aa73d7412b23c6372012ee9b186c3b30` |
| 15 | `class` | [TrivialStar](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/trivialstar.md) | 126 | `declaration-track:b894cda6c3746c6556dfeceb32622faca4def1b0a78ede7044fe28a65232137f` |
| 16 | `class` | [StarMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/starmul-source-edition-2.md) | 137 | `declaration-track:2bf5a7b1db2b5ff4929bd5e49cbdd29b339b01bf9a015ce613530ef2fd32dee9` |
| 17 | `theorem` | [star_star_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-star-mul.md) | 149 | `result-track:26b7c05cb4068cf70a101a5d5af5940d55c68c2e1908ef82d47499ff7ca4ee08` |
| 18 | `theorem` | [star_mul_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-mul-star.md) | 151 | `result-track:2a17c79045b4fb83c7c3e2eb373363af33596bdc590132211b5cd14e4c9217c3` |
| 19 | `theorem` | [semiconjBy_star_star_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/semiconjby-star-star-star.md) | 154 | `result-track:31e431b6079fa214367af001f8ffd07cd50be62271bb1b731f7602841cc298c6` |
| 20 | `theorem` | [commute_star_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/commute-star-star.md) | 161 | `result-track:48e083136b6252a137b569538c9ae33df23e3e53cce622167e237e100c3c2a9d` |
| 21 | `theorem` | [commute_star_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/commute-star-comm.md) | 166 | `result-track:f29f02f6eff175edd8a238ee2014779cf80ad1e8eaaf670e35c05b045979a49f` |
| 22 | `theorem` | [star_mul'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-mul.md) | 175 | `result-track:b3c681e88d5d27f56e91fb4a45defb2c828481a35e5a83368c7ee079cef8605d` |
| 23 | `def` | [starMulEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/starmulequiv.md) | 180 | `declaration-track:a1dafb86a7f7809f1a5b61a76fff458e3f765fcb593019eecd9671263d9cf676` |
| 24 | `def` | [starMulAut](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/starmulaut.md) | 187 | `declaration-track:7d3c87902e9ab941ddf008abcccd8cd0dd78165bb909ec14eb032efe9af60a0a` |
| 25 | `theorem` | [star_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-one.md) | 194 | `result-track:beccee36f0aeb9fe63cf852c90e86f9abdba01214236141425839af9fae9924a` |
| 26 | `lemma` | [Pi.star_mulSingle](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/pi-star-mulsingle.md) | 198 | `result-track:5f9719851f536dd4b77f7f28d913bef0ff9a39b9a0ad606937be9c9c13fe3d5d` |
| 27 | `theorem` | [star_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-pow.md) | 203 | `result-track:9f278c0a710608608c6397d25fdcfb078a21500162bbb92500380d292f9111a7` |
| 28 | `theorem` | [star_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-inv.md) | 208 | `result-track:b6bf11cdb4c7312ef3d9187e009f89bb5699a8496b165c1cbbe1f36afc5f0f7d` |
| 29 | `theorem` | [star_zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-zpow-source-edition-2.md) | 212 | `result-track:bf5286e6b339d75c59e02ededecb6f71e0ccfe05935d28700cc9fd923795d7b2` |
| 30 | `theorem` | [star_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-div-source-edition-2.md) | 218 | `result-track:cf608019dfaa8327feb5b586f29c583e4d1d83a95766e1d97155d93870b9d0ce` |
| 31 | `abbrev` | [starMulOfComm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/starmulofcomm.md) | 225 | `declaration-track:fcb5a8b6ce217deed0c0302b3a4fff168279c6eb98b61782485f2e52c8cddd33` |
| 32 | `theorem` | [star_id_of_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-id-of-comm.md) | 235 | `result-track:bdfa1a5e0c5774b1a34cd30ab60fc2bf03266fb3f8efb36115272b1e07d9a53b` |
| 33 | `class` | [StarAddMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/staraddmonoid-source-edition-2.md) | 242 | `declaration-track:4dae3fe52877132ec9e15e99c78c0c287facfe902784b4a5a24d03baab3f42f1` |
| 34 | `def` | [starAddEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/staraddequiv.md) | 252 | `declaration-track:2ac70a7c5f1eab84df4ca79641acc99af9b91c3aeabae316f48fdcccf806b87d` |
| 35 | `theorem` | [toEquiv_starAddEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/toequiv-staraddequiv.md) | 257 | `result-track:c909e3c3f2e11bcd7a79b9f215402b4397f45641b4c9bb0c1214b544d0fe9be7` |
| 36 | `theorem` | [symm_starAddEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/symm-staraddequiv.md) | 262 | `result-track:361dd5818d8d8697726476e27778aa2cbb3283434f79388208faee7f310a1eff` |
| 37 | `theorem` | [star_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-zero.md) | 268 | `result-track:dd9959492e2a962e303019050fb0b721d2c988f6da1b5e29f10ea1d4f026a756` |
| 38 | `lemma` | [Pi.star_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/pi-star-single.md) | 272 | `result-track:4d8667843b384c17d303a7b9a0f5245b7d2e163e91846d74a0f5ef477465ec71` |
| 39 | `theorem` | [star_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-eq-zero.md) | 277 | `result-track:b3cf3b72cbb5fd938bcbaae691e206dfeb1ce54709cd04bb9175aa3dde9cea83` |
| 40 | `theorem` | [star_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-ne-zero.md) | 280 | `result-track:ceb3ba7eca45873f7f5c56267544176184afc24cb2f293a7ec5dc90f55e575a7` |
| 41 | `theorem` | [star_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-neg.md) | 284 | `result-track:59dd1b05e9d10e7bf6359e4a4cb24f83cfd4d311e434271043b5e4fee692af33` |
| 42 | `theorem` | [star_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-sub.md) | 288 | `result-track:fcb7b1ccc10300d633382d0c801a12233bd2a99305399d8ad8f240415b6cdd30` |
| 43 | `theorem` | [star_nsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-nsmul.md) | 291 | `result-track:b7226bda91a0aecac5073900df054b9c0a8821adc03b4d10dab8dd6b515bd8c2` |
| 44 | `theorem` | [star_zsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-zsmul.md) | 294 | `result-track:23d7be590a7f3cfc518358571afc6dd61dde977df5e0ed1ec9eb229843f0681e` |
| 45 | `class` | [StarRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/starring-source-edition-2.md) | 300 | `declaration-track:ebd85aabdd171395b00b995429131262355b9fc6ca479ecacec375f3896fed94` |
| 46 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 306 | `declaration-track:831a0fac9c5489572ca2bd7b239a0cd38e53a45d09b60d4a03d08b6f7289697d` |
| 47 | `def` | [starRingEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/starringequiv.md) | 312 | `declaration-track:d55b70822813e96dc74280e93827ac838c2c2bb65a5dbea7d58b74328f036125` |
| 48 | `theorem` | [star_natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-natcast.md) | 317 | `result-track:d29401245b1cc2f3d0dff25474e12d68352f97b9846a4be421dba4e1e87efd54` |
| 49 | `theorem` | [star_ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-ofnat.md) | 321 | `result-track:7be35ba51d66042c6f6be5469399bd39d7ebd6fbf5672acbee58ea429cccd146` |
| 50 | `theorem` | [star_intCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-intcast.md) | 328 | `result-track:d8c2431c6fc63724f48b72d28b3a3071efffa1ace9868f2cb361fac0aab31763` |
| 51 | `def` | [starRingAut](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/starringaut.md) | 339 | `declaration-track:e3b6c89617d0ae461474d0478bd039370fd34a91cb9592f023404fab9c00ca0e` |
| 52 | `def` | [starRingEnd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/starringend.md) | 351 | `declaration-track:709bde818f46a0887af17dd5e8fd37043d4b8061fb3d20cd229894d046177708` |
| 53 | `theorem` | [starRingEnd_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/starringend-apply.md) | 361 | `result-track:b83d720293a99f460bf3c6e4a5a06215aae08fb7845906c48b70104b6a94ffef` |
| 54 | `theorem` | [starRingEnd_self_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/starringend-self-apply.md) | 364 | `result-track:be61892ff58a0521c574c2ae2326c675d2508e97dd2d305016b8673c5fc6d914` |
| 55 | `instance` | [RingHom.involutiveStar](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/ringhom-involutivestar.md) | 366 | `declaration-track:7ad5714bcd9421eb6aa448d7038a6519f4fba1ec21191b449d2e58e09c480821` |
| 56 | `theorem` | [RingHom.star_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/ringhom-star-def.md) | 373 | `result-track:cd210b545203cfb09705548d024458089b37bcea3346bc1d37aca4a6e62c24dd` |
| 57 | `theorem` | [RingHom.star_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/ringhom-star-apply.md) | 376 | `result-track:7f485072f906368ff68d639be59a40937fcb4a7450a161c4063a2a8a5d589d7d` |
| 58 | `lemma` | [conj_trivial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/conj-trivial.md) | 386 | `result-track:9589a65695ba0114553bd9c3a37847b491b956eb4f3d69783cb175837fb7fabe` |
| 59 | `theorem` | [star_inv₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-inv-source-edition-2.md) | 391 | `result-track:cbf105fc703b34b6e9d5932d1000f313540f244e781d29b095305c09a237f2cc` |
| 60 | `theorem` | [star_zpow₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-zpow.md) | 395 | `result-track:2311ee242c3b7ab913567c75ff7482f64b51c051dbf6c59d751adbd212e3a82c` |
| 61 | `theorem` | [star_div₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-div.md) | 400 | `result-track:85a95bb5070a7a3c2f603cbfa3ff12a6a35828e1b78ab3a51d27be7a82b83c58` |
| 62 | `abbrev` | [starRingOfComm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/starringofcomm.md) | 408 | `declaration-track:66709e57263718df6313ff633ed7a3f92f7571bc0e39445cc4078bdfee577e61` |
| 63 | `instance` | [Nat.instStarRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/nat-inststarring.md) | 412 | `declaration-track:58b2a6a455f5bf90c686c14f6c65c51609a3baf650e89989be2031c69d5b1c93` |
| 64 | `instance` | [Int.instStarRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/int-inststarring.md) | 413 | `declaration-track:22db6b07dae41c1ab36fd75de96cb7acbc1f1cfa857f98e907dcef4c7d7d75c0` |
| 65 | `instance` | [Nat.instTrivialStar](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/nat-insttrivialstar.md) | 414 | `declaration-track:9f31152ff736a57efeff5b74b712c60d5852266fca9b06b762436e1c399ceb90` |
| 66 | `instance` | [Int.instTrivialStar](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/int-insttrivialstar.md) | 415 | `declaration-track:37a9957d695474da85aa8e65819dedf3830d158b043c399c42aa71896870043b` |
| 67 | `class` | [StarModule](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/starmodule-source-edition-2.md) | 428 | `declaration-track:b0b157c9188fe1e0ec0867be4fe50b86063f0498c9c149e0d085478a0707017b` |
| 68 | `instance` | [StarMul.toStarModule](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/starmul-tostarmodule.md) | 437 | `declaration-track:310d84a843ec1b5608872cb3fd68ad12e8c19e3f45f54c64ee8cafc36c4272a7` |
| 69 | `instance` | [StarAddMonoid.toStarModuleNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/staraddmonoid-tostarmodulenat.md) | 440 | `declaration-track:d8a2ab79d890428525cd823d0203c279ec12a87b676dd16b8f88f7de05c0c908` |
| 70 | `instance` | [StarAddMonoid.toStarModuleInt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/staraddmonoid-tostarmoduleint.md) | 443 | `declaration-track:11ae7d4cecb1c88b9704e9d2b76dac95311e0891ea6b86062ef9408802d0d00d` |
| 71 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 450 | `declaration-track:ce670c65cb42042a5786f95db4611f454c7cd4a4490af935c81b4d8f13e3a76b` |
| 72 | `class` | [StarHomClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/starhomclass.md) | 458 | `declaration-track:db1cb57b6f1d27b350b85cd996579c254cab846433a7c0ee4bb395753fc5d8f9` |
| 73 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 473 | `declaration-track:caa55ef5e0e45765d8051cf57a005259a0870865b0ec79ca1d44800036ec2a94` |
| 74 | `theorem` | [coe_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/coe-star-source-edition-2.md) | 483 | `result-track:715775be43eadb785c6ba36edd294df9176834ef4e3b1e1727865ce726fad1bc` |
| 75 | `theorem` | [coe_star_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/coe-star-inv.md) | 487 | `result-track:5c1543e4e0cd7a4f5cc9dced84018e1f341c25b7e694f7eade46ad82d0a7cc71` |
| 76 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 490 | `declaration-track:a15332b9b83b852192cb9dd3f9ecdcd8cbdc063d5aac3dc5a7e82d6aa64fcd3d` |
| 77 | `theorem` | [IsUnit.star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/isunit-star.md) | 496 | `result-track:2a16ebcf89a61bd961c6643fbaad0043d13dbf3f754972269da9059002df5ca5` |
| 78 | `theorem` | [isUnit_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/isunit-star-source-edition-2.md) | 500 | `result-track:73a493767d545c8bb5c13df6bed59f92410100ca2150e8dd9955147d9c019df9` |
| 79 | `theorem` | [Ring.inverse_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/ring-inverse-star.md) | 504 | `result-track:49ad18124cdc52c2eae8d0838f3903bd4870ffefc8ad696e2b3900403e420d2b` |
| 80 | `instance` | [Invertible.star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/invertible-star.md) | 511 | `declaration-track:ffdc6cd0aab57187e647d21c0ef4ea08009eb27913d226bd1aea80ea06725f7f` |
| 81 | `theorem` | [star_invOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/star-invof.md) | 517 | `result-track:94cf00aa256bb0ed9e32515a30930c695bb266e9d5705c032a8c38d32ffb8044` |
| 82 | `theorem` | [IsLeftRegular.star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/isleftregular-star.md) | 524 | `result-track:4c1f525cefbf38d0db820ffc745b03a59d36efa9da99a38d9d447515e4b9a5d0` |
| 83 | `theorem` | [IsRightRegular.star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/isrightregular-star.md) | 528 | `result-track:2e16725c93e5aeab5d1280ef9fff5c0793a29382fff5553fd82d6daca521c526` |
| 84 | `theorem` | [IsRegular.star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/isregular-star.md) | 532 | `result-track:e37c6a201a50216bc38442cbf83603a5c2a820c750dfbabaf809cde1962115ea` |
| 85 | `theorem` | [isRightRegular_star_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/isrightregular-star-iff.md) | 537 | `result-track:ced5d64b97c822cbdf666a77a3def6ae27f6614c690e0e03f7357b571602b5de` |
| 86 | `theorem` | [isLeftRegular_star_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/isleftregular-star-iff.md) | 542 | `result-track:3848d154f622ae344f34284f844efcf07279985d3a205f2625ae515b2ea4f9b3` |
| 87 | `theorem` | [isRegular_star_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/isregular-star-iff.md) | 547 | `result-track:522f84e0498a8c8e71b04c92cdb71969bf2873b6bc19ff449869d0d6cd5ea376` |
| 88 | `abbrev` | [involutiveStar](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/involutivestar.md) | 559 | `declaration-track:aacd8705b35a6d1e2205d428509344da73d4c68caf9034d56eda8fa019cfaedc` |
| 89 | `abbrev` | [starMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/starmul.md) | 565 | `declaration-track:2a8029505ea29f1cec647e487e814eb4221b0f0e932273e355a2edb1453cd613` |
| 90 | `abbrev` | [starAddMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/staraddmonoid.md) | 573 | `declaration-track:14553bac68d3e45eeb1bc0231dcb43df25f4d7b9d4f48ceb9122d5c419d5457e` |
| 91 | `abbrev` | [starRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/starring.md) | 581 | `declaration-track:7fd36e10a478516ea61b9d547ea43e7e0bba8767ad0c4917e2bd44df064dd5c1` |
| 92 | `lemma` | [starModule](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/starmodule.md) | 589 | `result-track:104137bafe22acf375a9254f5d2560fb8168623e4d663e9d506ede94da9e8dd5` |
| 93 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 600 | `declaration-track:9124b3ea7ed21b1b047dc74008f039a213fc8d96f166aec2a6d279352bbb6a1d` |
| 94 | `theorem` | [unop_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/unop-star.md) | 603 | `result-track:61b78805d449d451b52d43963f52348404290b48e690d09475bd086ea063c9e7` |
| 95 | `theorem` | [op_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/op-star.md) | 607 | `result-track:352837e51122f842454761202868b8c40170495e90a3d1bd824ef266187bd7a4` |
| 96 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 610 | `declaration-track:3358323e1470d25dacf40588f4056d070fc8fed3e6389c934e9219c83653467c` |
| 97 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 613 | `declaration-track:81b30da6287f2500c8cdf2226f1d024c9822db723dd5db96cb6d79c0bde8f5a9` |
| 98 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/instance.md) | 616 | `declaration-track:07b235b578b8033b4fe7f6dfdfac95cc3eb57ad158b80c1d4adc9ed863da2b7a` |
| 99 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 619 | `declaration-track:c0d77be2b299e99a6465556d5d4022bf54678d9984222bb1623d0091ccde7d48` |
| 100 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 622 | `declaration-track:9b0f183db5d166867c028255de3562891c6c814551245a92d76e7fa9c62753e9` |
| 101 | `instance` | [StarSemigroup.toOpposite_starModule](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicNamespacedPublic.lean/declarations/starsemigroup-toopposite-starmodule.md) | 630 | `declaration-track:0d761e3a0e584e9225e7275ed188dc30ea7ccc926d9dcd2a331fbf509eb42465` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64d317b61cc3fd8be2dbb6dd830b887f533734f016a5166615e985eb464e4a14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant3103ba9d246323bb0fd3670604c221c3c5c367cd60d0970a6b122cce0d7eaee6.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant3103ba9d246323bb0fd3670604c221c3c5c367cd60d0970a6b122cce0d7eaee6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
