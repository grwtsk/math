# Verification target: Game Basic Neg

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d41a4d07f35515cb99c37857f6dbf3b7b0bbd7e5",
  "lexical_observation_count": 96,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd09ab75c1191e10da07a89e7da261f2883d3bfc4a52ea6018f1a06cfef95a75f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d41a4d07f35515cb99c37857f6dbf3b7b0bbd7e5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd09ab75c1191e10da07a89e7da261f2883d3bfc4a52ea6018f1a06cfef95a75f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd09ab75c1191e10da07a89e7da261f2883d3bfc4a52ea6018f1a06cfef95a75f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Game.PGame` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Game](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/game.md) | 45 | `declaration-track:fe368aa95a2e59f935c28fefbef3f96548d291c88de4f4b99b5f793644667e48` |
| 2 | `def` | [neg](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/neg.md) | 53 | `declaration-track:83d8912d0c99eefa6786d034d7ea05cfc348907d9953dbd2fb6ef2c7b2da2154` |
| 3 | `instance` | [instAddCommGroupWithOneGame](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/instaddcommgroupwithonegame.md) | 55 | `declaration-track:30ea119242460b384200b9745717b699454418a7e6962cdd5fcf424cb78f8b87` |
| 4 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/instance-source-edition-3.md) | 78 | `declaration-track:798dba907e249619f287951296359e5d1e1adbae9ce4cbc8703a29e0260f3b47` |
| 5 | `instance` | [instPartialOrderGame](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/instpartialordergame.md) | 81 | `declaration-track:da3cf4b9e51f46336498f3ae1e60a9c8679a907b0e9ce17441320adc12efe71f` |
| 6 | `def` | [Lf](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/lf.md) | 101 | `declaration-track:6e2c2ad5326e3af5e630a22078790122210e8a442b4301bf4231fba3fbb6eb4e` |
| 7 | `theorem` | [not_le](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/not-le.md) | 109 | `result-track:ff257f71dbf37401da2548aeedd62cbf8754d20a8dbdf7f3551119323ff850bc` |
| 8 | `theorem` | [not_lf](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/not-lf.md) | 116 | `result-track:7578d3abe5bbb971cb0b7da8e97eee96b03e86a7f8176fe7a7073ca1830d86e2` |
| 9 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/instance-source-edition-6.md) | 122 | `declaration-track:b9daaf4c4b1928088bffd22a9bd6f0dcb2014e3616e8d15d0a250760468166eb` |
| 10 | `theorem` | [PGame.le_iff_game_le](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/pgame-le-iff-game-le.md) | 135 | `result-track:8f097e7ff0b74fd1441c21bb4a05a132ad80349b1692ccfaf635bcc5a517abae` |
| 11 | `theorem` | [PGame.lf_iff_game_lf](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/pgame-lf-iff-game-lf.md) | 139 | `result-track:ba3fad7ee4a6b75b963cea140504734a9620824abd167182850878d489c429ce` |
| 12 | `theorem` | [PGame.lt_iff_game_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/pgame-lt-iff-game-lt.md) | 143 | `result-track:db25e373e6f48affb986025c0e08384b202721e23006291384fc45b8d481ab42` |
| 13 | `theorem` | [PGame.equiv_iff_game_eq](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/pgame-equiv-iff-game-eq.md) | 147 | `result-track:a8dd15639dd6c44e486c08a2655ea5543a75611eca5e1dffeaf1fe8f47400b80` |
| 14 | `def` | [Fuzzy](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/fuzzy.md) | 154 | `declaration-track:6ee9f9fa7de40d073d230dc689c5577375a38ff269071f6289ee11e691ce8bfa` |
| 15 | `theorem` | [PGame.fuzzy_iff_game_fuzzy](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/pgame-fuzzy-iff-game-fuzzy.md) | 160 | `result-track:5456bed35395d8c5ddb77671d9b082362e5acb9d676574fd9d002ccfff9f0944` |
| 16 | `instance` | [covariantClass_add_le](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/covariantclass-add-le.md) | 164 | `declaration-track:2a71fe29f96a5c6d569aa8f8d5b23ae85fe8624c82f51c9094c7def10ec07c0e` |
| 17 | `instance` | [covariantClass_swap_add_le](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/covariantclass-swap-add-le.md) | 170 | `declaration-track:ea26f907c635c8b3e5a7c325095ac3e9f2e365e5cd25d6be8a2bdb61508524e6` |
| 18 | `instance` | [covariantClass_add_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/covariantclass-add-lt.md) | 176 | `declaration-track:a9df7b3d34e6c0b34398fc03fc29009512695d353956079389dd17a8d5fbf4e3` |
| 19 | `instance` | [covariantClass_swap_add_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/covariantclass-swap-add-lt.md) | 182 | `declaration-track:85f7ad502c27e5b028d4fd7e442df3587ac327815a178c66941a13da7511b6bd` |
| 20 | `theorem` | [add_lf_add_right](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/add-lf-add-right.md) | 188 | `result-track:840ef96c50dfb28090b8be94ec088df8e78617d98498ac19932221b61bb9ea90` |
| 21 | `theorem` | [add_lf_add_left](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/add-lf-add-left.md) | 193 | `result-track:d053c91119e55c6ef8ac7bafb6801fc5bb7013d5e839b972c7f2747a997528c6` |
| 22 | `instance` | [orderedAddCommGroup](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/orderedaddcommgroup.md) | 198 | `declaration-track:ae01b3f44a373925b7ad7232642ba5fd7e763f8af93740bbbdaebc982eef9ebd` |
| 23 | `theorem` | [quot_neg](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/quot-neg.md) | 208 | `result-track:0aba3818f9a2f890865b289e5437d00585470ac9b847a8e98071fd6c6be16cc2` |
| 24 | `theorem` | [quot_add](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/quot-add.md) | 213 | `result-track:bd5eaa5ababa1281c6b81cc842944e1332697eab8be1b463558e3c0f9a26e1fa` |
| 25 | `theorem` | [quot_sub](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/quot-sub.md) | 218 | `result-track:50705a855358ed76c6fe119b018ac3a60d017664f284609e63d80c7d311a2c9d` |
| 26 | `theorem` | [quot_eq_of_mk'_quot_eq](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/quot-eq-of-mk-quot-eq.md) | 222 | `result-track:c0c80013e21a476fee5ad6263f40ee94845c4820fed7644d7914ebb5314c5a08` |
| 27 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/instance-source-edition-2.md) | 236 | `declaration-track:352a6a2597950458c935185cbd75b86f39fb07434a2b94dee30efb2e4cca0ccf` |
| 28 | `theorem` | [leftMoves_mul](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/leftmoves-mul.md) | 247 | `result-track:45ed827978dc191d4e3a8003b22b344f22b8558cf02891a8985d9dd55b0d9ae5` |
| 29 | `theorem` | [rightMoves_mul](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/rightmoves-mul.md) | 253 | `result-track:2d4c125234ad3e02d8ba04a0cffc43db8113dc77a9c49961cbeca3f922d8e006` |
| 30 | `def` | [toLeftMovesMul](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/toleftmovesmul.md) | 263 | `declaration-track:c0a9214a5b2e5a33f1c6266458eb033b7694845c4c39ef08f468bea554fc7f87` |
| 31 | `def` | [toRightMovesMul](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/torightmovesmul.md) | 272 | `declaration-track:4e4ee214f29fd2e3ba0ea6bed6a14ff1d2c8674c389e6c9e41471f32b40e7c46` |
| 32 | `theorem` | [mk_mul_moveLeft_inl](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/mk-mul-moveleft-inl.md) | 278 | `result-track:18accc833590b348b120436bf1571fbe1dab9e67c3568b9e6f7a4110766c82bf` |
| 33 | `theorem` | [mul_moveLeft_inl](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/mul-moveleft-inl.md) | 285 | `result-track:7a6ce01b4a0e3ca16953bfd41989c4dbc9e23f8bc0a3b02975452ead3e1d5b0f` |
| 34 | `theorem` | [mk_mul_moveLeft_inr](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/mk-mul-moveleft-inr.md) | 294 | `result-track:727f97605b94a5da7a885e9de2a17597062aa66f7df1c8f52929323a938bd9d8` |
| 35 | `theorem` | [mul_moveLeft_inr](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/mul-moveleft-inr.md) | 301 | `result-track:77ae8e421bd0246af1efb961b09ac5a09a35f6cd0a08ea056f135c7599343f90` |
| 36 | `theorem` | [mk_mul_moveRight_inl](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/mk-mul-moveright-inl.md) | 310 | `result-track:754c2192f53da01d78d44dc33726e1593410826340f089d637bb0f9e28662534` |
| 37 | `theorem` | [mul_moveRight_inl](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/mul-moveright-inl.md) | 317 | `result-track:e514ef96540c63fd9e9de75312671c1007e8e15f62891a4a7cd3f760c21dc279` |
| 38 | `theorem` | [mk_mul_moveRight_inr](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/mk-mul-moveright-inr.md) | 326 | `result-track:0b85f854f047c61a87e98804c3dd214b26e92fa8d5b9e7e0c4d1d3b9e326d5c3` |
| 39 | `theorem` | [mul_moveRight_inr](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/mul-moveright-inr.md) | 333 | `result-track:292716a42c2823c5e485192ded4a76513e9aa8ba6c7ccf171135080887046e0a` |
| 40 | `theorem` | [neg_mk_mul_moveLeft_inl](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/neg-mk-mul-moveleft-inl.md) | 342 | `result-track:e513d1de84a7d7ea3f777e44dbea2c262278ba10647f9ed687fc95d795f3b723` |
| 41 | `theorem` | [neg_mk_mul_moveLeft_inr](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/neg-mk-mul-moveleft-inr.md) | 349 | `result-track:6aba38ab60b0489fc7492731b41fc92fab18fa546afca10d0eb5834c3b5e458f` |
| 42 | `theorem` | [neg_mk_mul_moveRight_inl](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/neg-mk-mul-moveright-inl.md) | 356 | `result-track:2a023cbe6d452807472e10d5400baecc1a4d52f00f51488310d2e5241e23b4df` |
| 43 | `theorem` | [neg_mk_mul_moveRight_inr](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/neg-mk-mul-moveright-inr.md) | 363 | `result-track:8ac5a4c68d7e899b8a815010b8abdd9c465e9f9a6d9a2117d629e127608d441c` |
| 44 | `theorem` | [leftMoves_mul_cases](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/leftmoves-mul-cases.md) | 369 | `result-track:e36419a273eb558d371aa2746a6fd66ee41f11b6f4581418055199814532bd0d` |
| 45 | `theorem` | [rightMoves_mul_cases](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/rightmoves-mul-cases.md) | 378 | `result-track:54d1c68125d84c067f93c7ab947bd5984099743d7e100b2bf7359b7a7f96078c` |
| 46 | `def` | [mulCommRelabelling](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/mulcommrelabelling.md) | 388 | `declaration-track:b8389e458466edd0f59c6adf8da54b4cc756a16d1aa82cf97c55b4a5a537dcca` |
| 47 | `theorem` | [quot_mul_comm](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/quot-mul-comm.md) | 403 | `result-track:f1de8876a4dab638db18094225efb379d503f9c3eefeefd9f422ecc99fd633a4` |
| 48 | `theorem` | [mul_comm_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/mul-comm-equiv.md) | 408 | `result-track:15f72904485db7e5e4f92ade2ccb06251152663f302404ee1861d2dfd246751c` |
| 49 | `instance` | [isEmpty_mul_zero_leftMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/isempty-mul-zero-leftmoves.md) | 412 | `declaration-track:6d1f51f1f835114ad685824ea2e975a6aa9f07d9dcfc348b870cf29f6d160535` |
| 50 | `instance` | [isEmpty_mul_zero_rightMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/isempty-mul-zero-rightmoves.md) | 417 | `declaration-track:d437485cffa771b66f077ebfc7a0dd7ac5518f5cad3d3db6dc0dfa3d000552e2` |
| 51 | `instance` | [isEmpty_zero_mul_leftMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/isempty-zero-mul-leftmoves.md) | 422 | `declaration-track:b26e101e0c6c664f6adfd1fda0431977d594613023b6eb05beb2e99c11938f0d` |
| 52 | `instance` | [isEmpty_zero_mul_rightMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/isempty-zero-mul-rightmoves.md) | 427 | `declaration-track:bd0f92a317e26b0126815f3e9e02c018f85a9aea48449959495d1114c73771dc` |
| 53 | `def` | [mulZeroRelabelling](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/mulzerorelabelling.md) | 433 | `declaration-track:34ce6165c35ee40b2c99fc874a381086e8453ea57eb87ca31584aaa8938485d2` |
| 54 | `theorem` | [mul_zero_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/mul-zero-equiv.md) | 438 | `result-track:45954d05efeb28ca9dfbdd9c96f7ea301bc396d404deb4a057faea8666710208` |
| 55 | `theorem` | [quot_mul_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/quot-mul-zero.md) | 443 | `result-track:95b843d756d02a7f33760a8f3eb612bf438bdc2585ff6b569991eb952f2d12c9` |
| 56 | `def` | [zeroMulRelabelling](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/zeromulrelabelling.md) | 448 | `declaration-track:cceece4ed6a4acc65a24ea94339010110f4241dfdfa38033bd70d211601f7735` |
| 57 | `theorem` | [zero_mul_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/zero-mul-equiv.md) | 453 | `result-track:027f7d593cf2785a1f47f3c9aad0330df66415d9d92ba7f002acdcea0e1f3427` |
| 58 | `theorem` | [quot_zero_mul](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/quot-zero-mul.md) | 458 | `result-track:338f8e623cb7e87191f2401f6337c911c7d3dcf54bc11c1318de93c3ef031ec8` |
| 59 | `def` | [negMulRelabelling](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/negmulrelabelling.md) | 463 | `declaration-track:93708d6cb15511a508140701851d4d3efc212b18bfeb0e44954ccd662a7fc46e` |
| 60 | `theorem` | [quot_neg_mul](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/quot-neg-mul.md) | 484 | `result-track:33b81f701234b1f496bd54577531b60e7f2829d3547eaf7ab3ec8ab874d324d1` |
| 61 | `def` | [mulNegRelabelling](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/mulnegrelabelling.md) | 489 | `declaration-track:87ac715f1136c9d379d3a8fab0c2633a81b2661a4a074dda42b33f33fda91612` |
| 62 | `theorem` | [quot_mul_neg](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/quot-mul-neg.md) | 494 | `result-track:49f35a2b5eb2af01c7de5c47fc04a41a3770896d94d6367ce2553419eaad3888` |
| 63 | `theorem` | [quot_left_distrib](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/quot-left-distrib.md) | 499 | `result-track:a9a7d61f859ed18e236e70ecb365cd23a8478814f8ee6a6c0d260757f9d916fb` |
| 64 | `theorem` | [left_distrib_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/left-distrib-equiv.md) | 598 | `result-track:798ee6f7519e8e4e501b3d55f74f4f8b9a95515629e67db25d6cf34d58fbb7f0` |
| 65 | `theorem` | [quot_left_distrib_sub](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/quot-left-distrib-sub.md) | 603 | `result-track:4bbea03d11ffb835258f5e28f1e38dbc481fba69c7f21fa5b58fec26cba48c3d` |
| 66 | `theorem` | [quot_right_distrib](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/quot-right-distrib.md) | 609 | `result-track:a8e191da4b1187674341ae0ccc5ac5c7e38e8aa9dee06009386c328fc87d3ecf` |
| 67 | `theorem` | [right_distrib_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/right-distrib-equiv.md) | 614 | `result-track:59e3f31747bec877fc460bdf62b022a058e6421aa12312e9f44383038b614a12` |
| 68 | `theorem` | [quot_right_distrib_sub](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/quot-right-distrib-sub.md) | 619 | `result-track:89a6410efe2e13963ae942e97dcf019776ec4b58e08b563437479c42ab7ef434` |
| 69 | `def` | [mulOneRelabelling](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/mulonerelabelling.md) | 625 | `declaration-track:4de3ce4d550a8fa5878f96ca13ac17ccc4b353f6ad6b1c5dbc00c5cbb71dae29` |
| 70 | `theorem` | [quot_mul_one](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/quot-mul-one.md) | 646 | `result-track:842b3a8d472752af10d8c13261c327c0ba781712ada5fba4cd2d8d471bc343c0` |
| 71 | `theorem` | [mul_one_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/mul-one-equiv.md) | 651 | `result-track:39898fe0ef86909d23d6504bee689fa3419487fba185bbf9463874d7cfd4c659` |
| 72 | `def` | [oneMulRelabelling](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/onemulrelabelling.md) | 656 | `declaration-track:221cd61eb6ff1e1047894ce2b2e4544a7eca8874603ffe4d4f0d22d71b3737f0` |
| 73 | `theorem` | [quot_one_mul](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/quot-one-mul.md) | 661 | `result-track:01e34de75a156edc79d86a9d33ab56ac0b2fdc5423156c0bd6a6b9dd8f2e6b34` |
| 74 | `theorem` | [one_mul_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/one-mul-equiv.md) | 666 | `result-track:3dad75817765355cd439504d0a7b447f4d6c1b3ec841ed0c5ced93543bc2a6cc` |
| 75 | `theorem` | [quot_mul_assoc](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/quot-mul-assoc.md) | 670 | `result-track:89aacb512244ef76c4da515960afc86fcc8b3bf64b7aba4731f4afb945a3aa38` |
| 76 | `theorem` | [mul_assoc_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/mul-assoc-equiv.md) | 823 | `result-track:516a998117b3e5221217e3ad90c24e5765f02fcd99fffff5ab76c14c05e19a9b` |
| 77 | `inductive` | [InvTy](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/invty.md) | 830 | `declaration-track:ddfdab025d35f81f1516e728d878169d0df7ba2ed8db5a40ec56232f910d4613` |
| 78 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/instance-source-edition-4.md) | 838 | `declaration-track:a36540e9d1ef3dc8708c1db0aa89f07949015c32a22c9f68cd22bc416721719d` |
| 79 | `instance` | [InvTy.instInhabited](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/invty-instinhabited.md) | 841 | `declaration-track:e31fae9c81cc580c11d13763d2556987a76b09fdb262f0c5ca7370b7c32d1835` |
| 80 | `instance` | [uniqueInvTy](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/uniqueinvty.md) | 844 | `declaration-track:7cbd7e9b5365b38ba995bc59385fc7ff50117c700f11ef16ff1d404bd334668b` |
| 81 | `def` | [invVal](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/invval.md) | 855 | `declaration-track:50e822b7156552a85c8bece2b605e3decd628a4cd4cc6a96a3e32f9e8d71d1a0` |
| 82 | `theorem` | [invVal_isEmpty](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/invval-isempty.md) | 865 | `result-track:2a382a982314fb5420cfab58e53b23e42cbc4fbd78c0cc831626db41e49841c1` |
| 83 | `def` | [inv'](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/inv.md) | 878 | `declaration-track:19db0ef4b09f99e2567a3acf59bc0e80e1b1a053df3e18533d99ff78edbf5978` |
| 84 | `theorem` | [zero_lf_inv'](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/zero-lf-inv.md) | 887 | `result-track:a87239e8244126a9b95c65dbd4d1de58b2d98022d75badc9508df903705dcafe` |
| 85 | `def` | [inv'Zero](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/inv-zero-source-edition-2.md) | 894 | `declaration-track:75e6afd48abb19bc77a62e3fea8ccf78741156334da0b7ca7aade83ae893f459` |
| 86 | `theorem` | [inv'_zero_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/inv-zero-equiv.md) | 905 | `result-track:34b7f82c5eca87025a632a2f51c7928e147cad512191cb8c91c17787e47e0c22` |
| 87 | `def` | [inv'One](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/inv-one.md) | 910 | `declaration-track:f8e21c26fe811049c75126af41e94ab9cf9f6fa04979127f054ea8393caff625` |
| 88 | `theorem` | [inv'_one_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/inv-one-equiv.md) | 923 | `result-track:4174e2540b152402cf4af1f1c68f08c17896c26e40f9935c53e5208c03b30851` |
| 89 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/instance-source-edition-5.md) | 928 | `declaration-track:b6286a21bb2c20d84bb090e29541b68db3337d7989e1566ce89ee3ff380c6a1d` |
| 90 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/instance.md) | 931 | `declaration-track:0aa7325ed8dbafdf85dd9200a1528084cfb41641e4f40e06af386cd89936ba9e` |
| 91 | `theorem` | [inv_eq_of_equiv_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/inv-eq-of-equiv-zero.md) | 934 | `result-track:2a7403433804b511aae96fdc10d2913883948e62f641379691a0edc5c580023e` |
| 92 | `theorem` | [inv_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/inv-zero.md) | 938 | `result-track:104eb4927b8bc0557a8995817d8be5aba1e13bd8d95e4bdaf05d282162870d94` |
| 93 | `theorem` | [inv_eq_of_pos](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/inv-eq-of-pos.md) | 942 | `result-track:a8d525dc48c28b11ccff1e5be8860436ca769e176ce82e94353b78db2225a460` |
| 94 | `theorem` | [inv_eq_of_lf_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/inv-eq-of-lf-zero.md) | 946 | `result-track:93d9b66402473d7928ec686d5e6c204186f26d0f286743dc9d56b83eb0e804b3` |
| 95 | `def` | [invOne](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/invone.md) | 951 | `declaration-track:755f5a9b3f296538a4b72cdc76796997883cc46a0f6bf5b2a8727731d5ecab5f` |
| 96 | `theorem` | [inv_one_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNeg.lean/declarations/inv-one-equiv-source-edition-2.md) | 956 | `result-track:99b8f5ccf9c7af8f8172b2e62f96118d77deac6a612c0f3aa0227b99a5632bb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17d266bd7ec2ce359d944dc0fe1fe067f7fd815892f7429207bf295aaaa3923b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd09ab75c1191e10da07a89e7da261f2883d3bfc4a52ea6018f1a06cfef95a75f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd09ab75c1191e10da07a89e7da261f2883d3bfc4a52ea6018f1a06cfef95a75f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
