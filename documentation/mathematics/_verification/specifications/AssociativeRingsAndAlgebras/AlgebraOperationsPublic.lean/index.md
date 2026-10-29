# Verification target: Algebra Operations Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38184a3262bee39df4f4ef37e099d7c3ada5ddd3",
  "lexical_observation_count": 141,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variant913909c0cc53d9f1a34cf059ee192a34bac9b6d62661a710a91bbc245a87f3cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38184a3262bee39df4f4ef37e099d7c3ada5ddd3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Operations/Variant913909c0cc53d9f1a34cf059ee192a34bac9b6d62661a710a91bbc245a87f3cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Operations/Variant913909c0cc53d9f1a34cf059ee192a34bac9b6d62661a710a91bbc245a87f3cc.lean.json)

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
| 1 | `theorem` | [algebraMap_mem](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/algebramap-mem.md) | 61 | `result-track:407d956dc6e30fc8047f05fe4dca389587b4d76553b681568d774c59acd6caf5` |
| 2 | `theorem` | [mem_one'](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mem-one-source-edition-2.md) | 64 | `result-track:d9d7585485d50b25e7fde86249f2dca4c234fbfa3caba4647533a4aa5fddff55` |
| 3 | `instance` | [one](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/one.md) | 81 | `declaration-track:dbd5126ae427bedf423bb8fd1b74041c7603e29463a05be53cfee5bc8f30f4d1` |
| 4 | `theorem` | [one_eq_span](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/one-eq-span.md) | 84 | `result-track:7f1a1bab81dc9b9f95efcd780177c083763f31c6a6b2696e3703771ae297c9ea` |
| 5 | `theorem` | [le_one_toAddSubmonoid](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/le-one-toaddsubmonoid.md) | 87 | `result-track:2772fab15a5f9c58e55e72e83ef01961ccb68844147ca43cdffd98fa83a5a506` |
| 6 | `theorem` | [toSubMulAction_one](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/tosubmulaction-one.md) | 92 | `result-track:28269270e5cb392f4b5633a0898190cbd9729e80c12db69a8d9b3fcc16744884` |
| 7 | `theorem` | [one_eq_span_one_set](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/one-eq-span-one-set.md) | 95 | `result-track:b3923b0c0a039a112bb38cadd8680c2b8a9fec8c14f2515bce946fbb2b34ebe1` |
| 8 | `theorem` | [one_le](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/one-le.md) | 99 | `result-track:f101fd03a3abce407e8d3a6ae53cf0b433dcfb3516891ec08824a65a3edd8604` |
| 9 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/instance-source-edition-6.md) | 102 | `declaration-track:392ca2fddb902eed62688f9276e12e5174237394c3dcd23ef71c0d787a8e53fa` |
| 10 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/instance-source-edition-4.md) | 107 | `declaration-track:2a4773d84bd806adbc36bb3184bc2a2aa4442724d73f2e8f07e864aacd076af1` |
| 11 | `theorem` | [smul_toAddSubmonoid](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/smul-toaddsubmonoid.md) | 118 | `result-track:85e84011cd7dbbbcabaab1528e290fd4ea482c8c92f7743b96f94d45e03ef646` |
| 12 | `theorem` | [smul_mem_smul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/smul-mem-smul.md) | 120 | `result-track:86525e8d31aa2295c1bda09553ef49ca770a00155b8037f9967245997a0035f3` |
| 13 | `theorem` | [smul_le](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/smul-le.md) | 123 | `result-track:7f006461b19214a2eb1aaa63cc930d3e248cbc7202840b859b573abdfe7010c3` |
| 14 | `lemma` | [coe_set_smul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/coe-set-smul.md) | 127 | `result-track:d4ec250826a20db11719b58567e73c14f2ea66ee7484bf4d5ffce02e0ae144b8` |
| 15 | `theorem` | [smul_induction_on](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/smul-induction-on.md) | 133 | `result-track:0a36a3d1f7e50eec43540259ce6b6908020f027b58b1e136d72483996150dd72` |
| 16 | `theorem` | [smul_induction_on'](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/smul-induction-on-source-edition-2.md) | 139 | `result-track:1266747c9cc59a3ff41ced905b3bc38db22b225e6201be844ab2e1798b8da978` |
| 17 | `theorem` | [smul_mono](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/smul-mono.md) | 146 | `result-track:dc8301a651eb2b8d1ddafbf34569c57fa04c02e8002f96a7a3bf78d9daabd8f4` |
| 18 | `theorem` | [smul_mono_left](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/smul-mono-left.md) | 149 | `result-track:3816684bba6d80016b2d3d1a24d395c53fb20f941821ac32f97ef3539292ac9f` |
| 19 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/instance-source-edition-3.md) | 152 | `declaration-track:1f246eb899783aed7585093f24a23b32fbe3f98d334682d43939aedcba5ddb0a` |
| 20 | `theorem` | [smul_bot](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/smul-bot.md) | 158 | `result-track:ac06e13982f4a85e21725f7f933c89efc3739139bfae9bbcab84f527738d6f03` |
| 21 | `theorem` | [bot_smul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/bot-smul.md) | 162 | `result-track:217fc0f44fb6cfa8d9d42f4bab398bbb4ab95d257200740019d179be39df38e2` |
| 22 | `theorem` | [smul_sup](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/smul-sup.md) | 165 | `result-track:86c60fcccb42825489d61fa8d1ad9ef2b51c12abec763df6e94cce63ca031634` |
| 23 | `theorem` | [sup_smul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/sup-smul.md) | 169 | `result-track:35f275d209f837bb9c5856dad8ac45c3355cb327208b527231288d3b9ca3b545` |
| 24 | `theorem` | [smul_assoc](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/smul-assoc.md) | 175 | `result-track:e380a440403abced58ce09daae3cf3961c7ad80b0f1651603a746f9bb330ebc9` |
| 25 | `theorem` | [smul_iSup](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/smul-isup.md) | 187 | `result-track:c3d494eab4be01bec90a6650a123339859387974e1d1bfa8bcd215391ac77a91` |
| 26 | `theorem` | [iSup_smul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/isup-smul.md) | 192 | `result-track:ff11deeb2a9536b58ab62787aad300d9363cec45ff02e526143e0bdb15afa4ba` |
| 27 | `theorem` | [one_smul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/one-smul.md) | 199 | `result-track:a4d22a3c14689de8f85321eb18049069b21a03fc3283f1b7a16d1e147e148963` |
| 28 | `theorem` | [smul_subset_smul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/smul-subset-smul.md) | 205 | `result-track:87e979d6f81047eca7d8456ea77f50a48cf6d96be470de8d6b47f9b96b1e3b3c` |
| 29 | `instance` | [mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mul.md) | 214 | `declaration-track:ebc97a231dd32bcee4e6b9b086c23e98c450b174111a33305bfd03477eae7f6a` |
| 30 | `theorem` | [mul_mem_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mul-mem-mul.md) | 219 | `result-track:815fe70f61f8cd95d2a7d68c4088009ed0d8e437473402a5a7be7aacb0295f04` |
| 31 | `theorem` | [mul_le](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mul-le.md) | 222 | `result-track:879c35c4bd864ca2d59ddb6d808d271732bdb30fd35f2de7e6d6742746e1a414` |
| 32 | `theorem` | [mul_toAddSubmonoid](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mul-toaddsubmonoid.md) | 225 | `result-track:78b6f0045dd3eb3c1094d9f23bb6131af0a79665b2caf4e69d169b6795d771b8` |
| 33 | `theorem` | [mul_induction_on](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mul-induction-on-source-edition-2.md) | 229 | `result-track:6a98c0233c54b4d76e651023b91f27f0239d436e5dfb5e12644e6fd98b26d74f` |
| 34 | `theorem` | [mul_induction_on'](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mul-induction-on.md) | 235 | `result-track:4017cbc668bb9d16ec8865ec77106128daf79e9a1de502626cf8785bb2313f8a` |
| 35 | `theorem` | [mul_bot](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mul-bot.md) | 244 | `result-track:30040a524a66780b31f09bca8de8225249a1698ed06c09224eef62b61c3e8447` |
| 36 | `theorem` | [bot_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/bot-mul.md) | 248 | `result-track:0f8f2e5f0ba6f0693b614d4b8b85afdeb8bf91de87e4ecc13af4c80f9d6ee53d` |
| 37 | `theorem` | [mul_eq_bot](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mul-eq-bot.md) | 252 | `result-track:60884e999b727c4e30360b410f6d2024921c76ec2df632e6726fb90cab3cfa34` |
| 38 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/instance.md) | 261 | `declaration-track:13e7cd81bd92226b8f2d31143aa981c2351668df8044f32542f906360960deff` |
| 39 | `theorem` | [one_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/one-mul.md) | 264 | `result-track:d8c66dbf9423368ad75b5b4d1817cd89d6c564baa5ae45d6143510371a470deb` |
| 40 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/instance-source-edition-13.md) | 269 | `declaration-track:e0ed0eb527f4dbd1dd57ed61ba322aaecb172779519a78f6cac8362e8abb4526` |
| 41 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/instance-source-edition-10.md) | 272 | `declaration-track:880c3c7b65492a2a34455919041d57a54e815443ccbcdc3dd23cf587a3b2ba61` |
| 42 | `theorem` | [mul_comm_of_commute](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mul-comm-of-commute.md) | 275 | `result-track:9fbc2b25518a9d085163e994b435fe6b535cda45b9eb8d38dcc33edd95e2939d` |
| 43 | `theorem` | [mul_sup](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mul-sup.md) | 280 | `result-track:ccb7781fd8c550d7ff17e0221cc3bd34f0a485668f95d9717da13dafa22077ca` |
| 44 | `theorem` | [sup_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/sup-mul.md) | 283 | `result-track:55c30436df3a5dd47132881e62897f61901c7e4fc2db7b8452d30f0e616b6999` |
| 45 | `theorem` | [mul_subset_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mul-subset-mul.md) | 286 | `result-track:32e508bdf18e11ccfe6535febeb090938cd2f8ebecd55674da5ded9160698dda` |
| 46 | `lemma` | [restrictScalars_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/restrictscalars-mul.md) | 289 | `result-track:376035946c8533068e089c6a868762aecc0b2e0790923173cf45aac9f96fb992` |
| 47 | `theorem` | [iSup_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/isup-mul.md) | 297 | `result-track:709c0af9125c9d42358ea643e07f3797df4e76d2ced5c42a926700f8610fb76a` |
| 48 | `theorem` | [mul_iSup](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mul-isup.md) | 300 | `result-track:c4e86b3ac81c9f109d861e72f6317980d70bb65dc7d24da930851485d3d3c4f5` |
| 49 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/instance-source-edition-7.md) | 304 | `declaration-track:50d1c5645506ef036409aa0db0a1a07bb3e8323484225dc5632763a791388956` |
| 50 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/instance-source-edition-8.md) | 311 | `declaration-track:7f8fba003379ff3f828cccfbd5d9e5d0667dd3b8591748fb4fe6fe9fc5e16de3` |
| 51 | `theorem` | [mul_top_eq_top_of_mul_eq_one](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mul-top-eq-top-of-mul-eq-one.md) | 314 | `result-track:9044d01f6d5fcc20105b5ebb4241d7b026a194ac504f3035bd0e35ffd65a4ee7` |
| 52 | `theorem` | [pow_eq_npowRec](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/pow-eq-npowrec.md) | 319 | `result-track:83cbcb4e0166c09a7ff88b0a1307489a906246b36a9241c5fa79d51ddcc33465` |
| 53 | `theorem` | [pow_zero](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/pow-zero.md) | 321 | `result-track:e9dc4d23c0af548491ba4889daaf0b37672d81ae275fe5eb3d9f04c97fb58218` |
| 54 | `theorem` | [pow_succ](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/pow-succ-source-edition-2.md) | 323 | `result-track:884a72e48fad4edee25f46faa630d72e2fd5391e396abb0dbf4147ef711df002` |
| 55 | `theorem` | [pow_add](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/pow-add.md) | 325 | `result-track:8857805a7db3705424abf2f6882c1a9d235bede7097357051d7b05a4875191e6` |
| 56 | `theorem` | [pow_one](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/pow-one.md) | 328 | `result-track:8b67cb10f9797b8bee574373ca0575dbff8a80f4eab952a789e863eb3c0362b5` |
| 57 | `theorem` | [pow_succ'](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/pow-succ.md) | 332 | `result-track:3ff4c1391a28c9ccd32dc40e41c035e01d78200db7cab6f252ed32e91cef943c` |
| 58 | `theorem` | [bot_pow](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/bot-pow.md) | 336 | `result-track:59e2247a1d4d83baceec3311110be42e4ceb1838c166b2e68ba87910b94c6841` |
| 59 | `theorem` | [pow_toAddSubmonoid](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/pow-toaddsubmonoid.md) | 340 | `result-track:5acc3c83a6fada2fbe899c09ae183e790e2d1cdcea4e4f8461cc7bed11094f27` |
| 60 | `theorem` | [le_pow_toAddSubmonoid](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/le-pow-toaddsubmonoid.md) | 349 | `result-track:fb1b3932f92ced91517ded0ce4b9f4f72d59b637dd769eb93ad46a802000a273` |
| 61 | `theorem` | [pow_subset_pow](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/pow-subset-pow.md) | 355 | `result-track:cced4ca2c76583ca5ebdd0d5e8bff50127e0b584419b4436eec9d8b7ea320648` |
| 62 | `theorem` | [pow_mem_pow](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/pow-mem-pow.md) | 358 | `result-track:cdbb39751fb7fa2d5b0ea7e46bcb1ff633b056cc36638aec24c1736f4a94f5ff` |
| 63 | `lemma` | [restrictScalars_pow](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/restrictscalars-pow.md) | 361 | `result-track:f98a5c1da5a79ec535427feed6b299e2d4c39f8825d008323671f1154ba1d92a` |
| 64 | `instance` | [instIsReduced](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/instisreduced.md) | 370 | `declaration-track:84b98d13e423ca987e37f1cd79c59dc0a9a9e10b9a66c45ba029b0cc8e32a910` |
| 65 | `theorem` | [pow_eq_bot](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/pow-eq-bot.md) | 377 | `result-track:8ad2e46d8a4d8c6ab4a334af78325abeac183eed87628a89f5a45bc4a68be55f` |
| 66 | `theorem` | [one_eq_range](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/one-eq-range.md) | 390 | `result-track:338d2866f460cb281e89738fd67fdcdcc5bf05ac4a17bca58d334a0817fa87f0` |
| 67 | `theorem` | [algebraMap_mem](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/algebramap-mem-source-edition-2.md) | 394 | `result-track:c7444f32b8803dadedfca68ddd87c957c44062a1d3083eb90895c110467647bc` |
| 68 | `theorem` | [mem_one](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mem-one.md) | 398 | `result-track:51b4b73702ad022d7e4a1e843aabed3e329f37c3eade2fbbae774dccbb141660` |
| 69 | `theorem` | [smul_one_eq_span](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/smul-one-eq-span.md) | 401 | `result-track:4675450aa579fdfa336f4a93fc5dfb91a2332f7044da0c3a1c2c14fd21ccb84d` |
| 70 | `theorem` | [span_singleton_algebraMap_of_isUnit](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/span-singleton-algebramap-of-isunit.md) | 404 | `result-track:2d2e1c6d86f0dabb89921bede4c09f466d25aae587f6f6f435800a77eff6a614` |
| 71 | `theorem` | [map_one](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/map-one.md) | 408 | `result-track:a203995ddc783eee3543b7d63d0c6d024792418ae1554534fe57a80f8da26b09` |
| 72 | `theorem` | [map_op_one](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/map-op-one.md) | 414 | `result-track:1c9a2b152b347d77ad4e3e4680d2149c152fa745ac443bfa314c4f446e143527` |
| 73 | `theorem` | [comap_op_one](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/comap-op-one.md) | 421 | `result-track:d2560bd6fe957232201c4bab82ae2a66ced42cf97fcd703e87143fcca504869a` |
| 74 | `theorem` | [map_unop_one](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/map-unop-one.md) | 427 | `result-track:9898211631005d4d81ea44232bf6aba991491d6b4d8f6df694e9039b64457139` |
| 75 | `theorem` | [comap_unop_one](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/comap-unop-one.md) | 432 | `result-track:0d6508865260859d67b51ca384392248264f81dee548ea282051f95ca42339aa` |
| 76 | `theorem` | [mul_eq_map₂](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mul-eq-map.md) | 436 | `result-track:da4fceb5566b638428a4419b675d5c1bde4f6139f3023d35ef270c4a6e5fa5e6` |
| 77 | `theorem` | [span_mul_span](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/span-mul-span.md) | 442 | `result-track:c2017b21bfda11a1014be485b112ace3f3614f94c1f7f67f79a13ee4f5d3fd31` |
| 78 | `lemma` | [mul_def](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mul-def.md) | 445 | `result-track:52c36bd8c43b8c47ac657ce4167440aeea3ee55821c2278733a9fd0d1ff43d14` |
| 79 | `theorem` | [mul_one](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mul-one.md) | 449 | `result-track:1dbed9abf74f065e47f29fcbe8e1322299eaf5435e0aaf403c1dbbaae89d09d4` |
| 80 | `theorem` | [map_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/map-mul.md) | 454 | `result-track:8513e4e0317567d75cd9d7c54297545f0eaf645bf904978bf451f1003814db72` |
| 81 | `theorem` | [map_op_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/map-op-mul.md) | 475 | `result-track:88d25032ba190e2badb775d886e99ec10aaf89f38a1b5ca3d92f86de0ca4a694` |
| 82 | `theorem` | [comap_unop_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/comap-unop-mul.md) | 489 | `result-track:1962085fea8d6713ce08248bd1ecfb4d8c2b048c303c74d558bd40365c13d361` |
| 83 | `theorem` | [map_unop_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/map-unop-mul.md) | 495 | `result-track:7851eeabb6cc2fb01f6fb920793426d6e2ddc84e88c51fd4987b7300ac78d8b3` |
| 84 | `theorem` | [comap_op_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/comap-op-mul.md) | 505 | `result-track:14fd950e8413f42b6c164e4cf151145cd17c7de2ef3dfc154beba89c87137c6d` |
| 85 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/instance-source-edition-2.md) | 514 | `declaration-track:1e828bce9e7bf367272db733a90b9d37ed8818710f4db313c2d8c56b031e930f` |
| 86 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/instance-source-edition-11.md) | 519 | `declaration-track:884c54538f2684975b723b8858c2a43cb1c3cf649444286d5df52c42ba389ef4` |
| 87 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/instance-source-edition-9.md) | 524 | `declaration-track:81d4cfe155d6e267406cf85f200ec736ff26e8edefdaae1ab88f198c0ed4d06f` |
| 88 | `def` | [hasDistribPointwiseNeg](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/hasdistribpointwiseneg.md) | 537 | `declaration-track:4024c13aad3318d1815e8e33f5f2ed097c88156ecc102ca8a67073008a5fefa9` |
| 89 | `theorem` | [mem_span_mul_finite_of_mem_span_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mem-span-mul-finite-of-mem-span-mul.md) | 546 | `result-track:a8e178a3ce09269e67401455c2d42119d16722d1c06737e19d240dbf989cf300` |
| 90 | `theorem` | [mul_eq_span_mul_set](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mul-eq-span-mul-set.md) | 559 | `result-track:0ff7a64b85695c337a3cec5a50381afaf787e281a0925b51d576ba2e6c8dc7e8` |
| 91 | `theorem` | [mem_span_mul_finite_of_mem_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mem-span-mul-finite-of-mem-mul.md) | 562 | `result-track:4ffe2981238ee36737aa007d6755e9aad7f07ff0642e497af289b0a50652e01b` |
| 92 | `theorem` | [mem_span_singleton_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mem-span-singleton-mul.md) | 569 | `result-track:a39f78a637409545a9a5ced113022774d7d263f03ecf7b9d27ed6afa07a55de9` |
| 93 | `theorem` | [mem_mul_span_singleton](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mem-mul-span-singleton.md) | 572 | `result-track:5b26e8694bfe1bc259ec261062b72a55f497fdcb5b52bbe0cfec9648baaa9291` |
| 94 | `lemma` | [span_singleton_mul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/span-singleton-mul.md) | 576 | `result-track:f36697740743a6b2e195cb7cd2ba886a0066a4ee475242c263a8cd258ec4e6ef` |
| 95 | `lemma` | [mem_smul_iff_inv_mul_mem](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mem-smul-iff-inv-mul-mem.md) | 579 | `result-track:178a8281ff27278b97c7f6152c91173868f2f7f41dcdb645ee6a6e5ad5915990` |
| 96 | `lemma` | [mul_mem_smul_iff](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mul-mem-smul-iff.md) | 585 | `result-track:4ea87a3302ee89ce7acbe9c330f01082192b067bd6f6567293de31d24047f979` |
| 97 | `theorem` | [mul_smul_mul_eq_smul_mul_smul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mul-smul-mul-eq-smul-mul-smul.md) | 591 | `result-track:424793e3fc55172a05ab599bbd16fed791ca354e3d9bdc9ac1e5dd5f3bbb6eee` |
| 98 | `instance` | [idemSemiring](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/idemsemiring.md) | 595 | `declaration-track:4eb03ad8e4a9cc710ca1e411f52cba8a251567541a17eabc7c012d983a3eff36` |
| 99 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/instance-source-edition-5.md) | 599 | `declaration-track:385ea2566df0ea66236afab2878f112a367641059850583816d664a549941062` |
| 100 | `theorem` | [span_pow](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/span-pow.md) | 603 | `result-track:1293d1fb30f854285ffce6d5e98b4bb20442388a47f4725b54bc2374809a8ff5` |
| 101 | `theorem` | [pow_eq_span_pow_set](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/pow-eq-span-pow-set.md) | 607 | `result-track:e72eaba212a0864cdb8c462e73263ce82c7942efa5e82e412eac076b46e37394` |
| 102 | `theorem` | [top_mul_eq_top_of_mul_eq_one](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/top-mul-eq-top-of-mul-eq-one.md) | 610 | `result-track:d6c20d360b650c96ac581ced5fd353d26718b63cb9d43ed2115bcddb35df06d0` |
| 103 | `theorem` | [pow_induction_on_left'](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/pow-induction-on-left.md) | 617 | `result-track:8159a3eea2191329948f47ff8d976097ae273ea0346e0cf4630238379477e782` |
| 104 | `theorem` | [pow_induction_on_right'](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/pow-induction-on-right.md) | 637 | `result-track:51bbd24a3c3fb8942ddf8fca3cf5b388be27888f32f7d487a15276e362d73431` |
| 105 | `theorem` | [pow_induction_on_left](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/pow-induction-on-left-source-edition-2.md) | 658 | `result-track:d07de66b62acb550d845a92c4e863397d1f212d6e37a5a1057101bf64b1283ba` |
| 106 | `theorem` | [pow_induction_on_right](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/pow-induction-on-right-source-edition-2.md) | 668 | `result-track:a1290e5e06e3d0a2674bfe7b248f3caf166fc665deb5e259a5200d2f5bdfa2a2` |
| 107 | `def` | [mapHom](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/maphom.md) | 677 | `declaration-track:cbe012b90c48062fe542ad5058cf598d907de30105b67a8e7406c0f1dda0221e` |
| 108 | `theorem` | [mapHom_id](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/maphom-id.md) | 685 | `result-track:08add3aff43415674b6e6724df81f1b3c4e5273aee5eed95cc445ff9a28e11aa` |
| 109 | `def` | [equivOpposite](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/equivopposite.md) | 690 | `declaration-track:0d5e8af8aea241b02f55086c84ea1cdbccbd46003eef1c23cfa35e4bfad04bb4` |
| 110 | `theorem` | [map_pow](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/map-pow.md) | 698 | `result-track:9069a85b0a0c90c1dfeeeb45b227e5d4bc6be1bd6fc2a121c5809dac971eea0f` |
| 111 | `theorem` | [comap_unop_pow](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/comap-unop-pow.md) | 702 | `result-track:8d737c4fc89d8d38399b3daff27e0e27d2a4716f6966ab80bf2de1bd711b95dc` |
| 112 | `theorem` | [comap_op_pow](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/comap-op-pow.md) | 707 | `result-track:67cfb7356b80d003b6a3adcf85ccd014d6e883b1f829e83dc2bbccc25cb4dabd` |
| 113 | `theorem` | [map_op_pow](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/map-op-pow.md) | 712 | `result-track:4e577bba5e578b76f489bde9e605e4963c2f6aeb81625719f7d433f7f83b0acb` |
| 114 | `theorem` | [map_unop_pow](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/map-unop-pow.md) | 717 | `result-track:8e55e2ab00e3274897baba2fef981829a52be404f347042e46d4b31c6cda4669` |
| 115 | `def` | [span.ringHom](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/span-ringhom.md) | 725 | `declaration-track:e368ae9a36ac5d38cfaaa17b00f103a5b9757ac500c72ffa3f03db0d23a04aef` |
| 116 | `def` | [spanSingleton](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/spansingleton.md) | 735 | `declaration-track:b71c597288f9da1ad68428bad1eabde054194fb1ad28af233174a0f1aa774d43` |
| 117 | `lemma` | [spanSingleton_apply](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/spansingleton-apply.md) | 739 | `result-track:9672fec34b9dfc7f60ef447d587c30430b6c2c125e3228286b64bc64a2ee7c61` |
| 118 | `theorem` | [span_singleton_eq_one_iff](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/span-singleton-eq-one-iff.md) | 745 | `result-track:f9845d4d053aaf7a45a7e8f75caf1ffc2786b91e27d1b896a11bcf93121dbd04` |
| 119 | `theorem` | [mker_spanSingleton](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mker-spansingleton.md) | 753 | `result-track:78809e07c140c0d1e8e347744967021935f320c68be2e4c3ea31a76978a9ad36` |
| 120 | `theorem` | [ker_unitsMap_spanSingleton](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/ker-unitsmap-spansingleton.md) | 762 | `result-track:9c7e569d6066a51e6f5b1ea0458fbf6547c5b9fff057239ce2db6d6f18c078fe` |
| 121 | `def` | [pointwiseMulSemiringAction](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/pointwisemulsemiringaction.md) | 779 | `declaration-track:d5b246409572213f699c755fa873cbc55deaa5be3bdc8050ee0c61f72aa10b3d` |
| 122 | `theorem` | [mul_mem_mul_rev](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mul-mem-mul-rev.md) | 795 | `result-track:fdd89595221d16786ce62e2386a16dde1a05da7ac88d35bd579c101a6077f5d0` |
| 123 | `theorem` | [mul_comm](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mul-comm.md) | 800 | `result-track:bcac083f13f9bb46bce96be12bb4ce34f6534522a1fb4437fab339c9536978ec` |
| 124 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/instance-source-edition-12.md) | 805 | `declaration-track:89bdab14158244b77265ab65f135d9229bcc43dfaf931ecd65727e73611677d0` |
| 125 | `theorem` | [prod_span](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/prod-span.md) | 808 | `result-track:9dd31ebea7a0051e4dbb5174d29fc9631ecf4e2f58eb3093f31b0141026fe08b` |
| 126 | `theorem` | [prod_span_singleton](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/prod-span-singleton.md) | 816 | `result-track:bc6c197eb01f92919eed06aeae1bfb0b088a28389cb0fa6ff10ac60cd40990d0` |
| 127 | `instance` | [moduleSet](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/moduleset.md) | 823 | `declaration-track:34dacdfa28690b7d9205a466d4ce543f5aee1ee23e79d4ba9286cd96d3a4acac` |
| 128 | `theorem` | [setSemiring_smul_def](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/setsemiring-smul-def.md) | 838 | `result-track:c864014cd2c99ac8340cce378c28519fb8996f68de01d4867d0f71e6c3405952` |
| 129 | `theorem` | [smul_le_smul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/smul-le-smul.md) | 842 | `result-track:415da4caae2e2df33acf8a4e8e69fe4cc19eab93eddc4451ac33b1fb84e8eeda` |
| 130 | `theorem` | [singleton_smul](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/singleton-smul.md) | 847 | `result-track:a8ec98aa76dc0f7f1fec61314ed09f6730806f8fd3566a387a8bcaf005b92f5a` |
| 131 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/instance-source-edition-14.md) | 862 | `declaration-track:e6ddebdf52875583e552f00345021f6e5bc48a6d51f184b492ff9fa48912ba67` |
| 132 | `theorem` | [mem_div_iff_forall_mul_mem](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mem-div-iff-forall-mul-mem.md) | 875 | `result-track:e811eb2228419f77f99e0ee9faebe319f376d30e7284e6a55995efa3ab5a6e31` |
| 133 | `theorem` | [mem_div_iff_smul_subset](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mem-div-iff-smul-subset.md) | 878 | `result-track:e5d9eeddcfe870ada88536179558b085db9db7fec9ddbd8071bcbef0f9885636` |
| 134 | `theorem` | [le_div_iff](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/le-div-iff.md) | 882 | `result-track:a035e8f7025da05b23d9133bc08a2fcf48bbb80e8196fa86b39576396ad42364` |
| 135 | `theorem` | [le_div_iff_mul_le](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/le-div-iff-mul-le.md) | 885 | `result-track:b64bfbe4b70060231a2aed46b5136f2467594bfdab10123a549955d8bc2ea86a` |
| 136 | `theorem` | [one_le_one_div](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/one-le-one-div.md) | 888 | `result-track:91f11a4488360eaaa794bd3d8800cbee8772411097138bce2a51a31427438f5c` |
| 137 | `theorem` | [one_mem_div](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/one-mem-div.md) | 892 | `result-track:c905c0a8f096656d598decdfdc8eb1d6e549407f1692aac56cd005a313b80f89` |
| 138 | `theorem` | [le_self_mul_one_div](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/le-self-mul-one-div.md) | 895 | `result-track:6b2804153f2816a508d97207e004b988d0b2f4491955bbefc56c0db816697f07` |
| 139 | `theorem` | [mul_one_div_le_one](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/mul-one-div-le-one.md) | 898 | `result-track:8a2a4e95df6708d7a3d003a739cbb71c0c8e4aa9290dbc6e564dd436ebdfb58e` |
| 140 | `theorem` | [map_div](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/map-div.md) | 906 | `result-track:66d3a3e35c55236149d56050bbea9221d2b5235733ba3fc0ab8e5dadf446cf3a` |
| 141 | `theorem` | [restrictScalars_image_smul_eq](../../../../AssociativeRingsAndAlgebras/AlgebraOperationsPublic.lean/declarations/restrictscalars-image-smul-eq.md) | 924 | `result-track:2f5012bef59d1f1faa43d8be4e22bd270a35b17326482ef093bb41018418462a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=567e0ad296f7cd03e488b881eeb79c659c5717ae86e37f161cc832f276311550 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Operations/Variant913909c0cc53d9f1a34cf059ee192a34bac9b6d62661a710a91bbc245a87f3cc.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Operations/Variant913909c0cc53d9f1a34cf059ee192a34bac9b6d62661a710a91bbc245a87f3cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
