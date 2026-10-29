# Verification target: Game Basic Namespaced Neg

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7526ebae01cb53354fa46257ccc6bd139c49b5cb",
  "lexical_observation_count": 96,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa103f7c2ea9dce50fde93dd6d102d4febf9381c5254f7c997191c0dd11445e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7526ebae01cb53354fa46257ccc6bd139c49b5cb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa103f7c2ea9dce50fde93dd6d102d4febf9381c5254f7c997191c0dd11445e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa103f7c2ea9dce50fde93dd6d102d4febf9381c5254f7c997191c0dd11445e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Game.PGame` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Game](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/game.md) | 53 | `declaration-track:2ac15a32594cb1c92f9be2a0cc8b85cecc00f5c5739b70ddc24fe5f0d9157d03` |
| 2 | `def` | [neg](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/neg.md) | 61 | `declaration-track:ade17e1159dcfe52a88399069d17fa87818bce848ff4ce7528cddc7d4e0247d3` |
| 3 | `instance` | [instAddCommGroupWithOneGame](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/instaddcommgroupwithonegame.md) | 63 | `declaration-track:6d7622d80350930e478ad04e175a8a7b1756a09f1a279f13544e778d07246102` |
| 4 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/instance-source-edition-2.md) | 86 | `declaration-track:623eb477b2583972d53103661fb3cc80542e77a41792e0905dca6b503469a043` |
| 5 | `instance` | [instPartialOrderGame](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/instpartialordergame.md) | 89 | `declaration-track:4aae6710331b81aca13fb88bfc5669dbba9b4c15ea49099c41bcb44d259909b6` |
| 6 | `def` | [Lf](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/lf.md) | 109 | `declaration-track:af9e70dee91f6402fa6a9db7c58f942cca00e2c0b181f9f1274c8e4ffdc1b472` |
| 7 | `theorem` | [not_le](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/not-le.md) | 117 | `result-track:ed3cb609253f8afb737110a23d239be7995aab3f613f8e0a3061db3752897ae8` |
| 8 | `theorem` | [not_lf](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/not-lf.md) | 124 | `result-track:93f78bcdd523ab806803ffd1b19d9c4e333a49a6fc8eeee363849ae75aec6e33` |
| 9 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/instance-source-edition-3.md) | 130 | `declaration-track:822516be9cc2572048b393f4a873602b3fc3d456c7914db26d9681745cd988c2` |
| 10 | `theorem` | [PGame.le_iff_game_le](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/pgame-le-iff-game-le.md) | 143 | `result-track:98af0fd26ef647586d15ad662ef22a00a67ae0898dc3548b8420ea2eb9749242` |
| 11 | `theorem` | [PGame.lf_iff_game_lf](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/pgame-lf-iff-game-lf.md) | 147 | `result-track:40b2315c81e297aaac41b0019c47336871049437a0a125b1ede5989381dcb88b` |
| 12 | `theorem` | [PGame.lt_iff_game_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/pgame-lt-iff-game-lt.md) | 151 | `result-track:7aa4f994ab474022bcc964163aece363fadec304dde3253528e2756691528c5a` |
| 13 | `theorem` | [PGame.equiv_iff_game_eq](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/pgame-equiv-iff-game-eq.md) | 155 | `result-track:033bf54b922963bfbed94d8d0ec1ac15eb58fb2382a19d55d61f2f09e9fbd3e8` |
| 14 | `def` | [Fuzzy](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/fuzzy.md) | 162 | `declaration-track:14b4ce5f65ad72b03ff799c19f14ea862b306eaa198479bdbf5a2a1aad0c941d` |
| 15 | `theorem` | [PGame.fuzzy_iff_game_fuzzy](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/pgame-fuzzy-iff-game-fuzzy.md) | 168 | `result-track:b921e5697a756dad3e9629545354a57ba878e4680375d35abe461f3dbe132de7` |
| 16 | `instance` | [covariantClass_add_le](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/covariantclass-add-le.md) | 172 | `declaration-track:a35d988a4034dfa7501804b140e5705a2ae25163bd97c2e7eede640d06cad6bd` |
| 17 | `instance` | [covariantClass_swap_add_le](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/covariantclass-swap-add-le.md) | 178 | `declaration-track:970561e167e7b16690a27c775ebf9ff44753a1c61d7a1144e59091b350cdfb4a` |
| 18 | `instance` | [covariantClass_add_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/covariantclass-add-lt.md) | 184 | `declaration-track:ac9a52ade279fd9589f11aa4031027ce12fa16d6e2dc4cc5762b9470ad96f2d3` |
| 19 | `instance` | [covariantClass_swap_add_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/covariantclass-swap-add-lt.md) | 190 | `declaration-track:d80bba11f62e69dc6f9a2b127b64f7af60514e49851476e7b8d6f4eaebf58c44` |
| 20 | `theorem` | [add_lf_add_right](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/add-lf-add-right.md) | 196 | `result-track:f8df072c7b7e631ad0186538eba3bc45fefecedb569bdf095215d85247d63b98` |
| 21 | `theorem` | [add_lf_add_left](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/add-lf-add-left.md) | 201 | `result-track:bb330ec8cb466719fcd863282af7b7ecb6afdd5b6c0e64f7a6bb993d41c9f0eb` |
| 22 | `instance` | [orderedAddCommGroup](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/orderedaddcommgroup.md) | 206 | `declaration-track:74c0f80a5c5906ea9e1fd12e7bf5a363292f4f79aed3617eb5e7e77fa27be83f` |
| 23 | `theorem` | [quot_neg](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/quot-neg.md) | 216 | `result-track:247c97b0d7fb65797b87bc01cd1262ede9ad8a2c0be8fbc7392c12e6caf37017` |
| 24 | `theorem` | [quot_add](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/quot-add.md) | 221 | `result-track:c970de83e744d4a004e5da56712135c699513f893c4ee2b4af9b39fca8f94bcc` |
| 25 | `theorem` | [quot_sub](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/quot-sub.md) | 226 | `result-track:bd28d0e0c95d04336d59f04cf3becbf8159b67ad2b5872feac64ff748c14f1d5` |
| 26 | `theorem` | [quot_eq_of_mk'_quot_eq](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/quot-eq-of-mk-quot-eq.md) | 230 | `result-track:60b78e0e31472187ef829fff18cd8008edb4e312327816c33a5ddcaff25a7d92` |
| 27 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/instance-source-edition-5.md) | 244 | `declaration-track:a1d2d77bca9cb45ec74912f2ffa04b2fe33408df426973acc4ba9cb398a04d42` |
| 28 | `theorem` | [leftMoves_mul](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/leftmoves-mul.md) | 255 | `result-track:7e67142fdb545f1aeeb2c429af5138672aa7faf77baf72f9cdd2d745cc27ddb0` |
| 29 | `theorem` | [rightMoves_mul](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/rightmoves-mul.md) | 261 | `result-track:890861b10bd5861786268b072fec39bbf80a2ccde72adf88649da9ee57c44469` |
| 30 | `def` | [toLeftMovesMul](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/toleftmovesmul.md) | 271 | `declaration-track:8a8ccaa98740a2add424aef3345daab51b16834bbe7532bbdf20901c8c91efc1` |
| 31 | `def` | [toRightMovesMul](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/torightmovesmul.md) | 280 | `declaration-track:a4f6cae122874a10cf0e89a3be9db247fdec9fda099804a97677b733aab7590e` |
| 32 | `theorem` | [mk_mul_moveLeft_inl](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/mk-mul-moveleft-inl.md) | 286 | `result-track:4a70c58d3ff205c9631a116fbc0ec9fe27bd5e9872a3966780af72bdbe3f1d5e` |
| 33 | `theorem` | [mul_moveLeft_inl](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/mul-moveleft-inl.md) | 293 | `result-track:60cf6cc05d1a800e859a54e932ae5716f8ee8356ea3c946681a42ac09a5aea36` |
| 34 | `theorem` | [mk_mul_moveLeft_inr](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/mk-mul-moveleft-inr.md) | 302 | `result-track:aeeb90cb47bcb2d571925789609b1188792660f1da4d66fe764582b4c4047792` |
| 35 | `theorem` | [mul_moveLeft_inr](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/mul-moveleft-inr.md) | 309 | `result-track:7f23b3bdae6037faeb892004f0a8a68394fd9b4c11e25f509fa8af191dae0167` |
| 36 | `theorem` | [mk_mul_moveRight_inl](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/mk-mul-moveright-inl.md) | 318 | `result-track:b994d4e91119c5dae589e17ba0b874d19eeb8a9ccf42db7622db736b1721de99` |
| 37 | `theorem` | [mul_moveRight_inl](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/mul-moveright-inl.md) | 325 | `result-track:03c3bd3a72ef2e864c17d75da4ca886ef5c30356843923d6b0f78b46d753e25b` |
| 38 | `theorem` | [mk_mul_moveRight_inr](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/mk-mul-moveright-inr.md) | 334 | `result-track:5fb80b5d40eeb6c75b05761c53289caf2b7881525c8096a50daff5b15c4519d7` |
| 39 | `theorem` | [mul_moveRight_inr](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/mul-moveright-inr.md) | 341 | `result-track:a4b645cc7f08834dcc0a5b6aaf6b6f155ee311acb16dd53c86dd7eaf5dcb8880` |
| 40 | `theorem` | [neg_mk_mul_moveLeft_inl](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/neg-mk-mul-moveleft-inl.md) | 350 | `result-track:1ec1278d26781e8db06e1c47cc01ed70f903d3a969f8b306bb7b5227fc6fc7db` |
| 41 | `theorem` | [neg_mk_mul_moveLeft_inr](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/neg-mk-mul-moveleft-inr.md) | 357 | `result-track:1a4cb40ff50fbb5b8108300399ed663eac6cf1231bc5c50d65e125ad38679178` |
| 42 | `theorem` | [neg_mk_mul_moveRight_inl](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/neg-mk-mul-moveright-inl.md) | 364 | `result-track:5a510281d3742de928eff0552b254292782e294d59cdd489bc63b47ae3a6cc7c` |
| 43 | `theorem` | [neg_mk_mul_moveRight_inr](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/neg-mk-mul-moveright-inr.md) | 371 | `result-track:be953794859cc4888a9c00b35e17459ee12f6f1b5e22ae4761e8b2a34011b905` |
| 44 | `theorem` | [leftMoves_mul_cases](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/leftmoves-mul-cases.md) | 377 | `result-track:b2d09bd7ee9369b8eb919bb1d2199c7ebfdae104d45cd0914acdb77738dafcb9` |
| 45 | `theorem` | [rightMoves_mul_cases](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/rightmoves-mul-cases.md) | 386 | `result-track:2fface38dd4a986e8263561372b084d812453b2983ac15fc2b036cf034a9b914` |
| 46 | `def` | [mulCommRelabelling](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/mulcommrelabelling.md) | 396 | `declaration-track:d23f0e2d9e720dbe06fd0c9a9544f985cd387702a924c4a3d1e20566927cee0a` |
| 47 | `theorem` | [quot_mul_comm](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/quot-mul-comm.md) | 411 | `result-track:f67a10fa438f33eaaa69c573416878955a13d3c312d9fa6044aec89fcf7bf156` |
| 48 | `theorem` | [mul_comm_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/mul-comm-equiv.md) | 416 | `result-track:cd2a32556b725cf4f10e69f91add0f0f8debfe27c92cecdf52c06f0c1d28f5ac` |
| 49 | `instance` | [isEmpty_mul_zero_leftMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/isempty-mul-zero-leftmoves.md) | 420 | `declaration-track:603bf0d494b8af1118465959519174a2595fdc59867486abd44cd2db2090701a` |
| 50 | `instance` | [isEmpty_mul_zero_rightMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/isempty-mul-zero-rightmoves.md) | 425 | `declaration-track:22f3203f9850c6686ec26345cb5a5e5e2c11d636ce174c9a32cd6dbbf6bcb314` |
| 51 | `instance` | [isEmpty_zero_mul_leftMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/isempty-zero-mul-leftmoves.md) | 430 | `declaration-track:6a05a32d5c1eb1053ca620b7cb4500c9f8fcf257f24615032dd6fe44276d81f9` |
| 52 | `instance` | [isEmpty_zero_mul_rightMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/isempty-zero-mul-rightmoves.md) | 435 | `declaration-track:4480bb840480e5571ba7a14e026e453393929f607bef70770491bcbaa6509a51` |
| 53 | `def` | [mulZeroRelabelling](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/mulzerorelabelling.md) | 441 | `declaration-track:e479f0c1aaf3e2fda696c454e2a6c4e59872d5a74698d9156bbc39e1e09ee683` |
| 54 | `theorem` | [mul_zero_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/mul-zero-equiv.md) | 446 | `result-track:23281db6492508ba8c8ac219e6e43433a145e673f159905f8501c25780427ee4` |
| 55 | `theorem` | [quot_mul_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/quot-mul-zero.md) | 451 | `result-track:553106b93f46916f942ed58483cd48aedec57e5c8cb531d0c7619e074ca0290a` |
| 56 | `def` | [zeroMulRelabelling](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/zeromulrelabelling.md) | 456 | `declaration-track:f8b90de5bf52d616ce03cd4f282db45744136bb9a26eb5a6822c08352de97bcb` |
| 57 | `theorem` | [zero_mul_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/zero-mul-equiv.md) | 461 | `result-track:72e603edbb46f497dc56e860c87dbf34c2747f52f65aa0415e81020e924cb2fb` |
| 58 | `theorem` | [quot_zero_mul](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/quot-zero-mul.md) | 466 | `result-track:3a1066598fa9b82f7ca86135c2cdaf3f8eef1c5968fa972edf4b9f749ac661f8` |
| 59 | `def` | [negMulRelabelling](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/negmulrelabelling.md) | 471 | `declaration-track:8a4e8f08fd404e5f0468809d6598413677913b41958588f2e78a35125fc54922` |
| 60 | `theorem` | [quot_neg_mul](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/quot-neg-mul.md) | 492 | `result-track:deb5318ce818eabb94111bd83e9392bba281be096b68f465e37a52af3e0d3997` |
| 61 | `def` | [mulNegRelabelling](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/mulnegrelabelling.md) | 497 | `declaration-track:f0437646d33edadbccf1629fb21c7238f3264cbd7051b8719aea9444220523fa` |
| 62 | `theorem` | [quot_mul_neg](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/quot-mul-neg.md) | 502 | `result-track:de5e4110f2b211ed36a75b1606f5fa9d7a4ef8a2f5731d9d4c33fe3261078177` |
| 63 | `theorem` | [quot_left_distrib](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/quot-left-distrib.md) | 507 | `result-track:20d7287fe7daf3ee86829b1fb415eedb17695fd6195ae19f494d961edd4f8288` |
| 64 | `theorem` | [left_distrib_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/left-distrib-equiv.md) | 606 | `result-track:75edbfd62f49f13ce2d4f1074da3de3af1eca6b6693c9a7684d9ae55543c2955` |
| 65 | `theorem` | [quot_left_distrib_sub](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/quot-left-distrib-sub.md) | 611 | `result-track:c2aecd0b89b3d4120439bd78cc1de561d0eb0102ae0b111faee70f59e266d2b4` |
| 66 | `theorem` | [quot_right_distrib](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/quot-right-distrib.md) | 617 | `result-track:b4098b3211ace633fa3df62fbd77147982eaef4293ddcdd3df5c37663687e38b` |
| 67 | `theorem` | [right_distrib_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/right-distrib-equiv.md) | 622 | `result-track:f9fc0e9b6d83ec84a7d3d2b35b406f89f3eedfb6d15269f875a8604920460cf7` |
| 68 | `theorem` | [quot_right_distrib_sub](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/quot-right-distrib-sub.md) | 627 | `result-track:f96622ad33cf14f4c559330b2897541f03c2c8c1edfdd6d6b40a94d7beea0089` |
| 69 | `def` | [mulOneRelabelling](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/mulonerelabelling.md) | 633 | `declaration-track:538542982bafb8d10d1fec2a931b62ff156a7bc3df0774b0e7b915e61d384b12` |
| 70 | `theorem` | [quot_mul_one](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/quot-mul-one.md) | 654 | `result-track:28af8e171c1213f7cbebec1703d765bb848677532e0ffeb297bfb498deaef8bc` |
| 71 | `theorem` | [mul_one_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/mul-one-equiv.md) | 659 | `result-track:78075a1c38acddbca6fcf7ba5ba67638db904cb28b4b3330418ba3073f6524e3` |
| 72 | `def` | [oneMulRelabelling](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/onemulrelabelling.md) | 664 | `declaration-track:c6e929422838957d46e5f52c60b15ae6bcbcb7f47f98ccd9d1f2d81cf5dd2aa4` |
| 73 | `theorem` | [quot_one_mul](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/quot-one-mul.md) | 669 | `result-track:8e0472877894d6f84f4c5db2a4531fe61cf76d5e94712f6619c5a5a66ce5b831` |
| 74 | `theorem` | [one_mul_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/one-mul-equiv.md) | 674 | `result-track:0335145d7abad4784a56ccc8031c87ffdf240c50e895be80b78db66910cef764` |
| 75 | `theorem` | [quot_mul_assoc](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/quot-mul-assoc.md) | 678 | `result-track:523012e428ffb58526848155266ca7b8cc5648b9d9a3f5287c0f20fce0e3cf46` |
| 76 | `theorem` | [mul_assoc_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/mul-assoc-equiv.md) | 831 | `result-track:f9161061389fe60d7f10cf437fbdbb30358c6e1a481baf2da64dd8bf7b402a0d` |
| 77 | `inductive` | [InvTy](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/invty.md) | 838 | `declaration-track:759ff50be6dda9e32121adef0b9c4adff477ba4cb49bd053942c77490e45c518` |
| 78 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/instance.md) | 846 | `declaration-track:60a325dc233a318a5743bb62c095dec836cfb2dc8926cb1f5e19a587b1d58d9a` |
| 79 | `instance` | [InvTy.instInhabited](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/invty-instinhabited.md) | 849 | `declaration-track:a51c1e6c82fd8b758fec61d0a755c16ba94999fddaf69585ed44706543f554df` |
| 80 | `instance` | [uniqueInvTy](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/uniqueinvty.md) | 852 | `declaration-track:229b8e2e1fcb7eb23f07cfc509a50ffc993d2133c2f7c9b9c81c0eecfa15a375` |
| 81 | `def` | [invVal](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/invval.md) | 863 | `declaration-track:ff8fa617e4acc7812c4a0ac18394674670b89510d8a8e9f0800ac4816f671792` |
| 82 | `theorem` | [invVal_isEmpty](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/invval-isempty.md) | 873 | `result-track:f873d73b395102a2d3659c9a8fb1947e0a54db03f64febd052ebbce745e4153c` |
| 83 | `def` | [inv'](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/inv.md) | 886 | `declaration-track:49aac1e36dfc3c7a509a3116f5446aa7f3415178cfbbfb15f9010feeb005ff6c` |
| 84 | `theorem` | [zero_lf_inv'](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/zero-lf-inv.md) | 895 | `result-track:7c0027bbc6eb82479daebded7305911f74ef59b42f659923c2d06835c590b5c1` |
| 85 | `def` | [inv'Zero](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/inv-zero.md) | 902 | `declaration-track:54a521cc9a83c0371e2d35cd0072e1bd4e2f2b2cf7c29161e517274934060719` |
| 86 | `theorem` | [inv'_zero_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/inv-zero-equiv.md) | 913 | `result-track:a9297b30c12f89fc8985ae2998faa6af89e9883ad9e5943a6078c442add21b16` |
| 87 | `def` | [inv'One](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/inv-one.md) | 918 | `declaration-track:d9c0fa27d0f25ce05efa9aa4df383c0ada9899d252d3c013470734769ac6718a` |
| 88 | `theorem` | [inv'_one_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/inv-one-equiv.md) | 931 | `result-track:1a67e620865456c8d83bcfc5527ede11c4909ffbe1e3fa003f8d9afc6e84e27c` |
| 89 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/instance-source-edition-4.md) | 936 | `declaration-track:868af8734399aab277ee381236c258372f891dce57ec18ef7e132be574516b0a` |
| 90 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/instance-source-edition-6.md) | 939 | `declaration-track:d10355506d6d9766ac58e301ea3a36226f036a9e22b1067a6b82ced780c6cf2f` |
| 91 | `theorem` | [inv_eq_of_equiv_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/inv-eq-of-equiv-zero.md) | 942 | `result-track:1b010f0d199232b7abe657f8345aa1f54031ad600d95ef1fd44058736ae3c601` |
| 92 | `theorem` | [inv_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/inv-zero-source-edition-2.md) | 946 | `result-track:86d1b3ddf846a07b69d1f7fa732f953629709aab01230583b8c696792d02ea10` |
| 93 | `theorem` | [inv_eq_of_pos](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/inv-eq-of-pos.md) | 950 | `result-track:ffa8a084021c82ab5f381d12c93e3e262b5865945372cf51ee1ac1f27315cc75` |
| 94 | `theorem` | [inv_eq_of_lf_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/inv-eq-of-lf-zero.md) | 954 | `result-track:9a1384737894346a8968c15db318851ea16b4d5b075a38e7b189b64edc319f9f` |
| 95 | `def` | [invOne](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/invone.md) | 959 | `declaration-track:ff7170ebb40964fb2f922e9b82292da2a9a485bf23b9538a733c534757bb2a47` |
| 96 | `theorem` | [inv_one_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/GameBasicNamespacedNeg.lean/declarations/inv-one-equiv-source-edition-2.md) | 964 | `result-track:4ca0f232212090566ed7410c7bc295267dd17ffbfc1319709d8d7c1a5d9b8cb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=961838a69b57f2ee9c8670da5cab6b835cf1705b002794d32c85725841dd73ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa103f7c2ea9dce50fde93dd6d102d4febf9381c5254f7c997191c0dd11445e6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa103f7c2ea9dce50fde93dd6d102d4febf9381c5254f7c997191c0dd11445e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
