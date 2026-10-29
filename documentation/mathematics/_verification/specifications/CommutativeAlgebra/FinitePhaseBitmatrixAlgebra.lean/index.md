# Verification target: Finite Phase Bitmatrix Algebra

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e72349962b2c63696f6db9d063d600f738ea327a",
  "lexical_observation_count": 114,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/FinitePhaseBitmatrixAlgebra/Variantd7096e8ad3c4e7866af01c933c7e4121a0dcf1fa2ba8a78d6b6f6d435e43275a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e72349962b2c63696f6db9d063d600f738ea327a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/FinitePhaseBitmatrixAlgebra/Variantd7096e8ad3c4e7866af01c933c7e4121a0dcf1fa2ba8a78d6b6f6d435e43275a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/FinitePhaseBitmatrixAlgebra/Variantd7096e8ad3c4e7866af01c933c7e4121a0dcf1fa2ba8a78d6b6f6d435e43275a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.ModularSymmetryStack` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Mat2F2](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/mat2f2.md) | 7 | `declaration-track:306f0b0aa419300b4f5980d3e7ce6c6298bb9a72e13037edb4bc65d498b0c31d` |
| 2 | `def` | [detMod2](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/detmod2.md) | 14 | `declaration-track:cde3335fe25a71525e38595301be698b1a797f84c6159b63662ff667c31a6c96` |
| 3 | `def` | [ordinaryTrace](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/ordinarytrace.md) | 17 | `declaration-track:9504d67e727231a039beb6676eb76bc2aaa857bc53f021b4d7ac924f5426d2d5` |
| 4 | `def` | [traceMod2](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/tracemod2.md) | 20 | `declaration-track:0b0cc8584111796ff337024180c120e7e2b736e040c5fbb5a3509d1c96372782` |
| 5 | `def` | [shiftedDetMod2](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/shifteddetmod2.md) | 23 | `declaration-track:08153fc8c9005afc2c8aa05c5fc4253eb333d1e690aeac0aa1d183777c4f902f` |
| 6 | `def` | [shiftedDetFormulaMod2](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/shifteddetformulamod2.md) | 26 | `declaration-track:50068954bddf79b6334eb7ca0ab4e959714886a233dbcc5f590df8b96b8f9896` |
| 7 | `def` | [phase](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/phase.md) | 29 | `declaration-track:035c1c195174051df8fcf1810a453db8e9becf8b4aa1e1894b1b7b5c6e929bbc` |
| 8 | `def` | [allMat2F2](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/allmat2f2.md) | 32 | `declaration-track:7e44b61fe42490c38cb89870e360a9c949121574e3fe38d25c02f546c9abeff6` |
| 9 | `def` | [countDet](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/countdet.md) | 51 | `declaration-track:76395487c5ef743f8ecfef9a54a839bdfbb76776bc466aea351f8d1acf22fc2f` |
| 10 | `def` | [countShiftedDet](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/countshifteddet.md) | 54 | `declaration-track:20d2aad8a63db99d66c9a773be91732d0da5cbdf2e715afae09aff45c8f1300f` |
| 11 | `def` | [countPhase](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/countphase.md) | 57 | `declaration-track:8f880010aa46c676ee211d4a017d2998c11b2ebdff677649216bdbf6ebecf887` |
| 12 | `def` | [shiftedFormulaHoldsForTable](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/shiftedformulaholdsfortable.md) | 60 | `declaration-track:cde532ab468c98bdb460529b79f785415f972c4c72752242f6290d4d2936ae8b` |
| 13 | `inductive` | [RankIdentityBucket](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/rankidentitybucket.md) | 63 | `declaration-track:54cd45557ab3c21d508ca1d6fe6e00090206201c91c6d5c6e60568b709f8f8ea` |
| 14 | `def` | [zeroMatrix](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/zeromatrix.md) | 70 | `declaration-track:d1434c102d64acf4bcc3308eb67b4620629325d1b0ac764c7e8d9a182b4b10b0` |
| 15 | `def` | [identityMatrix](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/identitymatrix.md) | 73 | `declaration-track:f686f7b9edf3ff777a1565ea4caebe4b896651f3d97284aa152eec2eb47ceeba` |
| 16 | `def` | [rankIdentityBucket](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/rankidentitybucket-source-edition-2.md) | 76 | `declaration-track:b48694e42b96ea01d80ef9ac3c284889685bc014e7a713bbb4d2c3c7c8337099` |
| 17 | `def` | [countBucket](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/countbucket.md) | 86 | `declaration-track:d75de08aca73eed7ef8f8ecf486f1d18b64df1261702488e7d1d17a9c2d1ed81` |
| 18 | `structure` | [RankIdentityBucketSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/rankidentitybucketsurface-source-edition-2.md) | 89 | `declaration-track:e556281ea1579071e4f3d9c68613aef9d3624b3b9bb7612debf3272b0d6e0c00` |
| 19 | `def` | [rankIdentityBucketSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/rankidentitybucketsurface.md) | 98 | `declaration-track:34ab77feb372f9b20440e8fa085579da3988ebc72352244dde049a9e5284f3bf` |
| 20 | `structure` | [TracePolynomialSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/tracepolynomialsurface.md) | 106 | `declaration-track:7aa1d385f3c028df89a70c0f805b1800379f2b3fd42a5b6cb50845f33b7359e6` |
| 21 | `def` | [exampleTracePolynomialSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/exampletracepolynomialsurface.md) | 119 | `declaration-track:403bbbb6de7a20d5c74dbe6a9cc4f8fc15e82b416dafd07fff358c08a48add22` |
| 22 | `def` | [localSpinMobius](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/localspinmobius.md) | 131 | `declaration-track:47bed4c5be24186118242e7e91b29731affe5d287d4c3ffe581d60643a68a4ea` |
| 23 | `structure` | [FiniteLocalFactorProductSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/finitelocalfactorproductsurface.md) | 141 | `declaration-track:2acae8cecd597c05c71194d80ff8e15c8edba32b823b2ffab94813012ee391b8` |
| 24 | `def` | [finiteLocalFactorProductSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/finitelocalfactorproductsurface-source-edition-2.md) | 148 | `declaration-track:ebf8d53193ddf804b09f04993b9630cf5f7a89e49725d1febbf09701b4c5bbbe` |
| 25 | `inductive` | [CliffordDegenerationKind](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/clifforddegenerationkind.md) | 155 | `declaration-track:86b78a2be06b1144d51a8af25fcb0b421ccaa5ffe530b0d2a9d2f36afa337497` |
| 26 | `structure` | [CliffordDegenerationSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/clifforddegenerationsurface.md) | 160 | `declaration-track:3f48cca1f797ee4960edb45bc05e4558b1aa680666f00c0603f09d966b2a5ed3` |
| 27 | `def` | [cliffordDegenerationSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/clifforddegenerationsurface-source-edition-2.md) | 169 | `declaration-track:ff35590dc1deef8c5ad2ad0bb91633a1dfbe779af830cd665526bbf1a1d0926d` |
| 28 | `structure` | [FiniteEulerWindowSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/finiteeulerwindowsurface.md) | 181 | `declaration-track:5de9e8fba052c590fe116181707639dfaee80a0f98601ab2c546a9894ff00585` |
| 29 | `def` | [finiteEulerWindowAtHalf](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/finiteeulerwindowathalf.md) | 190 | `declaration-track:27b0100dd28497f807aceece604620d20636f6c039711ece3d0de87d672a7f27` |
| 30 | `inductive` | [PhaseResidueRoute](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/phaseresidueroute.md) | 198 | `declaration-track:7c2cabe99b1dee351709714e2ba2d3e87a9bec0900ab6e705b3850b65e6ec0d0` |
| 31 | `def` | [routePhaseResidue](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/routephaseresidue.md) | 204 | `declaration-track:6485097d8741d173120d6fe1c5f1975dd55145129d80a09caf5f744fc78f5b1d` |
| 32 | `structure` | [Mat2FpStateCountSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/mat2fpstatecountsurface-source-edition-2.md) | 212 | `declaration-track:c09872265d29f384b7b91c894eb35b2f898315730f3efda166a7ff5fc778361a` |
| 33 | `def` | [mat2FpStateCountSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/mat2fpstatecountsurface.md) | 219 | `declaration-track:33ecad125cab6f4fe474646ebe13e6552b2821d807f93e1b58a8bb8483b742e5` |
| 34 | `inductive` | [FrobeniusPhaseKind](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/frobeniusphasekind.md) | 225 | `declaration-track:e9c54f189c1713969fb10ab6a5a8fafc8f6a6ebfde000a8f7eacaab41dba1509` |
| 35 | `structure` | [GoodPrimeFrobeniusSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/goodprimefrobeniussurface.md) | 231 | `declaration-track:876875d6c52e52e42112e355d0d53266fcb22d798d4eb642cf79d53c969a99c9` |
| 36 | `def` | [ordinaryFrobeniusExample](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/ordinaryfrobeniusexample.md) | 240 | `declaration-track:7e2e0f5b902a3266dcb755ab78e9387f4d1f09b9a332d86a271762cc9cd415c5` |
| 37 | `def` | [supersingularFrobeniusExample](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/supersingularfrobeniusexample.md) | 248 | `declaration-track:cdcb4d5a2aac231011794d19f90ac1b9f9c02b7af150d115a03866fc22dcd12d` |
| 38 | `structure` | [FrobeniusEulerFactorSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/frobeniuseulerfactorsurface.md) | 256 | `declaration-track:3e8b36807fb88ca945355598f8b7e01bce7bd671e327650649f20dae8a03909b` |
| 39 | `constant` | [(anonymous)](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/constant.md) | 260 | `declaration-track:18a4df448199cb7b3067164400ad9ecd9c1f3c21cb5eefe88d9625e796dbc4da` |
| 40 | `def` | [frobeniusEulerFactorExample](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/frobeniuseulerfactorexample.md) | 267 | `declaration-track:bbd4278bfafc9d71fb36f62db0df2de17c27b96d04672e04111c3a850d477761` |
| 41 | `constant` | [(anonymous)](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/constant-source-edition-3.md) | 271 | `declaration-track:9c1464be331e1fc7e882820da2343a09f3f9082c9684b0c783c6f316da0d54d8` |
| 42 | `def` | [supersingularEulerFactorExample](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/supersingulareulerfactorexample.md) | 277 | `declaration-track:e600b6292809bfcd55984817be8b4adf6a4ac415739ece023ce509aa600179ad` |
| 43 | `constant` | [(anonymous)](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/constant-source-edition-2.md) | 281 | `declaration-track:2823140fff62e00521236fb143743a9817bd04cb8647ee05e61a4b02454a229e` |
| 44 | `structure` | [FrobeniusMatrixSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/frobeniusmatrixsurface.md) | 287 | `declaration-track:961fef7c15658b02e854cbed132d4b422f183fd592893ef9a43cd97bc63a7267` |
| 45 | `def` | [frobeniusMatrixExample](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/frobeniusmatrixexample.md) | 295 | `declaration-track:7edb0e81ad07470ac40fd5bb76944b96642f9aa8ecd1c2c62affbee7136bd616` |
| 46 | `def` | [goodPrimeSpinMobius](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/goodprimespinmobius.md) | 302 | `declaration-track:ef8f4a7a1b100da7112953889335f7d7eb7cf3956e1927abb4581a1fa5870478` |
| 47 | `structure` | [FormalMidpointFlowSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/formalmidpointflowsurface.md) | 312 | `declaration-track:aa9ba40ee93cd4be3543d75dcbb99282053d9cd36af6559d23e57703ae70e1aa` |
| 48 | `def` | [formalMidpointFlowSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/formalmidpointflowsurface-source-edition-2.md) | 321 | `declaration-track:b5ffc3fb9cc3c5786a8a7c8d09c5d1e71a75228697673c494b8a3e06a9ff4d2a` |
| 49 | `structure` | [FiniteLambdaLogDetSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/finitelambdalogdetsurface.md) | 329 | `declaration-track:49b19f2d9246c80a0c1e7d81ea9129f3963820165779fa1aaaf275ed9853cf4f` |
| 50 | `def` | [finiteLambdaLogDetSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/finitelambdalogdetsurface-source-edition-2.md) | 337 | `declaration-track:8b2113bdb4e6752554d1134ae1d053a7afa6eeda85d7b93f63d0514ee48136c6` |
| 51 | `structure` | [TraceFormulaLayerSeparation](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/traceformulalayerseparation-source-edition-2.md) | 344 | `declaration-track:7911d58872d0fab7f200a39e66da9b1da71266a80dce4b92268f42faa113b96d` |
| 52 | `def` | [traceFormulaLayerSeparation](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/traceformulalayerseparation.md) | 352 | `declaration-track:3940b219031bd4791680a8cc7724d61eccfe51ab4b1f7e76181c563f96e7737d` |
| 53 | `structure` | [SheafObstructionBridgeSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/sheafobstructionbridgesurface.md) | 359 | `declaration-track:6ea94c24c1784b7523e1d54a6797fd8359305f95f528612eff0729bb295d6623` |
| 54 | `def` | [sheafObstructionBridgeSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/sheafobstructionbridgesurface-source-edition-2.md) | 369 | `declaration-track:e17d8328ec382084a678e0687ea687909e7e090310affe75b46ec85f96b03a92` |
| 55 | `inductive` | [DeltaZeroObstructionOutcome](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/deltazeroobstructionoutcome.md) | 378 | `declaration-track:013eeeae5e5ac30d74e8217ead7216e3c7d8c5cf73f7425a06a957876eccf180` |
| 56 | `def` | [routeDeltaZeroObstruction](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/routedeltazeroobstruction.md) | 383 | `declaration-track:89989ffcf407c0da5aa3e3f40992d96306943b91f488942b2471267e1a2396f9` |
| 57 | `theorem` | [mat2_f2_state_count](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/mat2-f2-state-count.md) | 389 | `result-track:e541d2bf81255e13e04fcc5fef31a61c4cc654dc5e70da4fa1f3398ac76360c6` |
| 58 | `theorem` | [shifted_det_formula_holds_for_table](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/shifted-det-formula-holds-for-table.md) | 393 | `result-track:f380487597852d6a3cdcd7c2fdf669045ce97f34f5494bafd5eab8a93d985629` |
| 59 | `theorem` | [determinant_phase_counts](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/determinant-phase-counts.md) | 397 | `result-track:01161a36e339b5b9f3bc4e99303932173cc25ded4a6761b5b1a86ba29bc8610b` |
| 60 | `theorem` | [ordinary_trace_distinguishes_identity_from_trace_mod_two](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/ordinary-trace-distinguishes-identity-from-trace-mod-two.md) | 408 | `result-track:75ea2fae2b44320a805fbee4b9c5d6ad1da8f504489f9766ff6dd3c1ef9bab65` |
| 61 | `theorem` | [rank_identity_bucket_counts_are_not_orbits](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/rank-identity-bucket-counts-are-not-orbits.md) | 413 | `result-track:6815fe5433752d2f2a3a6232e51b3fdcf1faaca7ef0b89440de690d013b197d6` |
| 62 | `theorem` | [explicit_weights_generate_quadratic_euler_factor](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/explicit-weights-generate-quadratic-euler-factor.md) | 422 | `result-track:8b9578fa5f3f4944b00248697ea9e7bb7a348ab8f6a7b0b37317284c75239800` |
| 63 | `theorem` | [local_spin_mobius_stops_after_quadratic_exponent](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/local-spin-mobius-stops-after-quadratic-exponent.md) | 431 | `result-track:b7fdabaff2cb365dde926b0990a357c29039b118c1f7ce55e87226660dbf41a7` |
| 64 | `theorem` | [critical_clifford_surface_is_local_nilpotence](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/critical-clifford-surface-is-local-nilpotence.md) | 438 | `result-track:2db427be0e0fa5c18d8739d1dcd140e9f19f76c4804a5a2949b15dee108d4545` |
| 65 | `theorem` | [finite_euler_window_at_half_positive_not_vanishing](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/finite-euler-window-at-half-positive-not-vanishing.md) | 446 | `result-track:97a7df157f6bb8a519dd93d32f86d2983201559b691cd6cba07ea6b349ea087c` |
| 66 | `theorem` | [finite_product_zero_only_when_local_factor_zero](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/finite-product-zero-only-when-local-factor-zero.md) | 452 | `result-track:ebafc6831179203fdaced22b7378ba5309d5ce4d425011f0d92d615448edd923` |
| 67 | `theorem` | [unclassified_noncritical_phase_routes_to_complex_obstruction](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/unclassified-noncritical-phase-routes-to-complex-obstruction.md) | 458 | `result-track:02895f0859eb2ed18f9004e541db0828776d4528a2b259bf813dc682645e09a5` |
| 68 | `theorem` | [finite_phase_surface_is_not_zero_location_theorem](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/finite-phase-surface-is-not-zero-location-theorem.md) | 463 | `result-track:ba8a1aa0b7e805d96128d1ff0b7ad8a982da46f367fdb8dd4c83be19e3520792` |
| 69 | `theorem` | [mat2_fp_state_count_law](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/mat2-fp-state-count-law.md) | 468 | `result-track:b9adc744dd1fb1b110cb6b9a4e7217300144c3cae4ff560f506f90d798bd4e58` |
| 70 | `theorem` | [ordinary_supersingular_attached_to_frobenius_prime](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/ordinary-supersingular-attached-to-frobenius-prime.md) | 475 | `result-track:5fe27d23d85bbe1a35fe22dd97e0bc685a4e60d10918ba22ae05c2501f661903` |
| 71 | `theorem` | [frobenius_euler_factor_uses_standard_good_prime_form](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/frobenius-euler-factor-uses-standard-good-prime-form.md) | 482 | `result-track:7208d36c464e75d457d17ecf65ba3c9ae6a4c0e3a2dc60456fa2d98d3c2f61d6` |
| 72 | `theorem` | [frobenius_matrix_representation_requires_characteristic_polynomial](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/frobenius-matrix-representation-requires-characteristic-polynomial.md) | 492 | `result-track:a8cb0fb2313159b47b234ff2597e900e41cd7f0ff6a65f1951e22f4c3b51b118` |
| 73 | `theorem` | [good_prime_spin_mobius_uses_p_quadratic_coefficient](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/good-prime-spin-mobius-uses-p-quadratic-coefficient.md) | 498 | `result-track:017d986c80aa4064a3f9e5be1faa7a51c1389292175ff430126c6d91f394c6eb` |
| 74 | `theorem` | [midpoint_flow_is_not_determinant_equivalence](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/midpoint-flow-is-not-determinant-equivalence.md) | 505 | `result-track:f31e39f730ad87343e144c7b466021ebd3253d880a1cf96f21b5d2534817f2d5` |
| 75 | `theorem` | [finite_lambda_logdet_has_finite_boundary](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/finite-lambda-logdet-has-finite-boundary.md) | 512 | `result-track:5f459d11d954ef7ff31a97411a54745da95ca3fd35bcebeb7c75004e1082088f` |
| 76 | `theorem` | [trace_formula_layers_are_not_identity](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/trace-formula-layers-are-not-identity.md) | 519 | `result-track:ac360beb9f738134ee236a5e3aca98522f7ac68fa913107554f561da60916f5e` |
| 77 | `theorem` | [sheaf_bridge_is_not_perelman_surgery_operator](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/sheaf-bridge-is-not-perelman-surgery-operator.md) | 525 | `result-track:b2db34f8d3b7def63aaf92ee9a81577dba7cfe48816580f4e7896d54375fcffa` |
| 78 | `theorem` | [delta_zero_routes_absorbed_or_residual_obstruction](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/delta-zero-routes-absorbed-or-residual-obstruction.md) | 536 | `result-track:6e49acdcff6275fe56270d79f22c571d1b64a2c956a8541ce1a7dcc419cbf3dd` |
| 79 | `structure` | [Gamma3DCliffordSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/gamma3dcliffordsurface.md) | 543 | `declaration-track:01d93aef25572cd4e9089c1f78208fc11756ce3a4b5349e4b564f662522348b5` |
| 80 | `def` | [gamma3DCliffordSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/gamma3dcliffordsurface-source-edition-2.md) | 553 | `declaration-track:9ecc7202c9f2212133e51810229afbe04696cc560b2943308d23bc47c48028a6` |
| 81 | `structure` | [RoutingVector3](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/routingvector3.md) | 562 | `declaration-track:424ad0757550f33e45cf05509eaa0fff7b5f9322287ba9322f771fa4c2a41369` |
| 82 | `def` | [vectorZero](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/vectorzero.md) | 568 | `declaration-track:974f2ec2cab0212e8fb579d8956e1336aecf038cea04ab86bf23dc524965778f` |
| 83 | `def` | [vectorAdd](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/vectoradd.md) | 571 | `declaration-track:a73071b502fb574fc97b2e8e0b66ee6aa2bb7b4e9583b9f1e2813672a47ff380` |
| 84 | `def` | [vectorScale](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/vectorscale.md) | 576 | `declaration-track:77c228ee5ac79ec3294f0ff84ff57142088ea6def6d20cfbfd2f51e169418ce3` |
| 85 | `def` | [dot3](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/dot3.md) | 581 | `declaration-track:af5c460acbf4cb16f7aa140d0818aaab71571e64ad9133a7022485925928d3ee` |
| 86 | `structure` | [WeightedRoutingVector](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/weightedroutingvector.md) | 584 | `declaration-track:098bb29533daf31f71fddc6c1cdcf94b98f97050affac408beb690bb955e819a` |
| 87 | `def` | [weightedVector](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/weightedvector.md) | 589 | `declaration-track:0bade02efdbb348c72dd9d21b64e3c942242170a3bc0a12937759ad7241771c7` |
| 88 | `def` | [routingVectorSum](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/routingvectorsum.md) | 592 | `declaration-track:cb604ba0c88ea08a2ec1de8e106d914d0edfb07805a7f53425f03196c3eb4192` |
| 89 | `def` | [diagonalOnlyQuadratic](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/diagonalonlyquadratic.md) | 596 | `declaration-track:4a8ee78b69d3d3cd76fc328ffb61d241a426d151dd3a542d6d6b236d8bd136d5` |
| 90 | `def` | [transferBilinearQuadratic](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/transferbilinearquadratic.md) | 602 | `declaration-track:4151650d66386e11b91018e4dff4734f7d44d23df9d1e92754754284d03bd972` |
| 91 | `def` | [transferDeterminantScalar](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/transferdeterminantscalar.md) | 605 | `declaration-track:08bd059cbdcd578d12089ef04c8ab624e41f70f6119981dca14595c7bb55a46c` |
| 92 | `def` | [exampleCrossTermTransfer](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/examplecrosstermtransfer.md) | 609 | `declaration-track:69fdc44a49499fcc09df34d0a1e34e626d02dbf8e1b602a2621e6c5d43ca4341` |
| 93 | `structure` | [CliffordTransferDeterminantSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/cliffordtransferdeterminantsurface.md) | 614 | `declaration-track:17db7eb7cb3a60dc8955048ef858989ca9addc6df44ffcf42a49113b637b1a8c` |
| 94 | `def` | [cliffordTransferDeterminantSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/cliffordtransferdeterminantsurface-source-edition-2.md) | 621 | `declaration-track:56a8d173a1b5ad00e55898f588b5f27610992ec72a58ff116ad251661ba9f05f` |
| 95 | `structure` | [LocalizationExactSequenceSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/localizationexactsequencesurface-source-edition-2.md) | 627 | `declaration-track:e5905deb08b6f2ccd4d94a7789a725bff868968acec9df80969d92c7a617bda3` |
| 96 | `def` | [localizationExactSequenceSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/localizationexactsequencesurface.md) | 636 | `declaration-track:836e0f6c3f54b57d9fa278fb90e8685d78a793b78a759580c30314472a9c1cdc` |
| 97 | `structure` | [FrobeniusResidualTraceSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/frobeniusresidualtracesurface.md) | 645 | `declaration-track:362f8ff1e0577aecd887fdde6bec45873035cbc028544ae5c1f7e7dc6d0fdaaf` |
| 98 | `def` | [frobeniusResidualTraceSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/frobeniusresidualtracesurface-source-edition-2.md) | 655 | `declaration-track:d8e6330b7f4c51e1ca03106ee7561e42a8837f63f37990410dee221773b51520` |
| 99 | `structure` | [LocusKernelBoundarySurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/locuskernelboundarysurface-source-edition-2.md) | 664 | `declaration-track:70eea7c8321484d50202ec9a9bd17c29633f8e1a70c7ba27e1be72c25c9d9196` |
| 100 | `def` | [locusKernelBoundarySurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/locuskernelboundarysurface.md) | 672 | `declaration-track:6f36377f8f1dcc4a92f783a6cb66384af229b9a732dcc680d8d79c82cfe7cf99` |
| 101 | `structure` | [RegularizedTraceFormulaSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/regularizedtraceformulasurface-source-edition-2.md) | 679 | `declaration-track:ca6dce802df6babce9644c7989e2715f5f3210f4c23c83ac6027eed01beb331f` |
| 102 | `def` | [regularizedTraceFormulaSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/regularizedtraceformulasurface.md) | 691 | `declaration-track:1ebd9d01a8b98626137c7b3ed417a0797413bb54b0353d06e826667fcfac7cb4` |
| 103 | `structure` | [PerelmanDefectFunctionalSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/perelmandefectfunctionalsurface-source-edition-2.md) | 702 | `declaration-track:a706a483639fda6dbe08f8cf1885900464922e2878f9bcf5a86f11b04fd215f2` |
| 104 | `def` | [perelmanDefectFunctionalSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/perelmandefectfunctionalsurface.md) | 710 | `declaration-track:7de3972a8f5cc799ec252e43cecb800f890c7f59e20990f8ad9bfacfb45d1d2a` |
| 105 | `structure` | [FlowSpectralComparisonSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/flowspectralcomparisonsurface.md) | 718 | `declaration-track:a8c060392529ea1254ba40c1d441ca3c671ab3dae7ce4cf842c97256e9bb5adb` |
| 106 | `def` | [flowSpectralComparisonSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/flowspectralcomparisonsurface-source-edition-2.md) | 727 | `declaration-track:bcc57c3442063ecd0f72e428fae35d1c306126c6c3a480273c1d2940aab499aa` |
| 107 | `theorem` | [gamma3d_clifford_surface_is_finite_local_representation](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/gamma3d-clifford-surface-is-finite-local-representation.md) | 735 | `result-track:9c71ba3b31804e40a162d7bd911a74a16f04e5f6dc659439c48e107830f44948` |
| 108 | `theorem` | [gamma_transfer_determinant_retains_cross_terms](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/gamma-transfer-determinant-retains-cross-terms.md) | 744 | `result-track:defc6bf0a5dc3c8d14615f64fd1379b125f0d2bcf97eedc98ae7f7cd9e6fb9fb` |
| 109 | `theorem` | [localization_sequence_boundary_direction_is_closed_to_open](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/localization-sequence-boundary-direction-is-closed-to-open.md) | 753 | `result-track:d791ef73f310249d7cf88ac5531fc0d852d23faef6148e3e7ead4bb75be09046` |
| 110 | `theorem` | [frobenius_residual_trace_retains_transfer_residue](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/frobenius-residual-trace-retains-transfer-residue.md) | 763 | `result-track:df26857fc0a536cf21455b64324ed10b039c31c6b77f7d46338d81f08ab1ba42` |
| 111 | `theorem` | [locus_kernel_absorption_does_not_imply_midpoint](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/locus-kernel-absorption-does-not-imply-midpoint.md) | 771 | `result-track:5a99f5218c98b011d3acd9f7c17a602b7c0b94088868047973a03cdfa436d4f0` |
| 112 | `theorem` | [gamma0n_trace_formula_requires_regularization](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/gamma0n-trace-formula-requires-regularization.md) | 777 | `result-track:32b5f8a021dd91884c6f10d85b1cd5de77cc3c9fa86c0dc45e5205fe300f4d02` |
| 113 | `theorem` | [perelman_defect_is_local_functional_not_surgery_invariant](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/perelman-defect-is-local-functional-not-surgery-invariant.md) | 785 | `result-track:2e57f9fff88b7a5e44507ebd2ea5c1bea4e0980673588ea357638acb07dd7f82` |
| 114 | `theorem` | [flow_spectral_comparison_is_residue_bearing](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebra.lean/declarations/flow-spectral-comparison-is-residue-bearing.md) | 791 | `result-track:4f52d050f42bc88dc0c4e17ccb2eedfa4f7911823776b2eaf5bedb507e2ed145` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64dab5aabd993183a96f3155baf7c1bc828ea5188e2c5a6534357969fb632eee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/FinitePhaseBitmatrixAlgebra/Variantd7096e8ad3c4e7866af01c933c7e4121a0dcf1fa2ba8a78d6b6f6d435e43275a.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/FinitePhaseBitmatrixAlgebra/Variantd7096e8ad3c4e7866af01c933c7e4121a0dcf1fa2ba8a78d6b6f6d435e43275a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
