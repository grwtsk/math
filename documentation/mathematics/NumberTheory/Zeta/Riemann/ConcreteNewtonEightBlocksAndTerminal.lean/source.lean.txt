/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSevenBlocksAndTerminal
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonEighthBlock

set_option autoImplicit false

/-!
# Compose the first EIGHT prefix blocks and the separate terminal leaf

The eighth partial fill changes only positions 448..511. Every later record
stays arbitrary. Fifty-six other blocks plus the original final check remain
explicit premises.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonEightBlocksAndTerminal

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open ConcreteNewtonPacket RationalZetaCenterEvaluation RationalZetaTranscript

def fill (later : Fin prefixLength → State) : Transcript prefixLength :=
  ConcreteNewtonSevenBlocksAndTerminal.fill
    (ConcreteNewtonEighthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem first_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 0) = true :=
  ConcreteNewtonSevenBlocksAndTerminal.first_check
    (ConcreteNewtonEighthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem second_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 1) = true :=
  ConcreteNewtonSevenBlocksAndTerminal.second_check
    (ConcreteNewtonEighthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem third_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 2) = true :=
  ConcreteNewtonSevenBlocksAndTerminal.third_check
    (ConcreteNewtonEighthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem fourth_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 3) = true :=
  ConcreteNewtonSevenBlocksAndTerminal.fourth_check
    (ConcreteNewtonEighthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem fifth_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 4) = true :=
  ConcreteNewtonSevenBlocksAndTerminal.fifth_check
    (ConcreteNewtonEighthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem sixth_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 5) = true :=
  ConcreteNewtonSevenBlocksAndTerminal.sixth_check
    (ConcreteNewtonEighthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem seventh_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 6) = true :=
  ConcreteNewtonSevenBlocksAndTerminal.seventh_check
    (ConcreteNewtonEighthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem eighth_record (later : Fin prefixLength → State) (j : Fin 64) :
    (fill later).prefix (ConcreteNewtonEighthBlock.prefixIndex j) =
      ConcreteNewtonEighthBlock.output j := by
  have h448 : 448 ≤ (ConcreteNewtonEighthBlock.prefixIndex j).1 := by
    change 448 ≤ j.1 + 448
    omega
  rw [ConcreteNewtonSevenBlocksAndTerminal.later_record _ _ h448]
  exact ConcreteNewtonEighthBlock.fill_record later ConcreteNewtonTerminalEndpoint.terminalOutput j

theorem eighth_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 7) = true :=
  ConcreteNewtonEighthBlock.eighth_block_of_records (fill later) (eighth_record later)

theorem terminal_check (later : Fin prefixLength → State) :
    checkTerminal prefixLength center plan (fill later) = true :=
  ConcreteNewtonSevenBlocksAndTerminal.terminal_check
    (ConcreteNewtonEighthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem later_record (later : Fin prefixLength → State) (i : Fin prefixLength)
    (hi : 512 ≤ i.1) : (fill later).prefix i = later i := by
  rw [ConcreteNewtonSevenBlocksAndTerminal.later_record _ i (by omega)]
  exact ConcreteNewtonEighthBlock.fill_preserves_outside later
    ConcreteNewtonTerminalEndpoint.terminalOutput i (by omega)

def remainingBlock (j : Fin 56) : Fin 64 := ⟨j.1 + 8, by have := j.isLt; omega⟩

theorem remaining_cover (b : Fin 64)
    (h0 : b ≠ 0) (h1 : b ≠ 1) (h2 : b ≠ 2) (h3 : b ≠ 3)
    (h4 : b ≠ 4) (h5 : b ≠ 5) (h6 : b ≠ 6) (h7 : b ≠ 7) :
    ∃ j : Fin 56, remainingBlock j = b := by
  have hb := b.isLt
  have hb0 : b.1 ≠ 0 := by intro h; apply h0; exact Fin.ext h
  have hb1 : b.1 ≠ 1 := by intro h; apply h1; exact Fin.ext h
  have hb2 : b.1 ≠ 2 := by intro h; apply h2; exact Fin.ext h
  have hb3 : b.1 ≠ 3 := by intro h; apply h3; exact Fin.ext h
  have hb4 : b.1 ≠ 4 := by intro h; apply h4; exact Fin.ext h
  have hb5 : b.1 ≠ 5 := by intro h; apply h5; exact Fin.ext h
  have hb6 : b.1 ≠ 6 := by intro h; apply h6; exact Fin.ext h
  have hb7 : b.1 ≠ 7 := by intro h; apply h7; exact Fin.ext h
  refine ⟨⟨b.1 - 8, by omega⟩, ?_⟩
  apply Fin.ext
  change b.1 - 8 + 8 = b.1
  omega

theorem source_of_remaining (later : Fin prefixLength → State)
    (hrest : ∀ j : Fin 56, checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices (remainingBlock j)) = true)
    (hfinal : checkFinal prefixLength center plan (fill later)
      valueTolerance slopeTolerance claimed = true) : SourceAcceptance := by
  apply ConcreteNewtonBlockAcceptance.source_acceptance_of_blocks (fill later)
  refine ⟨?_, terminal_check later, hfinal⟩
  intro b
  by_cases hb0 : b = 0
  · subst b; exact first_check later
  · by_cases hb1 : b = 1
    · subst b; exact second_check later
    · by_cases hb2 : b = 2
      · subst b; exact third_check later
      · by_cases hb3 : b = 3
        · subst b; exact fourth_check later
        · by_cases hb4 : b = 4
          · subst b; exact fifth_check later
          · by_cases hb5 : b = 5
            · subst b; exact sixth_check later
            · by_cases hb6 : b = 6
              · subst b; exact seventh_check later
              · by_cases hb7 : b = 7
                · subst b; exact eighth_check later
                · obtain ⟨j, rfl⟩ := remaining_cover b hb0 hb1 hb2 hb3 hb4 hb5 hb6 hb7
                  exact hrest j

end GRWTSK.RiemannHypothesis.ConcreteNewtonEightBlocksAndTerminal
