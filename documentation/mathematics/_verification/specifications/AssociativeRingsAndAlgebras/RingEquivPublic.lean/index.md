# Verification target: Ring Equiv Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cf3c58948d107604d455664adfafc69788a3b05",
  "lexical_observation_count": 156,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Equiv/Variantdfded57ebfbf1f5248f53d855d886068328720afd5ee87e9ade48d7508bc5e14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cf3c58948d107604d455664adfafc69788a3b05`.

Source path: `GRWTSK/Algebra/Equiv/Variantdfded57ebfbf1f5248f53d855d886068328720afd5ee87e9ade48d7508bc5e14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Equiv/Variantdfded57ebfbf1f5248f53d855d886068328720afd5ee87e9ade48d7508bc5e14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.DSimpPercent` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NonUnitalRingHom.inverse](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/nonunitalringhom-inverse.md) | 54 | `declaration-track:587794d02971ad012c0be30b39f03902159b97eca37ba3ecbf88f9523eb402c0` |
| 2 | `def` | [RingHom.inverse](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/ringhom-inverse.md) | 61 | `declaration-track:a0240bf74406158215233f7e7dcf9c98f0eac488de396bc3c6f1dfbacc41e7e4` |
| 3 | `structure` | [RingEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/ringequiv.md) | 70 | `declaration-track:516f406b28956763473ced68591a54b2a785a7e0d5e7547f096c730881207358` |
| 4 | `class` | [RingEquivClass](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/ringequivclass.md) | 86 | `declaration-track:a57fcc2646fe04c1904e970e4636a375b527dbe499631ef76677a69073c88126` |
| 5 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/instance-source-edition-4.md) | 96 | `declaration-track:9877acfcb72e0c9274631981a308083ab3e156fb5474bcadb35edfa639b1b326` |
| 6 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/instance-source-edition-7.md) | 101 | `declaration-track:eac993931f0474d8a77f856108f896bf804fa72c1a8d3bfff373366227a2701e` |
| 7 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/instance-source-edition-3.md) | 108 | `declaration-track:90d5d3e0b8f79dc8aa9c3822e826664a96fb00714821c09d55424f2981df930c` |
| 8 | `def` | [toRingEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/toringequiv-source-edition-3.md) | 116 | `declaration-track:f5cc804393a9b6fc26fac62ec60f2135a5b542f7cd460c62a3e21dea7a4d2cc5` |
| 9 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/instance.md) | 131 | `declaration-track:4d4006b02d4480a057d6000c6db45d684921cdeda4317c11895f4662f90e13c8` |
| 10 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/instance-source-edition-5.md) | 142 | `declaration-track:a35ef7464b649bc05804aa0f95aff6f5031611c559d5165b5f9ed890e5229e28` |
| 11 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/ext.md) | 148 | `result-track:4b1ed023db1edd7ded84c12a77a0123081450cbfc0c521c72d2355bae7dab2df` |
| 12 | `theorem` | [congr_arg](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/congr-arg.md) | 151 | `result-track:0d5b91d0e5e071578ad2ce69b7236d3bd8d926d76ae7201a8b78afbee6262d0a` |
| 13 | `theorem` | [congr_fun](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/congr-fun.md) | 154 | `result-track:c863646e6b90ad9342915ab5cfb2bcbade387886651d64941ca24f546c090919` |
| 14 | `theorem` | [coe_mk](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-mk.md) | 158 | `result-track:6881964e5d8ef24ab602f24790b8dc83ed85b37894387baad0766c3b0c59a16a` |
| 15 | `theorem` | [mk_coe](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/mk-coe.md) | 162 | `result-track:97f6b4de0532347594506085cbab086c0bd1de4055de7d11f2465a1342cb293d` |
| 16 | `theorem` | [toEquiv_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/toequiv-eq-coe.md) | 166 | `result-track:9ad57dad40db6e30afb4b04d95c51fe7df50740015222dce98c3a04295662c50` |
| 17 | `theorem` | [coe_toEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-toequiv.md) | 170 | `result-track:d8403aab43f8a2363488b276b4b37dd54fc21503a52c76797317580fa1f66ac4` |
| 18 | `theorem` | [toAddEquiv_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/toaddequiv-eq-coe.md) | 174 | `result-track:4b04945324cc3562aef023d3f1b77eac3ec07a03c0a4963fc880a6a2f9e847f8` |
| 19 | `theorem` | [toMulEquiv_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/tomulequiv-eq-coe.md) | 178 | `result-track:ed51e8a05503104b7f415a56faaeb4da409e8c5a676bee589ba6e9456452e5ff` |
| 20 | `theorem` | [coe_toMulEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-tomulequiv.md) | 182 | `result-track:d43d1fa6b862e8d6ab84ac09444a18e7164e60c9b7d6e8d021190d729cdfee8e` |
| 21 | `theorem` | [coe_toAddEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-toaddequiv.md) | 186 | `result-track:f121302acf83bd418e00bf2fd87d501706f36886b489df3b7c0b3804297b8b77` |
| 22 | `theorem` | [map_mul](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/map-mul.md) | 194 | `result-track:5408a1a5fa47dffd6b3e94d760dec145635daeaf479d6a9bbf949deeb811f678` |
| 23 | `theorem` | [map_add](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/map-add.md) | 198 | `result-track:2d173772735dcf0fd654507c2445c77f87a8a72e26131a52a790eb542cac2bda` |
| 24 | `theorem` | [bijective](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/bijective.md) | 205 | `result-track:f2808dc4c4628ae56f334e348be0f6cb93c48ca5830943b55eacb5fc42e7fc10` |
| 25 | `theorem` | [injective](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/injective.md) | 208 | `result-track:82950610caa81091192d017621475356f4af24bb3b368b36009da7951ef3d7f4` |
| 26 | `theorem` | [surjective](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/surjective.md) | 211 | `result-track:c04c3a44efdf985512bdfbe3444ca5ebdc3ec435aa97dad8d9c0bdd5d95b9351` |
| 27 | `def` | [refl](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/refl.md) | 222 | `declaration-track:5e3bb24af79c9881a86b9eacd5e66a426df27ea4e43f043c168a959c4efdf68a` |
| 28 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/instance-source-edition-2.md) | 225 | `declaration-track:54cd4e21bf5631f77534c1b12635bb7182001165c5b7f98c783476e4467d7fc6` |
| 29 | `theorem` | [refl_apply](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/refl-apply.md) | 229 | `result-track:510cb7b6a0a649f79091a9925c0372d47fd01933139998127ad3631c5e586e04` |
| 30 | `theorem` | [coe_refl](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-refl.md) | 233 | `result-track:961f34dd26cf91f16dc5f4f864bfb76e47d5e6ef484a2cf9146585ddef30d305` |
| 31 | `theorem` | [coe_addEquiv_refl](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-addequiv-refl.md) | 237 | `result-track:b39b3df9354228bd45c691c5b376d2af4d4e7c5e545291fd7644a70596228d4f` |
| 32 | `theorem` | [coe_mulEquiv_refl](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-mulequiv-refl.md) | 241 | `result-track:41cdd24bb22830641c399555c731a1923bf639c9e6bf6784e15eb3f2b90a02e1` |
| 33 | `def` | [symm](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/symm.md) | 252 | `declaration-track:647ae8aa4ee1bcb5445e2ffa7f7ef6ed62d3e010de40464bb8a8fcb68a2d243e` |
| 34 | `theorem` | [invFun_eq_symm](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/invfun-eq-symm.md) | 256 | `result-track:1049f98882e50b5e56849c2cd0af614ad389bf4826457e48a6522047d23a9475` |
| 35 | `theorem` | [symm_symm](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/symm-symm.md) | 260 | `result-track:4b72c579d047ebaeb60b06e1e679ff273b10ade68dfe04a875f19d7b07d09c41` |
| 36 | `theorem` | [symm_bijective](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/symm-bijective.md) | 262 | `result-track:ff302272cb1a55247f7521d1ed7142015b96849c1fc2a31041ff4fadffc409a6` |
| 37 | `theorem` | [mk_coe'](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/mk-coe-source-edition-2.md) | 266 | `result-track:ab0d7ae0ce0088a85373146de9c007e49f47c83d151d0ad81a046acda1c574f5` |
| 38 | `theorem` | [symm_mk](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/symm-mk.md) | 271 | `result-track:a484a543c7df67e034a234d660ccee1c69f681c12e5a079ca90783dd4f63b045` |
| 39 | `theorem` | [symm_refl](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/symm-refl.md) | 278 | `result-track:db0fb1a1bc06fd4ef18480f71eae805db1dc14681f19fca48f2b299e9d5eb09c` |
| 40 | `theorem` | [coe_toEquiv_symm](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-toequiv-symm.md) | 282 | `result-track:c7c99e8bcb4d174737935c7bae20b7f81109cdf43b1060a6e8a59c57ce0ba9d0` |
| 41 | `theorem` | [coe_toMulEquiv_symm](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-tomulequiv-symm.md) | 286 | `result-track:2635e89aaaeab456f2ea5255cb18ad4f4c5e19d8def397d14e6f5c9db7fd97c6` |
| 42 | `theorem` | [coe_toAddEquiv_symm](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-toaddequiv-symm.md) | 290 | `result-track:68078e12c31f6fbfbb6c083631a523678f17aad3cf6d5d87f9f03ed933a9eba3` |
| 43 | `theorem` | [apply_symm_apply](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/apply-symm-apply.md) | 294 | `result-track:d5b60303f6c787097d7241719574c03fadd394bfc5391f592d2ebc36ee0f802d` |
| 44 | `theorem` | [symm_apply_apply](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/symm-apply-apply.md) | 298 | `result-track:a73f29a2d5a2d9a299d9ad303034c762bd99cefe8daf6a70440696e731023eb6` |
| 45 | `lemma` | [image_symm_eq_preimage](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/image-symm-eq-preimage.md) | 301 | `result-track:28ab9d7fcb458df62e3076ce35b17899e413277bf720ef54d2536ba09ae23239` |
| 46 | `lemma` | [image_eq_preimage_symm](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/image-eq-preimage-symm.md) | 304 | `result-track:0c430b82b0a481683b00334f21bd15f9e45ae5ca0a2924a792163bf41d6a863c` |
| 47 | `lemma` | [coe_coe_toEquiv_symm](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-coe-toequiv-symm.md) | 308 | `result-track:668cb9e375dca1ae36d8d31c3775d9b34b85ca6fb64e8853736879c65170c4b4` |
| 48 | `lemma` | [coe_coe_toMulEquiv_symm](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-coe-tomulequiv-symm.md) | 311 | `result-track:c982af0280cf6c5802259309984419160ed359125d1f1e2360b59e9b4fb0aa22` |
| 49 | `lemma` | [coe_coe_toAddEquiv_symm](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-coe-toaddequiv-symm.md) | 314 | `result-track:6d30200a585f7e5278a1a99b673a1097496e52af4f3a585ac21f4ac9274b208f` |
| 50 | `theorem` | [symm_apply_eq](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/symm-apply-eq.md) | 316 | `result-track:494d609cdc0c927c8bbce2bba795d4687462d9abde67c682f9875c91ff205413` |
| 51 | `theorem` | [eq_symm_apply](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/eq-symm-apply.md) | 319 | `result-track:59fdb92ae93b2ed3415d3f74d70032db2a7a5c6257dc569e4a9d450f7e37e33e` |
| 52 | `def` | [Simps.symm_apply](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/simps-symm-apply.md) | 327 | `declaration-track:44d4f8c657257917592a13058b731841ecf3118a7abf416f6f67c81e7bddef90` |
| 53 | `def` | [trans](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/trans.md) | 338 | `declaration-track:d858a629a3b3e16d1ad6190b4110ddc332b2cce2a7f3da7497e39afae71c41d9` |
| 54 | `theorem` | [coe_trans](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-trans.md) | 342 | `result-track:9f88a819270d4cccf7bd837976ea30a696107c97b5eafa7cd15ebb764bdd9054` |
| 55 | `theorem` | [trans_apply](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/trans-apply.md) | 345 | `result-track:bf7dacc27d3926717d0966a1d2de0dba4e383dd2d75c30e3e7a63e05dfc31928` |
| 56 | `theorem` | [symm_trans_apply](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/symm-trans-apply.md) | 349 | `result-track:06cbca48490171279752536b7b4607ec23ffb27d70a47a00e87bef355423c5d2` |
| 57 | `theorem` | [symm_trans](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/symm-trans.md) | 353 | `result-track:05254c9ffef3aec5a663db9bfc4b2921041a1287a2e8d7b1f4c7b24475c6ef8c` |
| 58 | `theorem` | [coe_mulEquiv_trans](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-mulequiv-trans.md) | 357 | `result-track:09856e6db936bea66c7de4c3b33e3e196500a14fb479c68b30e5b2ba678db009` |
| 59 | `theorem` | [coe_addEquiv_trans](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-addequiv-trans.md) | 362 | `result-track:889ca0ca93673890cc275587fac70dce12a605faf48b1cbfc7e5e1f8f9a1be7c` |
| 60 | `def` | [ofUnique](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/ofunique.md) | 371 | `declaration-track:643f410fdfc2440efe8bfeffcc50d64e5e5b12360fde2cd58150ee87a5508099` |
| 61 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/instance-source-edition-6.md) | 374 | `declaration-track:ba02d4743e6d6f26fbd45aa9717c6367f253df2c02531bf32a8ec2a7b28bf0b6` |
| 62 | `def` | [op](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/op.md) | 389 | `declaration-track:277a83756a1c37d105c7ffdbc74e9b7bb425760300309d224d7619481d05088d` |
| 63 | `def` | [unop](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/unop.md) | 396 | `declaration-track:da13c03e04a19ae6bc13712b9dca15bdcb276925ce1046f437e74f66cae79132` |
| 64 | `def` | [opOp](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/opop.md) | 401 | `declaration-track:35814703ee689c50745d987c2c57643a482ac4f200e3d02de567b78a1c4b5ccb` |
| 65 | `def` | [toOpposite](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/toopposite.md) | 410 | `declaration-track:52b72297f3baf3d7ffe866ddf2f4b3a9ea786964bb04951ae391a5ecd8d2705e` |
| 66 | `theorem` | [toOpposite_apply](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/toopposite-apply.md) | 416 | `result-track:f0a68a7a3f06584a016e5a90d7c830d31157c8153c7428ecfbfa77a4e63e6c98` |
| 67 | `theorem` | [toOpposite_symm_apply](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/toopposite-symm-apply.md) | 420 | `result-track:8c02c54e16f347867bf4cf5404fe458fb9fe9519ae12ad51fb126691d11c889d` |
| 68 | `theorem` | [map_zero](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/map-zero.md) | 432 | `result-track:2b5d8ecd9e2239a244458fc414a869e1b3706f1c87f00cdd46f0d9fe4197f910` |
| 69 | `theorem` | [map_eq_zero_iff](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/map-eq-zero-iff.md) | 437 | `result-track:2b5c1351c76d1391c2c4a9362ba4c3af9925e9dca014dda78149975075fee567` |
| 70 | `theorem` | [map_ne_zero_iff](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/map-ne-zero-iff.md) | 440 | `result-track:e7cd4c2a78d571bb1a8c2bb5c9c480b46ada448f15b7af23a20b749c79229783` |
| 71 | `def` | [ofBijective](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/ofbijective.md) | 446 | `declaration-track:1b6a6b1a78f8a1397cb3575e09fd29f43ced49a105ac32a92f19ac413340fa82` |
| 72 | `theorem` | [coe_ofBijective](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-ofbijective.md) | 453 | `result-track:dde743670ffdd637465c637cc432fd2b066cac16cdb38162c0fb280186a80ee1` |
| 73 | `theorem` | [ofBijective_apply](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/ofbijective-apply.md) | 457 | `result-track:5e98db276918756ba5e0a88670657c5d8851e0722edd299b5d3e647a9b795e23` |
| 74 | `lemma` | [ofBijective_symm_comp](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/ofbijective-symm-comp.md) | 462 | `result-track:757a3378f4ad4d524542850dfd465bd567f80971726153dd4d0eb14eb41dc1a5` |
| 75 | `lemma` | [comp_ofBijective_symm](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/comp-ofbijective-symm.md) | 468 | `result-track:6db085de01eecf0de685262e2280471b5963885e611bad893f7fb386bc96dbd5` |
| 76 | `def` | [piUnique](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/piunique.md) | 476 | `declaration-track:e965daf841d4db3c9288e5e71baa4c8625967a1309d13125903c0fdda9bab737` |
| 77 | `def` | [cast](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/cast.md) | 487 | `declaration-track:3053eeb273e9cdddade2f35c297632ac84ef9e50e1b054968b8ad536493631f6` |
| 78 | `def` | [piCongrRight](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/picongrright.md) | 500 | `declaration-track:65a7bcfc465debcae713546e4307df66f6f438435688d968f836e23b70cf2160` |
| 79 | `theorem` | [piCongrRight_refl](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/picongrright-refl.md) | 508 | `result-track:6e86513e260dbb856dcca7dd3664355383785f6591804a642742204b0dcf7f2b` |
| 80 | `theorem` | [piCongrRight_symm](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/picongrright-symm.md) | 513 | `result-track:e686205413468f2a1a6a9323de79887873b7c30a81a33f0bb794a0c4804ce4d2` |
| 81 | `theorem` | [piCongrRight_trans](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/picongrright-trans.md) | 519 | `result-track:52312d7b97bb373b016338f567498b45ad4b141bcfcc88499a965c558fb60662` |
| 82 | `def` | [piCongrLeft'](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/picongrleft.md) | 529 | `declaration-track:5a7bb061e85fc3be30271b8ea06824f07155efa7ddda422aeb350b50382f3601` |
| 83 | `theorem` | [piCongrLeft'_symm](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/picongrleft-symm.md) | 537 | `result-track:5c2f92837b9aba54fc6f6df4b1b1aaff7830576973c9f897f6941c2e296fcacc` |
| 84 | `def` | [piCongrLeft](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/picongrleft-source-edition-2.md) | 548 | `declaration-track:5e102ae73e518d05a889329b5c605568150970b4f3fb63c0d75b889b82c09e96` |
| 85 | `def` | [piEquivPiSubtypeProd](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/piequivpisubtypeprod.md) | 556 | `declaration-track:d0ca02b27dd39826cf2c83757dc2434d93f1dade7534930760c5a1fc5cdb28d1` |
| 86 | `def` | [piMulOpposite](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/pimulopposite.md) | 565 | `declaration-track:53bde091be09e0ee984e50b9939cb8fcd2f6aad69d65a7c12184595986f1a4e4` |
| 87 | `def` | [prodCongr](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/prodcongr.md) | 576 | `declaration-track:c96fe67f22477fbe651f3554ef6d45f1bccd19f642db65abc9dad762384e1f1c` |
| 88 | `theorem` | [coe_prodCongr](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-prodcongr.md) | 589 | `result-track:97b6ad2c486373c753e4f0543c1673b0f95a938ce2b8f9cee528052a907a86fa` |
| 89 | `def` | [piOptionEquivProd](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/pioptionequivprod.md) | 597 | `declaration-track:627722df62e2a1dabc5388a8b29c2943e0fdd493795570e258766322e9301b3e` |
| 90 | `theorem` | [map_one](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/map-one.md) | 610 | `result-track:9931d982849e12fe4716c33f5ed2e8fb427ff7507f221c6e32d4bb3b283fc0f8` |
| 91 | `theorem` | [map_eq_one_iff](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/map-eq-one-iff.md) | 615 | `result-track:e99176c32334db6bdab2d2ab5ea92f6afd43696569661a65dd3b1b20cc67ec76` |
| 92 | `theorem` | [map_ne_one_iff](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/map-ne-one-iff.md) | 618 | `result-track:695aea20c03fdac1859c05ad38011df9890e16daf34a1e353730f25c73da49dd` |
| 93 | `theorem` | [coe_monoidHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-monoidhom-refl.md) | 621 | `result-track:1986dd9ffbe647eb94ce007531dad13c0186501c12e9f37a11f2356bfa565aad` |
| 94 | `theorem` | [coe_addMonoidHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-addmonoidhom-refl.md) | 625 | `result-track:9c3418db686d32423476ccf2ab8f8e47ede5892efa1fbd55883ae95a8448953d` |
| 95 | `theorem` | [coe_ringHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-ringhom-refl.md) | 633 | `result-track:61e2dba6f77edb7eece5e8ae87e383d153820e87e169ea7e45739292d802dea1` |
| 96 | `theorem` | [coe_monoidHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-monoidhom-trans.md) | 637 | `result-track:1fe1b0288dd42b8cbb8ae8d5cdc2da991aa2e850eeeb6881f3742361cbc89811` |
| 97 | `theorem` | [coe_addMonoidHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-addmonoidhom-trans.md) | 642 | `result-track:9f972ec5a9f74a84d6cdc49ce27a8657f3e72e4b1b8a86d0e198684e5fc28790` |
| 98 | `theorem` | [coe_ringHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-ringhom-trans.md) | 650 | `result-track:d6c07164ad4f32a1a794245e6840f931b4389e2fecf8d305e754e6210511d037` |
| 99 | `theorem` | [comp_symm](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/comp-symm.md) | 655 | `result-track:8fa97c7c8a418f4a1dcb354ebf963821fee7ba201c705ce396f9dc1d336df268` |
| 100 | `theorem` | [symm_comp](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/symm-comp.md) | 659 | `result-track:d35c008944108c818bc80e070af44b9872dcf871665913b0b1778bb90e84ad01` |
| 101 | `theorem` | [map_neg](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/map-neg.md) | 668 | `result-track:09e9d3fe472e8d276b770e27e417381ae3cea302fc20599344c3b09876d98b2f` |
| 102 | `theorem` | [map_sub](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/map-sub.md) | 671 | `result-track:0951d1fa03fba962df007ab84c29fa6d8f8746928cacb99148e6adc0f38e7015` |
| 103 | `theorem` | [map_neg_one](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/map-neg-one.md) | 681 | `result-track:ee73668efddc777df6a5bc68f03937d51bfc5c8a61caa199df5129b0ccaed7b7` |
| 104 | `theorem` | [map_eq_neg_one_iff](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/map-eq-neg-one-iff.md) | 684 | `result-track:e960f682c4db9c0d09f17289e27faa8f3d6bab6e219d719a67aa9de36d1010f0` |
| 105 | `def` | [toNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/tononunitalringhom.md) | 694 | `declaration-track:bb2333ce1116186543d09cca93db79d908c5e237a8130c706471ce9d06040167` |
| 106 | `theorem` | [toNonUnitalRingHom_injective](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/tononunitalringhom-injective.md) | 697 | `result-track:037ad3db330a637922ca0c70a32f70c152be52b2805d3e85aa6e3c302c1d16fb` |
| 107 | `theorem` | [toNonUnitalRingHom_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/tononunitalringhom-eq-coe.md) | 701 | `result-track:757f02c713b6ad384da7f78eb88de2d02ee6efeb87070ff86e46e1a265415923` |
| 108 | `theorem` | [coe_toNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-tononunitalringhom.md) | 705 | `result-track:2c0d69ea83589478bff9a7077511f4ffde1fc98ff8129bd71d366eab995de39e` |
| 109 | `theorem` | [coe_toNonUnitalRingHom'](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-tononunitalringhom-source-edition-2.md) | 709 | `result-track:c2085e81a197793eac1fbd7744241c3c687d8a8ebd39036a6c9c4fb4eafe2f62` |
| 110 | `theorem` | [coe_nonUnitalRingHom_inj_iff](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-nonunitalringhom-inj-iff.md) | 712 | `result-track:11200a188fca3d699a70356ed016e708c7f7443f171112fe559960ce6babf496` |
| 111 | `theorem` | [toNonUnitalRingHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/tononunitalringhom-refl.md) | 717 | `result-track:3c494dff9a84e472ee08ab474c6524227a351699d9e38dc79ab1b47909f53347` |
| 112 | `theorem` | [toNonUnitalRingHom_apply_symm_toNonUnitalRingHom_apply](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/tononunitalringhom-apply-symm-tononunitalringhom-apply.md) | 722 | `result-track:11ffe1d125c0e7d4c74e7efc78875d57cd96eb8dc303ae973f49ca9598dbaf06` |
| 113 | `theorem` | [symm_toNonUnitalRingHom_apply_toNonUnitalRingHom_apply](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/symm-tononunitalringhom-apply-tononunitalringhom-apply.md) | 727 | `result-track:32589fed163c65dded9ed8815dfacfcccaa030b6aace23e1ee98194c10211b2d` |
| 114 | `theorem` | [toNonUnitalRingHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/tononunitalringhom-trans.md) | 732 | `result-track:2ede3d9dd96cb7db034033bbd297bb94b53753bd5acc0d973c3b69228b7f15f7` |
| 115 | `theorem` | [toNonUnitalRingHomm_comp_symm_toNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/tononunitalringhomm-comp-symm-tononunitalringhom.md) | 737 | `result-track:1df2a5d493d6a9aa25a95674dba29fdab2f620daf0c7cc487342bc7c7ce7c9c2` |
| 116 | `theorem` | [symm_toNonUnitalRingHom_comp_toNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/symm-tononunitalringhom-comp-tononunitalringhom.md) | 743 | `result-track:41f877b6e62fa3b156c57ec285298b753abb8712292fabcd28ee76ab64194c63` |
| 117 | `def` | [toRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/toringhom.md) | 755 | `declaration-track:dda5f964c9b87c5ace5d915528d1b0996f4c2ba2e613019e001a9ddb05787abd` |
| 118 | `theorem` | [toRingHom_injective](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/toringhom-injective.md) | 758 | `result-track:919606fd045c6ca61eaabea75fbf459f4e0d6dc25debb0b700a7522b0228e006` |
| 119 | `theorem` | [toRingHom_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/toringhom-eq-coe.md) | 761 | `result-track:c85fb199f8b657d28f31514ad24d0d341e6914738f33565d57c8b96289f99249` |
| 120 | `theorem` | [coe_toRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-toringhom.md) | 765 | `result-track:b3e127ccc7c984d5a21a23881bb1273704310717b406616d51d93d0417ab0c05` |
| 121 | `theorem` | [coe_ringHom_inj_iff](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-ringhom-inj-iff.md) | 768 | `result-track:ceb3c8ed233f4918ffd5fccd915ad4d31b352f37f08216dfb7f4057b649f82ae` |
| 122 | `theorem` | [toNonUnitalRingHom_commutes](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/tononunitalringhom-commutes.md) | 774 | `result-track:6bc498202dbfdd1fe84a5d0e20ba57f584f549005f0f26ae26a576bcd92dff24` |
| 123 | `abbrev` | [toMonoidHom](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/tomonoidhom.md) | 779 | `declaration-track:a7bd872f3f4be9e7f56bba8d2297c203793100b8d5d5749cb29e66a2844ed113` |
| 124 | `abbrev` | [toAddMonoidHom](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/toaddmonoidhom.md) | 783 | `declaration-track:df9ae43cbfd7a7e6ce526be5e9fd92f7b6a5f6ec449590884330ac87ad51dafa` |
| 125 | `theorem` | [toAddMonoidMom_commutes](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/toaddmonoidmom-commutes.md) | 787 | `result-track:de90a2bddbca036a413c3277f405b3a1410d2dcbe7aa90ee7c16c8aa8efa993d` |
| 126 | `theorem` | [toMonoidHom_commutes](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/tomonoidhom-commutes.md) | 792 | `result-track:c8d513fa04a9bae8edff9b4e3ef23c7fb6ec58b10b9edb366d239df5af8f2e75` |
| 127 | `theorem` | [toEquiv_commutes](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/toequiv-commutes.md) | 797 | `result-track:8d47e755c59551ea0f6eb81d92e501048b7440c600f7937124b5b34f102dd2d0` |
| 128 | `theorem` | [toRingHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/toringhom-refl.md) | 801 | `result-track:d0ec9d4b1f5dab99bfe25d4e326e323e257d8ca52e11acc82cd0c55a3a742241` |
| 129 | `theorem` | [toMonoidHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/tomonoidhom-refl.md) | 805 | `result-track:b14c78334b962374bb110a6d52356ba3daf2e2639eae0e7af1284fe3da38fe7b` |
| 130 | `theorem` | [toAddMonoidHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/toaddmonoidhom-refl.md) | 809 | `result-track:0689bf640d87593924d2adc29198ecbdb05a53dc31ce3d14d3ded6c1ae413386` |
| 131 | `theorem` | [toRingHom_apply_symm_toRingHom_apply](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/toringhom-apply-symm-toringhom-apply.md) | 812 | `result-track:e9655972d078b174cbf18fbaabed6bb0842ad1d32b57e11d41e8415afafad27f` |
| 132 | `theorem` | [symm_toRingHom_apply_toRingHom_apply](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/symm-toringhom-apply-toringhom-apply.md) | 816 | `result-track:b20008e43ea25fe7ccf533a25f593911ef5211c6dc354254a7310d67af81f051` |
| 133 | `theorem` | [toRingHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/toringhom-trans.md) | 821 | `result-track:3defc0dcdee78993020043cccc36f271b4948af353ef9903bd473ce0d2c6aee1` |
| 134 | `theorem` | [toRingHom_comp_symm_toRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/toringhom-comp-symm-toringhom.md) | 825 | `result-track:ffcf1e66dc58d237ca370e36d3f628f22a62db1ff73feabfa301f746aeaa63fd` |
| 135 | `theorem` | [symm_toRingHom_comp_toRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/symm-toringhom-comp-toringhom.md) | 829 | `result-track:8707a547b7194be5fd8c8a7fce12b3ee5183ea7fecfaef2cb27c016c40a9f454` |
| 136 | `theorem` | [map_pow](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/map-pow.md) | 839 | `result-track:505d4b63796fee94fa8819cf04088f4b382808af6e0e1ec9f11f4e8ee3523e4b` |
| 137 | `def` | [toRingEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/toringequiv.md) | 849 | `declaration-track:b159d493d7b295417e3a9f7b016c8be56585ac8763b873c97a8e6907668169d7` |
| 138 | `def` | [toRingEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/toringequiv-source-edition-2.md) | 859 | `declaration-track:b31ee2bd5cdf44ef2bdd6fea0ad29e8ab521216f6e3a604ef0029d53b8b79989` |
| 139 | `theorem` | [self_trans_symm](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/self-trans-symm.md) | 871 | `result-track:e5a5c6789811e75cf68ee57e140c370de4beb30f881041af79c1e8b272a20e61` |
| 140 | `theorem` | [symm_trans_self](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/symm-trans-self.md) | 875 | `result-track:7bdd848fba8b6ea05d930bc570bf6618e27cac24afc8ffe149afab7370686729` |
| 141 | `def` | [ofNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/ofnonunitalringhom.md) | 888 | `declaration-track:0f9cf201a3059256ad7894c046dc88c1b824ddcc911aa62f2357c73968559feb` |
| 142 | `theorem` | [symm_ofNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/symm-ofnonunitalringhom.md) | 901 | `result-track:d42631ef88d7323c9c727dffa5a06ecb499b2f06bcd21edee4f096f7fc0a08d2` |
| 143 | `def` | [ofRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/ofringhom.md) | 913 | `declaration-track:f3041d2a4285d06bb726f07ef98ad2c96b3b23a23244a2764140b5c7e65d3c47` |
| 144 | `theorem` | [coe_ringHom_ofRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/coe-ringhom-ofringhom.md) | 923 | `result-track:0d5b4212b8d661d3b17c7320ed7101540e70911b3829109d8d5c5f96491dc421` |
| 145 | `theorem` | [ofRingHom_coe_ringHom](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/ofringhom-coe-ringhom.md) | 927 | `result-track:5b32549c1c8d8752fbe1312f71f082284fbd9adbf1cd359ffe47695a7cba486a` |
| 146 | `theorem` | [ofRingHom_symm](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/ofringhom-symm.md) | 931 | `result-track:81546efb7771d862c9e57cd3d5f4a3ab6ca3569cbb905493e320816b1eba407c` |
| 147 | `def` | [sumArrowEquivProdArrow](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/sumarrowequivprodarrow.md) | 937 | `declaration-track:e4e340af1aabd505a4d9ad60a4455487bebbd284fc0538d6ab80ee2a325c1148` |
| 148 | `lemma` | [sumArrowEquivProdArrow_apply](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/sumarrowequivprodarrow-apply.md) | 944 | `result-track:52b5f332f7e17c50833c6f40fdb5573d90e375902822b0fad9c25e5ef83e5bfb` |
| 149 | `lemma` | [sumArrowEquivProdArrow_symm_apply](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/sumarrowequivprodarrow-symm-apply.md) | 949 | `result-track:33069ad8ee50f053f9765971d8c116bb4aea6172bf607a8fb01c7f7ec5983f35` |
| 150 | `theorem` | [noZeroDivisors](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/nozerodivisors.md) | 960 | `result-track:c33342105752314249424a89e8e96b70b9ae6cb61d448493e6f9faaa5d2ed2e2` |
| 151 | `theorem` | [isDomain](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/isdomain.md) | 965 | `result-track:2d7dd7e28642b4ab44db7373e889a21e379202815f3055147a1f1aff020e80f7` |
| 152 | `theorem` | [isDomain_iff](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/isdomain-iff.md) | 971 | `result-track:097f8bc3afb8e2f654f00ad2f799df103359c30a968e6226958892c3f7ae720c` |
| 153 | `theorem` | [noZeroDivisors_iff](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/nozerodivisors-iff.md) | 978 | `result-track:4a62cc0f2df2a55710554f7b591b99ed6d3507f1b875d60c709cb849d94d466c` |
| 154 | `theorem` | [isLeftCancelMulZero_iff](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/isleftcancelmulzero-iff.md) | 982 | `result-track:5397499077f6a5229663becb1256f101ecec9dfba5d1fa7cb1edc23669174653` |
| 155 | `theorem` | [isRightCancelMulZero_iff](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/isrightcancelmulzero-iff.md) | 986 | `result-track:f7062452200225295459294b8aef181f6297b66cb7044b3c11a63b2229528445` |
| 156 | `theorem` | [isCancelMulZero_iff](../../../../AssociativeRingsAndAlgebras/RingEquivPublic.lean/declarations/iscancelmulzero-iff.md) | 991 | `result-track:dc42a4031ed28e90e17ab5196a9a5c876e131352e6c4c103a7db441c7efe5341` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01d2b88deb55a59dc96587cf4cdcb31606162a84d6776f3076b6e4161837245e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Equiv/Variantdfded57ebfbf1f5248f53d855d886068328720afd5ee87e9ade48d7508bc5e14.lean","GRWTSK/_verification/specifications/Algebra/Equiv/Variantdfded57ebfbf1f5248f53d855d886068328720afd5ee87e9ade48d7508bc5e14.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
