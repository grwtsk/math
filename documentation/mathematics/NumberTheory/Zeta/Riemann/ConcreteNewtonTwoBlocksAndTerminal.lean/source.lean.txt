/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFirstBlock
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSecondBlock
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTerminalEndpoint

set_option autoImplicit false

/-!
# Compose the first TWO prefix blocks and the separate terminal leaf

The first-block source is reused from exact PR #340; the terminal source is
carried unchanged from the unpublished terminal patch. Neither is kernel audited.
Later records remain arbitrary. There is no supplied acceptance premise for
blocks zero/one or the terminal, but 62 other blocks and the complete final
check remain explicit. The original SourceAcceptance definition is unchanged.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonTwoBlocksAndTerminal

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open ConcreteNewtonPacket RationalZetaCenterEvaluation RationalZetaTranscript

/-- Fill the second window first, then the disjoint first window. No sums are taken here. -/
def fill (later : Fin prefixLength → State) : Transcript prefixLength :=
  ConcreteNewtonFirstBlock.fill
    (ConcreteNewtonSecondBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix
    ConcreteNewtonTerminalEndpoint.terminalOutput

theorem first_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 0) = true :=
  ConcreteNewtonFirstBlock.first_block_check
    (ConcreteNewtonSecondBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix
    ConcreteNewtonTerminalEndpoint.terminalOutput

theorem second_record (later : Fin prefixLength → State) (j : Fin 64) :
    (fill later).prefix (ConcreteNewtonSecondBlock.prefixIndex j) =
      ConcreteNewtonSecondBlock.output j := by
  have hn : ¬ (ConcreteNewtonSecondBlock.prefixIndex j).1 < 64 := by
    change ¬ j.1 + 64 < 64
    omega
  simp only [fill, ConcreteNewtonFirstBlock.fill, dif_neg hn]
  exact ConcreteNewtonSecondBlock.fill_record later ConcreteNewtonTerminalEndpoint.terminalOutput j

theorem second_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 1) = true :=
  ConcreteNewtonSecondBlock.second_block_of_records (fill later) (second_record later)

theorem terminal_check (later : Fin prefixLength → State) :
    checkTerminal prefixLength center plan (fill later) = true :=
  ConcreteNewtonTerminalEndpoint.terminal_check (fill later) rfl

/-- Unverified later positions stay byte-for-byte equal as typed records. -/
theorem later_record (later : Fin prefixLength → State) (i : Fin prefixLength)
    (hi : 128 ≤ i.1) : (fill later).prefix i = later i := by
  have hfirst : ¬ i.1 < 64 := by omega
  have hsecond : ¬ (64 ≤ i.1 ∧ i.1 < 128) := by omega
  simp only [fill, ConcreteNewtonFirstBlock.fill, dif_neg hfirst]
  exact ConcreteNewtonSecondBlock.fill_preserves_outside later
    ConcreteNewtonTerminalEndpoint.terminalOutput i hsecond

/-- Exactly block labels 2 through 63, not an asserted list of passing labels. -/
def remainingBlock (j : Fin 62) : Fin 64 := ⟨j.1 + 2, by have := j.isLt; omega⟩

theorem remaining_cover (b : Fin 64) (h0 : b ≠ 0) (h1 : b ≠ 1) :
    ∃ j : Fin 62, remainingBlock j = b := by
  have hb := b.isLt
  have hb0 : b.1 ≠ 0 := by intro h; apply h0; exact Fin.ext h
  have hb1 : b.1 ≠ 1 := by intro h; apply h1; exact Fin.ext h
  refine ⟨⟨b.1 - 2, by omega⟩, ?_⟩
  apply Fin.ext
  change b.1 - 2 + 2 = b.1
  omega

theorem remaining_unique (i j : Fin 62) (h : remainingBlock i = remainingBlock j) : i = j := by
  have he := congrArg Fin.val h
  apply Fin.ext
  simp only [remainingBlock] at he
  omega

/-- SIXTY-THREE remaining data checks: 62 blocks and the original six-field final check.
This implication does not prove any of these premises or a source-acceptance equality. -/
theorem source_of_remaining (later : Fin prefixLength → State)
    (hrest : ∀ j : Fin 62, checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices (remainingBlock j)) = true)
    (hfinal : checkFinal prefixLength center plan (fill later)
      valueTolerance slopeTolerance claimed = true) : SourceAcceptance := by
  apply ConcreteNewtonBlockAcceptance.source_acceptance_of_blocks (fill later)
  refine ⟨?_, terminal_check later, hfinal⟩
  intro b
  by_cases hb0 : b = 0
  · subst b
    exact first_check later
  · by_cases hb1 : b = 1
    · subst b
      exact second_check later
    · obtain ⟨j, rfl⟩ := remaining_cover b hb0 hb1
      exact hrest j

end GRWTSK.RiemannHypothesis.ConcreteNewtonTwoBlocksAndTerminal
