# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78839dfc7c2acac898cb976d440ba8f000f4c2e8",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78839dfc7c2acac898cb976d440ba8f000f4c2e8`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction`](../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Data.Nat.Squarefree` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredMobiusLogSquarefreeDivisorIndexSet](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogsquarefreedivisorindexset.md) | 54 | `declaration-track:6fa83024fd44abe068d4dd2f221f0c06b63cc3638d7b37732b68f62bdb785203` |
| 2 | `theorem` | [none_mem_centeredMobiusLogSquarefreeDivisorIndexSet](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/none-mem-centeredmobiuslogsquarefreedivisorindexset.md) | 61 | `result-track:ac8bf7dd18c4dcc1727ac960cc2db4cf8a09741905fa8ebfe52a83658487b96f` |
| 3 | `theorem` | [some_mem_centeredMobiusLogSquarefreeDivisorIndexSet_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/some-mem-centeredmobiuslogsquarefreedivisorindexset-iff.md) | 68 | `result-track:d1735c2a64597d32c1863feee02f2e07bcb9f1ee5fa812075641c52414a279e9` |
| 4 | `theorem` | [centeredMobiusLogDivisorTerm_eq_zero_of_not_squarefree](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogdivisorterm-eq-zero-of-not-squarefree.md) | 76 | `result-track:4f785389f6ae5cf6e0282ebd8070fc5e9893fca38062e1fa05cc6f3bb7c2085b` |
| 5 | `theorem` | [centeredMobiusLogSquarefreeDivisorIndexSet_subset](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogsquarefreedivisorindexset-subset.md) | 85 | `result-track:734bd3cdc1b17e668b84eba4f9a3f813efb5657b1b091786710af5e3b265f2f3` |
| 6 | `def` | [centeredMobiusLogSquarefreeDivisorIndexSum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogsquarefreedivisorindexsum.md) | 100 | `declaration-track:88a7005337b9b425c141ed1493b6bc14da55e8fd3ed22311ac3c05426fc6c6f0` |
| 7 | `theorem` | [centeredMobiusLogSquarefreeDivisorIndexSum_eq_raw](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogsquarefreedivisorindexsum-eq-raw.md) | 106 | `result-track:1373d47ef70404c75be23536d232bf515a9309d31ce26beb3916cc6a2e5ac231` |
| 8 | `theorem` | [squarefree_mobiusLogDivisorSum_eq_full](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/squarefree-mobiuslogdivisorsum-eq-full.md) | 134 | `result-track:662772a1bb587534668c8b8a93880176065072cd073d694e1edca6c49d1b4288` |
| 9 | `theorem` | [centeredMobiusLogSquarefreeDivisorIndexSum_eq_centeredVonMangoldt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogsquarefreedivisorindexsum-eq-centeredvonmangoldt.md) | 149 | `result-track:18d7846b6ef4d96701b0724ec24a1393accf529fe947053d6e1832e0ebc78dd9` |
| 10 | `def` | [centeredMobiusLogSquarefreeDivisorPairBlock](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogsquarefreedivisorpairblock.md) | 160 | `declaration-track:8c87b6fe200c94113bf8ef2a943abefca4c9b3789e92c4f2f8210b77fd2a0c39` |
| 11 | `theorem` | [centeredMobiusLogSquarefreeDivisorPairBlock_eq_indexSum_mul](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogsquarefreedivisorpairblock-eq-indexsum-mul.md) | 167 | `result-track:7596a3903a471bf8024f7373ed9c8e817bfdf7360d3da40cfb1155b4480bf1c9` |
| 12 | `theorem` | [centeredMobiusLogSquarefreeDivisorPairBlock_eq_centeredVonMangoldt_mul](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogsquarefreedivisorpairblock-eq-centeredvonmangoldt-mul.md) | 182 | `result-track:5f97c99c5f9b967f0256e57d0b5ca33fd29a278e59a80d2645ad90549f254efd` |
| 13 | `theorem` | [centeredMobiusLogSquarefreeDivisorPairBlock_eq_divisorPairBlock](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogsquarefreedivisorpairblock-eq-divisorpairblock.md) | 193 | `result-track:0a04502ebb8c275588ad68f5abb476909799d9e9abe84514139fdada110f3963` |
| 14 | `def` | [centeredMobiusLogSquarefreeDivisorPairIndexSet](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogsquarefreedivisorpairindexset.md) | 208 | `declaration-track:9bf8ba9fad604e0dc5e94022d392aeaffba91cce5fe757f2c7d514422c9a04aa` |
| 15 | `theorem` | [mem_centeredMobiusLogSquarefreeDivisorPairIndexSet_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/mem-centeredmobiuslogsquarefreedivisorpairindexset-iff.md) | 215 | `result-track:a1bd60b4553e5c60a798d8b80ab062efe15c0ce1864a28d2f4e3de7fbf74985b` |
| 16 | `def` | [centeredMobiusLogPairGCD](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogpairgcd.md) | 224 | `declaration-track:0f36861bf45210513e0a253b524eb9a3e553e3efa88f9c040fd181e6402677ef` |
| 17 | `def` | [centeredMobiusLogPairPrimitiveLeft](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogpairprimitiveleft.md) | 231 | `declaration-track:eb987681ead5538e509ae4278e7423274f49f4734c5efb02a2beb776ff2cec8c` |
| 18 | `def` | [centeredMobiusLogPairPrimitiveRight](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogpairprimitiveright.md) | 237 | `declaration-track:0c9b0b194861e24ae1e5286636e5572154e1228d4cfd4eb6534ada9cc64d36d7` |
| 19 | `def` | [centeredMobiusLogPairPrimitiveModulus](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogpairprimitivemodulus.md) | 243 | `declaration-track:0681296242d09cb582888c7b06e1feedd6bd9e4e29f475e338802ff34e7d4cf1` |
| 20 | `theorem` | [centeredMobiusLogDivisorModulus_squarefree_of_mem](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogdivisormodulus-squarefree-of-mem.md) | 250 | `result-track:9f0a2689589e0c00fb21e9579c64fcf0c4a705a30c548d07a04e801670f3936c` |
| 21 | `theorem` | [centeredMobiusLogDivisorModulus_pos_of_mem](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogdivisormodulus-pos-of-mem.md) | 264 | `result-track:3817f267aedcc2b50857aa9431f73cfa71a9fc603b58a7f142a0a18d9130340e` |
| 22 | `theorem` | [centeredMobiusLogPairGCD_squarefree_of_mem](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogpairgcd-squarefree-of-mem.md) | 279 | `result-track:ae8d09334fdea4ea1363931eb7979dc9e24a6d0c1b54a0cdee8f5d8bb1315e32` |
| 23 | `theorem` | [centeredMobiusLogPairGCD_pos_of_mem](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogpairgcd-pos-of-mem.md) | 296 | `result-track:a4ea0e41c0b33c084531454bb1a053fb097ad6a13ee099c64dbc935a22523463` |
| 24 | `theorem` | [centeredMobiusLogPairGCD_dvd_shift_of_mem](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogpairgcd-dvd-shift-of-mem.md) | 310 | `result-track:815f6783d71e04d548d15967cdfaa716961b7288b855776e58673fa287223bb7` |
| 25 | `theorem` | [centeredMobiusLogPairPrimitive_coprime_of_mem](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogpairprimitive-coprime-of-mem.md) | 327 | `result-track:4f4a84af367ef2586d37b1f47d15c8023fed8a509af5cdf52f67177747133a41` |
| 26 | `theorem` | [centeredMobiusLogPairPrimitiveLeft_squarefree_of_mem](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogpairprimitiveleft-squarefree-of-mem.md) | 341 | `result-track:7dfc81c17315462c290d5cb704fe5cd17503457c2adf752e34f030bb95dd12ad` |
| 27 | `theorem` | [centeredMobiusLogPairPrimitiveRight_squarefree_of_mem](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogpairprimitiveright-squarefree-of-mem.md) | 360 | `result-track:6e492985c24711ea245494ef19134a64564136fc514c3226d9de6700c6875bb3` |
| 28 | `theorem` | [centeredMobiusLogPairPrimitiveModulus_squarefree_of_mem](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogpairprimitivemodulus-squarefree-of-mem.md) | 379 | `result-track:82c6aba0ec87509716adacb8e5cf81fa0ba635f64098aa83577125dbfbbdfc4e` |
| 29 | `theorem` | [centeredMobiusLogModulus_mul_eq_gcd_sq_mul_primitive](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogmodulus-mul-eq-gcd-sq-mul-primitive.md) | 393 | `result-track:56471c56e4673c93f1207edf1a7b8cb7ae0bafbe4e9caba32d14b27b7d495e86` |
| 30 | `theorem` | [centeredMobiusLogPairGCD_mul_lcm_eq_gcd_sq_mul_primitive](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogpairgcd-mul-lcm-eq-gcd-sq-mul-primitive.md) | 436 | `result-track:2ee17198400569327e6cf09b6d79331f9e4292c85bc8c48ab3c915ba727b1ef6` |
| 31 | `def` | [centeredMobiusLogSquarefreeShiftDivisorSet](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogsquarefreeshiftdivisorset.md) | 462 | `declaration-track:90e24cabe5f4f58d11568e711bd7eda596c46f0c1370292bf4af7a98537c025a` |
| 32 | `theorem` | [mem_centeredMobiusLogSquarefreeShiftDivisorSet_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/mem-centeredmobiuslogsquarefreeshiftdivisorset-iff.md) | 467 | `result-track:6b09b0926bc7135bc9c7aa32007c066c675c69e1baaae1d627293115ff3b331b` |
| 33 | `theorem` | [centeredMobiusLogPairGCD_mapsTo_squarefreeShiftDivisors](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogpairgcd-mapsto-squarefreeshiftdivisors.md) | 475 | `result-track:1ea869d6f408fcc346e91a1fd5e6871ffb2a92917ac3edb583dde030171a14b4` |
| 34 | `def` | [centeredMobiusLogSquarefreePairGCDClassIndexSet](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogsquarefreepairgcdclassindexset.md) | 489 | `declaration-track:abf8c6ffecd2d7c06ab7342bd41b26a7d58f403b5bb598b8ceee5f4584f9e928` |
| 35 | `theorem` | [mem_centeredMobiusLogSquarefreePairGCDClassIndexSet_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/mem-centeredmobiuslogsquarefreepairgcdclassindexset-iff.md) | 496 | `result-track:c7e58a6934fa2b135687611824029cf4eed3f915771214f1ab2dea823d9ffabc` |
| 36 | `def` | [centeredMobiusLogSquarefreePairGCDClassBlock](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogsquarefreepairgcdclassblock.md) | 504 | `declaration-track:2906001df910350e4efaa9e38bb7b1cfbf800bace07afbe2a30ec7946beec296` |
| 37 | `def` | [centeredMobiusLogSquarefreeGCDPairBlock](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogsquarefreegcdpairblock.md) | 511 | `declaration-track:8d9aef87173b7c32a0751b35918e3a747f11bd965c527ab47fd94c2158579d9e` |
| 38 | `theorem` | [centeredMobiusLogSquarefreeDivisorPairBlock_eq_pairIndexSum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogsquarefreedivisorpairblock-eq-pairindexsum.md) | 517 | `result-track:42660aeffc9f68f67ba3ed997d6e5f3065e0c3593f867aeda81311022e3285b6` |
| 39 | `theorem` | [centeredMobiusLogSquarefreeGCDPairBlock_eq_squarefreePairBlock](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogsquarefreegcdpairblock-eq-squarefreepairblock.md) | 528 | `result-track:ca462085360c0e712769016831a1c1a562be1144e9e6a3531daab273621eeeaa` |
| 40 | `theorem` | [centeredMobiusLogSquarefreeGCDPairBlock_eq_divisorPairBlock](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/centeredmobiuslogsquarefreegcdpairblock-eq-divisorpairblock.md) | 545 | `result-track:29fa3d1bedbd89adaf5240995c5fa860ac603784469e2459ce9d1ab3a73a27db` |
| 41 | `def` | [nonAliasingFejerMobiusLogSquarefreeGCDShiftCorrelation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/nonaliasingfejermobiuslogsquarefreegcdshiftcorrelation.md) | 554 | `declaration-track:12043b13d9531989b3a5ff2b894843f2f721105218f92080e87857ef6db1905c` |
| 42 | `theorem` | [nonAliasingFejerMobiusLogSquarefreeGCDShiftCorrelation_eq_lcmProgression](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/nonaliasingfejermobiuslogsquarefreegcdshiftcorrelation-eq-lcmprogression.md) | 563 | `result-track:778867ddb969b039b26e24d4776dafa953721eeb512be362ab6d3f7ab743ddde` |
| 43 | `def` | [nonAliasingFejerMobiusLogSquarefreeGCDAggregate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/nonaliasingfejermobiuslogsquarefreegcdaggregate.md) | 577 | `declaration-track:dbcbc5b4e768aab681b6111a8dfcd4cb370d2f88f5ff2ce1aaad081f4dceb3ef` |
| 44 | `theorem` | [nonAliasingFejerMobiusLogSquarefreeGCDAggregate_eq_lcmProgression](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/nonaliasingfejermobiuslogsquarefreegcdaggregate-eq-lcmprogression.md) | 584 | `result-track:869a84906b014ca303a584d50801ef93e608a3411e1f4bfa292b3a3c16750643` |
| 45 | `def` | [SevenEighthsBoundaryMinimalMobiusLogSquarefreeGCDBound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/seveneighthsboundaryminimalmobiuslogsquarefreegcdbound.md) | 600 | `declaration-track:dd16fcbee3919f6e7de7453cccb18d99f023746098abc2f13c8bbe1f2b775469` |
| 46 | `theorem` | [mobiusLogSquarefreeGCDBound_to_lcmProgressionBound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/mobiuslogsquarefreegcdbound-to-lcmprogressionbound.md) | 620 | `result-track:244a8b5f6e7d1806c12ac9be52b23e569d7174227487e50eb4b9296fdc85e2df` |
| 47 | `theorem` | [lcmProgressionBound_to_mobiusLogSquarefreeGCDBound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/lcmprogressionbound-to-mobiuslogsquarefreegcdbound.md) | 633 | `result-track:fa5478abf204c16ce8a392dfcfb8589ddc7ca5c33f9ca591e203d704cc118ec8` |
| 48 | `theorem` | [mobiusLogSquarefreeGCDBound_iff_lcmProgressionBound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/mobiuslogsquarefreegcdbound-iff-lcmprogressionbound.md) | 645 | `result-track:ce102d1c625fae6518d4b3ad1df4a3f61d15dba9d23cb76c8f4bf962703829bd` |
| 49 | `theorem` | [mobiusLogSquarefreeGCDBound_to_partialDiscrepancy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/mobiuslogsquarefreegcdbound-to-partialdiscrepancy.md) | 654 | `result-track:1aac6a574c117dd2206ceb9fea8a570d645462a93ed868e1ff926b3bc56cfc0d` |
| 50 | `def` | [squarefreeGCDStratificationBookkeepingExponent](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/squarefreegcdstratificationbookkeepingexponent.md) | 668 | `declaration-track:d31a8fde34ff0fe84c2045faed9fa343781f417b38a23c6be4f33cae59c4bf19` |
| 51 | `def` | [squarefreeGCDStratificationTargetExponent](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/squarefreegcdstratificationtargetexponent.md) | 671 | `declaration-track:9b6181bf2c081c2998da76716e4ced9b5ce4419c57acf3602bd9a83a4dccf66c` |
| 52 | `theorem` | [squarefreeGCDStratificationTarget_lt_bookkeeping](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/declarations/squarefreegcdstratificationtarget-lt-bookkeeping.md) | 674 | `result-track:bd79dff4cd4676d9a662328c9997261b9f0a4dafb8a8cf481f6ff8b1a3ae01b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=38a1b2c75ff31b1a13e5ad89fd8a9859b048c26e3297c673491491059a722aea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
