# Terminal status: 107-declaration cross-branch replay

grwtsk contributors

[Immutable public Noe checkpoint](https://github.com/grwtsk/noeaaeue/blob/12dab9fe7ff0ea7c0bed9c2385119910a5d0e371/verification/math/declaration107-lossless-restart-20261026.json) · checkpoint SHA-256 `58a9b9cdf4ecb5c0783c39c69ed14a8195f737d0ae59480e85505fd927e62768` · [structured Math status](../_support/reference/declaration107-verification-status.json)

Math source pin: [`a631c3ab52379eacf4c4fced9111fadd983b37ae`](https://github.com/grwtsk/math/tree/a631c3ab52379eacf4c4fced9111fadd983b37ae); Noe producer source commit: [`18df57653629d064679c041b224a3aaa511b4136`](https://github.com/grwtsk/noeaaeue/commit/18df57653629d064679c041b224a3aaa511b4136). Registry SHA-256 `4a2857922582ad2bc1403a8311340aff5a77e9ea0ce6a1a65a007becd6c3e8f9`.

## Outcome

**Terminal operational status:** `CANCELLED_BY_MONITOR_STORAGE_OBSERVATION_UNKNOWN`. A compiler temporary output disappeared during the storage monitor scan; observation uncertainty triggered owned cancellation. No storage-limit breach was reported. The child returned `-2` and the supervisor returned `1`.

The receipt records 670 passed compilation records and 1 interrupted record out of 671. The attempt completed **0 of 107 declaration audits** and **0 of 10 exact type checks**. The interrupted leaf streams remain `UNAVAILABLE_NOT_QUALIFIED`, not empty. The attempt’s disabled host configuration was restored, all reservations were released, process groups were observed quiescent, and both streams were drained.

This is an operational cancellation, not a mathematical counterexample. None of these compilation records establish theorem admission. The attempt was not retried.

Terminal receipt SHA-256 `e21c9addbd365124c81934e0448507615c812a1ece86f06dd188d2a54fcf48c5`; read-only terminal audit SHA-256 `d9ec3584c145d8843afce7f51c4b4c962bb44e885ff8fe825c0bc4b33e65bcc8`. Full receipt contents remain in Noe’s private evidence; the public checkpoint exposes the reviewed summary and hashes.

## Every selected declaration

Every listed target remains `NOT_RUN`: the replay stopped before its declaration-audit phase. There are 107 declared audit targets across 10 source modules.

### [`GRWTSK/Analysis/Complex/CriticalReflection.lean`](https://github.com/grwtsk/math/blob/a631c3ab52379eacf4c4fced9111fadd983b37ae/GRWTSK/Analysis/Complex/CriticalReflection.lean)

Source blob `599ec8df6086bf0c436f193ced175fc8c71383a5` · SHA-256 `45fcda1d150f49c2c11819a6dcd35059e9a89ec36068d2c1b5b8b10e07feac79` · 1 target declarations; all `NOT_RUN`.

- `GRWTSK.RiemannHypothesis.critical_reflection_involutive` — `NOT_RUN`.

### [`GRWTSK/DynamicalSystems/Symbolic/DynamicSoficSpectralCover.lean`](https://github.com/grwtsk/math/blob/a631c3ab52379eacf4c4fced9111fadd983b37ae/GRWTSK/DynamicalSystems/Symbolic/DynamicSoficSpectralCover.lean)

Source blob `1f1ddbbd9bff6cb99d794140f28497598923b005` · SHA-256 `c315bd14a795eefdd71eae06bf30f192df46f30a531f7a3b5da823974383a9c7` · 12 target declarations; all `NOT_RUN`.

- `GRWTSK.DynamicalSystems.Symbolic.DynamicSoficSpectralCover.DynamicSpectralCover.runs_on_graph` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.DynamicSoficSpectralCover.DynamicSpectralCover.refinement_commutes_on_trace` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.DynamicSoficSpectralCover.DynamicSpectralCover.trace_injective` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.DynamicSoficSpectralCover.DynamicSpectralCover.readout_factors_through_trace` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.DynamicSoficSpectralCover.DynamicSpectralCover.stage_factors_through_trace` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.DynamicSoficSpectralCover.DynamicSpectralCover.spectral_orbit_readout` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.DynamicSoficSpectralCover.ExactLanguageAt.implies_sofic` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.DynamicSoficSpectralCover.no_exact_language_at_of_nonsofic` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.DynamicSoficSpectralCover.no_exact_language_at_of_non_eventual_sofic` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.DynamicSoficSpectralCover.ExactLanguageAt.rightContexts_card_le` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.DynamicSoficSpectralCover.no_exact_language_at_of_unbounded_rightContexts` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.DynamicSoficSpectralCover.no_exact_language_at_of_all_tail_rightContexts` — `NOT_RUN`.

### [`GRWTSK/DynamicalSystems/Symbolic/ExactSoficLanguageCover.lean`](https://github.com/grwtsk/math/blob/a631c3ab52379eacf4c4fced9111fadd983b37ae/GRWTSK/DynamicalSystems/Symbolic/ExactSoficLanguageCover.lean)

Source blob `7233696059a408af98af15fec0e34c02f7afb657` · SHA-256 `0224b880ee06d936e6bbe98ff57de5780d471b4c63e173d766730c2c31e4b8e1` · 16 target declarations; all `NOT_RUN`.

- `GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover.every_trace_runs_on_full_shift` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover.fullShiftGraph_path_all` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover.fullShiftGraph_language_all` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover.eventuallySofic_of_sofic` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover.sofic_of_exact_language` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover.fullShiftGraph_not_exact_for_constant_false` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover.mem_reachableEndStates` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover.wordPath_append` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover.wordPath_split_append` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover.graphLanguage_append_iff_endStates` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover.graphLanguage_context_iff_of_same_endStates` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover.rightContexts_card_le_graphLanguage` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover.rightContexts_card_le_exactPresentation` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover.not_soficFactorLanguage_of_unboundedRightContexts` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover.not_soficTrace_of_unboundedRightContexts` — `NOT_RUN`.
- `GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover.not_eventuallySoficTrace_of_all_tail_rightContexts` — `NOT_RUN`.

### [`GRWTSK/Logic/InformationLoss/DynamicPartitionRecovery.lean`](https://github.com/grwtsk/math/blob/a631c3ab52379eacf4c4fced9111fadd983b37ae/GRWTSK/Logic/InformationLoss/DynamicPartitionRecovery.lean)

Source blob `8f8db7fba341afd820518a85a7ebbb5fd5a7fe06` · SHA-256 `5f9e344a2460aafab8c55f519ee22fd623e80c59ea554e9affa37b9c62fd9283` · 8 target declarations; all `NOT_RUN`.

- `GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery.DynamicRefinement.sameAt_of_next` — `NOT_RUN`.
- `GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery.DynamicRefinement.history_injective_of_separating` — `NOT_RUN`.
- `GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery.DynamicRefinement.stage_factors_through_history` — `NOT_RUN`.
- `GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery.discreteDifference_constants_collide` — `NOT_RUN`.
- `GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery.initialValue_not_factorsThrough_difference` — `NOT_RUN`.
- `GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery.difference_telescoping` — `NOT_RUN`.
- `GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery.integrate_anchoredDifference` — `NOT_RUN`.
- `GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery.anchoredDifference_injective` — `NOT_RUN`.

### [`GRWTSK/Logic/InformationLoss/FactorizationFiber.lean`](https://github.com/grwtsk/math/blob/a631c3ab52379eacf4c4fced9111fadd983b37ae/GRWTSK/Logic/InformationLoss/FactorizationFiber.lean)

Source blob `3f58f67ffca2894a7350fecfd78a9fa65b9bc9fd` · SHA-256 `67f40a480b0762be9af7f98b816f054bbe2d204ab4c93be1e4f410166d690432` · 3 target declarations; all `NOT_RUN`.

- `GRWTSK.Logic.InformationLoss.eq_of_factorsThrough` — `NOT_RUN`.
- `GRWTSK.Logic.InformationLoss.not_factorsThrough_of_collision` — `NOT_RUN`.
- `GRWTSK.Logic.InformationLoss.augmentedProfile_separates` — `NOT_RUN`.

### [`GRWTSK/NumberTheory/Farey/DynamicSoficSpectralCover.lean`](https://github.com/grwtsk/math/blob/a631c3ab52379eacf4c4fced9111fadd983b37ae/GRWTSK/NumberTheory/Farey/DynamicSoficSpectralCover.lean)

Source blob `5881a2f2caf1aa0b1ec9267376cecb5895327afe` · SHA-256 `cc9e6bc70f1e05f176ca87b112ba4422bbf632c12ffa4a041d47739531359bd3` · 15 target declarations; all `NOT_RUN`.

- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.no_finite_state_initial_recovery_from_unanchored_difference` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.readout_factorsThrough_anchoredDifference` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.not_recoverableAtStage_of_collision` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.proportion_not_compressible_at_collision` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.trace_factorsThrough_partition` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.no_partition_sofic_trace_cover_of_collision` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.SpectralZeroCover.transport_hypothesis` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.rh_implies_generalized_of_spectralCoverFamily` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.BaseSpecialization.ofMap` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.generalized_implies_base_of_map` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.generalized_implies_base_of_member_specialization` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.rh_iff_generalized_of_spectralCovers_and_member_specialization` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.rh_iff_generalized_of_spectralCovers_and_specialization` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.DynamicSoficSpectralSystem.trace_factorsThrough_stage` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.DynamicSoficSpectralSystem.no_trace_collision` — `NOT_RUN`.

Exact type checks (3); all `NOT_RUN`:

- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.BaseSpecialization.ofMap` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.generalized_implies_base_of_map` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.generalized_implies_base_of_member_specialization` — `NOT_RUN`.

### [`GRWTSK/NumberTheory/Farey/HeatFlowCompressionSofic.lean`](https://github.com/grwtsk/math/blob/a631c3ab52379eacf4c4fced9111fadd983b37ae/GRWTSK/NumberTheory/Farey/HeatFlowCompressionSofic.lean)

Source blob `290757773fe6f295c025287d0d673d9d82c773df` · SHA-256 `549bb0afd20d005def27e0798cd6d580489b99265420d819a8bc99b1c537fb13` · 15 target declarations; all `NOT_RUN`.

- `GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.LosslessPrefixCode.encode_injective` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.LosslessPrefixCode.factorsThrough_encode` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.factorsThrough_trans` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.readout_bound_to_process_of_huffmanLikeCover` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.no_huffmanLikeCover_of_process_collision` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.trace_eq_of_soficThrough` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.not_soficThrough_of_collision` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.irrational_of_transcendental` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.transcendental_of_algebraic_implies_sofic_of_nonsofic` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.irrational_of_rational_implies_sofic_of_nonsofic` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.grh_zero_height_transcendental_of_nonsofic` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.zero_height_irrational_and_grh_transcendental_of_nonsofic` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.ThreeQuarterRefinement.seed_zeroFree` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.ThreeQuarterRefinement.limit_zeroFree` — `NOT_RUN`.
- `GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.ThreeQuarterRefinement.asymptotically_free_accounting` — `NOT_RUN`.

### [`GRWTSK/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean`](https://github.com/grwtsk/math/blob/a631c3ab52379eacf4c4fced9111fadd983b37ae/GRWTSK/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean)

Source blob `98ce2d34115ac5326da6e79a8de75bb2dc645442` · SHA-256 `1316e421a40299836ca4bc8475c7bca181eb06c169fb6e82c867f1a3bfc24437` · 17 target declarations; all `NOT_RUN`.

- `GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion.zeta_zero_ordinate_irrational_without_GRH` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion.zeta_zero_ordinate_transcendental_on_line` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion.actual_zeta_zero_irrational_and_conditional_transcendental` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion.ordinate_split_for_dynamic_spectral_cover` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion.irrational_of_eventual_language_obstruction` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion.eventual_sofic_irrational_and_conditional_transcendental` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion.eventual_ordinate_split_for_dynamic_spectral_cover` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion.DynamicThreeQuarterSoficProgram.zeroFree_strict_threeQuarters` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion.no_eventual_sofic_of_zeta_rightContexts` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion.zeta_irrational_of_rational_sofic_and_rightContexts` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion.zeta_transcendental_of_critical_sofic_and_rightContexts` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion.no_tail_exactPresentationAtMost_of_contextCertificate` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion.no_bounded_tail_presentation_of_zeta_contextCertificate` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion.zeta_capacityCertificate_of_unboundedTailContexts` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion.zeta_unboundedTailContexts_of_all_capacityCertificates` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion.zeta_unboundedTailContexts_iff_all_capacityCertificates` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion.zeta_irrational_of_all_capacityCertificates_and_rational_sofic` — `NOT_RUN`.

### [`GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean`](https://github.com/grwtsk/math/blob/a631c3ab52379eacf4c4fced9111fadd983b37ae/GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean)

Source blob `09333a73feb176009cfe19f0ae48d436a5af8ecd` · SHA-256 `7e9f065e7ec854156f7e5675182a1b6455d8a23926eaf5a66f03b8aeb599ec9a` · 13 target declarations; all `NOT_RUN`.

- `GRWTSK.RiemannHypothesis.zero_conjugate_involutive` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.zero_reflect_involutive` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.zero_conjugate_reflect_commute` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.critical_reflection_eq_composite` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.NontrivialZetaZero.ne_zero` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.NontrivialZetaZero.gamma_real_ne_zero` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.NontrivialZetaZero.conjugate` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.NontrivialZetaZero.reflect` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.NontrivialZetaZero.critical_reflection` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.NontrivialZetaZero.mem_critical_strip` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.nontrivial_zero_conjugate_iff` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.nontrivial_zero_reflect_iff` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.nontrivial_zero_critical_reflection_iff` — `NOT_RUN`.

### [`GRWTSK/NumberTheory/Zeta/Riemann/ZetaSpectralGRHBridge.lean`](https://github.com/grwtsk/math/blob/a631c3ab52379eacf4c4fced9111fadd983b37ae/GRWTSK/NumberTheory/Zeta/Riemann/ZetaSpectralGRHBridge.lean)

Source blob `4626f58fe293d37943a4ec1900e64f84e29598b0` · SHA-256 `5c8a97fdcae8dda9410c654de0fa32c84e1d89304600efac435d37a8f2a0ec3a` · 7 target declarations; all `NOT_RUN`.

- `GRWTSK.RiemannHypothesis.ZetaSpectralGRHBridge.zetaZeroProblem_hypothesis_iff` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZetaSpectralGRHBridge.zetaCriticalPlacement_implies_generalized_of_spectralCovers` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZetaSpectralGRHBridge.generalized_implies_zetaCriticalPlacement_of_member_specialization` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZetaSpectralGRHBridge.zetaCriticalPlacement_iff_generalized_of_spectralCovers_and_specialization` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZetaSpectralGRHBridge.zetaCriticalPlacement_transports_and_splits_ordinates` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZetaSpectralGRHBridge.zetaCriticalPlacement_transports_with_rightContext_certificate` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZetaSpectralGRHBridge.zetaCriticalPlacement_transports_with_all_capacityCertificates` — `NOT_RUN`.

Exact type checks (7); all `NOT_RUN`:

- `GRWTSK.RiemannHypothesis.ZetaSpectralGRHBridge.generalized_implies_zetaCriticalPlacement_of_member_specialization` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZetaSpectralGRHBridge.zetaCriticalPlacement_iff_generalized_of_spectralCovers_and_specialization` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZetaSpectralGRHBridge.zetaCriticalPlacement_implies_generalized_of_spectralCovers` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZetaSpectralGRHBridge.zetaCriticalPlacement_transports_and_splits_ordinates` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZetaSpectralGRHBridge.zetaCriticalPlacement_transports_with_all_capacityCertificates` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZetaSpectralGRHBridge.zetaCriticalPlacement_transports_with_rightContext_certificate` — `NOT_RUN`.
- `GRWTSK.RiemannHypothesis.ZetaSpectralGRHBridge.zetaZeroProblem_hypothesis_iff` — `NOT_RUN`.

## Three-degree spectral volume

S₃ remains **unavailable** under profile `spectral-volume-radius3-v2` (raw SHA-256 `cd6e68070055c92dce2448eaebb44c48f3851721d9564fbcb3cc21c2e2e82056`; canonical digest `254c958eb7f5879d7f3e13f91bbb7ef7a19d3203b48c1402da4198b7992bdc1e`). No numeric ranking is assigned: no target declaration audits completed, and upstream Core source remains outside the qualified source graph.

[Complete source and declaration catalogue](../complete-source-index.md) · [Ranking definition and adjustable weights](../_support/reference/ranking-profile.json).

<!-- DOCUMENTATION RELOCATION /1 original-sha256=911294d1a100342c64ce68006687b8b519ec3e7725bb6126eec1d859c3625082 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/CriticalReflection.lean","GRWTSK/DynamicalSystems/Symbolic/DynamicSoficSpectralCover.lean","GRWTSK/DynamicalSystems/Symbolic/ExactSoficLanguageCover.lean","GRWTSK/Logic/InformationLoss/DynamicPartitionRecovery.lean","GRWTSK/Logic/InformationLoss/FactorizationFiber.lean","GRWTSK/NumberTheory/Farey/DynamicSoficSpectralCover.lean","GRWTSK/NumberTheory/Farey/HeatFlowCompressionSofic.lean","GRWTSK/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean","GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean","GRWTSK/NumberTheory/Zeta/Riemann/ZetaSpectralGRHBridge.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
