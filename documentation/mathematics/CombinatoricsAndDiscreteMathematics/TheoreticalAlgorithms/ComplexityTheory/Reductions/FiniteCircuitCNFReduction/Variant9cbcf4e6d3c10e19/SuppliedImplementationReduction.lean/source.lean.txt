/-
SuppliedImplementationReduction
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 9cbcf4e6d3c10e19ca1590633b0d1be6186be089e53ddf524b5750ae76e4e78a
Organized SHA-256: 127012393d2a1a0f352e6d6a97784daeb9c178281629d0d3267215337c1a5d71
PMD: 510.7.120.010.020 reductions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Whole Implements keeps BOTH universal valid-trace soundness and existential trace completeness. Whole CompiledAlgorithm keeps run,circuit,wellFormed,correct; these are pure function/typed mathematical data, not executable process control or a constructed compiler. All reduction proofs retain the supplied implementation witness. -/

import Mathlib.Data.Fintype.Pi
import Lean.Elab.Tactic.Omega

import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ComplexityTheory.Reductions.FiniteCircuitCNFReduction.Variant9cbcf4e6d3c10e19.TraceEncodingAndClauseBounds

/-!
# Deterministic fixed-width computations reduce to SAT

This module formalizes two related statements.

1. **Finite-domain reduction.** Every function
   `Bits n → Bits m` has a CNF formula whose satisfying assignments are exactly
   the inputs mapped to a fixed target.  This construction enumerates the finite
   input domain, so its size may be exponential in `n`.

2. **Circuit/Tseitin reduction.** Given a verified feed-forward Boolean circuit,
   each gate is translated to a constant number of CNF clauses.  The resulting
   formula is satisfiable exactly when the represented algorithm has a preimage
   of the target.  The clause count is at most four times the number of gates,
   plus one unit clause per output bit.

Consequently, a family of deterministic algorithms having polynomial-size
Boolean circuits (in particular, a polynomial-time computation after a standard
bit-blasting/unrolling compilation) has a polynomial-size many-one reduction to
SAT.

For a bijection `H : Bits n → Bits n`, the target formula has exactly one input
projection.  It need not have a unique assignment over an ambient, unbounded
variable namespace, because variables not occurring in the formula are irrelevant.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.Satisfiability.FiniteBooleanCNF.Variant9cbcf4e6d3c10e19

namespace Circuit

/--
A circuit implements `algorithm` when valid traces are sound and every input
has at least one valid trace.

For a well-formed straight-line circuit, the trace is in fact determined by the
input; the reduction theorem below only needs soundness and completeness.
-/
def Implements (circuit : Circuit n m) (algorithm : Bits n → Bits m) : Prop :=
  (∀ σ, circuit.ValidTrace σ →
      circuit.readOutput σ = algorithm (readInput σ)) ∧
  (∀ input : Bits n,
    ∃ σ, readInput (n := n) σ = input ∧ circuit.ValidTrace σ)

/-- Package a deterministic fixed-width algorithm with a verified bit-blasting result. -/
structure CompiledAlgorithm (n m : Nat) where
  run : Bits n → Bits m
  circuit : Circuit n m
  wellFormed : circuit.WellFormed
  correct : circuit.Implements run

/-- The SAT instance is satisfiable exactly when the algorithm has a target preimage. -/
theorem satisfiable_toCNF_iff_preimage
    (circuit : Circuit n m)
    (algorithm : Bits n → Bits m)
    (hcorrect : circuit.Implements algorithm)
    (target : Bits m) :
    CNF.Satisfiable (circuit.toCNF target) ↔
      ∃ input, algorithm input = target := by
  constructor
  · rintro ⟨σ, hσ⟩
    have hformula := (circuit.toCNF_correct σ target).mp hσ
    refine ⟨readInput σ, ?_⟩
    calc
      algorithm (readInput σ) = circuit.readOutput σ :=
        (hcorrect.1 σ hformula.1).symm
      _ = target := hformula.2
  · rintro ⟨input, hinput⟩
    obtain ⟨σ, hread, htrace⟩ := hcorrect.2 input
    refine ⟨σ, (circuit.toCNF_correct σ target).mpr ⟨htrace, ?_⟩⟩
    calc
      circuit.readOutput σ = algorithm (readInput σ) :=
        hcorrect.1 σ htrace
      _ = algorithm input := by rw [hread]
      _ = target := hinput

/-- The reduction theorem specialized to a packaged compiled algorithm. -/
theorem CompiledAlgorithm.sat_iff_preimage
    (compiled : CompiledAlgorithm n m)
    (target : Bits m) :
    CNF.Satisfiable (compiled.circuit.toCNF target) ↔
      ∃ input, compiled.run input = target :=
  satisfiable_toCNF_iff_preimage
    compiled.circuit compiled.run compiled.correct target

/-- An input is represented by some satisfying assignment of the target formula. -/
def InputWitness
    (circuit : Circuit n m)
    (target : Bits m)
    (input : Bits n) : Prop :=
  ∃ σ, CNF.Holds σ (circuit.toCNF target) ∧ readInput σ = input

/-- Satisfying input projections are exactly target preimages. -/
theorem inputWitness_iff_preimage
    (circuit : Circuit n m)
    (algorithm : Bits n → Bits m)
    (hcorrect : circuit.Implements algorithm)
    (target : Bits m)
    (input : Bits n) :
    circuit.InputWitness target input ↔ algorithm input = target := by
  constructor
  · rintro ⟨σ, hformula, hread⟩
    have h := (circuit.toCNF_correct σ target).mp hformula
    calc
      algorithm input = algorithm (readInput σ) := by rw [hread]
      _ = circuit.readOutput σ := (hcorrect.1 σ h.1).symm
      _ = target := h.2
  · intro hpreimage
    obtain ⟨σ, hread, htrace⟩ := hcorrect.2 input
    refine ⟨σ, ?_, hread⟩
    apply (circuit.toCNF_correct σ target).mpr
    refine ⟨htrace, ?_⟩
    calc
      circuit.readOutput σ = algorithm (readInput σ) :=
        hcorrect.1 σ htrace
      _ = algorithm input := by rw [hread]
      _ = target := hpreimage

end Circuit

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.Satisfiability.FiniteBooleanCNF.Variant9cbcf4e6d3c10e19
