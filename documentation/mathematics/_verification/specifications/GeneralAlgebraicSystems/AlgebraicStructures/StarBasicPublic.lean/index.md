# Verification target: Star Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c112e307be585e6f8423ffeb1482d6bbab67908",
  "lexical_observation_count": 101,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant4ce946e9ba0306d69fdafda4b218702fc69f9bd0abca2e35eb194ee0a2f387f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c112e307be585e6f8423ffeb1482d6bbab67908`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant4ce946e9ba0306d69fdafda4b218702fc69f9bd0abca2e35eb194ee0a2f387f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant4ce946e9ba0306d69fdafda4b218702fc69f9bd0abca2e35eb194ee0a2f387f0.lean.json)

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
| 1 | `class` | [StarMemClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/starmemclass.md) | 49 | `declaration-track:6c945a5d2bc9498b284b71723d9254c3f88dbac6c5507b18cd1305a53e252a49` |
| 2 | `instance` | [instStar](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/inststar.md) | 61 | `declaration-track:fe13cd346127fc5eb85caadaa8d63eb862bf648ad33d6875e8b6e39abeaffdc8` |
| 3 | `lemma` | [coe_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/coe-star-source-edition-2.md) | 64 | `result-track:771b3ba7bdfb34271e5d3765f77957c50d6f48ea91779349a894a449fa0c36ae` |
| 4 | `class` | [InvolutiveStar](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/involutivestar-source-edition-2.md) | 70 | `declaration-track:e054d81cca30fb4706a81775abd7f2368efcc62bdb639e7ade7fe41862cd3f1c` |
| 5 | `theorem` | [star_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-star.md) | 77 | `result-track:a99e7a1e6350a9115f2979b4daa2dcfc7faa3e8345cafafd491ec25b737cc457` |
| 6 | `lemma` | [star_mem_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-mem-iff.md) | 80 | `result-track:728de9a7313cefb22752c033533f8d0c627b650a3bf96ffb344d19d5176c6bce` |
| 7 | `theorem` | [star_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-injective.md) | 84 | `result-track:a4d56e45609b9692c3761afed768b053a5d6a52b8022b9e298d9dfb8c1ef7d18` |
| 8 | `theorem` | [mem_of_star_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/mem-of-star-mem.md) | 88 | `result-track:749d71cd6dc272f7d2c260d1a776a64dc254cc7a4c07fb3287a1dc4a7914315c` |
| 9 | `theorem` | [star_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-inj.md) | 92 | `result-track:92379b3939a56915b77e6a8231ead4f113125885aa22107d6494c34ec3595120` |
| 10 | `def` | [Equiv.Perm.star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/equiv-perm-star.md) | 97 | `declaration-track:dceb310bbb5104e61368320713121d44e9ec7da95c3d6194b03ab01232baf748` |
| 11 | `theorem` | [Equiv.Perm.symm_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/equiv-perm-symm-star.md) | 103 | `result-track:46ca117703a1eef554884d4944591a74ccf48d0ccb2bd3b8f989ef5f3714fa0f` |
| 12 | `theorem` | [eq_star_of_eq_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/eq-star-of-eq-star.md) | 107 | `result-track:ee9fb0cb81c401b847de1cea3be189c724f5583ae920ae08be7a57147c7d7fc0` |
| 13 | `theorem` | [eq_star_iff_eq_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/eq-star-iff-eq-star.md) | 110 | `result-track:5b4eb5032fb7415481ae2edec032cacbf36bdbd64c0c2cd77e7fea68293132f5` |
| 14 | `theorem` | [star_eq_iff_star_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-eq-iff-star-eq.md) | 113 | `result-track:c6d7283cfc5adaa283b7ae9639f66facdc970aa21e78626f8e5c105fbf80c538` |
| 15 | `class` | [TrivialStar](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/trivialstar.md) | 118 | `declaration-track:cf1fe468db97cdd0b40c1334917397919ddf653929c8ba248d3f16b2052c1f13` |
| 16 | `class` | [StarMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/starmul.md) | 129 | `declaration-track:0e4584c96ffe8c36870efc2117e381c10ee341f0d2c849307b894c2a037b5f0d` |
| 17 | `theorem` | [star_star_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-star-mul.md) | 141 | `result-track:2bb33d53fb249767acb1412b89a18f64bdf7a858745e1d7c99a749d78e31b067` |
| 18 | `theorem` | [star_mul_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-mul-star.md) | 143 | `result-track:3445975be420c2322827abf16cf608694ec4b3568f96d54ada000d539a009232` |
| 19 | `theorem` | [semiconjBy_star_star_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/semiconjby-star-star-star.md) | 146 | `result-track:1b552c96c7517318e2aceda48c7ff8c20d42268544e9c9a9bb3583723d350efd` |
| 20 | `theorem` | [commute_star_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/commute-star-star.md) | 153 | `result-track:b9ce108b7bcd0aae22775c817f0dc2efda80e38c4ecf7209b41c018b15844fe4` |
| 21 | `theorem` | [commute_star_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/commute-star-comm.md) | 158 | `result-track:881603b4704b9d0693faa319de4117080263b7f0b9e4edc5d481b1d6fcba3eff` |
| 22 | `theorem` | [star_mul'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-mul.md) | 167 | `result-track:de7058132cfc8009f0637892394a084b25f3496e6a7acadc9b6a09f6a7a315ac` |
| 23 | `def` | [starMulEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/starmulequiv.md) | 172 | `declaration-track:10a79b1b04d115d81e71fab4aab4b10c706f9907a8511077c3ef7891ede1540d` |
| 24 | `def` | [starMulAut](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/starmulaut.md) | 179 | `declaration-track:df17237fe07f882f7e65f79c3bcff54e3111f32d2c85d04058a346b1b146cbdd` |
| 25 | `theorem` | [star_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-one.md) | 186 | `result-track:6a06d7cac3c4b966866c28331e4b2f4bea725f6b9ece89beacea3ad66f46cb9c` |
| 26 | `lemma` | [Pi.star_mulSingle](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/pi-star-mulsingle.md) | 190 | `result-track:f65008a75ac8b662d23e75aafec7ae6d5c3722c8c095e49cc3c160bbc7af008e` |
| 27 | `theorem` | [star_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-pow.md) | 195 | `result-track:8dac8c96fd4681393bdb10e8d37d21f23e572706c2851d282e978591ba81b470` |
| 28 | `theorem` | [star_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-inv-source-edition-2.md) | 200 | `result-track:4eaf97c17d4d6f52caaa0a8e2f2bf1ede350bdd7f399061b0bf9ff1bc38b31cc` |
| 29 | `theorem` | [star_zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-zpow-source-edition-2.md) | 204 | `result-track:456e2b77875abad49f05ba8cc94b3192f19d44f62558533cc90d003bcb8f7c86` |
| 30 | `theorem` | [star_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-div-source-edition-2.md) | 210 | `result-track:6ca7346fb13e832cd4a21215737bdcdcea6c4d8c834a313f5e32a8a35ddf7cc3` |
| 31 | `abbrev` | [starMulOfComm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/starmulofcomm.md) | 217 | `declaration-track:afa4c881cfccaff891652f113686fb16c409f746908cffeb0654a38e2dff4e68` |
| 32 | `theorem` | [star_id_of_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-id-of-comm.md) | 227 | `result-track:35ce7af5b4c223d0a59143863f54cab331385cfc01c3b1cead2a3397278159b4` |
| 33 | `class` | [StarAddMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/staraddmonoid.md) | 234 | `declaration-track:73a6082f6bead5889cdd2f90a7198dfe720319a8b33cb3a193e56b3699d2fe61` |
| 34 | `def` | [starAddEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/staraddequiv.md) | 244 | `declaration-track:9d66893ff79ecffe522c46a053d3907f83afe29f53acaa471668a7babf85332c` |
| 35 | `theorem` | [toEquiv_starAddEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/toequiv-staraddequiv.md) | 249 | `result-track:65916ea8653bb052541df814f6ae1e95f5e8e99e4b57f7fce45de6d77fc12dcd` |
| 36 | `theorem` | [symm_starAddEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/symm-staraddequiv.md) | 254 | `result-track:58b3231456b75bc2b696d6511b37b6bca815dd10f026b4211ece67c8cd9b0e3d` |
| 37 | `theorem` | [star_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-zero.md) | 260 | `result-track:df48b77d6ede88567e34fe4f96f8ddf819a37fee461c6b06b3c220db9017ec20` |
| 38 | `lemma` | [Pi.star_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/pi-star-single.md) | 264 | `result-track:a3a6239f516f78cba3fd3c80595a3c58932824da8d1dcc8c02843458801954e8` |
| 39 | `theorem` | [star_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-eq-zero.md) | 269 | `result-track:823685136b61f8a649cd581458445e4651fde579c1cbb02489c5fbf1a9d30663` |
| 40 | `theorem` | [star_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-ne-zero.md) | 272 | `result-track:b35e786ca6e4946facb20111da775c1cbd0053170647b61b20d01a72fb334d9e` |
| 41 | `theorem` | [star_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-neg.md) | 276 | `result-track:cd9e316659a17c057331f5e9efc294dbb1019a921431837480e13f5059295a40` |
| 42 | `theorem` | [star_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-sub.md) | 280 | `result-track:ea49e841554c676aadd9eb316db120f0e5ea48fdfbc52806b4facdace92faa04` |
| 43 | `theorem` | [star_nsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-nsmul.md) | 283 | `result-track:deb6a57b7b1b8b26e7b6774d8c11679c9f33e4cde840206e7fa08beb28edff90` |
| 44 | `theorem` | [star_zsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-zsmul.md) | 286 | `result-track:da06c87df10eb9b0c0c9f27ed9ca6c1ec8416b1cb708a63b840a72c1102aea0a` |
| 45 | `class` | [StarRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/starring.md) | 292 | `declaration-track:ab065583b41560b9f79735b61e4c93e62ca63a8b28e1ba699c16513e43d10558` |
| 46 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/instance-source-edition-8.md) | 298 | `declaration-track:ae17d30dfcc31f83bb0c9a5885b45f6f775d6e1b2fd252be60030e808e42a35a` |
| 47 | `def` | [starRingEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/starringequiv.md) | 304 | `declaration-track:581cc170d22e104db1d3a1c4280a2e2eb5541b46d80c3cfe60312bf4edc3201b` |
| 48 | `theorem` | [star_natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-natcast.md) | 309 | `result-track:560f5be1b5c611ed8bc3d508862e86deb8b54690386e2ccf037c9ff885cdff45` |
| 49 | `theorem` | [star_ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-ofnat.md) | 313 | `result-track:42cf7c0612d618fc5f0afc33905f62897d20e5a5025f7b08a78113f4e9fc54f0` |
| 50 | `theorem` | [star_intCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-intcast.md) | 320 | `result-track:0d074bd7f669f210de6cc21eed2d1cf90046ae714d37bf5be105d374b51e91db` |
| 51 | `def` | [starRingAut](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/starringaut.md) | 331 | `declaration-track:071bb37402df2656f7e18fd7ffa992d8319a09c80dd88da1a43f4f503f31bf0e` |
| 52 | `def` | [starRingEnd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/starringend.md) | 343 | `declaration-track:49f55610dff49b0340ce337c91f5652d259af262053ed664d0999604d24c723c` |
| 53 | `theorem` | [starRingEnd_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/starringend-apply.md) | 353 | `result-track:340cf36e93acf6367b7ef37763ef3fa721bf563496ac9c6b584011eb4d01b65f` |
| 54 | `theorem` | [starRingEnd_self_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/starringend-self-apply.md) | 356 | `result-track:15d0e95da41937ddb4f61b686370376c3ef810c1b011cfe24563f29f25e7e6db` |
| 55 | `instance` | [RingHom.involutiveStar](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/ringhom-involutivestar.md) | 358 | `declaration-track:17d603809e43d37cc45e5d42e5813de7f024fad486078d158793b7df3051b6b9` |
| 56 | `theorem` | [RingHom.star_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/ringhom-star-def.md) | 365 | `result-track:b79344cde89f872309b9844abaf3608260cc5d8cf771d1cf3d55b82df74e1c41` |
| 57 | `theorem` | [RingHom.star_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/ringhom-star-apply.md) | 368 | `result-track:d4d09d883c8657fd5827ac4716a5476c1e87a0a37188bc68f8e58390ff99f1f5` |
| 58 | `lemma` | [conj_trivial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/conj-trivial.md) | 378 | `result-track:95c2f7a13c0855868085cc4bf1e28b437126ae823ed4fd8b9a964cb33c53a586` |
| 59 | `theorem` | [star_inv₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-inv.md) | 383 | `result-track:150bf5ca8b739a9dcd154842c752bbe820cf9b867ef4de0980bdb844e2e3f44e` |
| 60 | `theorem` | [star_zpow₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-zpow.md) | 387 | `result-track:33cdfcd1efbeb2155a65efe90ad9b07274734e1a96e39235499efa55ce90ea93` |
| 61 | `theorem` | [star_div₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-div.md) | 392 | `result-track:12142e96bf00d6311d296f19d5707b27ecd8a270c11b0b700f3b29c28632d2e3` |
| 62 | `abbrev` | [starRingOfComm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/starringofcomm.md) | 400 | `declaration-track:320e02a8521101a7f2087c99232dfad046cc1c3c4830a23505f2db0ff178bce2` |
| 63 | `instance` | [Nat.instStarRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/nat-inststarring.md) | 404 | `declaration-track:571a7747c43cf410d1d5fe373282930f40e065b3d727124ca2691160ce80f751` |
| 64 | `instance` | [Int.instStarRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/int-inststarring.md) | 405 | `declaration-track:f00af5d4e0fc33e4b2736125af53313a035b1ee2a93a55aa729f0630f4099c7c` |
| 65 | `instance` | [Nat.instTrivialStar](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/nat-insttrivialstar.md) | 406 | `declaration-track:0d2ca3c95a59fd8ec7ab608ee0d77d1216a20b8220e36ea1746dc963bc5b717a` |
| 66 | `instance` | [Int.instTrivialStar](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/int-insttrivialstar.md) | 407 | `declaration-track:042ecbe00d3d9b3f7a356916875e96463d7c6bf3df44680d07da38b1185ec8aa` |
| 67 | `class` | [StarModule](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/starmodule.md) | 420 | `declaration-track:16b79889b263959a758601dfe2bee887719a76304d12b77502dc8d639fb8fccb` |
| 68 | `instance` | [StarMul.toStarModule](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/starmul-tostarmodule.md) | 429 | `declaration-track:797595036c084ecf4e862f2238d37e0ec4f3884458001c25053aaf764e38ad08` |
| 69 | `instance` | [StarAddMonoid.toStarModuleNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/staraddmonoid-tostarmodulenat.md) | 432 | `declaration-track:7a4e1aaaf388661e4f560b367ad7704a84ffd728dbdf67adfcb39eda7a7d359c` |
| 70 | `instance` | [StarAddMonoid.toStarModuleInt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/staraddmonoid-tostarmoduleint.md) | 435 | `declaration-track:ef729e9597cdf2932e47d05b056523813cad124a876e50cfc803aaaa4bd0a0b0` |
| 71 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/instance-source-edition-10.md) | 442 | `declaration-track:f177daf69e15c9f7e12e198ab20c80b15e3d6a2774e43e683d366e4fbd5a8e22` |
| 72 | `class` | [StarHomClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/starhomclass.md) | 450 | `declaration-track:e679c2d7897e0c5a8a142bb9686abfa585201b4e8775da14987c36d7c36323b4` |
| 73 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/instance-source-edition-2.md) | 465 | `declaration-track:42bcbc3bf8ba36364a5770d54e80b95c00f5b19caddaada02d509eb08ee73325` |
| 74 | `theorem` | [coe_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/coe-star.md) | 475 | `result-track:26ec0dd629d64527759d2f10c048f41b13f95a6957e4dda93da0c34a24685d74` |
| 75 | `theorem` | [coe_star_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/coe-star-inv.md) | 479 | `result-track:4d714297f851401af4c919ace9fd34be4869702aea2b4fb4de35f9912808f614` |
| 76 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/instance-source-edition-7.md) | 482 | `declaration-track:9b3d08402c2492abd1ca7add2b44ae27515bf15b3de9186bb6794ffdae33dce2` |
| 77 | `theorem` | [IsUnit.star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/isunit-star-source-edition-2.md) | 488 | `result-track:e7d77b067839d579b780c267f3fbb2f5642cf8a2b3d7ebe099cb0f556c039985` |
| 78 | `theorem` | [isUnit_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/isunit-star.md) | 492 | `result-track:788f8d4301b7709b10a04e0613ea11dace1cd3b885d8ca77278f131ddadf9394` |
| 79 | `theorem` | [Ring.inverse_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/ring-inverse-star.md) | 496 | `result-track:193ea5638a4d775c27d8882d453060511818e061e12c9f30057f1aeb5bc06c8e` |
| 80 | `instance` | [Invertible.star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/invertible-star.md) | 503 | `declaration-track:cd153da508d371dc6555cf3862c1a094d0bab017dfa7ca192dccd9ed26251287` |
| 81 | `theorem` | [star_invOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/star-invof.md) | 509 | `result-track:4bf5c97ac9b9b7b2cc2b81516bec5cd359137ea33350664ebea7f1bf9bbf36fd` |
| 82 | `theorem` | [IsLeftRegular.star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/isleftregular-star.md) | 516 | `result-track:7067b117f31446ef80f0abf481f7608c7a95a9360c1de370b0ff0f65f703a235` |
| 83 | `theorem` | [IsRightRegular.star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/isrightregular-star.md) | 520 | `result-track:ffeae66b754b212b85f248dd751df1869bdc5b227eb0edd5e0d29f3c62cc5278` |
| 84 | `theorem` | [IsRegular.star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/isregular-star.md) | 524 | `result-track:73b85f69f9d41e0c1c1a4ec3575ed0626a0713ace2fc70b4cdb673dceeaf9d9e` |
| 85 | `theorem` | [isRightRegular_star_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/isrightregular-star-iff.md) | 529 | `result-track:5a665ea514d2724708581b85e0705260afc528b33d8a57c58a03acdc8dec531c` |
| 86 | `theorem` | [isLeftRegular_star_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/isleftregular-star-iff.md) | 534 | `result-track:575aef0d7ab1c1ce68513e470dc49986d5ff2d2e75540ef18db0cb573d937ac6` |
| 87 | `theorem` | [isRegular_star_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/isregular-star-iff.md) | 539 | `result-track:67cc6e38ba74a90e4a2bb284804d9428908632c52382b1164dba198fd896242b` |
| 88 | `abbrev` | [involutiveStar](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/involutivestar.md) | 551 | `declaration-track:51fdad84a820090d20a3d96252909ccca00a29eb2ff25a8080a4aef190f30d3e` |
| 89 | `abbrev` | [starMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/starmul-source-edition-2.md) | 557 | `declaration-track:fc9344430b9ae52accb6d260ef967760acacbb56e4b73040512a2aed1d97aa0f` |
| 90 | `abbrev` | [starAddMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/staraddmonoid-source-edition-2.md) | 565 | `declaration-track:cc0a02d90322c93283d46a69352c08ecbbd16de0334c935837982b4fc77c02bf` |
| 91 | `abbrev` | [starRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/starring-source-edition-2.md) | 573 | `declaration-track:cb11b604080fd0a3621a03ba429bd61c15704df9e4d36e3ebd5a6b47147745ac` |
| 92 | `lemma` | [starModule](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/starmodule-source-edition-2.md) | 581 | `result-track:2f82fe5583ff8c4faf0c6ad20b11c1b9ad493e8262bc244966c225fb83839e53` |
| 93 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/instance-source-edition-6.md) | 592 | `declaration-track:7dde092d1f0b49d4e8641f5e0b8b0fd1bcde6bbab97e982538d0b8458973371b` |
| 94 | `theorem` | [unop_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/unop-star.md) | 595 | `result-track:42a4738c694bc34fc89333a8aaec3f26edb7d63e6674ae5356200e618ca6af32` |
| 95 | `theorem` | [op_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/op-star.md) | 599 | `result-track:72ced9b7a4a2c7bb60198e409ab31516cbf1b1e30675c58f1da326be53066797` |
| 96 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/instance.md) | 602 | `declaration-track:32be303ed1f851ef35ec54f6c172871c1dcd3d41ea3d0fd45d22b9ed6a20d31a` |
| 97 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/instance-source-edition-9.md) | 605 | `declaration-track:ea74ba746a2a29e3433631dd374cfdcf8f16e115cc2b79cb6758298aef913703` |
| 98 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/instance-source-edition-5.md) | 608 | `declaration-track:7419e628248cded350b3fd6ffd27d13acac550694d65fdd5efdca3095cd53bc0` |
| 99 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/instance-source-edition-4.md) | 611 | `declaration-track:6e134ca40b8c0985490107e6edf15003a978bf1b2e42a3dc74257c8bbdf9a279` |
| 100 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/instance-source-edition-3.md) | 614 | `declaration-track:45fc5b064e27b29b7b45752022e1cde8ee46e987d2f832909cb772c0f27380d4` |
| 101 | `instance` | [StarSemigroup.toOpposite_starModule](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarBasicPublic.lean/declarations/starsemigroup-toopposite-starmodule.md) | 622 | `declaration-track:6711c216ecf20626fe8f06bcc3c7a7c1d18d81e33cc6f94a97e47b478ca2c0a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=071973b3eb1d7bbebf9eeaf6bd1af815f43b228850de2bdf4611173d63f174cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant4ce946e9ba0306d69fdafda4b218702fc69f9bd0abca2e35eb194ee0a2f387f0.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant4ce946e9ba0306d69fdafda4b218702fc69f9bd0abca2e35eb194ee0a2f387f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
