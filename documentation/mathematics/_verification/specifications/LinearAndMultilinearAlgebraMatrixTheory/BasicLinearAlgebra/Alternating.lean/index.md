# Verification target: Alternating

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "842689df5f4245e6656367412382e03726ee3e18",
  "lexical_observation_count": 129,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Alternating/Variante7721e4027e2a468518aae3cf26d904c4a7de24fa7e19831d106e70cfa6d2785.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `842689df5f4245e6656367412382e03726ee3e18`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Alternating/Variante7721e4027e2a468518aae3cf26d904c4a7de24fa7e19831d106e70cfa6d2785.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Alternating/Variante7721e4027e2a468518aae3cf26d904c4a7de24fa7e19831d106e70cfa6d2785.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.Quotient` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Sign` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Subgroup` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.Basis` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.TensorProduct` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AlternatingMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/alternatingmap.md) | 73 | `declaration-track:a045e3b118291f1b36e8bdcaad1af55eeb807eabf629d254c5adedfff452dd56` |
| 2 | `instance` | [funLike](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/funlike.md) | 100 | `declaration-track:aa2cb0b36005d8469e3192674d44a816fa085c2830ad50cfdff406fbec6051d0` |
| 3 | `instance` | [coeFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/coefun.md) | 109 | `declaration-track:c9591a52b3b3d35f138e7be17b47a2cceacb06a5d5f17680cb81489b3b22c76c` |
| 4 | `theorem` | [toFun_eq_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/tofun-eq-coe.md) | 116 | `result-track:f990399355436a95f423bbb7cfa5ca3e26103ca01c54f38ad11d7e01879030ed` |
| 5 | `theorem` | [coe_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/coe-mk.md) | 122 | `result-track:07bf11d394a44075de7454d3ffed4f78c088070d16c3ff3ad12e15d24e0ca7da` |
| 6 | `theorem` | [congr_fun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/congr-fun.md) | 127 | `result-track:20d529119bfb3bc602a69a23252eb749296f02fe2ee4fc54ab5662af0737438c` |
| 7 | `theorem` | [congr_arg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/congr-arg.md) | 131 | `result-track:7bb91ea277bd99bdf7586a5be80c9d3f7fb1c6bdbfe322bb004101ec486a9e62` |
| 8 | `theorem` | [coe_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/coe-injective.md) | 135 | `result-track:15e2e2f5333ba6d961c99deb50969b6b248cbe34a3391f4c305f324d90e033d0` |
| 9 | `theorem` | [coe_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/coe-inj.md) | 140 | `result-track:e7a7c92ff69d0a715468568c8833240dc55ae8b63336a1231f94b2c15f5b8e99` |
| 10 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/ext.md) | 145 | `result-track:34186cd6df035a49a1a2c611fe883951f0757b3632e01e267f22830db1cefc44` |
| 11 | `theorem` | [ext_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/ext-iff.md) | 149 | `result-track:c3b9b26a6029acd1625743ece0f0387dec1fb48cd35d21c9fdc63be5dd2756e6` |
| 12 | `instance` | [coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/coe.md) | 155 | `declaration-track:9f74100002b0dd5c239879ce47828d31ecf9840b7774e4834e1bb7fb935e8710` |
| 13 | `theorem` | [coe_multilinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/coe-multilinearmap.md) | 160 | `result-track:39df0900c08ef9eabaeee90edd8fd3b3174f6b730887133c6c8588a23e56b113` |
| 14 | `theorem` | [coe_multilinearMap_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/coe-multilinearmap-injective.md) | 164 | `result-track:f51e7eb02ebe320096112884d1edce16d2e2e5d860533426da9931068d109be6` |
| 15 | `theorem` | [coe_multilinearMap_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/coe-multilinearmap-mk.md) | 174 | `result-track:515541b3834accc15eb338c8af45953642bb5b9347a737966ffc227d35c3ba91` |
| 16 | `theorem` | [map_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/map-add.md) | 190 | `result-track:f85942c8918f3a5a1a1972d608d8611b523adabf6705d3aa5087523136782e11` |
| 17 | `theorem` | [map_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/map-sub.md) | 196 | `result-track:ad11186d412b650e3b4e22edaee113234fdbda4d6b59de86864c4e424c8c4b88` |
| 18 | `theorem` | [map_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/map-neg.md) | 202 | `result-track:b063666508423fe68db93a6a3b891c4d255240ba2680cd858c768ea83016a126` |
| 19 | `theorem` | [map_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/map-smul.md) | 207 | `result-track:1fb40cc0c384cb05ed4f952ad636316ca8953ac31c18407b418353d8d737319a` |
| 20 | `theorem` | [map_eq_zero_of_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/map-eq-zero-of-eq.md) | 213 | `result-track:7a1f149871c7a1aea67016e74c4ee1024cdcf005639e3dd67362117c4271468e` |
| 21 | `theorem` | [map_coord_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/map-coord-zero.md) | 217 | `result-track:32944889c8213192d9554157362fc08e38159eed0bf5447572f71b3f2e22faad` |
| 22 | `theorem` | [map_update_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/map-update-zero.md) | 222 | `result-track:50c9577b9f3f87cc8640ec29b1903145b5f5a2434c320be58308c269cf7ffae8` |
| 23 | `theorem` | [map_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/map-zero.md) | 227 | `result-track:d2b669323263e13244d71591d124f00a28b466c38f07c9485e9c115a63e1d827` |
| 24 | `theorem` | [map_eq_zero_of_not_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/map-eq-zero-of-not-injective.md) | 231 | `result-track:799bb910b11349ad3f953019be042285ea8e9aa67c7e0a90cfa739d42cf4e749` |
| 25 | `instance` | [smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/smul.md) | 250 | `declaration-track:249b1e186b8a17a75a683c79a85d98bd575d656e639f9c54c901a38e4ea4d8ed` |
| 26 | `theorem` | [smul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/smul-apply.md) | 257 | `result-track:073b0b5c131039bf959939b9a600c2e9ba6b5ec9c13c1c564c14c8ae04e153a7` |
| 27 | `theorem` | [coe_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/coe-smul.md) | 262 | `result-track:0d1fd41abc731c39c06cb22f1b4704a90565c172e6a8ed74c7230684980049cf` |
| 28 | `theorem` | [coeFn_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/coefn-smul.md) | 267 | `result-track:228f9df3fedfed79fc4aadd0cb4089b614c8dfe9cc9c3e4b5342e83990238749` |
| 29 | `instance` | [isCentralScalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/iscentralscalar.md) | 271 | `declaration-track:7331c19284691fa9c515c678726a132d99939cadf4e5856c8a918302a6846aeb` |
| 30 | `def` | [prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/prod.md) | 280 | `declaration-track:eabe2b1dbd763f9ff8358282c2975a7f6ff932450b9465a93df565154cece16a` |
| 31 | `theorem` | [coe_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/coe-prod.md) | 288 | `result-track:0365ed5c59f5a58e2904c71a74072bf4ee25e0b73d21ad41c91d56c02b0cd1bf` |
| 32 | `def` | [pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/pi.md) | 296 | `declaration-track:55f586d297d346d88986fcfadeb1809781c1035fb48858b0f1ee4010527bab70` |
| 33 | `theorem` | [coe_pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/coe-pi.md) | 304 | `result-track:658a91d890a8684bda9a93bfbcfef2bda09dded8b7def8a52e774d132aa6a1ca` |
| 34 | `def` | [smulRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/smulright.md) | 313 | `declaration-track:145dc89c713813e9ca11ecc69650e7fb3c2022c701f6ddec4000a8ad282c6a5b` |
| 35 | `theorem` | [coe_smulRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/coe-smulright.md) | 321 | `result-track:1933dfff1ff2e0f903e87d90ae2a40d2e460495717aed58b03506ab6751a0eb2` |
| 36 | `instance` | [add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/add.md) | 327 | `declaration-track:2cab3f19880c6ef949a8213d6d8f5a91f4483820099e470dce887b58f671d5cf` |
| 37 | `theorem` | [add_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/add-apply.md) | 335 | `result-track:bfca04d87cf10ff5a004e283c026a5066818b0f3e1431f86f86f5ab449b5b467` |
| 38 | `theorem` | [coe_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/coe-add.md) | 340 | `result-track:3f3b1a187eaa04e8a6de7b5f65eca4464ab7265d40918e45bd598111b78bd747` |
| 39 | `instance` | [zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/zero.md) | 344 | `declaration-track:3ba94d36cf28ac7a68cbfb75ab24df2f94ccbf274ae3cc93705a630caa11572e` |
| 40 | `theorem` | [zero_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/zero-apply.md) | 350 | `result-track:5f20cb184905232434ed6ef7a57164c99d93acac45402de9736382c2587a9ac3` |
| 41 | `theorem` | [coe_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/coe-zero.md) | 355 | `result-track:0c477261c446617a5870553c49cc1294c60b1efffb61c8390fdf3d2995165705` |
| 42 | `theorem` | [mk_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/mk-zero.md) | 360 | `result-track:eb0685638739586ea58a9379dfe56d96a5553bb796d9d5a27f7e094e057bb5e7` |
| 43 | `instance` | [inhabited](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/inhabited.md) | 364 | `declaration-track:a58087fd25fc74e098b3b5ba1dcf1de8df687ae493b7dfe3274ec7921965421c` |
| 44 | `instance` | [addCommMonoid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/addcommmonoid.md) | 368 | `declaration-track:27cb8b8bb73315529bb02df68dd53fd48a08a2bcdd8a9489cc655af6e50bbd0a` |
| 45 | `instance` | [neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/neg.md) | 372 | `declaration-track:1aa544a1a8abc9fbd3314555d46bf51388f28ad523054b60a97e9e1dd3bc5d5f` |
| 46 | `theorem` | [neg_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/neg-apply.md) | 379 | `result-track:e8ec36d4e501e82278b3e386d14fc189b22695229ea8378f1a5f466f38b0d3c9` |
| 47 | `theorem` | [coe_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/coe-neg.md) | 384 | `result-track:b87fb405f68675b7573a61972322828ebf12b51a4ee599476c45d1710ea00bd8` |
| 48 | `instance` | [sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/sub.md) | 388 | `declaration-track:4824e036d999e08e2a5948a6bf661cd767eb8cbd8f737cc56a9484894a97fa8e` |
| 49 | `theorem` | [sub_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/sub-apply.md) | 396 | `result-track:2e453c6bd20bce3ee0e9af68e4203be49e64217754574241d1ed538021150c6b` |
| 50 | `theorem` | [coe_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/coe-sub.md) | 401 | `result-track:646a5c961d315e89b403ce3aa478704902cdcc5cb72f41878cbd27a2fdb891c6` |
| 51 | `instance` | [addCommGroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/addcommgroup.md) | 405 | `declaration-track:a99597f3c51c76fa96818f8dfb9bdcaf3ebfd783a18ed791ef794a5c04b5e00a` |
| 52 | `instance` | [distribMulAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/distribmulaction.md) | 413 | `declaration-track:e4abe6e8b531c092dd79af8979eba321d768ce2e1ed56739b8ec740e3c54424e` |
| 53 | `instance` | [module](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/module.md) | 428 | `declaration-track:acbb1251847bef01e69b66856f918f38195a39fd3e588db7dbdf84e75566f450` |
| 54 | `instance` | [noZeroSMulDivisors](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/nozerosmuldivisors.md) | 433 | `declaration-track:9e84c645a08e1b6faba5990411c992a601634ef438822504f6a268faf9183761` |
| 55 | `def` | [ofSubsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/ofsubsingleton.md) | 447 | `declaration-track:a4df2fa06a17e505fcfb7b33eed29ce7bebf1da939612f5894037fe4de5629cb` |
| 56 | `def` | [constOfIsEmpty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/constofisempty.md) | 458 | `declaration-track:169b6d2da495b00f2e4b10e72242f17e0ce73900c11244eff4358c3d084744b3` |
| 57 | `def` | [codRestrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/codrestrict.md) | 469 | `declaration-track:1fe19b2e98378c30ec318c8c9d7fe0489b43b933677fa2957aed389e27174112` |
| 58 | `def` | [compAlternatingMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/compalternatingmap.md) | 489 | `declaration-track:5130968ace8a40b49070e72f1bd8c78a76c678b05c8e800e868f2838c999004e` |
| 59 | `theorem` | [coe_compAlternatingMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/coe-compalternatingmap.md) | 502 | `result-track:56d89b04eb18d6812a81f8c9e5cf7398c5bc21f19ba120ccca8a85acff78817c` |
| 60 | `theorem` | [compAlternatingMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/compalternatingmap-apply.md) | 508 | `result-track:01207bde8250c90f10d9c1e234929c14e51d60aeda33eb28f427592c8c300cb6` |
| 61 | `theorem` | [smulRight_eq_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/smulright-eq-comp.md) | 513 | `result-track:1e0f7913217d9394997aef8a84049effa932e128ae7a48b3d5c55de064905d30` |
| 62 | `theorem` | [subtype_compAlternatingMap_codRestrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/subtype-compalternatingmap-codrestrict.md) | 520 | `result-track:dc892207b6a8f6180eb8e78d8cdfa32ce15fdeb78839292d7e915a0029e14727` |
| 63 | `theorem` | [compAlternatingMap_codRestrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/compalternatingmap-codrestrict.md) | 526 | `result-track:129167243f820518baa0ec69d792da171aac6606aad3ac50304c7932a6b4b527` |
| 64 | `def` | [compLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/complinearmap.md) | 543 | `declaration-track:5e5a553c25d9cfbee3ca788d675b9c4908142fc893f84a24d0d60343eb7edfd3` |
| 65 | `theorem` | [coe_compLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/coe-complinearmap.md) | 548 | `result-track:b157a778815b0c08697aeaaa3256a2cc040f66be6df3a109c2199d69ffe18c8c` |
| 66 | `theorem` | [compLinearMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/complinearmap-apply.md) | 554 | `result-track:884153d6d75726db9265e23bda4a949093aea4384acbbd268119fcebbd19a166` |
| 67 | `theorem` | [compLinearMap_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/complinearmap-assoc.md) | 561 | `result-track:2a0c0dedef71870dfc87310e61440c719495ac3d25575738ee03989ce3116bad` |
| 68 | `theorem` | [zero_compLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/zero-complinearmap.md) | 567 | `result-track:c44c66a75ebc87406c4d9a29c48270e22ab635607ee63caabf0673c9ba943dd0` |
| 69 | `theorem` | [add_compLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/add-complinearmap.md) | 573 | `result-track:a1305f5acdefa7a7b3044d3a94ad2b400fef7f087401233bbdb0948ac54c6469` |
| 70 | `theorem` | [compLinearMap_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/complinearmap-zero.md) | 580 | `result-track:b2f0882baa6214e86e6a5a80af514b4120c6b023938a087a0e664a028a39020d` |
| 71 | `theorem` | [compLinearMap_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/complinearmap-id.md) | 590 | `result-track:20c7fcc157b938629e4a3bb10d471f052020091c0a0257b3889a905964c09fbb` |
| 72 | `theorem` | [compLinearMap_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/complinearmap-injective.md) | 595 | `result-track:673fbc2da3e237a61e555cf457655e55608ae46e7cc5e94be8b40a34c392ed36` |
| 73 | `theorem` | [compLinearMap_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/complinearmap-inj.md) | 600 | `result-track:f8acfa22c89e578fcfc4d1b7c14a231b8e60951251d1c0ac05e6590456d4e018` |
| 74 | `def` | [domLCongr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/domlcongr.md) | 612 | `declaration-track:a5fc33bce643287b5b289a729fc93fa461fb427e5343ce79ed2ebff3f5b814a1` |
| 75 | `theorem` | [domLCongr_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/domlcongr-refl.md) | 623 | `result-track:1cfacf9757fe57ac6a3929558de2e9c21821f8459e97cf17a788b5552012397b` |
| 76 | `theorem` | [domLCongr_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/domlcongr-symm.md) | 628 | `result-track:c908c70e32b24532bff9f5812c31de2a3e08225857bb56ac16869a55b51d7f92` |
| 77 | `theorem` | [domLCongr_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/domlcongr-trans.md) | 632 | `result-track:9a120f1e8594a6fd4944ed5211b3d6895429a1332c3351baa89e5e59b25a8032` |
| 78 | `theorem` | [compLinearEquiv_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/complinearequiv-eq-zero-iff.md) | 642 | `result-track:120baa90f825b5f1a81db59dba04585a1c9e6bd91db53baf526e4bd73c5444ef` |
| 79 | `theorem` | [map_update_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/map-update-sum.md) | 666 | `result-track:2855f51a302a47e580eecdf1e498ea03ef125c9fc44231a485f7dd3110ae5d89` |
| 80 | `theorem` | [map_update_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/map-update-self.md) | 681 | `result-track:21a300695eeed99e311619909020f82492923ab3c5dcb3b9cd51eef5d7d9561c` |
| 81 | `theorem` | [map_update_update](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/map-update-update.md) | 686 | `result-track:c1097ffef0d36a2ec2042a1dfa3a512e57f37293b140488b272e49d9cf0e4e1a` |
| 82 | `theorem` | [map_swap_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/map-swap-add.md) | 692 | `result-track:ab944395d536193ef9d3c159a044bd78a2d45efc5bcde4086e24c10b8e189c79` |
| 83 | `theorem` | [map_add_swap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/map-add-swap.md) | 700 | `result-track:9774b241b97fb148c5f84e6f892447ff8b2457bdcdbb6ef7b8f08d8be254d1af` |
| 84 | `theorem` | [map_swap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/map-swap.md) | 706 | `result-track:77001668dd344fadcd2c357d0723e8da54d97dfd6ef07f8d23dc8001ba9bf58b` |
| 85 | `theorem` | [map_perm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/map-perm.md) | 710 | `result-track:6806c7622083d25f1df0a02d11132d91dc688ec6123f5a3fcee9bd8c2b39cb5c` |
| 86 | `theorem` | [map_congr_perm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/map-congr-perm.md) | 720 | `result-track:9260fd5e584683e50bf0886da43a06c7e2d12a23358a4fb6ad6d96e618690c2a` |
| 87 | `def` | [domDomCongr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/domdomcongr.md) | 732 | `declaration-track:b958048cfd4b42a734d6932ad5ce2b9a6f115b6a50322691a16f977df80ff683` |
| 88 | `theorem` | [domDomCongr_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/domdomcongr-refl.md) | 742 | `result-track:bb683641d78544a814dbf3ad11378c91f1d545462cca00a4fc7ffb99fba874ff` |
| 89 | `theorem` | [domDomCongr_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/domdomcongr-trans.md) | 746 | `result-track:7efa6323726e93d594f7e0e14f7768c7147b74c07d6dd4f7caf31b2ef689d0d5` |
| 90 | `theorem` | [domDomCongr_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/domdomcongr-zero.md) | 752 | `result-track:8dc5b86b7f33fd788ae2b0b4342adae354f5235d1402113246c9749e19555287` |
| 91 | `theorem` | [domDomCongr_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/domdomcongr-add.md) | 757 | `result-track:9113af49617b064ce070d89c1963e03ff3231258f42a39db3ee8eb5f6e6f866e` |
| 92 | `def` | [domDomCongrEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/domdomcongrequiv.md) | 766 | `declaration-track:6fc28198b92093a3b3a99c74dfccdc10015b2d1910ab3e62b5d1bacf7f5df1e1` |
| 93 | `theorem` | [domDomCongr_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/domdomcongr-eq-iff.md) | 782 | `result-track:a97de7455e10cdae8db0ee90ae27c8a9f916967367bdd74f1431b32655aba0a6` |
| 94 | `theorem` | [domDomCongr_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/domdomcongr-eq-zero-iff.md) | 788 | `result-track:89754d09df160bf7759819bd335feef3b2dfbb25124b6f1d7a77b616ed262b81` |
| 95 | `theorem` | [domDomCongr_perm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/domdomcongr-perm.md) | 793 | `result-track:c3f513d9b5488c4d2422f31d34d169ab21fb8d09c72228c0e248e7308bef7cdf` |
| 96 | `theorem` | [coe_domDomCongr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/coe-domdomcongr.md) | 799 | `result-track:648243a1971f6cf493a933b0cbfa926b4356688602cbd6496b2a56cbe0bb9a83` |
| 97 | `theorem` | [map_linearDependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/map-lineardependent.md) | 807 | `result-track:36abacd25cf4fdf47d98a2a39441a8d6b9d947a31c489f8385b3ecae44148107` |
| 98 | `theorem` | [map_vecCons_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/map-veccons-add.md) | 830 | `result-track:38d4021c0995cf54b6c888b25bb4e228abeb7a388297cc22939b9c122e913425` |
| 99 | `theorem` | [map_vecCons_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/map-veccons-smul.md) | 836 | `result-track:1f9d45cd72c12bee4a0eaf228a0b0e9b8991a7ee9ff11b3964998afa234e2531` |
| 100 | `theorem` | [alternization_map_eq_zero_of_eq_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/alternization-map-eq-zero-of-eq-aux.md) | 853 | `result-track:4a4a956095818b9a2c8940f96a362604c3e55d3b982cdde06dafe20334bbbc4b` |
| 101 | `def` | [alternatization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/alternatization.md) | 866 | `declaration-track:02c475945462bcb35ff07c07454914d501681b82ddfe70ff6baf1fd59350b5c7` |
| 102 | `theorem` | [alternatization_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/alternatization-def.md) | 882 | `result-track:c965966a9589da1896e6a228fc20f754caac87c7f940e8485812cb9a383f2bb0` |
| 103 | `theorem` | [alternatization_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/alternatization-coe.md) | 887 | `result-track:89101c159ef390434972f169b1676e4aa059c46ac0135b4596754aecedd64e4c` |
| 104 | `theorem` | [alternatization_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/alternatization-apply.md) | 892 | `result-track:5b6df909c3edea6160522a76e8a09934ed09efe59d5ad9e2d966fe5419941902` |
| 105 | `theorem` | [coe_alternatization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/coe-alternatization.md) | 903 | `result-track:3d8d4e7aed8f580d145f192998a23dad8da5a22effae774a282e8c5db65da838` |
| 106 | `theorem` | [compMultilinearMap_alternatization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/compmultilinearmap-alternatization.md) | 919 | `result-track:517037499c989fba86db851cd34a0ef6a5952b9d0bde96c192a689226f2e492c` |
| 107 | `abbrev` | [ModSumCongr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/modsumcongr.md) | 943 | `declaration-track:071aa0ac2c5b86f2f52a0e538ed51acb7b1ba3e39ca1162361d7c635ef0f2f15` |
| 108 | `theorem` | [ModSumCongr.swap_smul_involutive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/modsumcongr-swap-smul-involutive.md) | 947 | `result-track:61c6ec773392a41fb65803011d80b3743b795a2152c67ac9a17f1deb85d14703` |
| 109 | `def` | [domCoprod.summand](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/domcoprod-summand.md) | 963 | `declaration-track:46cbe16ec6ef456bc774f28c7b8863a501aedc2d99bf9fafea8d1912cfd1ff72` |
| 110 | `theorem` | [domCoprod.summand_mk''](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/domcoprod-summand-mk.md) | 986 | `result-track:1e2b34b222e9ee4f05fcfe2aa8c337f2122e9e120c3c3378e8691d65e0efc835` |
| 111 | `theorem` | [domCoprod.summand_add_swap_smul_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/domcoprod-summand-add-swap-smul-eq-zero.md) | 996 | `result-track:b74c3ce7f4f4e62563d44406fb1deee786f48d26088cec4fb72677d8dfc2679d` |
| 112 | `theorem` | [domCoprod.summand_eq_zero_of_smul_invariant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/summand-eq-zero-of-smul-invariant.md) | 1014 | `result-track:38fb5abee5edfa5735a68c624e095c7744ace1c7222ed22d61cc822e7876ecdc` |
| 113 | `def` | [domCoprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/domcoprod.md) | 1074 | `declaration-track:185cbd428f54088abc0b55e5de0c05f6cdf29630c7c1e91bb48f217bb7875a0f` |
| 114 | `theorem` | [domCoprod_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/domcoprod-coe.md) | 1090 | `result-track:c3f682d5ee1540df6f7ae81bef375816144739a2cc609f4afc07a5c689d4df64` |
| 115 | `def` | [domCoprod'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/domcoprod-source-edition-2.md) | 1098 | `declaration-track:916645eb8742e1c8dcc4e51148e5a0037f5d687800f38fc839e528861f6fafc6` |
| 116 | `theorem` | [domCoprod'_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/domcoprod-apply.md) | 1120 | `result-track:541b2af2075aec2c4eb8c2459765b498214da0894103ef427f1c6e96ed027dc3` |
| 117 | `theorem` | [MultilinearMap.domCoprod_alternization_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/multilinearmap-domcoprod-alternization-coe.md) | 1130 | `result-track:8513d80be2a39aae706423aab95cb6420715c0efa5f2bf05d2db2a37bb966e2d` |
| 118 | `theorem` | [MultilinearMap.domCoprod_alternization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/multilinearmap-domcoprod-alternization.md) | 1148 | `result-track:950d605b08f3f6d7ef12fa754822c9582b23bf43871864bbb7f51fa352475583` |
| 119 | `theorem` | [MultilinearMap.domCoprod_alternization_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/multilinearmap-domcoprod-alternization-eq.md) | 1190 | `result-track:34149e74ec6684220424d0c722b26093d155e19bb1b6478b9e24ebed38a0a1f2` |
| 120 | `theorem` | [Basis.ext_alternating](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/basis-ext-alternating.md) | 1216 | `result-track:d20fc9cf36c9cd0ac204c939b1ca483a2c380eb706e3597291b98f834b5e1b94` |
| 121 | `def` | [curryLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/curryleft.md) | 1248 | `declaration-track:1b92f6af172e58f013852a60ff1cebea0735aaef5c0592570b38e36897264840` |
| 122 | `theorem` | [curryLeft_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/curryleft-zero.md) | 1262 | `result-track:f1c773167437f54d9599f2f0372d1c4ca5b60c5e6b158acf5d7ff508eff5013b` |
| 123 | `theorem` | [curryLeft_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/curryleft-add.md) | 1267 | `result-track:cad6e94bcbfe60ae7c2756761fd49ca0b058699dae2fc1b923f38a3c7f0c4cae` |
| 124 | `theorem` | [curryLeft_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/curryleft-smul.md) | 1273 | `result-track:c1262bfa4b980fe327f637c0bc2bbf07119aa5cd882017c1017ee2bad36c3656` |
| 125 | `def` | [curryLeftLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/curryleftlinearmap.md) | 1281 | `declaration-track:448df9da52a2a27f6c80f920f5c198fba20049233a461e65e73ba15565b6f123` |
| 126 | `theorem` | [curryLeft_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/curryleft-same.md) | 1291 | `result-track:992f2bd58a66a7f0a076373dc773878d036c79a47d733694a81737ed1e9744f8` |
| 127 | `theorem` | [curryLeft_compAlternatingMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/curryleft-compalternatingmap.md) | 1297 | `result-track:70363780b819ae3ab837009134e110b25dc1d2b3464f3dd605e621dfeb6eb703` |
| 128 | `theorem` | [curryLeft_compLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/curryleft-complinearmap.md) | 1304 | `result-track:c9b2a4d984fc42df2a5efefc68449e021b85f3bfc9253417fafdbf5c697cbe8b` |
| 129 | `def` | [constLinearEquivOfIsEmpty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Alternating.lean/declarations/constlinearequivofisempty.md) | 1318 | `declaration-track:9539483b1989b4f3377a6c0413f47d836ef45e43ee637a8704b73fd1042cd7e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3cc6c8c0dd8ee3301b2b16f90a6d773cdd84420d0ef400d28a8d6ebeaddce5c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Alternating/Variante7721e4027e2a468518aae3cf26d904c4a7de24fa7e19831d106e70cfa6d2785.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Alternating/Variante7721e4027e2a468518aae3cf26d904c4a7de24fa7e19831d106e70cfa6d2785.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
