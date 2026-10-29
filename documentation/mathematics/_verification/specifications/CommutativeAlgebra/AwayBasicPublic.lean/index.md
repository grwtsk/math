# Verification target: Away Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bed43f5f6144ba0ab91e399cabe5050d7f4fb05",
  "lexical_observation_count": 80,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant546fba4376cf5014763e2f2702424ec80a11cefeca34423ea71d6bce9865f662.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/AwayBasicPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/AwayBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bed43f5f6144ba0ab91e399cabe5050d7f4fb05`.

Source path: `GRWTSK/Algebra/Basic/Variant546fba4376cf5014763e2f2702424ec80a11cefeca34423ea71d6bce9865f662.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant546fba4376cf5014763e2f2702424ec80a11cefeca34423ea71d6bce9865f662.lean.json)

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
| 1 | `abbrev` | [Away](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/away.md) | 50 | `declaration-track:b45264887b515ef6c13eb96e0b942552be3b33217b9d24c016fffd7d6f3e4a70` |
| 2 | `def` | [invSelf](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/invself.md) | 58 | `declaration-track:262d5f8b7c415705f8bb0ac0f69a638f65071c87aca42780eae4c26508569944` |
| 3 | `theorem` | [mul_invSelf](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/mul-invself.md) | 62 | `result-track:eda1ef19ccca308c4a651248cc2836e70243cad2673fc76d65cdc6ebe1b06e85` |
| 4 | `def` | [sec](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/sec.md) | 69 | `declaration-track:3d48ad4111188ab1f8c4d330c29704ced8c90036e107ad1660148a04a3ec7e0d` |
| 5 | `lemma` | [sec_spec](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/sec-spec.md) | 73 | `result-track:860c21663f62e69638bcb82c450c11b50afdaedb60394ab20c73a70bb0b7b4fd` |
| 6 | `lemma` | [algebraMap_pow_isUnit](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/algebramap-pow-isunit.md) | 79 | `result-track:02ffbc7439d85560c727b96a02b676b7e3e138d46ba019487d3f0b4df0d0dbe0` |
| 7 | `lemma` | [algebraMap_isUnit](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/algebramap-isunit.md) | 82 | `result-track:724daaea582825e14260079fec251ad6573791c23fb1af941af2f2433361cad5` |
| 8 | `theorem` | [associated_sec_fst](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/associated-sec-fst.md) | 85 | `result-track:ab385ed5367b287594bda925e796c3615273cf673cab3a8a1c1c439b9581fdc1` |
| 9 | `lemma` | [algebraMap_isUnit_iff](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/algebramap-isunit-iff.md) | 90 | `result-track:1e781e07a594db10e01d5ffb6c6e9959803554619597b7b8dc8f351fa570e3b7` |
| 10 | `lemma` | [surj](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/surj.md) | 93 | `result-track:1eb746b4d5e9581a9461cd441ba13f3a7fc4317913dc37cd416a3634782aa9dc` |
| 11 | `lemma` | [exists_of_eq](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/exists-of-eq.md) | 98 | `result-track:d4b4e0810ef66502040f1aeedc5002ea9004b83ad45bba8df3175f2360952663` |
| 12 | `lemma` | [mk](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/mk.md) | 104 | `result-track:b35bfd37f3073ba9ea6a11052fc5b33408b5d6296c5233e9338d5e5f65c54172` |
| 13 | `lemma` | [of_associated](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/of-associated.md) | 120 | `result-track:9383cc2ce12c1d400fb8db0a8b569739e464347e7fabf878c006bfdc61be9241` |
| 14 | `lemma` | [iff_of_associated](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/iff-of-associated.md) | 135 | `result-track:0c2ce852cd934a36dc33421c533f4237ae94946d8b2e989edd2ebc945d6394bf` |
| 15 | `lemma` | [isUnit_of_dvd](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/isunit-of-dvd.md) | 139 | `result-track:61637976b8c205cb6074d8c95847a9e8c1ed2358d4f16e21eb747e1cb145b275` |
| 16 | `def` | [lift](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/lift.md) | 147 | `declaration-track:635a1b76c1e9c4384b5d64b7c25cf081f59e147779fb2a1ce097ae89931862dd` |
| 17 | `theorem` | [lift_eq](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/lift-eq.md) | 155 | `result-track:fbb7b23ae7b760e89f8d6c6c0b16485fc74f58b1ccd996d62cd6a649c24e4c86` |
| 18 | `theorem` | [lift_comp](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/lift-comp.md) | 159 | `result-track:270d3280fe7555372982f88a4e1114007ffbec89a4324ed27540f8f555e489f5` |
| 19 | `def` | [liftAlgHom](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/liftalghom.md) | 169 | `declaration-track:20b440e3fbfff861ba01306b56ce9d1b00f48bbefd76a8397ef70e7443e71715` |
| 20 | `theorem` | [liftAlgHom_toRingHom](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/liftalghom-toringhom.md) | 173 | `result-track:40a6f25820a33da54445ae74eace6383adde45a2f317579cb954998a9269e5d2` |
| 21 | `theorem` | [coe_liftAlgHom](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/coe-liftalghom.md) | 176 | `result-track:7c6047066ddfdd2f04298b656d4ceb74aed43af33c31c25675ad88fb42539256` |
| 22 | `theorem` | [liftAlgHom_apply](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/liftalghom-apply.md) | 178 | `result-track:382374d7a4b42be71a471f9a1e399c5e383c6a460e3fbe394f93be5fde56ade0` |
| 23 | `def` | [awayToAwayLeft](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/awaytoawayleft.md) | 184 | `declaration-track:f7ecd3b3323205f401029c7f2061a35acb4b9d3399d7c7347bdb908a0f08b13d` |
| 24 | `def` | [awayToAwayRight](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/awaytoawayright.md) | 189 | `declaration-track:33b7a9e2f6454b7f75419d89d12a4344223122e1a1cb83d49f1137a2228a3ceb` |
| 25 | `theorem` | [awayToAwayLeft_eq](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/awaytoawayleft-eq.md) | 192 | `result-track:b6ddf9f99e5fa040bd51c755aab5a530062726c13bc95650cc5871fd9018f293` |
| 26 | `theorem` | [awayToAwayRight_eq](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/awaytoawayright-eq.md) | 196 | `result-track:7b1dbba29025a7dbe4bc6ca1299b048ec6dc76ec5f8b8f826f4fb5f98e957d4a` |
| 27 | `def` | [map](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/map.md) | 203 | `declaration-track:90ea43b47a43995901579210eef864253aacb68fe300c667ababaeb8c72d2649` |
| 28 | `lemma` | [map_injective_iff](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/map-injective-iff.md) | 211 | `result-track:cce392463a3ecaf55a6d57af9772110d2d7a7725d8977bdae31f3e283c25d3dc` |
| 29 | `lemma` | [map_surjective_iff](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/map-surjective-iff.md) | 223 | `result-track:f932f925a0c25eab3cf526fb2028e99e9ec759d76695dce53d709428b9f1e091` |
| 30 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/instance-source-edition-3.md) | 242 | `declaration-track:6fe7d2f36c18441b6f12760ba692e471475a6d67575352707a7e1a86f582676b` |
| 31 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/instance-source-edition-4.md) | 245 | `declaration-track:a2e44c3926feca660a482453e67f22d94017d6946fb084368006c04fe29adf9f` |
| 32 | `def` | [mapₐ](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/map-source-edition-2.md) | 252 | `declaration-track:f7790a817e063f036859b58a3648c5af279dcbd5a71284074b7b28414e3d3bd3` |
| 33 | `lemma` | [mapₐ_apply](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/map-apply.md) | 259 | `result-track:86a9e8ea4812959422bc2e67531ad0d2fe765818fd865aa1cf1b4c00a41aabc9` |
| 34 | `lemma` | [mapₐ_injective_of_injective](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/map-injective-of-injective.md) | 265 | `result-track:30862ba829f7dec9ceb24f223ef669c515e9ba1d509029f63e2db7f0e8803d61` |
| 35 | `lemma` | [mapₐ_surjective_of_surjective](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/map-surjective-of-surjective.md) | 269 | `result-track:96e468f9b9a91e82d74d8c572d8fe593a5d5415200ba80c1ce306b2f7b547e8f` |
| 36 | `lemma` | [mul](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/mul.md) | 280 | `result-track:8bae191735e902a61e2130df091b1ad9eda1dad435fedcd05dac7e0a32baefed` |
| 37 | `lemma` | [mul'](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/mul-source-edition-2.md) | 305 | `result-track:febd68adf8a3cc6cdbc612a11fadcf07b00107a456d1573be1f0d0332105cd72` |
| 38 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/instance-source-edition-2.md) | 312 | `declaration-track:4fe9765f8323bb1c74bc75311cb790a97aea1c024d1b928796182fc1f16c9830` |
| 39 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/instance.md) | 318 | `declaration-track:4c6e7cbba701f98663eef7c6d9870c22ebe9fddb332b5b62582c42f200e63f81` |
| 40 | `lemma` | [commutes](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/commutes.md) | 324 | `result-track:377fa99f8e5cca5be59ab242e26d7f2775465cb8285ca473d510b2ac7e1517b5` |
| 41 | `theorem` | [isDomain](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/isdomain.md) | 334 | `result-track:2bce8a6302db215fc23f81e3c1123cc69103673727fd2690484a618c94e11d44` |
| 42 | `def` | [atUnit](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/atunit.md) | 349 | `declaration-track:dfcfee5fa0abba84364a21f02ed0183f8e4e139590ec2d27255a5b6a306c921a` |
| 43 | `def` | [atOne](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/atone.md) | 354 | `declaration-track:967a8d9f6e4466d3503a6dabcfee581f9a271cd0ecbc7b422811b5263741cc3b` |
| 44 | `theorem` | [away_of_isUnit_of_bijective](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/away-of-isunit-of-bijective.md) | 357 | `result-track:395d4cf49c326c17ab678fd6d1037e9c6342c37f3c9dd7869749eeb07ef07e3c` |
| 45 | `lemma` | [Away.mul_of_isUnit](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/away-mul-of-isunit-source-edition-2.md) | 364 | `result-track:f3cebd6aa621d5b9cbde86aa01282209124d5316961688be4d98d1e1c97ef542` |
| 46 | `lemma` | [Away.mul_of_isUnit'](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/away-mul-of-isunit.md) | 369 | `result-track:dc758d3a6686b7e0278927b4583aa9505462e9a04cee598627cf9fd72b94f7ae` |
| 47 | `lemma` | [Away.mul_of_associated](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/away-mul-of-associated.md) | 374 | `result-track:ebee47159de11f0c35c05842e5c1ac76099901454f3c9e3872cfe9ec5757ad10` |
| 48 | `lemma` | [Away.algebraMap_surjective_of_isIdempotentElem](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/away-algebramap-surjective-of-isidempotentelem.md) | 385 | `result-track:5d611fe109fb23f5283b8c38affabe0516d930dff2ae3bfdd217cf0b7022847a` |
| 49 | `lemma` | [away_of_isIdempotentElem_of_mul](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/away-of-isidempotentelem-of-mul.md) | 398 | `result-track:ba7de4ccd1114ecf11691c48ad52ecf13e77cf485826f0dd70d7f12c9268746f` |
| 50 | `lemma` | [away_of_isIdempotentElem](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/away-of-isidempotentelem.md) | 411 | `result-track:468e850b83f27c3d9dbcb48cfb131c163984d0b8a87f2612902f481f046e5af5` |
| 51 | `instance` | [away_fst](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/away-fst.md) | 421 | `declaration-track:85445d62f8775c2ce2aeccd9e77c6b668627fc9a475c303801dd4d9f2790c2c4` |
| 52 | `instance` | [away_snd](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/away-snd.md) | 428 | `declaration-track:910270d6791aabdf99cec9be54614fc1a285233400c1349720f0d7bef3aa7d8b` |
| 53 | `lemma` | [Away.of_surjective](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/away-of-surjective.md) | 446 | `result-track:24a18faf81980b3cb487b6d5c288fc2f0d2790d10d7b2948121f8c71c0f30c6d` |
| 54 | `lemma` | [Away.of_surjective_of_isScalarTower](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/away-of-surjective-of-isscalartower.md) | 460 | `result-track:7324aded442c66470ad820a52a18f6bdb17dbb2359dd39f876fd763d7d2d8d5e` |
| 55 | `abbrev` | [awayLift](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/awaylift.md) | 485 | `declaration-track:862a889f4bb38007ec67f6a9a0dd134a388ce4dc88a931b6f6ec8cf2d005ac46` |
| 56 | `lemma` | [awayLift_mk](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/awaylift-mk.md) | 489 | `result-track:cd4b673fa7a3a506b0f1c6fbf34b23d58f3a3d66cd5a1e583fb8876ca4bd86c2` |
| 57 | `abbrev` | [awayMap](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/awaymap.md) | 497 | `declaration-track:405a680ffcfe2009549928c1cbd0a2a0571b1f1139b1d71737195003bac5cad2` |
| 58 | `lemma` | [awayMap_injective_iff](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/awaymap-injective-iff.md) | 501 | `result-track:457adeb96ac82c53507b90c93402986b2a26efa602c3400358cb35c0baa106c1` |
| 59 | `lemma` | [awayMap_surjective_iff](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/awaymap-surjective-iff.md) | 506 | `result-track:7979f14915e4f8f0356d24b2e8c5c1285f64db4644923f5d9174319df75256fa` |
| 60 | `lemma` | [awayMap_injective_of_dvd](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/awaymap-injective-of-dvd.md) | 510 | `result-track:223549c0ee9d5ddf795790b4cf7d0606fd349ae8f071d0503e3d3605b057edf3` |
| 61 | `lemma` | [awayMap_surjective_of_dvd](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/awaymap-surjective-of-dvd.md) | 520 | `result-track:f02c2c1733da2a1756bebca78b85dfe38e9b357f2d9d0dfd11acb405aad7cd98` |
| 62 | `lemma` | [awayMap_bijective_of_dvd](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/awaymap-bijective-of-dvd.md) | 529 | `result-track:1b117e55de857c8a07f9824431a166f788c896a1a7394edbc919a74ee9088961` |
| 63 | `lemma` | [awayMap_awayMap_surjective](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/awaymap-awaymap-surjective.md) | 535 | `result-track:d077d1567cb75d2f14f7f1d8346d879dbb3a3a7f6b5615885ec66a9fe5df7b7f` |
| 64 | `abbrev` | [awayMapₐ](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/awaymap-source-edition-2.md) | 554 | `declaration-track:7bd5e1a6048a6b868418558b3f9e5f5932fa23656145abafb270cec90cb72773` |
| 65 | `theorem` | [algebraMap_injective_of_span_eq_top](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/algebramap-injective-of-span-eq-top.md) | 558 | `result-track:eb2f54e1a471ff9744729e67a74b5b2161f97fde14723e974bde9ddb69983b59` |
| 66 | `theorem` | [existsUnique_algebraMap_eq_of_span_eq_top](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/existsunique-algebramap-eq-of-span-eq-top.md) | 569 | `result-track:397a50d86ee829fc484e7f84ff1dc2a96a054c053cf6adbd14e5104ec41d3a17` |
| 67 | `theorem` | [Away.isDomain](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/away-isdomain.md) | 619 | `result-track:77baa924ece01086ea05180db378e88aa53dc9ba2fc96ef1c18769934e0aaa07` |
| 68 | `def` | [selfZPow](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/selfzpow.md) | 636 | `declaration-track:74f3fbb772839fd953a42133388cfb4db77c7dafe9f9fc2e1332678eec88be5c` |
| 69 | `theorem` | [selfZPow_of_nonneg](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/selfzpow-of-nonneg.md) | 639 | `result-track:c40454d7f32e10455dd99f39459cad816bbdc964f37402682db13fcda0583283` |
| 70 | `theorem` | [selfZPow_natCast](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/selfzpow-natcast.md) | 643 | `result-track:c903403a54b556cfbc2831cf060bd97d37647196b9ae6648a0b63bc1a6fa764b` |
| 71 | `theorem` | [selfZPow_zero](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/selfzpow-zero.md) | 647 | `result-track:15492a92e6472d81f6f6c79bfd5ff3991f5b0d2fe22ec4250761e2ec164844a9` |
| 72 | `theorem` | [selfZPow_of_neg](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/selfzpow-of-neg.md) | 650 | `result-track:0e6fbc89fb9af3b9747909edb1371e118c6ff51331c80b3280a4aae155f56f4c` |
| 73 | `theorem` | [selfZPow_of_nonpos](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/selfzpow-of-nonpos.md) | 654 | `result-track:2fbb447f88b06be1289004e91b89cabb0e041b6fb4010ef354576720cd7eea77` |
| 74 | `theorem` | [selfZPow_neg_natCast](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/selfzpow-neg-natcast.md) | 661 | `result-track:a6b94d8cbb6e9705c65f57507000af92c7cc4270408b2b16d5b0a6f4d9296545` |
| 75 | `theorem` | [selfZPow_sub_natCast](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/selfzpow-sub-natcast.md) | 666 | `result-track:c4dcc31edd8622431676c9d91f7ad312198aadf3666adedd0b5f14bb53d4f2b1` |
| 76 | `theorem` | [selfZPow_add](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/selfzpow-add.md) | 675 | `result-track:18c1496e6b9c0c5d6be2b2b935f301787f006377f9fded55892d2f5211794996` |
| 77 | `theorem` | [selfZPow_mul_neg](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/selfzpow-mul-neg.md) | 694 | `result-track:584133fb8c87a2aa276bc41d8b673b6bbcd819a2c6a266495ab8217393ca4a15` |
| 78 | `theorem` | [selfZPow_neg_mul](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/selfzpow-neg-mul.md) | 705 | `result-track:e01fe9711a86e4cc24f6dcca003c23966266824a778321f9494a419858016d29` |
| 79 | `theorem` | [selfZPow_pow_sub](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/selfzpow-pow-sub.md) | 708 | `result-track:e68923bab7e0f41643bb1ae43440e7f04df4d527bd3e61fc14fe30639359040a` |
| 80 | `theorem` | [exists_reduced_fraction'](../../../../CommutativeAlgebra/AwayBasicPublic.lean/declarations/exists-reduced-fraction.md) | 723 | `result-track:9dff5ebaca998871221370f167a252ebcf6d71e81abfe1bf73b03773ec33dd2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ef9948105489a0406a790b6e1d39d7296dc10d4ac00b3fcb85db637706a256d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant546fba4376cf5014763e2f2702424ec80a11cefeca34423ea71d6bce9865f662.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant546fba4376cf5014763e2f2702424ec80a11cefeca34423ea71d6bce9865f662.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
