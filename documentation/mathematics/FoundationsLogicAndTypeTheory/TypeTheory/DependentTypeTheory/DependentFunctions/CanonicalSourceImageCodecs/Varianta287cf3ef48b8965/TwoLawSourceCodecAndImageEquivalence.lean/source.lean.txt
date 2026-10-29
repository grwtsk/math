/-
TwoLawSourceCodecAndImageEquivalence — individually reviewed exact source
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

/- Complete encode/decode interface and BOTH original laws, injectivity proof, exact image subtype, entire noncomputable equivalence with both inverse proofs, and actual apply/baseline functions. The image is encoded canonical sources, not all Boolean functions; no source constructor is supplied by this record alone. -/

import BitMatrix.Carrier.BooleanSpace

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.CanonicalSourceImageCodecs.Varianta287cf3ef48b8965.CanonicalStringCarrier

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

/--
Provider-neutral interface for a self-contained source constructor. `decode`
is partial on unrestricted states, and the second law forbids it from
accepting a state other than the exact encoding it reports. The concrete
sequential-prime implementation is `SequentialPrimeSource.sourceCodec`.
-/
structure SourceCodec (Address : Type) where
  encode : CanonicalSource → BitMatrix.Carrier.BooleanState Address
  decode : BitMatrix.Carrier.BooleanState Address → Option CanonicalSource
  decode_encode : ∀ source, decode (encode source) = some source
  encode_decode : ∀ {state source}, decode state = some source → encode source = state


namespace SourceCodec

theorem encode_injective
    {Address : Type}
    (codec : SourceCodec Address) :
    Function.Injective codec.encode := by
  intro left right equal
  have decoded := congrArg codec.decode equal
  rw [codec.decode_encode, codec.decode_encode] at decoded
  exact Option.some.inj decoded


/-- States accepted as exact encodings by this source codec. -/
def SourceState
    {Address : Type}
    (codec : SourceCodec Address) :=
  { state : BitMatrix.Carrier.BooleanState Address //
    ∃ source, codec.encode source = state }


/-- The source constructor is exactly invertible on its image. -/
noncomputable def sourceEquiv
    {Address : Type}
    (codec : SourceCodec Address) :
    CanonicalSource ≃ codec.SourceState where
  toFun source := ⟨codec.encode source, source, rfl⟩
  invFun state := Classical.choose state.property
  left_inv source := by
    apply codec.encode_injective
    exact Classical.choose_spec
      ((show ∃ candidate, codec.encode candidate = codec.encode source from
        ⟨source, rfl⟩))
  right_inv state := by
    apply Subtype.ext
    exact Classical.choose_spec state.property


@[simp]
theorem sourceEquiv_apply
    {Address : Type}
    (codec : SourceCodec Address)
    (source : CanonicalSource) :
    (codec.sourceEquiv source).val = codec.encode source :=
  rfl


/-- A distinguished source selects the baseline used by the scalar inverse. -/
def sourceBaseline
    {Address : Type}
    (codec : SourceCodec Address)
    (source : CanonicalSource) :
    BitMatrix.Carrier.BooleanState Address :=
  codec.encode source


end SourceCodec

end BitMatrix.Codec

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.CanonicalSourceImageCodecs.Varianta287cf3ef48b8965
