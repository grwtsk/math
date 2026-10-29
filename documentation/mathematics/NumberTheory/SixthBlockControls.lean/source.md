# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.SixthBlockControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4cfffc0850a160543714291ea91b9a5ea23e198a` · SHA-256 `d09dc13af0e94a8fdb727aefd0568b33f82a18a5bf8dd20dc4bb37e15686fd15`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSixBlocksAndTerminal

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.SixthBlockControls

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open ConcreteNewtonPacket RationalZetaCenterEvaluation

theorem base_boundaries : ConcreteNewtonSixthBlockData.base 0 = 321 ∧
    ConcreteNewtonSixthBlockData.base 63 = 384 := by
  norm_num [ConcreteNewtonSixthBlockData.base]

theorem prefix_boundaries : (ConcreteNewtonSixthBlock.prefixIndex 0).1 = 320 ∧
    (ConcreteNewtonSixthBlock.prefixIndex 63).1 = 383 := by
  norm_num [ConcreteNewtonSixthBlock.prefixIndex]

theorem sixth_block_endpoints :
    (⟨320, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 5 ∧
    (⟨383, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ ConcreteNewtonBlockAcceptance.blockIndices 5 := by
  constructor <;> rw [ConcreteNewtonSixthBlock.mem_sixth_block] <;> norm_num

theorem adjacent_positions_excluded :
    (⟨319, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 5 ∧
    (⟨384, by norm_num [prefixLength]⟩ : Fin prefixLength) ∉ ConcreteNewtonBlockAcceptance.blockIndices 5 := by
  constructor <;> rw [ConcreteNewtonSixthBlock.mem_sixth_block] <;> norm_num

theorem logarithm_reduction_uniform : (schedule 321).logExponent = 8 ∧
    (schedule 384).logExponent = 8 := by
  norm_num [schedule, logExponent]

theorem terminal_not_sixth_block (i : Fin 64) : ConcreteNewtonSixthBlockData.base i ≠ 4097 := by
  have := i.isLt
  unfold ConcreteNewtonSixthBlockData.base
  omega

theorem first_unfilled_preserved (later : Fin prefixLength → State) :
    (ConcreteNewtonSixBlocksAndTerminal.fill later).prefix ⟨384, by norm_num [prefixLength]⟩ =
      later ⟨384, by norm_num [prefixLength]⟩ :=
  ConcreteNewtonSixBlocksAndTerminal.later_record later _ (by norm_num)

theorem terminal_is_copied_exactly (later : Fin prefixLength → State) :
    (ConcreteNewtonSixBlocksAndTerminal.fill later).terminal =
      ConcreteNewtonTerminalEndpoint.terminalOutput := rfl

theorem remaining_label_boundaries :
    ConcreteNewtonSixBlocksAndTerminal.remainingBlock 0 = 6 ∧
      ConcreteNewtonSixBlocksAndTerminal.remainingBlock 57 = 63 := by
  constructor <;> apply Fin.ext <;>
    norm_num [ConcreteNewtonSixBlocksAndTerminal.remainingBlock]

end GRWTSK.RiemannHypothesis.SixthBlockControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bade4170867fe0b9744258890ee218380d07e739dd85dd69d7a3fad3c9be8a04 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Chebyshev/Checks/SixthBlockControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
