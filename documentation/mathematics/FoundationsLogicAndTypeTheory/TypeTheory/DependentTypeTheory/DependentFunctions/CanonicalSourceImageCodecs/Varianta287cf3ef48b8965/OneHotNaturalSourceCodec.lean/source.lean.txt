/-
OneHotNaturalSourceCodec — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: a287cf3ef48b896567987445f17e65a4fb59cbcc7a2cf24f277ff906de691b6b
Organized SHA-256: 01e012715d09f573e7b46f1491c0e5614aced09b130f982ef0ed71f6b5d04977
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole noncomputable one-hot State Nat specialization, injection, classical exact-image Option decoder and full two-law codec/round-trip. Preserve exact noncomputable section and all witnesses. Not the byte-level runtime format, sequential-prime assignment, analytic representation or executable image decision. -/

import BitMatrix.Carrier.BooleanSpace

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.CanonicalSourceImageCodecs.Varianta287cf3ef48b8965.NaturalListAndCanonicalSourceCodes
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.CanonicalSourceImageCodecs.Varianta287cf3ef48b8965.TwoLawSourceCodecAndImageEquivalence

/-!
# Canonical finite sources and source-state codecs

This module states the provider-neutral source-codec interface. An
implementation must provide both decoding laws; only then is its source
constructor promoted to an equivalence with its image. The separate
`BitMatrix.Codec.SequentialPrimeSource` module now supplies the project's
concrete full-carrier implementation of this interface.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.CanonicalSourceImageCodecs.Varianta287cf3ef48b8965


namespace BitMatrix.Codec

noncomputable section
/--
The canonical source encoded as a one-hot Boolean state over natural-number
addresses.  This is an exact mathematical source codec specialization.  It is
not the byte-level runtime wire format and is not claimed to be the restricted
sequential-prime carrier assignment from the rhetorical document.
-/
def oneHotSourceState (source : CanonicalSource) :
    BitMatrix.Carrier.BooleanState Nat :=
  fun address => decide (address = source.code)


theorem oneHotSourceState_injective : Function.Injective oneHotSourceState := by
  intro left right equal
  apply CanonicalSource.code_injective
  by_contra different
  have atLeft := congrFun equal left.code
  simp [oneHotSourceState, different] at atLeft


/--
Exact image decoder for `oneHotSourceState`.  Decoding is noncomputable because
membership in the unrestricted function-space image is not decidable; the
round-trip laws are nevertheless kernel checked.
-/
noncomputable def decodeOneHotSourceState
    (state : BitMatrix.Carrier.BooleanState Nat) : Option CanonicalSource := by
  classical
  exact if witness : ∃ source, oneHotSourceState source = state then
      some (Classical.choose witness)
    else
      none


/-- A concrete, exact source codec over natural-number addresses. -/
noncomputable def oneHotSourceCodec : SourceCodec Nat where
  encode := oneHotSourceState
  decode := decodeOneHotSourceState
  decode_encode source := by
    simp only [decodeOneHotSourceState]
    split
    · rename_i witness
      congr 1
      apply oneHotSourceState_injective
      exact Classical.choose_spec witness
    · rename_i absent
      exact False.elim (absent ⟨source, rfl⟩)
  encode_decode := by
    intro state source decoded
    simp only [decodeOneHotSourceState] at decoded
    split at decoded
    · rename_i witness
      have chosen : Classical.choose witness = source := Option.some.inj decoded
      rw [← chosen]
      exact Classical.choose_spec witness
    · contradiction


@[simp]
theorem oneHotSourceCodec_decode_encode (source : CanonicalSource) :
    oneHotSourceCodec.decode (oneHotSourceCodec.encode source) = some source :=
  oneHotSourceCodec.decode_encode source


end

end BitMatrix.Codec

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.CanonicalSourceImageCodecs.Varianta287cf3ef48b8965
