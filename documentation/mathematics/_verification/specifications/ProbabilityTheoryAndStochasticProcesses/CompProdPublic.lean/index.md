# Verification target: Comp Prod Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22bb4f87cabc0c7194937fe1139324fc639ab6c9",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CompProd/Variantbbe403387684b1a9c377ba44077d17138273901c0d284b67e2fe7bb5a1c1f063.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22bb4f87cabc0c7194937fe1139324fc639ab6c9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CompProd/Variantbbe403387684b1a9c377ba44077d17138273901c0d284b67e2fe7bb5a1c1f063.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CompProd/Variantbbe403387684b1a9c377ba44077d17138273901c0d284b67e2fe7bb5a1c1f063.lean.json)

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
| 1 | `theorem` | [compProd_of_not_isSFiniteKernel_left](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-of-not-issfinitekernel-left.md) | 78 | `result-track:06c67cb1b440b43de6bac8e2d0fcecc2e9e83486ba0979bc32a5933c8813a838` |
| 2 | `theorem` | [compProd_of_not_isSFiniteKernel_right](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-of-not-issfinitekernel-right.md) | 84 | `result-track:3246befe94ccf7cf59829dd9ac538a80a47cefb76fec61b0bdeebaf22e857bd6` |
| 3 | `theorem` | [compProd_apply](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-apply.md) | 89 | `result-track:7c330565e60692cea6e6816b8ad676dd92162d27bc89cd27ff53be91e9809fbe` |
| 4 | `theorem` | [le_compProd_apply](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/le-compprod-apply.md) | 119 | `result-track:a0402e78a0f353c922d9631e23fa7d8358e1bb39dfad9b9cd37796217469881b` |
| 5 | `lemma` | [compProd_apply_univ](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-apply-univ.md) | 131 | `result-track:c7d592ff578e9b2cf83331d0cc0d1e099b0800b4ab4f9590497468a434200195` |
| 6 | `lemma` | [compProd_apply_prod](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-apply-prod.md) | 137 | `result-track:c1b7cfbc4ba5f9c9109ba80ea1691dc380aec674a7c79bba88787ef7fe99b64a` |
| 7 | `lemma` | [compProd_congr](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-congr.md) | 145 | `result-track:3841f21f24806eb0a0d61e93c4883db81f3b4c80a4447b57f727ad9014cfc57d` |
| 8 | `lemma` | [compProd_zero_left](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-zero-left.md) | 156 | `result-track:a9d9b475473652359a2ad7fa633850bbc0e0864baefa361fe2275f89b836c7b8` |
| 9 | `lemma` | [compProd_zero_right](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-zero-right.md) | 165 | `result-track:58bb82b2ab485ac9aafce2b0f12be683a9526632db5d1fc692ba8f8bf6cff7bb` |
| 10 | `lemma` | [compProd_eq_zero_iff](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-eq-zero-iff.md) | 173 | `result-track:241fec9ea183723018367d1abb0579c2e6892790b2db42391f197b6b367af0b3` |
| 11 | `lemma` | [compProd_preimage_fst](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-preimage-fst.md) | 185 | `result-track:fe1f5df8ffb8a5fca974594c884fed39fd4831cf3eb9feafb67d7c8b8a55e614` |
| 12 | `lemma` | [compProd_deterministic_apply](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-deterministic-apply.md) | 196 | `result-track:aa9ad871eb0cac5c5940e9a2f610e849e763ef649f3cc647b259d064bedafb15` |
| 13 | `theorem` | [ae_kernel_lt_top](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/ae-kernel-lt-top.md) | 224 | `result-track:4e5c6296d99fce74b60197b02a55b8a175984be7b46eaf56c4bcae3af169c081` |
| 14 | `theorem` | [compProd_null](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-null.md) | 237 | `result-track:d308486a9efabecf5302d7ad757357a422fa4dd5dc72c55c013e939341991193` |
| 15 | `theorem` | [ae_null_of_compProd_null](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/ae-null-of-compprod-null.md) | 242 | `result-track:d5a14b27ad71fb16d138a46e1d64a7743dfc73b7b2d316e788946a4f952f849a` |
| 16 | `theorem` | [ae_ae_of_ae_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/ae-ae-of-ae-compprod.md) | 252 | `result-track:0c07504ce0df1a96b8b1952c78fe7b0d33189e7ccea2531b552b0f5b27b68909` |
| 17 | `lemma` | [ae_compProd_of_ae_ae](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/ae-compprod-of-ae-ae.md) | 256 | `result-track:c82c5605b029cb002ecd2ea458e4e851b46212473d5929de9dc48e2d07e82cb4` |
| 18 | `lemma` | [ae_compProd_iff](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/ae-compprod-iff.md) | 269 | `result-track:6870ec95bc5269bb7dfdb770e98be8df2ed45fc6cddd7d02b5cf55dacfc771aa` |
| 19 | `theorem` | [compProd_restrict](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-restrict.md) | 279 | `result-track:80e16c2e8008aa2e4eb8fe256cbf1467cf15859310cd72d829466ba1c31e8d65` |
| 20 | `theorem` | [compProd_restrict_left](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-restrict-left.md) | 295 | `result-track:868d96dba93f41c3e7979c8904301f7bc49313a82fdeb68454bbb108eae636bb` |
| 21 | `theorem` | [compProd_restrict_right](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-restrict-right.md) | 300 | `result-track:67a7a13a4197dabd8898d8a70a1f73dbb76a826d852b98e15e5baa49b3365b74` |
| 22 | `theorem` | [lintegral_compProd'](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/lintegral-compprod.md) | 313 | `result-track:5ecc0f9b9fa4b2e4e7dd7652d47412890df227176900ad1b7d38603032aadbe7` |
| 23 | `theorem` | [lintegral_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/lintegral-compprod-source-edition-2.md) | 369 | `result-track:700dc8b8b7c1c4344edebb2e91ec1922aeeb47bddd793a2a8874133cebefae51` |
| 24 | `theorem` | [lintegral_compProd₀](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/lintegral-compprod-source-edition-3.md) | 379 | `result-track:98788043ae198c64f4b2c60e75c38c8a51629cf470b1951158994053c51bccde` |
| 25 | `theorem` | [setLIntegral_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/setlintegral-compprod.md) | 389 | `result-track:28afc51e5950d22eaeb49a68fdc716246a55753c2db97bb4e01746c2aab18290` |
| 26 | `theorem` | [setLIntegral_compProd_univ_right](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/setlintegral-compprod-univ-right.md) | 396 | `result-track:234b11c792172f775d73ac624a6fa19a56eea95a94df37325773742b26581015` |
| 27 | `theorem` | [setLIntegral_compProd_univ_left](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/setlintegral-compprod-univ-left.md) | 402 | `result-track:0a55f894a6c9f8ecaad6dbfb9324f67de614c346c9fbab5240d90ad7483df298` |
| 28 | `theorem` | [compProd_eq_sum_compProd_left](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-eq-sum-compprod-left.md) | 410 | `result-track:6f1cd1c5305f3e90d04de50aedd388629efd09a82c29eda6e6c666ad62b9c5ee` |
| 29 | `theorem` | [compProd_eq_sum_compProd_right](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-eq-sum-compprod-right.md) | 415 | `result-track:1845561d20a6e3a712c0a73885bb5b4acc23191d003bd30db74c5eeaa5719775` |
| 30 | `theorem` | [compProd_eq_sum_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-eq-sum-compprod.md) | 421 | `result-track:9bf0f6e69b5b1d19d1e97d12b19553c98a5b87d7cc7b4545cbbd48db4cc620d2` |
| 31 | `theorem` | [compProd_eq_tsum_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-eq-tsum-compprod.md) | 425 | `result-track:e13c4a35678e6f14ccc1877958ec8c24955536d2826904ad879efeb61939e3b5` |
| 32 | `instance` | [IsMarkovKernel.compProd](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/ismarkovkernel-compprod.md) | 431 | `declaration-track:7e5ed282862b243b21a9bd2159ed485ee5337c397fd894f769c1dce071d9cd47` |
| 33 | `instance` | [IsZeroOrMarkovKernel.compProd](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/iszeroormarkovkernel-compprod.md) | 435 | `declaration-track:9d7432c65aa47710832e23344053f439aae94bf4c96715caa2aad0857eae5f87` |
| 34 | `theorem` | [compProd_apply_univ_le](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-apply-univ-le.md) | 440 | `result-track:2cf9c50226fbad25d5f0171859e25363933bce8b55d000d43922b9a81b1cc685` |
| 35 | `instance` | [IsFiniteKernel.compProd](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/isfinitekernel-compprod.md) | 454 | `declaration-track:6220edf061534b430f0cf1e3e1ec7c4771394f7280065ef390470e62fadd9e69` |
| 36 | `instance` | [IsSFiniteKernel.compProd](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/issfinitekernel-compprod.md) | 459 | `declaration-track:80e734d50b6a06da115396c8e67aa6aa1855c496ad6052ce731252fb57192f25` |
| 37 | `lemma` | [compProd_assoc](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-assoc.md) | 466 | `result-track:dff4ff5b394b386d71f1adc8568945ea1e81550a122740d53f92b837c190d8ab` |
| 38 | `lemma` | [compProd_add_left](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-add-left.md) | 495 | `result-track:6dda1a7f8cf41737d2372a54f8d83d650c86067ba82659da869efa8e3b2da61b` |
| 39 | `lemma` | [compProd_add_right](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-add-right.md) | 503 | `result-track:84923d0dfba5f32cdaffd8c41b0d19f01ec0765afd84a029e6f933bdab01a931` |
| 40 | `lemma` | [compProd_sum_left](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-sum-left.md) | 513 | `result-track:19778b82f2d49c60ce7a16783a2b29a3f7a96f0d5071bed080c752b013a87343` |
| 41 | `lemma` | [compProd_sum_right](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/compprod-sum-right.md) | 522 | `result-track:bec2d06db3d9628a251a5c0c8cc69925375479d4dc903ca6ff548bbb0a75b1de` |
| 42 | `lemma` | [comapRight_compProd_id_prod](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/comapright-compprod-id-prod.md) | 535 | `result-track:6e61ceeb68008207d870aa989c6748d1199e6352fd827d182783c4152b3f16cf` |
| 43 | `lemma` | [fst_compProd_apply](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/fst-compprod-apply.md) | 555 | `result-track:36d5c6710ccf1f8d496a828f7cb0c8412a19efe4fbd6e4adc4c5e3bf18bb8b16` |
| 44 | `lemma` | [fst_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/CompProdPublic.lean/declarations/fst-compprod.md) | 565 | `result-track:256b024225a62cfcc5f72fd91dd0595bd573e77b92198d667eed32c54071bfb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1969afeaa85d77430d2d05c77d0b04cc880477f1b25bb92a74117bb2f1bdca71 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CompProd/Variantbbe403387684b1a9c377ba44077d17138273901c0d284b67e2fe7bb5a1c1f063.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/CompProd/Variantbbe403387684b1a9c377ba44077d17138273901c0d284b67e2fe7bb5a1c1f063.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
