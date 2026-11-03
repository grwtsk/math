# Source-bound excellence review: canonical transversal to periodic-label fiber ledger

Research and review date: 2026-11-02. Attribution: grwtsk contributors; review assistance: OpenAI ChatGPT.
Evidence classification: SOURCE REVIEW + EXACT FINITE DIAGNOSTICS, NOT native Lean acceptance.

## Scope and immutable baseline

Inspected the following actual grwtsk/math source blobs at initial pinned main 401dbb94bbfdb9f4c37e5de48dd876fd5ef88eaf:

1. CertifiedTransversal.lean, blob df720cbb72c616938635c20477430f5f0ded4021: nonvacuous source coverage, relation validity, separate source/target predicate transfer, lossy-observer counterexample.
2. ExactSoficLanguageCover.lean, blob f50489eaf6c7277993a08925a58b7765f9e10ec9: actual label-indexed graph, inductive WordPath, entire finite-word language, right-context capacity.
3. SoficLanguageTransversal.lean, blob 238da905b6595c944cac40f39ae2f54870032132: complete-language source/target coverage, actual endpoints and word.
4. SoficPeriodicMatrixTrace.lean, blob 7aa717801ded4b67b6228e852ed76323cdefaa70: finite letter-count adjacency, matrix-power recurrence, based-closed-walk trace, true periodic label block subtype, two same-language hostile graphs.
5. SoficMatrixCertifiedTransversal.lean, blob 6fe56e27333b99d3b6f1941639612e1dfac1692d: actual graph-to-adjacency certified relation, NOT a claimed periodic-label bijection.
6. SoficBasedCycleCard.lean, blob d7fd2f5aad643d4350e4b5bfd7128dd979717a74: finite inductive actual-path cardinality via zero/snoc equivalences.
7. SoficPeriodicFiberLedger.lean, blob e333b47af8f907e344bcb150e9ebd9675ea040b0: exact fibers of a separately supplied cycle-to-label map, missing and surplus lifts.

Inspected the immediate extra project dependencies DynamicPartitionRecovery.lean (5967730dc10d34ddcf1226ee1056594f012567d4) and FactorizationFiber.lean (034dc65cc2fc5fc7a7ad439c6f110b6ccd7ad9c6). Source scans found no actual sorry, axiom or unsafe declaration in the inspected files. The scan does NOT check the complete imported, opaque or generated closure.

Source and environment pin: Lean 4.34.1 (lean-toolchain blob ba8ebf2dbaf6a668cd2a0e086186d6d569b69ff5), Mathlib revision d13f23b723b8a846827a245b89c10fc7d3f11612 (lake-manifest blob c8044c56be77c58e6f41cca024b25237c59e8c79).

## Finding F1 — high-priority declaration-order elaboration risk, targeted source repair

In the originally published SoficPeriodicMatrixTrace, the theorem periodicLabelPoint_card_eq_trace_of_exact_lifts uses Fintype.card on the predicate-defined PeriodicLabelPoint subtype. Its only project-specific Fintype instance was defined in downstream SoficPeriodicFiberLedger, which cannot supply typeclass instances to an already elaborated upstream theorem. The semantics guarantee finiteness from finite Alphabet and Fin n, but the typeclass witness must be available at the theorem declaration.

A noncomputable periodicLabelPointFintype instance was moved to the defining matrix module, using the same classical Fintype.ofFinite construction previously used downstream. The downstream redundant periodLabelFintype was removed to avoid competing instances. This preserves PeriodicLabelPoint, the full-language predicate, graph, matrix, theorem statements and cardinality semantics. New source blobs:

- SoficPeriodicMatrixTrace.lean: 70e416083e8fd1238ffdd8896f984e0a5382c139.
- SoficPeriodicFiberLedger.lean: becfa9cfddb8479c36a007c17d8be4d0d7defe05.

This is a source-candidate repair, NOT proof of successful Lean elaboration. It does not assert that every other proof elaborates.

Documentation also corrects the phrase Real matrix multiplication to Natural-number matrix multiplication, matching Matrix State State Nat. The conditional periodic-point theorem comments now state that hExact and hLabels describe intended source compatibility but DO NOT construct the required equivalence. The fiber theorem comments distinguish finite fiber arithmetic from proof that an actual label-preserving map exists.

## Finding F2 — mathematical structure and preserved boundaries

The canonical Transversal demands a nonvacuous source witness and does NOT promote source coverage to target coverage. ExactLanguagePresentation requires equality of EVERY finite word with the actual graph path language; one accepted infinite trace is not sufficient. The sofic consumer preserves the actual start/end states and word, and uses both directions of exactLanguage.

For finite graph states and an EXPLICIT finite alphabet, labeledAdjacency(s,t) counts the letters a for which edge(s,a,t) holds. The original natural-number matrix powers satisfy the last-edge walk recurrence, including n=0. The matrix trace counts BASED graph cycles, with an initial state and every intermediate state/letter. The independent inductive LabeledWalkData and BasedCycleData follow the same recurrence in their finite cardinalities, as source-level Lean proofs awaiting typechecking.

Period-dividing-n label points are distinct objects: they require every finite factor of the infinite repeated n-block to belong to the full source language. They are not simply graph state cycles. The fiber identity for an ALREADY GIVEN map f is

    trace(A^n) = sum over admitted period-n label points p of card(fiber_f(p)),
    trace(A^n) + unlifted_f = card(periodic label points) + surplus_f.

A map f with genuine basedCycleWord label preservation remains an explicit hypothesis. Its mathematical construction from an actual graph n-cycle uses cyclic repetition and arbitrary finite offsets; this construction is NOT yet a Lean theorem under ExactLanguagePresentation. The hLabels premise of the current fiber theorem is semantically important but is not used to prove abstract finite cardinality once f is supplied. The exact-language hExact premise of the earlier cardinal theorem similarly does not construct its supplied equivalence.

No unconditional graph trace equals periodic-label count statement follows. Two honest full-language presentations with State Bool and Alphabet Unit refute it: two independent Unit self-loops have trace 2 and one period-one label point; alternating Unit edges have trace 0 for odd lengths and one period-one label point. These are failures of injectivity and of period-preserving surjectivity respectively, not counterexamples to based-cycle trace counting.

SoficMatrixCertifiedTransversal correctly connects graphs to adjacency matrices with the fixed based-walk trace relation, without claiming an inverse graph reconstruction or period-lift bijection.

## Finding F3 — evidence quality and independent finite regression

Uploaded diagnostic script SHA-256 0d7146b0dd5ca8f3cd3ff510d0689b01c6c9a34d46f308e3556c6391fbba8f5a and result SHA-256 ecf6b7b394ed62ccc3b0f8111236de3c10aef0c470a78cecbee03c8cf474e204 were inspected. The script was rerun successfully and reproduced the exact result hash. Its 7,215 weighted check count includes matrix component comparisons and membership decisions; it is not literally 7,215 separately executed Python assert statements. Mathematical fixture values remain valid.

A NEW diagnostic was independently implemented without importing the old test code. It exhaustively checked EVERY directed labeled graph with 0..2 states and 0..2 symbols, plus EVERY 3-state/1-symbol graph: 795 total graphs. For every length 0..4, it explicitly enumerated actual intermediate-vertex/letter witness data and independently calculated matrix powers. Periodic block membership was checked from all phases up to n*2^|State|+1 steps, the finite reachable-subset pigeonhole bound.

Results: 50,952 separately recorded exact integer checks, with no failing assertion: 28,535 endpoint cardinality comparisons, 3,975 trace/cycle checks, 795 zero-length checks, 7,151 actual cycle-label admissibility checks, 3,180 fiber ledgers and 7,316 pointwise fiber identities. The duplicate-loop and alternating-state families were checked for n=1..8.

Independent script SHA-256 baab897107c5045c716e51b71ebc34369681a8851d04f0ba50d8da8babdfbad5.
Independent output SHA-256 8ac4e3ac8149cb935f7f444f84ff3dfbd16048b41e4a7f6d521833427280f455.

These are exact FINITE Python tests, not symbolic proofs, executable Lean checks or transitive axiom receipts. The scripts/results are conversation scratch artifacts; the digests support later exact readback but do not place them in the math repository.

## Finding F4 — missing native acceptance

Native Lean, Lake, elan and verified local Noe/math checkouts are not available in the current execution environment. Noe canonical noe-proof-automation skill was inspected at Noe main 547e05de7ce3548492464ed9b8a6c9edef2c752c, skill blob 5292446e4ef1398ba928d8ad339b662415166f19. The maintained managed project/Mathlib replay requires its owner, resource holds, current source-bound registry v3, fresh module compilation, expected-type/universe checks, trust=0 kernel, strict per-declaration transitive axiom reports and host-state restoration. No native resource owner was accessed or bypassed, no runner/CI/worker/scheduler dispatched, and no exact-source acceptance receipt for these modules was obtained.

Required acceptance order: (1) canonical CertifiedTransversal; (2) FactorizationFiber, DynamicPartitionRecovery, ExactSoficLanguageCover and whole-language SoficLanguageTransversal; (3) patched SoficPeriodicMatrixTrace plus SoficMatrixCertifiedTransversal; (4) SoficBasedCycleCard and patched SoficPeriodicFiberLedger; (5) all named expected types, universes, kernel replay, axiom closure, and owner restoration. A full Mathlib import may expand the source closure; compilation receipt coverage must match the actual immutable import graph.

Representative fully qualified declaration targets:
- GRWTSK.CategoryTheoryHomologicalAlgebra.GeneralTheoryOfCategoriesAndFunctors.CertifiedTransversal.Transversal.source_property_of_target
- GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficLanguageTransversal.wholeLanguageTransversal
- GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace.periodicLabelPoint_card_eq_trace_of_exact_lifts
- GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficMatrixCertifiedTransversal.graphMatrix_has_certified_target
- GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBasedCycleCard.exactBasedCycleCard
- GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicFiberLedger.trace_add_unlifted_eq_label_card_add_surplus

The older status NOT_RUN must remain attached to the corresponding old blobs; source changes invalidate any hypothetical old receipt. The selected admissible standard axiom policy is the reviewed subset of propext, Classical.choice and Quot.sound, not a claim that a checker audited that list.

## Disposition and next formal theorem

The audited chain has a mathematically coherent source architecture and strong finite diagnostics, with one concrete Fintype declaration-order improvement. The true next source theorem is HasLabelPreservingCycleMap_of_exact_presentation, proving arbitrary-offset finite-word admissibility of cyclically repeated ACTUAL based graph walks. It does not imply that the map is bijective. The general finite-fiber balance then remains the correct answer without unjustified injectivity/surjectivity.

**Trust status:** Git source publication/readback only where explicitly confirmed; Lean compilation NOT_RUN; expected types NOT_RUN; fresh kernel NOT_RUN; transitive axiom audit NOT_RUN; full imported closure NOT_RUN; label-preserving map construction OPEN; universal trace/label periodic equality FALSE. No RH, general pseudofunctor or dynamical zeta determinant theorem is claimed.
