/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTwelveBlocksAndTerminal
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonThirteenthBlock

set_option autoImplicit false

/-!
# Compose the first THIRTEEN prefix blocks and the separate terminal leaf

The thirteenth partial fill changes only positions 768..831. Every later record
stays arbitrary. Fifty-one other blocks plus the original final check remain
explicit premises.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonThirteenBlocksAndTerminal

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open ConcreteNewtonPacket RationalZetaCenterEvaluation RationalZetaTranscript

def fill (later : Fin prefixLength → State) : Transcript prefixLength :=
  ConcreteNewtonTwelveBlocksAndTerminal.fill
    (ConcreteNewtonThirteenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem first_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 0) = true :=
  ConcreteNewtonTwelveBlocksAndTerminal.first_check
    (ConcreteNewtonThirteenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem second_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 1) = true :=
  ConcreteNewtonTwelveBlocksAndTerminal.second_check
    (ConcreteNewtonThirteenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem third_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 2) = true :=
  ConcreteNewtonTwelveBlocksAndTerminal.third_check
    (ConcreteNewtonThirteenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem fourth_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 3) = true :=
  ConcreteNewtonTwelveBlocksAndTerminal.fourth_check
    (ConcreteNewtonThirteenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem fifth_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 4) = true :=
  ConcreteNewtonTwelveBlocksAndTerminal.fifth_check
    (ConcreteNewtonThirteenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem sixth_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 5) = true :=
  ConcreteNewtonTwelveBlocksAndTerminal.sixth_check
    (ConcreteNewtonThirteenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem seventh_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 6) = true :=
  ConcreteNewtonTwelveBlocksAndTerminal.seventh_check
    (ConcreteNewtonThirteenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem eighth_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 7) = true :=
  ConcreteNewtonTwelveBlocksAndTerminal.eighth_check
    (ConcreteNewtonThirteenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem ninth_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 8) = true :=
  ConcreteNewtonTwelveBlocksAndTerminal.ninth_check
    (ConcreteNewtonThirteenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem tenth_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 9) = true :=
  ConcreteNewtonTwelveBlocksAndTerminal.tenth_check
    (ConcreteNewtonThirteenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem eleventh_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 10) = true :=
  ConcreteNewtonTwelveBlocksAndTerminal.eleventh_check
    (ConcreteNewtonThirteenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem twelfth_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 11) = true :=
  ConcreteNewtonTwelveBlocksAndTerminal.twelfth_check
    (ConcreteNewtonThirteenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem thirteenth_record (later : Fin prefixLength → State) (j : Fin 64) :
    (fill later).prefix (ConcreteNewtonThirteenthBlock.prefixIndex j) =
      ConcreteNewtonThirteenthBlock.output j := by
  have h768 : 768 ≤ (ConcreteNewtonThirteenthBlock.prefixIndex j).1 := by
    change 768 ≤ j.1 + 768
    omega
  rw [ConcreteNewtonTwelveBlocksAndTerminal.later_record _ _ h768]
  exact ConcreteNewtonThirteenthBlock.fill_record later ConcreteNewtonTerminalEndpoint.terminalOutput j

theorem thirteenth_check (later : Fin prefixLength → State) :
    checkPrefix prefixLength center plan (fill later)
      (ConcreteNewtonBlockAcceptance.blockIndices 12) = true :=
  ConcreteNewtonThirteenthBlock.thirteenth_block_of_records (fill later) (thirteenth_record later)

theorem terminal_check (later : Fin prefixLength → State) :
    checkTerminal prefixLength center plan (fill later) = true :=
  ConcreteNewtonTwelveBlocksAndTerminal.terminal_check
    (ConcreteNewtonThirteenthBlock.fill later ConcreteNewtonTerminalEndpoint.terminalOutput).prefix

theorem later_record (later : Fin prefixLength → State) (i : Fin prefixLength)
    (hi : 832 ≤ i.1) : (fill later).prefix i = later i := by
  rw [ConcreteNewtonTwelveBlocksAndTerminal.later_record _ i (by omega)]
  exact ConcreteNewtonThirteenthBlock.fill_preserves_outside later
    ConcreteNewtonTerminalEndpoint.terminalOutput i (by omega)

def remainingBlock (j : Fin 51) : Fin 64 := ⟨j.1 + 13, by have := j.isLt; omega⟩

theorem remaining_cover (b : Fin 64)
    (h0 : b ≠ 0) (h1 : b ≠ 1) (h2 : b ≠ 2) (h3 : b ≠ 3) (h4 : b ≠ 4) (h5 : b ≠ 5) (h6 : b ≠ 6) (h7 : b ≠ 7) (h8 : b ≠ 8) (h9 : b ≠ 9) (h10 : b ≠ 10) (h11 : b ≠ 11) (h12 : b ≠ 12) :
    ∃ j : Fin 51, remainingBlock j = b := by
  have hb := b.isLt
  have hb0 : b.1 ≠ 0 := by intro h; apply h0; exact Fin.ext h
  have hb1 : b.1 ≠ 1 := by intro h; apply h1; exact Fin.ext h
  have hb2 : b.1 ≠ 2 := by intro h; apply h2; exact Fin.ext h
  have hb3 : b.1 ≠ 3 := by intro h; apply h3; exact Fin.ext h
  have hb4 : b.1 ≠ 4 := by intro h; apply h4; exact Fin.ext h
  have hb5 : b.1 ≠ 5 := by intro h; apply h5; exact Fin.ext h
  have hb6 : b.1 ≠ 6 := by intro h; apply h6; exact Fin.ext h
  have hb7 : b.1 ≠ 7 := by intro h; apply h7; exact Fin.ext h
  have hb8 : b.1 ≠ 8 := by intro h; apply h8; exact Fin.ext h
  have hb9 : b.1 ≠ 9 := by intro h; apply h9; exact Fin.ext h
  have hb10 : b.1 ≠ 10 := by intro h; apply h10; exact Fin.ext h
  have hb11 : b.1 ≠ 11 := by intro h; apply h11; exact Fin.ext h
  have hb12 : b.1 ≠ 12 := by intro h; apply h12; exact Fin.ext h
  refine ⟨⟨b.1 - 13, by omega⟩, ?_⟩
  apply Fin.ext
  change b.1 - 13 + 13 = b.1
  omega

theorem source_of_remaining (later : Fin prefixLength → State)
    (hrest : ∀ j : Fin 51, checkPrefix prefixLength center plan (fill later)
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
                · by_cases hb8 : b = 8
                  · subst b; exact ninth_check later
                  · by_cases hb9 : b = 9
                    · subst b; exact tenth_check later
                    · by_cases hb10 : b = 10
                      · subst b; exact eleventh_check later
                      · by_cases hb11 : b = 11
                        · subst b; exact twelfth_check later
                        · by_cases hb12 : b = 12
                          · subst b; exact thirteenth_check later
                          · obtain ⟨j, rfl⟩ := remaining_cover b hb0 hb1 hb2 hb3 hb4 hb5 hb6 hb7 hb8 hb9 hb10 hb11 hb12
                            exact hrest j

end GRWTSK.RiemannHypothesis.ConcreteNewtonThirteenBlocksAndTerminal
