# Verification target: Zero Side Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8003f91d09d94a4485213d0a819e7dd2ac406321",
  "lexical_observation_count": 135,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ZeroSide/Variant239d6e0d6b187f0713ca8ef0955964876f99e7f28f29504f7149f555799a898a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8003f91d09d94a4485213d0a819e7dd2ac406321`.

Source path: `GRWTSK/Topology/GeneralTopology/ZeroSide/Variant239d6e0d6b187f0713ca8ef0955964876f99e7f28f29504f7149f555799a898a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ZeroSide/Variant239d6e0d6b187f0713ca8ef0955964876f99e7f28f29504f7149f555799a898a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.LinAlg` — import line 26; external provider; requires a separately pinned dependency.
- `Zeta23.Defs` — import line 27; external provider; requires a separately pinned dependency.
- `Zeta23.Assembly.Inputs` — import line 28; external provider; requires a separately pinned dependency.
- `Zeta23.Hypotheses.GzGp` — import line 29; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Order` — import line 31; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [rank_add_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/rank-add-le.md) | 54 | `result-track:b4f285b6db75c4ee5efa6206f03614f0e67b7f7bbcfaa2b1fa2148887df17b06` |
| 2 | `lemma` | [rank_sum_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/rank-sum-le.md) | 64 | `result-track:59ad03855efc7f58260bcb83e6fc6140da05a3f7723624a528fed30d9301697c` |
| 3 | `lemma` | [rank_smul_vecMulVec_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/rank-smul-vecmulvec-le.md) | 76 | `result-track:c9b543b9ef19a03e0b9619282ead6c9f40a01ca327b688d51affb1347c8753f7` |
| 4 | `lemma` | [hermForm_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/hermform-smul.md) | 82 | `result-track:62bba24be9b1ea950a13373640997d38beae4f1dd69ca5252b62e4ee8b790cc5` |
| 5 | `lemma` | [posIndex_le_rank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/posindex-le-rank.md) | 88 | `result-track:06bb598c73c61ad664f898ad60a7b42afee8f12612e018fc3c87b6321b44043f` |
| 6 | `lemma` | [posIndex_eq_zero_of_hermForm_nonpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/posindex-eq-zero-of-hermform-nonpos.md) | 96 | `result-track:cac6ec3b20c67171b251680f11f60a39b8276857fa106ec66230fded7ec235c3` |
| 7 | `lemma` | [posIndex_neg_eq_zero_of_posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/posindex-neg-eq-zero-of-possemidef.md) | 105 | `result-track:369615ac9fe10756964215a98722ae0927018f67eb0baf5a22ce26836569fafa` |
| 8 | `lemma` | [posIndex_sub_le_rank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/posindex-sub-le-rank.md) | 114 | `result-track:570014f3e4266eaaa211ef7324db0625dc98c6cb72fabf81a5ec557324546f9e` |
| 9 | `lemma` | [posIndex_smul_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/posindex-smul-pos.md) | 121 | `result-track:d86d8cf9a03278e27b97409fe84ebc08a6ffe10e4b4001b27d9b9a2b83aa8124` |
| 10 | `lemma` | [rank_smul_of_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/rank-smul-of-ne-zero.md) | 137 | `result-track:6709e2089c10df7588f0ddf3ca860425fa7f9f304683cf6e7e86b0c0ce20cd79` |
| 11 | `structure` | [ZeroBlockData](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/zeroblockdata.md) | 169 | `declaration-track:42bc7c7243d63070454316f6df6276c4aa9d6a01ada157728a4514746816a5ed` |
| 12 | `def` | [onLine](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/online.md) | 188 | `declaration-track:3cc262aa8b7043b9f0315a7df8f30daba93dee50c406c84e61a285d2a7cc1965` |
| 13 | `def` | [S₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/s-source-edition-4.md) | 191 | `declaration-track:c43ec83e2ad326a01fbf37f7472a94f03714cb4bc0b9c3ea2a422d50cff35d44` |
| 14 | `def` | [S₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/s-source-edition-2.md) | 194 | `declaration-track:32eff1bfab2089cff4e08e0eb77aff6a73ae04afb43ee4572a4ce69f2e27abd1` |
| 15 | `def` | [s₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/s-source-edition-3.md) | 197 | `declaration-track:b3cd5e302005859f63856b72b46cada579fe7d59af56f1953be8b75349dcde91` |
| 16 | `def` | [s₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/s.md) | 200 | `declaration-track:31ecf1d4d5801e6da9d1b1c124c4e6d154b32e72a16e3d659e52756601fbd682` |
| 17 | `def` | [Ncount](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/ncount.md) | 203 | `declaration-track:0fdb7e4318adc69d57c27c74219c362ffdb786bf340332deb2725bd741cc7757` |
| 18 | `def` | [Non](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/non.md) | 206 | `declaration-track:f98b02ab1f4e2e419f25bfa94ef1b899a88b95890b7aff7b76c592f464699e81` |
| 19 | `structure` | [PairReps](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/pairreps.md) | 210 | `declaration-track:9a69bf4e428f5047ca35322f1b21bba7b634d6a3ce524104d4dfb50b54bdd050` |
| 20 | `def` | [PairReps.p](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/pairreps-p.md) | 219 | `declaration-track:bb9df798f796b990a0b065bfd77329cca6d86f37a8f1eccc267804bc7a57c20d` |
| 21 | `def` | [pairRepsOfLinearOrder](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/pairrepsoflinearorder.md) | 222 | `declaration-track:098fa42e6516ead999546633934175d1b1c90608a66ba9e14e6a6408f85eeed0` |
| 22 | `lemma` | [mem_onLine](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/mem-online.md) | 237 | `result-track:b1067085dab6edb59abe388df188265b9376e26d00d1f8801f2f55d8f38bee26` |
| 23 | `lemma` | [sum_split](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/sum-split.md) | 240 | `result-track:b05ce6506128883a724531d0d4a4a58991e427dec59e5546c96551f4243b7f46` |
| 24 | `lemma` | [card_eq_onLine_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/card-eq-online-add.md) | 270 | `result-track:078ce13832fe68f05414f679a48be403c52270e2668243d5fd5720f70f49fc5e` |
| 25 | `lemma` | [onLine_eq_S₁_union_S₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/online-eq-s-union-s.md) | 274 | `result-track:7f5363c5e4e54d3394755202e8026fb9fef779d6f585f73f660d2456d50cc761` |
| 26 | `lemma` | [disjoint_S₁_S₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/disjoint-s-s.md) | 284 | `result-track:2f54b5a195d9575f7c965200ca377ad70714f22aa25831d40d700442ea95f4e4` |
| 27 | `lemma` | [card_onLine](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/card-online.md) | 290 | `result-track:f25c0ca3a051e68a2ac5859a41c3ad3ab790919bc9f4353829f32db91c0a2f3e` |
| 28 | `theorem` | [card_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/card-eq.md) | 294 | `result-track:87d7cfe9e0d3b39413ef5445778d0d362ab246f0e82b4f765b433616cf433747` |
| 29 | `lemma` | [s₁_add_two_s₂_le_Non](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/s-add-two-s-le-non.md) | 298 | `result-track:93fb8483ae275d2c6f566cbf0b6460befeaaa7606c8102ad361b212cd8f30095` |
| 30 | `theorem` | [Non_add_two_p_le_Ncount](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/non-add-two-p-le-ncount.md) | 309 | `result-track:88239acb4486f1fd63f53ec53478d7ac8ad55a59f2c5f9af1f94ffdcdf541934` |
| 31 | `theorem` | [s₁_add_two_s₂_add_two_p_le_Ncount](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/s-add-two-s-add-two-p-le-ncount.md) | 317 | `result-track:57f0ea1e4f3b0c403a8c08d3cc802367e917a69eaff2647a824c99d78d01d1f8` |
| 32 | `def` | [blockA](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/blocka.md) | 324 | `declaration-track:5be0bfa05e5e03ed1690a5c08530e5d3aaf70710932792b30e542cc4a8148bd4` |
| 33 | `lemma` | [blockA_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/blocka-apply.md) | 326 | `result-track:225727d5e10c6e3d16ca0c3635c33fdd5ba78872189f085f1699b59ecf2cc629` |
| 34 | `lemma` | [star_v_of_onLine](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/star-v-of-online.md) | 330 | `result-track:f52dcd5dc58de9bc943fb0d67cf1cf1e8c51987ffa9553df54f7a5000b7d411f` |
| 35 | `theorem` | [blockA_isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/blocka-ishermitian.md) | 334 | `result-track:5d8a7d08013f7338e431ca4f9daf14db12274cb5f3eb5178d27de5d81aaefe49` |
| 36 | `lemma` | [blockA_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/blocka-transpose.md) | 341 | `result-track:6ff2cfcde2b479afca905dd0bec2d785b810083de61c59fc36b63de5c75cc3b1` |
| 37 | `lemma` | [star_blockA_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/star-blocka-apply.md) | 347 | `result-track:ac1cca15e3f92ef6289acbd9853e6bbab1c1a397ddb54470b0a24d7205b4bc1d` |
| 38 | `def` | [xv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/xv.md) | 355 | `declaration-track:ba5cc6e8d87d9572e27968c2cd9bb3d1040da85b5c16ef55e0cb7071a864aac1` |
| 39 | `def` | [yv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/yv.md) | 357 | `declaration-track:77f94ffc10db115f625957259da7e223dcb8d8736ff870aebd90fd9285f9e09e` |
| 40 | `lemma` | [star_xv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/star-xv.md) | 360 | `result-track:3d5904f9183f1aa93bbb4858ce133222aa47025b8c4515b485d6e9589357c381` |
| 41 | `lemma` | [star_yv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/star-yv.md) | 363 | `result-track:99dd5ab951564c6365b28c445ef478c9b6974edeae83c589af4a3f5a06aed884` |
| 42 | `lemma` | [pair_term](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/pair-term.md) | 368 | `result-track:f41131c5ba4b47029988dc1bfab0bca85da8a8d24b1a64ccb290237fa72a4ff1` |
| 43 | `def` | [onPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/onpart.md) | 380 | `declaration-track:0fedf252f579ededdc9b4d2c3b548782448131e307590cc5e24533d638600fb7` |
| 44 | `def` | [rePart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/repart.md) | 382 | `declaration-track:ec3bd20ee2e5542b2c6a5c637eb4dad648ca814ecb74dec630c0b318a5c8bc99` |
| 45 | `def` | [imPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/impart.md) | 384 | `declaration-track:c67f0c29b260625a55262d627d23b3279683e28dee3000ba377e6e54f6d08d7a` |
| 46 | `lemma` | [blockA_decomp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/blocka-decomp.md) | 387 | `result-track:b51c4f0c7051127f65cba09bfb3e08fe580b8ee879cd92364f226bf6ac74f847` |
| 47 | `lemma` | [posSemidef_smul_vecMulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/possemidef-smul-vecmulvec.md) | 395 | `result-track:b61d2fc25de521c1f3fba5b81b15dff4a338f0c0e873165e5aaff5f870af33c7` |
| 48 | `lemma` | [onPart_posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/onpart-possemidef.md) | 401 | `result-track:4d79a55a11a80508e67e972ed786a1a783ec13ab881f3ab0de6024cf2c564d78` |
| 49 | `lemma` | [rePart_posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/repart-possemidef.md) | 407 | `result-track:5d30780c1fc155b955431699299060557aa080ac79ff0cfec40d9ffed1d42a0c` |
| 50 | `lemma` | [imPart_posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/impart-possemidef.md) | 411 | `result-track:e2b807d81e1d40cbaf53b56df48ec2f5a371f48e3a81960d8a3542f23ddd8407` |
| 51 | `lemma` | [rank_onPart_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/rank-onpart-le.md) | 415 | `result-track:831f9ebaa9cde2b292c42c25cc4582b556f41a8396318e4293d285ddd6d91bbd` |
| 52 | `lemma` | [rank_rePart_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/rank-repart-le.md) | 420 | `result-track:be3e37a96c8c0c33571a430702ede69f1024f764ef9becccdd6c54c6361539d1` |
| 53 | `theorem` | [rank_blockA_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/rank-blocka-le.md) | 427 | `result-track:5a2dbf4c4373ec280c8556315ab41525f4011c10cc1377da61ac9445223209e5` |
| 54 | `lemma` | [posIndex_congr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/posindex-congr.md) | 432 | `result-track:d2ffb65c5715c65ef40fb24b0976bf7034600c7a4cf1b921a144a1348c4af263` |
| 55 | `theorem` | [posIndex_blockA_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/posindex-blocka-le.md) | 443 | `result-track:a314d93aef73e5e82f1998c2a96cfec0f15d45832621b19dfae17a00732bceef` |
| 56 | `theorem` | [posIndex_smul_blockA_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/posindex-smul-blocka-le.md) | 455 | `result-track:490e70adb5a80a1169482bb2555b255cab51ab87d8ac863515318ab335deaabb` |
| 57 | `theorem` | [rank_smul_blockA_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/rank-smul-blocka-le.md) | 461 | `result-track:47704b1a096ad7671829d06ce2bfa3c0f4e59776a9a3b017afa55a328390c51e` |
| 58 | `def` | [blockP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/blockp.md) | 468 | `declaration-track:c61898cda6d4578344897e1197790da10736c713c72df4663fc7af494853c3f9` |
| 59 | `def` | [blockQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/blockq.md) | 471 | `declaration-track:eebd5b4fc98dd3e30beb0ae410b37a15912616645da5aed178ef2a07e5019e72` |
| 60 | `theorem` | [blockP_add_blockQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/blockp-add-blockq.md) | 474 | `result-track:5cb81e884b5f1913bfa09cca24cb78b12e081c93af6e0326b1188f9b3db08af6` |
| 61 | `lemma` | [blockQ_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/blockq-eq.md) | 477 | `result-track:d14cf8728a8cb0d8c95ce4b01a7b25af7ba3749bba2cb733e72a0a074ce74813` |
| 62 | `theorem` | [blockP_posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/blockp-possemidef.md) | 482 | `result-track:23519236cd01e60ca0a029250384a86d73746d4fad2dc8159d8f4d56ed052c8e` |
| 63 | `theorem` | [star_blockP_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/star-blockp-apply.md) | 486 | `result-track:b512d0f2f33b680f5272623a811981cbb5773b8d2e8f3bff0b05497ab8f992d5` |
| 64 | `theorem` | [rank_blockP_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/rank-blockp-le.md) | 496 | `result-track:ef53afac6fcb37ae05695d43ce8d9cf05c823ef2f937ede75e23cfd81555ba3c` |
| 65 | `lemma` | [rtrace_onPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/rtrace-onpart.md) | 502 | `result-track:c4ab31c233e3733396d73e8538d4e5de53ca174335d7f29f489882136c6975d5` |
| 66 | `theorem` | [rtrace_blockP_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/rtrace-blockp-le.md) | 521 | `result-track:5be0d989c3ed7409b1e8549203daf1fded6835fe63ce7e812f12c8f0e652a704` |
| 67 | `lemma` | [isHermitian_real_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/ishermitian-real-smul.md) | 536 | `result-track:ed8c95f5f3bba7d398f99ef45446278e4224f9d1babc9ab107cb88e149b06cbd` |
| 68 | `theorem` | [blockQ_isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/blockq-ishermitian.md) | 541 | `result-track:6c5b71b3a5d8abf9d96524b359311af2a9131feef11af36631961d23447a9182` |
| 69 | `theorem` | [star_blockQ_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/star-blockq-apply.md) | 545 | `result-track:b4a2f5ac02a1ac13ce0781cd60ce33f37fa9440e24d35d1cf31f71fea8dadae5` |
| 70 | `theorem` | [posIndex_blockQ_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/posindex-blockq-le.md) | 554 | `result-track:0c4a9404031ab636c138008107f542a4ce1eb9441510c7c2f6da3c140bfffd16` |
| 71 | `lemma` | [ZIprime_finite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/ziprime-finite.md) | 587 | `result-track:30860bdfe3bfc7b0dd457d967873497f5981b44ca6731856f214d44c607e8609` |
| 72 | `def` | [ZI](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/zi.md) | 590 | `declaration-track:5ec13c1914e407f6fe99e3f0e01959d808d6b35d90e90971ba71c0614998047a` |
| 73 | `lemma` | [mem_ZI](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/mem-zi.md) | 592 | `result-track:99c7196d9e841072a7bf58f9c35d8e362a72a430eb9977252ede5249f226807d` |
| 74 | `lemma` | [coe_ZI](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/coe-zi.md) | 594 | `result-track:b8919414862b7511dbbd6a577e22e07e1e57c0d4be6021105e716a30637c3ae5` |
| 75 | `lemma` | [mem_ZIprime_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/mem-ziprime-iff.md) | 596 | `result-track:e519d6840a63e82f870fe5b5eaa01df48dc94c0fe707e2c3475dc38f151f292c` |
| 76 | `lemma` | [reflect_reflect](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/reflect-reflect.md) | 601 | `result-track:c2c9165cf8673517758c78a55ad8ed87471381dfae57c0f53d8db53bab851d8c` |
| 77 | `lemma` | [reflect_re](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/reflect-re.md) | 603 | `result-track:71e7b520fb20a9f2116a2a7b2caae77a27e357d8cb0a67b0921f452945fbf6d4` |
| 78 | `lemma` | [reflect_im](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/reflect-im.md) | 605 | `result-track:351578b15062323b0c2d866b5fdeb1a8c366cd9d9a7908461cf6d36ea65b16b9` |
| 79 | `lemma` | [reflect_eq_self_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/reflect-eq-self-iff.md) | 609 | `result-track:8092c54c3a31d776195384830f5b14ac955c2d3338d2c32356f7b9c73b39b413` |
| 80 | `lemma` | [gammaOf_reflect](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/gammaof-reflect.md) | 619 | `result-track:63588d25ab457c361b81eca25b08bbee0e33b8be26b78a3b78e921467bc8dc42` |
| 81 | `lemma` | [gammaOf_of_re_eq_half](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/gammaof-of-re-eq-half.md) | 626 | `result-track:36067a23fd690f2ed2b2dbf8232bb5d074d2c604762299eb17b8cb6a4fa2bc9f` |
| 82 | `lemma` | [reflect_mem_ZI](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/reflect-mem-zi.md) | 632 | `result-track:c09c41ed358e09492e2de5ecf1cd86c95006f07497266ead97ef38a57b1be0df` |
| 83 | `lemma` | [mem_carrier_of_mem_ZI](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/mem-carrier-of-mem-zi.md) | 636 | `result-track:fb50625fe6cb580c26d5b97f4367418ba7b6828cde2139ab58bac542e62fe203` |
| 84 | `def` | [mkData](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/mkdata.md) | 641 | `declaration-track:2fdf2c02b6ddd8fae43745e32d002099a3c8e5636a3db2b6a7aa447b77199cc3` |
| 85 | `lemma` | [mkData_m](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/mkdata-m.md) | 656 | `result-track:4aaf569f416318b4602832be21e9616d3a5a96297f622a3f42dd3a1c32a30f1b` |
| 86 | `lemma` | [mkData_v](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/mkdata-v.md) | 657 | `result-track:1d8902408c039ba6f26be579a31d9a1ff65075abf2a405c5483da86dbf68c2e6` |
| 87 | `lemma` | [mkData_σ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/mkdata-source-edition-2.md) | 658 | `result-track:6895cdf127707608fbd48d6c9081dc8e21859036dbcde05506b12f2939089923` |
| 88 | `lemma` | [mkData_σ_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/mkdata-eq-iff.md) | 660 | `result-track:5acce0e36d3a0d4e556c82ae7ca3bcf70ccc5e2493ffbe9c105d080759139f7b` |
| 89 | `def` | [mkPairReps](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/mkpairreps.md) | 664 | `declaration-track:4efcc225c9e27c6a5cbc26feae07370eae420de861282b0793586d48b8de61d6` |
| 90 | `lemma` | [card_filter_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/card-filter-coe.md) | 681 | `result-track:d1d437a57532d7a178f409a5459d0dd47b8986afdb9692b894f7e11c1b122a3e` |
| 91 | `lemma` | [sum_filter_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/sum-filter-coe.md) | 693 | `result-track:5c60fb1d0e9b4ce03df1bb27ca6c6944c255274521d86946794085c24cb29081` |
| 92 | `lemma` | [S1_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/s1-eq.md) | 706 | `result-track:c4969e6c08e18ccf0a36af11f3462738f70c305b3a441e2d58bad3e78ec29611` |
| 93 | `lemma` | [S2_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/s2-eq.md) | 712 | `result-track:b5723113570fe1e9f508d1bd91e751d003da612bb288cb9e9092a28ec9a035df` |
| 94 | `lemma` | [offLine_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/offline-eq.md) | 718 | `result-track:cbd6703da05c739d26b288c88f172657c54f953dae79ece77402082d59e63036` |
| 95 | `lemma` | [s1_eq_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/s1-eq-mk.md) | 722 | `result-track:7251cc54f8b0a5d6fd09ecfcd9e00ce2eab5d31d457fe242507b46b03df43a69` |
| 96 | `lemma` | [s2_eq_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/s2-eq-mk.md) | 729 | `result-track:4d892e2da61514af285d953fde527f5cf3d6fee90bf5a075d0abb3b5b8462fdf` |
| 97 | `lemma` | [card_offLine_eq_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/card-offline-eq-mk.md) | 737 | `result-track:e5b3e6768d862cf0c0615dcb6b4990d17fbde980352e1aa6c92f68207858e071` |
| 98 | `lemma` | [p_eq_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/p-eq-mk.md) | 749 | `result-track:90c8e33a5315fdb89aa4cdcc55381cde23671753d393d26a024a8a60e85cb51b` |
| 99 | `lemma` | [NIprime_eq_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/niprime-eq-mk.md) | 752 | `result-track:55bcc11d173a84024b659f51fe84f4e69d208c198ba4614cd5aa3a7326827d1c` |
| 100 | `lemma` | [NonIprime_eq_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/noniprime-eq-mk.md) | 758 | `result-track:ff4769fb44b4dad2116390aed9ee9021f71f7521f652637b137f99685a779eb9` |
| 101 | `def` | [zeroVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/zerovec.md) | 774 | `declaration-track:90c3c56d9237a8c87791a0cd7f75fd38e54af8ebd5d92aa0bd5f0649ff3630fa` |
| 102 | `lemma` | [zeroVec_reflect](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/zerovec-reflect.md) | 776 | `result-track:de5fc66dad8ede36065a972f8a4f7cc09a943e22bc63583540d2b886e36094d0` |
| 103 | `theorem` | [ncard_ZIprime_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/ncard-ziprime-eq.md) | 780 | `result-track:572224c507422c35a8466f61e8f0af1df760a0bda0ab3e39422cd3862b313f8a` |
| 104 | `theorem` | [ncard_offLine_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/ncard-offline-eq.md) | 786 | `result-track:a6f6ce54e5351fcc10422f79a4771fb27ee69e0e06b52336673fe42a7f9d6f1f` |
| 105 | `theorem` | [s1_add_two_s2_add_two_p_le_NIprime](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/s1-add-two-s2-add-two-p-le-niprime.md) | 791 | `result-track:d4136cb5c2bbf02b16287b8d3f795b05d95ba386eb3aee9bc93b7660d3f87def` |
| 106 | `theorem` | [NonIprime_add_two_p_le_NIprime](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/noniprime-add-two-p-le-niprime.md) | 797 | `result-track:5be54ed4b3335f8ac231100829759b74edc91862cfa4e0906fba2f8ddbffc46a` |
| 107 | `abbrev` | [PhiHatConj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/phihatconj.md) | 807 | `declaration-track:583e4c876c6f3661d8d275ad127367e9a48f1467d487b0b0269acb2d689e5406` |
| 108 | `abbrev` | [PhiHatReal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/phihatreal.md) | 809 | `declaration-track:8a52a717b16f68e89afeade033aeaed60b3e2255c7a1b339733e4f21a01f0516` |
| 109 | `abbrev` | [PoissonSq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/poissonsq.md) | 812 | `declaration-track:291fd6ea5e1b419c1ec6a748c7bb0b439e84f31034872ee5c90caa53347e2819` |
| 110 | `def` | [evalVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/evalvec.md) | 816 | `declaration-track:661db5ff48db15918b9ae9a1ca58f165e07d1506314a614f9d3e23a9ad3533a0` |
| 111 | `lemma` | [evalVec_reflect](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/evalvec-reflect.md) | 821 | `result-track:81b397c983e9ac7a88986a47ea408dfaba631060dc94519a53204df2dfb8edda` |
| 112 | `def` | [blockData](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/blockdata.md) | 831 | `declaration-track:ac93d5dd8328ca81d27aeee5aa1f9445f2ebbbdaad07eb5a349f171d05c858a4` |
| 113 | `theorem` | [Az_eq_blockA](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/az-eq-blocka.md) | 835 | `result-track:3474d34fd7d02d7523666f97cfd877b7473eeed88d31872249d3198544f48403` |
| 114 | `theorem` | [Az_isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/az-ishermitian.md) | 845 | `result-track:10e48baa57b1e04711f12e77439eb7145bc99582975326648c8887060c2e15c0` |
| 115 | `theorem` | [star_Az_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/star-az-apply.md) | 849 | `result-track:0e93027ac76afd306f1985f5683f8d53cd12cd46f03f7d29798064c4897dc2fe` |
| 116 | `lemma` | [tilde_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/tilde-eq.md) | 854 | `result-track:a7db4e89461984b1cbf5768803370c5586047c022e4ec3321212b44a722a84bb` |
| 117 | `lemma` | [hat_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/hat-eq.md) | 858 | `result-track:f275386047b8bbc2a7a4801fa7e48a04faa11193750e14a3fa2f6c88b299cfa1` |
| 118 | `theorem` | [tilde_Az_isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/tilde-az-ishermitian.md) | 862 | `result-track:ab8ab2be162c22f8487e1fbb7ab51d3067505498f89fd0d1e2fa1b2590b7aab6` |
| 119 | `theorem` | [hat_Az_isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/hat-az-ishermitian.md) | 865 | `result-track:329f24145f4600ee5f1fc4a009661fc923f1cc54bd9b790b45eaff67769fcada` |
| 120 | `theorem` | [posIndex_tilde_Az_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/posindex-tilde-az-le.md) | 869 | `result-track:23305f807c6d9cd8b0d64d62069cbed87e533e2853d48e36f0e1b4fe2184146c` |
| 121 | `theorem` | [rank_tilde_Az_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/rank-tilde-az-le.md) | 880 | `result-track:f51a3c7f46dde121f76114ccc05e0243057df6d5722579cdd244cbf8643040ad` |
| 122 | `def` | [hatP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/hatp.md) | 887 | `declaration-track:3992c69fd545401382256c6c040154131c2fd653d2193b0abff1ec95304ca564` |
| 123 | `def` | [hatQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/hatq.md) | 891 | `declaration-track:054209bc185c81ccf41e8568c31e2a8e691f383f0b8f3214d5035226598e4cdd` |
| 124 | `theorem` | [hat_Az_eq_hatP_add_hatQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/hat-az-eq-hatp-add-hatq.md) | 895 | `result-track:c1130772678a2331e278c872c421afbc7cb29cf48492494543b2f564936a35f2` |
| 125 | `theorem` | [hatP_posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/hatp-possemidef.md) | 900 | `result-track:80b1fff36e8e647281dcae2a31cb7019f3d06d9f12185b5b203e4e2a9ce5dc06` |
| 126 | `theorem` | [star_hatP_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/star-hatp-apply.md) | 905 | `result-track:7ad9f8f61b187767e316e8952f17a55e954b4a177cfb8a038b704c70c8a8c343` |
| 127 | `theorem` | [rank_hatP_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/rank-hatp-le.md) | 910 | `result-track:69474967abcfc8babd09c8c7eebaed9cadaadcee97ff7affb05e0a449b2410d4` |
| 128 | `lemma` | [sum_normSq_v_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/sum-normsq-v-le.md) | 917 | `result-track:24276014220f679acbb29848b5d505121640ec5876e37364d66e7287003bc299` |
| 129 | `theorem` | [rtrace_hatP_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/rtrace-hatp-le.md) | 937 | `result-track:f27b2b382d0e0710961a0e23e81fbb4e855ad371b51a017ee43b3af370a18de5` |
| 130 | `theorem` | [hatQ_isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/hatq-ishermitian.md) | 944 | `result-track:46e1aee8920dd12ca04bca91bfc0619bbbe7df7d32030369eb4721d0bcbaa019` |
| 131 | `theorem` | [star_hatQ_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/star-hatq-apply.md) | 948 | `result-track:d6881f0dbbb17888b15777a5b827b1d90f5302c15a43bcb385b6d13d36dcdca1` |
| 132 | `theorem` | [posIndex_hatQ_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/posindex-hatq-le.md) | 953 | `result-track:7485a6f7a16e6c2fbf362fafce35823a55271192a0ec1092c4931cdc6298e4a2` |
| 133 | `theorem` | [blockInputsAt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/blockinputsat.md) | 969 | `result-track:d5a843b1f0847246a90cfa12656adc6ff100b71b075edaa4fad88ed03cbd82c2` |
| 134 | `lemma` | [tendsto_L_atTop'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/tendsto-l-attop.md) | 989 | `result-track:40738c5e4195ec756d1786baaca8e80631e9b9ead680c042b214cee4bc652b79` |
| 135 | `theorem` | [eventually_blockInputs_of](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSideNamespaced.lean/declarations/eventually-blockinputs-of.md) | 996 | `result-track:93ca1e6fc4a5e5c8daeef55212e3e17db195928cdd0c028d185bdb86f996c02f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b922fb63675ac8343ba4d11bdca6333e9b3436073c3d3b204caf9e1141d35502 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ZeroSide/Variant239d6e0d6b187f0713ca8ef0955964876f99e7f28f29504f7149f555799a898a.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ZeroSide/Variant239d6e0d6b187f0713ca8ef0955964876f99e7f28f29504f7149f555799a898a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
