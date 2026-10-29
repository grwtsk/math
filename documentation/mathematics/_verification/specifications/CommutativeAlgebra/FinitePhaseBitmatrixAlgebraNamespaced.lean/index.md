# Verification target: Finite Phase Bitmatrix Algebra Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3fdab1d2bff70095b6064bd532202a2ce56c43d",
  "lexical_observation_count": 114,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/FinitePhaseBitmatrixAlgebra/Variant2c4d779a905dd321fc646acd2a3c56ac78fea64ce223c136381a12647206127b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3fdab1d2bff70095b6064bd532202a2ce56c43d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/FinitePhaseBitmatrixAlgebra/Variant2c4d779a905dd321fc646acd2a3c56ac78fea64ce223c136381a12647206127b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/FinitePhaseBitmatrixAlgebra/Variant2c4d779a905dd321fc646acd2a3c56ac78fea64ce223c136381a12647206127b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.ModularSymmetryStack` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Mat2F2](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/mat2f2.md) | 15 | `declaration-track:1e156f85266212ababffbb90ba536f1f6cbce98dbfd1d69245aba329a093aefd` |
| 2 | `def` | [detMod2](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/detmod2.md) | 22 | `declaration-track:288c34fe499770d31106e7fb868226bd1a815549775e96e0d27ff66e2a3d92ec` |
| 3 | `def` | [ordinaryTrace](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/ordinarytrace.md) | 25 | `declaration-track:ae6865f1d5bb9c5fdc704e3c35b7053bde46f05a0707163ce542de4ccc26182f` |
| 4 | `def` | [traceMod2](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/tracemod2.md) | 28 | `declaration-track:21b5922bc354585731582e72d28165a11d7a471ae6ddfd46b80003a6e9f19b4e` |
| 5 | `def` | [shiftedDetMod2](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/shifteddetmod2.md) | 31 | `declaration-track:1a419a52c3f6ce498537af8c08fb2798c0c9af8f861d9e593494c89c5344e34a` |
| 6 | `def` | [shiftedDetFormulaMod2](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/shifteddetformulamod2.md) | 34 | `declaration-track:ab03e7b97811706d7628f2f66b7a9507b62e783b76a7702fb46437cc502703da` |
| 7 | `def` | [phase](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/phase.md) | 37 | `declaration-track:8c3909d6e78e563499ec7574b42fa774ee31a226f9d9a35a173798c811b95ce0` |
| 8 | `def` | [allMat2F2](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/allmat2f2.md) | 40 | `declaration-track:21276edb71079f5567d5e4b29462ea1890be010e27ec4dc78f32c300c0ac4046` |
| 9 | `def` | [countDet](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/countdet.md) | 59 | `declaration-track:ebcbc21ba81f4813effc1cfec7eb40f1f017b29e37f4fdb66a0970bd4811c932` |
| 10 | `def` | [countShiftedDet](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/countshifteddet.md) | 62 | `declaration-track:600da4e2a14625dcc7442250f015874fbb0a467443db10b38edaca5b84b9479d` |
| 11 | `def` | [countPhase](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/countphase.md) | 65 | `declaration-track:bada3e2fc4c9ef3f4316c0e42d4ae18239ed3acbc82ed42ec8325fef31fd3e65` |
| 12 | `def` | [shiftedFormulaHoldsForTable](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/shiftedformulaholdsfortable.md) | 68 | `declaration-track:0885f1f25dcd0b38aecb3a15d5d3379787800c3996036b72902212e26a296750` |
| 13 | `inductive` | [RankIdentityBucket](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/rankidentitybucket.md) | 71 | `declaration-track:18f2c923e61ab21f01900c412645758c47b8d80a65d2a9dcefa4ad66f86159f3` |
| 14 | `def` | [zeroMatrix](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/zeromatrix.md) | 78 | `declaration-track:f8c4a40948c06e78617952bca8233711a4d8f60ada9d6634e9a4601ec079fe04` |
| 15 | `def` | [identityMatrix](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/identitymatrix.md) | 81 | `declaration-track:00836e6a890c1c4a5a29e039d208f615cbe400a3af8d2da842ea02c531bbbac6` |
| 16 | `def` | [rankIdentityBucket](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/rankidentitybucket-source-edition-2.md) | 84 | `declaration-track:ec7afc6f6d069b1f40a034fa50ef90eb3945e01c42c78446b1d2fbb59b39a920` |
| 17 | `def` | [countBucket](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/countbucket.md) | 94 | `declaration-track:6ecd47190d646523d244f2aa6e6ad7ad70ad9ead16f1d4ab6bf8281f46b600a8` |
| 18 | `structure` | [RankIdentityBucketSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/rankidentitybucketsurface.md) | 97 | `declaration-track:62c380c1b6ab332e50583840303177bef9c6d9661bd5f2d0c71fcc1201817ac8` |
| 19 | `def` | [rankIdentityBucketSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/rankidentitybucketsurface-source-edition-2.md) | 106 | `declaration-track:d1acf5f8aef1df08341597b7622fd64b1ed5097ffffc6d55eaabde4774a248a6` |
| 20 | `structure` | [TracePolynomialSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/tracepolynomialsurface.md) | 114 | `declaration-track:b20d203a73abcbb8f54d8520b7b0273d7d6afa3a74de6421fb4553a5d670f70b` |
| 21 | `def` | [exampleTracePolynomialSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/exampletracepolynomialsurface.md) | 127 | `declaration-track:77e80831506bc1cb736eff6664d4b53c97e7a5dee566cb6628223badc12ea780` |
| 22 | `def` | [localSpinMobius](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/localspinmobius.md) | 139 | `declaration-track:5cb3cf5d4f97326f51b3e66c843ec801010205796781bd9a347cfc7bb8322d34` |
| 23 | `structure` | [FiniteLocalFactorProductSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/finitelocalfactorproductsurface.md) | 149 | `declaration-track:9149af62aef946b6164d897de3809cb47f4da4096ce22425c81b3fd3a034dc07` |
| 24 | `def` | [finiteLocalFactorProductSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/finitelocalfactorproductsurface-source-edition-2.md) | 156 | `declaration-track:b5d32a0fea0cf03b61888e3abdba94d0a9713dcafbc6569b4f5aae7a9e4d4f17` |
| 25 | `inductive` | [CliffordDegenerationKind](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/clifforddegenerationkind.md) | 163 | `declaration-track:5b159e7d810ad6b71a4a61a05e862760cebb3169e629fafe6a951fb0806e6aca` |
| 26 | `structure` | [CliffordDegenerationSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/clifforddegenerationsurface.md) | 168 | `declaration-track:24f1b4de69adf7ce1c9235a65f809160a63fbffce25f9b033897796bfd42d390` |
| 27 | `def` | [cliffordDegenerationSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/clifforddegenerationsurface-source-edition-2.md) | 177 | `declaration-track:acc64fa57d36a2bb62c9c147538c0b81cdededfb1ae1648f058951edcab00ccc` |
| 28 | `structure` | [FiniteEulerWindowSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/finiteeulerwindowsurface.md) | 189 | `declaration-track:d5d5298ef1bc1d02f08755125743702807d2770f9fccd1b28ff072b5d7248aa2` |
| 29 | `def` | [finiteEulerWindowAtHalf](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/finiteeulerwindowathalf.md) | 198 | `declaration-track:ae820a39ff35a80517d923977bdc8cecfae2055c3461df822f37df3107a21ab5` |
| 30 | `inductive` | [PhaseResidueRoute](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/phaseresidueroute.md) | 206 | `declaration-track:15a312c515d003539853b3da320147eca203885637f389ab6ee1649658bd30c3` |
| 31 | `def` | [routePhaseResidue](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/routephaseresidue.md) | 212 | `declaration-track:a7d29df646405ff5607251742409eab80cfb1119c166063495d814e6672027f8` |
| 32 | `structure` | [Mat2FpStateCountSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/mat2fpstatecountsurface-source-edition-2.md) | 220 | `declaration-track:a6f3bef38f8dbe3dc5d14a3155dd338df4cd672d2139f17eb337a68c9bb5eb16` |
| 33 | `def` | [mat2FpStateCountSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/mat2fpstatecountsurface.md) | 227 | `declaration-track:1195c1146913376399f8e3ea773877dde26626ffcd6dbf7f1a0f9467436e0ddc` |
| 34 | `inductive` | [FrobeniusPhaseKind](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/frobeniusphasekind.md) | 233 | `declaration-track:0b85bdfd971041446dad71a856fadbe8c32602c135ae75dd152a40d1993470b3` |
| 35 | `structure` | [GoodPrimeFrobeniusSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/goodprimefrobeniussurface.md) | 239 | `declaration-track:bea9f002c01ec3683308a0df5c9be20e2aca9c7560b0fe2127aea24798a5fd50` |
| 36 | `def` | [ordinaryFrobeniusExample](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/ordinaryfrobeniusexample.md) | 248 | `declaration-track:5f4e5907cb75d42e043a69792bc2c5f6f8232515a5166cc1ad9915066c8fd748` |
| 37 | `def` | [supersingularFrobeniusExample](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/supersingularfrobeniusexample.md) | 256 | `declaration-track:3d4e4e9ac40a6f79cb261f0ac0f9b49c2e9e247eb30a60442bae6ff5d772aed5` |
| 38 | `structure` | [FrobeniusEulerFactorSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/frobeniuseulerfactorsurface.md) | 264 | `declaration-track:964dd1431a4ff172311e38038731f5971d5c1d1fd239208d5f6adc374f35e94d` |
| 39 | `constant` | [(anonymous)](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/constant-source-edition-3.md) | 268 | `declaration-track:9052327d909607c86682ec92b5299dd6da20d9e56f506ba878729bd453f8175b` |
| 40 | `def` | [frobeniusEulerFactorExample](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/frobeniuseulerfactorexample.md) | 275 | `declaration-track:aca71ec687aa44a2acae3f3a4a86632fa54dc77c3185e998b3bf5637c59c3c6a` |
| 41 | `constant` | [(anonymous)](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/constant-source-edition-2.md) | 279 | `declaration-track:7abe3f6b045653bca8f69b76f6508bf1b32a33d15c78e15ef4e85f7668760277` |
| 42 | `def` | [supersingularEulerFactorExample](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/supersingulareulerfactorexample.md) | 285 | `declaration-track:666f76ee7d0c9766f40a9ea1b426203678afa8cb4c9b9c02c86ab00d1b467090` |
| 43 | `constant` | [(anonymous)](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/constant.md) | 289 | `declaration-track:7270d3f50943474d77b975756287ab9ffadca18f7484ad05dccd85d9c01b42c2` |
| 44 | `structure` | [FrobeniusMatrixSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/frobeniusmatrixsurface.md) | 295 | `declaration-track:ffa9d65ef5608c66fad87951ecd55fcbbe7defa102895a1ddd347a72421285bb` |
| 45 | `def` | [frobeniusMatrixExample](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/frobeniusmatrixexample.md) | 303 | `declaration-track:cf866385e7e425cc066a539e11a45ea20a626450bd0e5c76873ee631488a9f49` |
| 46 | `def` | [goodPrimeSpinMobius](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/goodprimespinmobius.md) | 310 | `declaration-track:4491b1029f854d764ed8d92ead3d0af7a420e84c3c881f134f8dad8bec77411e` |
| 47 | `structure` | [FormalMidpointFlowSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/formalmidpointflowsurface-source-edition-2.md) | 320 | `declaration-track:9f04a5c199a177a37c2d47e305d202198e77293f8481c1214b37aac5a557e840` |
| 48 | `def` | [formalMidpointFlowSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/formalmidpointflowsurface.md) | 329 | `declaration-track:444485393366ab631fab4ed39d9d7c6cf8652def370e9198d31cb2f8e92f0f76` |
| 49 | `structure` | [FiniteLambdaLogDetSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/finitelambdalogdetsurface.md) | 337 | `declaration-track:4533d8c8e94e6199449aad9269805edf6b47aae907796ef9ec61f889827ccbde` |
| 50 | `def` | [finiteLambdaLogDetSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/finitelambdalogdetsurface-source-edition-2.md) | 345 | `declaration-track:4dca3e0d4c70266df4a2b645753b24a73f2e98142cc18defe0dd4d8c63d7b716` |
| 51 | `structure` | [TraceFormulaLayerSeparation](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/traceformulalayerseparation.md) | 352 | `declaration-track:97bfa9d7885a1f369a4aa2638fd7bb5f314d3f054d9ad87f65ecc1ef78ee5a1b` |
| 52 | `def` | [traceFormulaLayerSeparation](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/traceformulalayerseparation-source-edition-2.md) | 360 | `declaration-track:f2e60a17b81c011017e8b5cf9a19a9014fa392cb6ead8a9f89541e63b201f473` |
| 53 | `structure` | [SheafObstructionBridgeSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/sheafobstructionbridgesurface-source-edition-2.md) | 367 | `declaration-track:c99fcce7546faee7c7a393b36b16506bda0203f571f032ff0e672f104afc05cb` |
| 54 | `def` | [sheafObstructionBridgeSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/sheafobstructionbridgesurface.md) | 377 | `declaration-track:6a1eb337255403c939ce94e160d336a30c05adfe7d80eedfb8ee56d809bb8540` |
| 55 | `inductive` | [DeltaZeroObstructionOutcome](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/deltazeroobstructionoutcome.md) | 386 | `declaration-track:3a6800da084ce47d579d9e25dae4db24ef5c3f82c9e887045fe326780733d7e9` |
| 56 | `def` | [routeDeltaZeroObstruction](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/routedeltazeroobstruction.md) | 391 | `declaration-track:d964944dc65b48189df0fd16a55eb335b6c4e726059787ed6a98fae11d5aae27` |
| 57 | `theorem` | [mat2_f2_state_count](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/mat2-f2-state-count.md) | 397 | `result-track:68ee9cbd80b04c301c6cc2e21aed77cc433a9d119ba560169e986b029cf4460c` |
| 58 | `theorem` | [shifted_det_formula_holds_for_table](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/shifted-det-formula-holds-for-table.md) | 401 | `result-track:46002d819d33707a656eab041014d8e7c588e2eacf7271dbce19efe7c84505d5` |
| 59 | `theorem` | [determinant_phase_counts](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/determinant-phase-counts.md) | 405 | `result-track:304dc5205e7f7b21b10df21c5e6976cc754a254a23b6cdb0ef5f0a8c9f4f0dd5` |
| 60 | `theorem` | [ordinary_trace_distinguishes_identity_from_trace_mod_two](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/ordinary-trace-distinguishes-identity-from-trace-mod-two.md) | 416 | `result-track:62747959191a52124163c579d49b7e056b688370f2f2aff9155c3d178471b19a` |
| 61 | `theorem` | [rank_identity_bucket_counts_are_not_orbits](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/rank-identity-bucket-counts-are-not-orbits.md) | 421 | `result-track:ebc3cf29cadd48bce4cc229d9aa35b7d6119477bbb399f044fcd60c1c13f3134` |
| 62 | `theorem` | [explicit_weights_generate_quadratic_euler_factor](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/explicit-weights-generate-quadratic-euler-factor.md) | 430 | `result-track:8b02221c00776f18c04176d64023f91d112def0ed156059be73de35d9d41b521` |
| 63 | `theorem` | [local_spin_mobius_stops_after_quadratic_exponent](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/local-spin-mobius-stops-after-quadratic-exponent.md) | 439 | `result-track:13ddfebd386658076afc531eb06f4ab9f73b41b29f6c3f8f759fcea7904872c7` |
| 64 | `theorem` | [critical_clifford_surface_is_local_nilpotence](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/critical-clifford-surface-is-local-nilpotence.md) | 446 | `result-track:456eeff21982c3be9600d218f3ef12359185739171e4226d51083805057cdb2f` |
| 65 | `theorem` | [finite_euler_window_at_half_positive_not_vanishing](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/finite-euler-window-at-half-positive-not-vanishing.md) | 454 | `result-track:c0dc45cb781e3c84036c6d8a4c2c9a6b2a4a3cb9154a29d05f5e3260dd9d1238` |
| 66 | `theorem` | [finite_product_zero_only_when_local_factor_zero](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/finite-product-zero-only-when-local-factor-zero.md) | 460 | `result-track:719b89929fa1b746510b5a731e60a90b531989b896e88143c281876c82ba1b77` |
| 67 | `theorem` | [unclassified_noncritical_phase_routes_to_complex_obstruction](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/unclassified-noncritical-phase-routes-to-complex-obstruction.md) | 466 | `result-track:c5f5845ee5db51414f7bd8f365295c62c7a3eb79f4dd015236256809714b9277` |
| 68 | `theorem` | [finite_phase_surface_is_not_zero_location_theorem](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/finite-phase-surface-is-not-zero-location-theorem.md) | 471 | `result-track:ad0df47083521a90706f01cc008f65b6e65bba7a21760e38a3354c37579723e6` |
| 69 | `theorem` | [mat2_fp_state_count_law](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/mat2-fp-state-count-law.md) | 476 | `result-track:893dc3633dd36c7e419834b3d423acff9e64736053b5fdad2d3f3d2b24380e72` |
| 70 | `theorem` | [ordinary_supersingular_attached_to_frobenius_prime](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/ordinary-supersingular-attached-to-frobenius-prime.md) | 483 | `result-track:b1b450835c2c2e571720d4d308a658ae704b591fe5734a30cbe64c1ebec6756c` |
| 71 | `theorem` | [frobenius_euler_factor_uses_standard_good_prime_form](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/frobenius-euler-factor-uses-standard-good-prime-form.md) | 490 | `result-track:470b839f2080f779daea8b958a92cc12b01e468ae067b30873dd32f4d414c250` |
| 72 | `theorem` | [frobenius_matrix_representation_requires_characteristic_polynomial](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/frobenius-matrix-representation-requires-characteristic-polynomial.md) | 500 | `result-track:494bd676e70f075ec0ea88a45bc89f0ab490e8f0bfc3f624d9303b316129f3c4` |
| 73 | `theorem` | [good_prime_spin_mobius_uses_p_quadratic_coefficient](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/good-prime-spin-mobius-uses-p-quadratic-coefficient.md) | 506 | `result-track:f221d89e1380b2394e6eb385715c39a620638e7d10ac89feb4b6c451ffb563aa` |
| 74 | `theorem` | [midpoint_flow_is_not_determinant_equivalence](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/midpoint-flow-is-not-determinant-equivalence.md) | 513 | `result-track:f0746a3862f156ba69014b8be143a156cbafb4fc40a107495a7752e070c1a2af` |
| 75 | `theorem` | [finite_lambda_logdet_has_finite_boundary](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/finite-lambda-logdet-has-finite-boundary.md) | 520 | `result-track:710d71aba74ca5ed63d73a3d9ea63f3e747e228dced6a0ee7ebcd1683065998f` |
| 76 | `theorem` | [trace_formula_layers_are_not_identity](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/trace-formula-layers-are-not-identity.md) | 527 | `result-track:a88c40ace4bc85cd2163d22b8631c3c6957879f4779f23c02c233d2aaed657e5` |
| 77 | `theorem` | [sheaf_bridge_is_not_perelman_surgery_operator](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/sheaf-bridge-is-not-perelman-surgery-operator.md) | 533 | `result-track:2df75a6005414c89c13314cc40c986b8f8b2a5f62e75020c000283aaa2d0e1fb` |
| 78 | `theorem` | [delta_zero_routes_absorbed_or_residual_obstruction](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/delta-zero-routes-absorbed-or-residual-obstruction.md) | 544 | `result-track:4b4007ac6b1bf475b07e392f4c85186ab3ca6d353be78dd3606a2917a8479600` |
| 79 | `structure` | [Gamma3DCliffordSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/gamma3dcliffordsurface.md) | 551 | `declaration-track:116226d85ddbb80743f88daecd4bc61169e9f65e3438be449c174af06df0a6ac` |
| 80 | `def` | [gamma3DCliffordSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/gamma3dcliffordsurface-source-edition-2.md) | 561 | `declaration-track:5abcb0cc4fac8fc39a622cf7c787a88321a2e18c675b494f1517177a7c3e0802` |
| 81 | `structure` | [RoutingVector3](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/routingvector3.md) | 570 | `declaration-track:f5552bd0dca4fc565484f9c1ba30fc7bb05bfe1529736b88f7096e1183e3bc56` |
| 82 | `def` | [vectorZero](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/vectorzero.md) | 576 | `declaration-track:0aa114813803f85193ea9fae0303261f951f9b1be8969b8ca53fd05de4ae72a1` |
| 83 | `def` | [vectorAdd](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/vectoradd.md) | 579 | `declaration-track:ac9cd3a9767a6aac420a207ce1195a6aab6c027ab949281d506ea6633a704834` |
| 84 | `def` | [vectorScale](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/vectorscale.md) | 584 | `declaration-track:c8a0727a19b72ff7be3a3dbad53e7f8eca4eea627fdc9b6a2f2739bc5c8c16b0` |
| 85 | `def` | [dot3](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/dot3.md) | 589 | `declaration-track:785cf6d5e36264843c3ced6a7df17034bda2ccc070024cec984c01fc2e68b79a` |
| 86 | `structure` | [WeightedRoutingVector](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/weightedroutingvector.md) | 592 | `declaration-track:51dc3527717f56d397a006dcddebb0e722f6b0021a5a571604ac18e32ef78e61` |
| 87 | `def` | [weightedVector](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/weightedvector.md) | 597 | `declaration-track:387197903087776649ae1b8c1fc5ad41e16324b8a5e1237c8c57f54ac376f074` |
| 88 | `def` | [routingVectorSum](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/routingvectorsum.md) | 600 | `declaration-track:ca5a46b9a6a95dea1c478fa328562c7613ff06515f64c81dcbc1b45c8346dec4` |
| 89 | `def` | [diagonalOnlyQuadratic](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/diagonalonlyquadratic.md) | 604 | `declaration-track:bc77e1dc9c0eb2568e30c442102b2464e52e9b3342c2ee2905e34df122e77746` |
| 90 | `def` | [transferBilinearQuadratic](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/transferbilinearquadratic.md) | 610 | `declaration-track:5be147ba904afc8c2440a20e537e1f1d9034a8a3914057d70a75a39e812af290` |
| 91 | `def` | [transferDeterminantScalar](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/transferdeterminantscalar.md) | 613 | `declaration-track:4f358b7bcc8639ce21a46ef39e2a525d163a364dd52c33dc3fd8dda5537aa7af` |
| 92 | `def` | [exampleCrossTermTransfer](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/examplecrosstermtransfer.md) | 617 | `declaration-track:5c09ac341b3b750c596b1b5e8e252bb7c06170f7bd44c9b8ee20c53c94d398a7` |
| 93 | `structure` | [CliffordTransferDeterminantSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/cliffordtransferdeterminantsurface.md) | 622 | `declaration-track:46edcce83017219c7628ee7c522f8f6e257dbd25373b012996df9640720bab6e` |
| 94 | `def` | [cliffordTransferDeterminantSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/cliffordtransferdeterminantsurface-source-edition-2.md) | 629 | `declaration-track:94af5e73f3dd7af5ea364313280a2a1e13aa281069ac03b7b9e3899d072ff66d` |
| 95 | `structure` | [LocalizationExactSequenceSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/localizationexactsequencesurface-source-edition-2.md) | 635 | `declaration-track:ccfe0564f6b8fb15612c77a2086260e18f60a80429a3c837a491a7e60d50dab9` |
| 96 | `def` | [localizationExactSequenceSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/localizationexactsequencesurface.md) | 644 | `declaration-track:c5ad35e2956b2edcaa2ea4da323e9996539ebc894950f6a8de426e6c30bf40b7` |
| 97 | `structure` | [FrobeniusResidualTraceSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/frobeniusresidualtracesurface.md) | 653 | `declaration-track:7fd9e611bbf442301a636d35680b3c8869d318ceedd5f34e2155f9dcc834cc83` |
| 98 | `def` | [frobeniusResidualTraceSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/frobeniusresidualtracesurface-source-edition-2.md) | 663 | `declaration-track:b484a6681f66aa23fe91a40120a3ef299aaf05913a184636bd510675a169284f` |
| 99 | `structure` | [LocusKernelBoundarySurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/locuskernelboundarysurface.md) | 672 | `declaration-track:0199d63db0dfed4efa790776afe1a1d014e0041674021c1185e25f925fcbc06a` |
| 100 | `def` | [locusKernelBoundarySurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/locuskernelboundarysurface-source-edition-2.md) | 680 | `declaration-track:092b7e9eb7e3fb943f0778dd23e9521abbe1f52e21c49a7459151cbbb6f81f0e` |
| 101 | `structure` | [RegularizedTraceFormulaSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/regularizedtraceformulasurface-source-edition-2.md) | 687 | `declaration-track:86b6e159a3f0025ca92797cf619b92695aec66e0be6bbd77301cbbab81fd1c18` |
| 102 | `def` | [regularizedTraceFormulaSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/regularizedtraceformulasurface.md) | 699 | `declaration-track:02147598588a330953f7226492494b2e2a7c210bcc4da86ca5110946c3b97fe7` |
| 103 | `structure` | [PerelmanDefectFunctionalSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/perelmandefectfunctionalsurface.md) | 710 | `declaration-track:071a63d6d10313781a4c0c8c7c0b5f2a29adb2eab4ea3b284131f936d7586c22` |
| 104 | `def` | [perelmanDefectFunctionalSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/perelmandefectfunctionalsurface-source-edition-2.md) | 718 | `declaration-track:a6c7a7d528a87d592c576ac334a7a79909af0c9c1ecff151b38681e166132245` |
| 105 | `structure` | [FlowSpectralComparisonSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/flowspectralcomparisonsurface.md) | 726 | `declaration-track:291bdfba694347287ef1dfd9c2934b78516d40512ec625bee18b96779959cf20` |
| 106 | `def` | [flowSpectralComparisonSurface](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/flowspectralcomparisonsurface-source-edition-2.md) | 735 | `declaration-track:ba11242680faced547f3914000c4ce995ca573be4709e5a42f5dd01d1a9a147d` |
| 107 | `theorem` | [gamma3d_clifford_surface_is_finite_local_representation](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/gamma3d-clifford-surface-is-finite-local-representation.md) | 743 | `result-track:4f4188213f86eb97cc920836eae3c16e91079daaf7182837ee7aba8dd2112a7a` |
| 108 | `theorem` | [gamma_transfer_determinant_retains_cross_terms](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/gamma-transfer-determinant-retains-cross-terms.md) | 752 | `result-track:516bf4887cfd99a9190e8c0c43b37c4b261ca8149e2404b0d095e74a66b79654` |
| 109 | `theorem` | [localization_sequence_boundary_direction_is_closed_to_open](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/localization-sequence-boundary-direction-is-closed-to-open.md) | 761 | `result-track:ad0365b3411beb678ea64e3afe01f3a09dfef8cc48ddb9adb0942e5c055d7b03` |
| 110 | `theorem` | [frobenius_residual_trace_retains_transfer_residue](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/frobenius-residual-trace-retains-transfer-residue.md) | 771 | `result-track:29022c486c172bd81540226cf0b6fd8f88080c9dcd5f02bfe7215bb3317b0df5` |
| 111 | `theorem` | [locus_kernel_absorption_does_not_imply_midpoint](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/locus-kernel-absorption-does-not-imply-midpoint.md) | 779 | `result-track:1d2674e677b42a39302d02fea950bb13fd9109bce12d1a80c2b6d80e3c5bd3f9` |
| 112 | `theorem` | [gamma0n_trace_formula_requires_regularization](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/gamma0n-trace-formula-requires-regularization.md) | 785 | `result-track:3a7183aede330690921f533b397a1c92d8a30b0f4235ef09057650db9e9e4eab` |
| 113 | `theorem` | [perelman_defect_is_local_functional_not_surgery_invariant](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/perelman-defect-is-local-functional-not-surgery-invariant.md) | 793 | `result-track:769ca657b5c1ab80da7d562b862393644651d5564d4931288e6b88dd5c24adb4` |
| 114 | `theorem` | [flow_spectral_comparison_is_residue_bearing](../../../../CommutativeAlgebra/FinitePhaseBitmatrixAlgebraNamespaced.lean/declarations/flow-spectral-comparison-is-residue-bearing.md) | 799 | `result-track:2bba6fe50bb5eab3aead786016d68cb18c034c751ba47ea6c517811ddd7bff55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5ed6dd4bb4532ac1a14d2a1e40694a38b63ba38492d182db39c60014fb4d15b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/FinitePhaseBitmatrixAlgebra/Variant2c4d779a905dd321fc646acd2a3c56ac78fea64ce223c136381a12647206127b.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/FinitePhaseBitmatrixAlgebra/Variant2c4d779a905dd321fc646acd2a3c56ac78fea64ce223c136381a12647206127b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
