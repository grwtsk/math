/-
PositiveResolutionImageQuotient — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: d3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715
Organized SHA-256: a19f34aafcef21a20c952b94bdbd966627754403cbdfdfbcfc899ba78dc77e88
PMD: 510.0.070.020.080 quotient types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole positive ResolutionBits NQuantizer and complete equality quotient/image/enumeration/cardinality proofs; no field is dropped. Original containing namespaces and historical provider identities are retained; physical subject path is GRWTSK. No joint variant admission, law existence, runtime acceptance or kernel replay is asserted. -/

import BitMatrix.Core.Basic
import Quantization.Resolution
import Batteries.Data.Nat.Lemmas
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Tactic

import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.FiniteSimplexGammaAndObservation.Variantd3ce1df042ea2552.FiniteBitPlaneSpace

/-!
# Finite quantization semantics

A `BitMatrix.Quantizer Cfg m n` observes a configuration by encoding it as an
`m × n` matrix of bits. Equality of observations induces an equivalence
relation: it is reflexive, symmetric, and transitive because matrix equality
has those properties.

The effective state space is the image of the encoder, not generally the whole
matrix space. Quotienting configurations by indistinguishability therefore
produces exactly the effective states, even when some binary matrices are never
realized. For finite configuration types, the realized image has at most as
many elements as the domain and at most `2 ^ (m * n)` elements globally: there
are `m * n` independently Boolean matrix entries.

An array-backed encoder can be lifted with `Quantizer.ofArrayBacked`. Its semantics are
deliberately observational: implementation values are compared only after
conversion through `BitMatrix.ArrayBacked.toMatrix`, never by raw structure or proof-field
equality.
-/

universe u

namespace BitMatrix

open Surface.Quantization

/-- A positive-resolution quantizer into a finite family of bit planes. -/
structure NQuantizer
    (Cfg : Type u)
    (rows columns : Nat) where
  resolution : ResolutionBits
  encode :
    Cfg → QuantizedMatrix resolution.value rows columns

namespace NQuantizer

variable {Cfg : Type u} {rows columns : Nat}

/-- Multibit configurations are indistinguishable when all bit planes agree. -/
def Indistinguishable
    (Q : NQuantizer Cfg rows columns)
    (left right : Cfg) : Prop :=
  Q.encode left = Q.encode right

@[simp]
theorem indistinguishable_refl
    (Q : NQuantizer Cfg rows columns)
    (configuration : Cfg) :
    Q.Indistinguishable configuration configuration :=
  rfl

theorem indistinguishable_symm
    (Q : NQuantizer Cfg rows columns)
    {left right : Cfg}
    (h : Q.Indistinguishable left right) :
    Q.Indistinguishable right left :=
  h.symm

theorem indistinguishable_trans
    (Q : NQuantizer Cfg rows columns)
    {first second third : Cfg}
    (hfirst : Q.Indistinguishable first second)
    (hsecond : Q.Indistinguishable second third) :
    Q.Indistinguishable first third :=
  hfirst.trans hsecond

/-- Equality of encodings as a quotient relation. -/
def setoid
    (Q : NQuantizer Cfg rows columns) : Setoid Cfg where
  r := Q.Indistinguishable
  iseqv :=
    { refl := Q.indistinguishable_refl
      symm := Q.indistinguishable_symm
      trans := Q.indistinguishable_trans }

/-- The actual encoder image, not the entire bit-plane representation space. -/
def EffectiveState
    (Q : NQuantizer Cfg rows columns) :=
  {encoded : QuantizedMatrix Q.resolution.value rows columns //
    ∃ configuration : Cfg, Q.encode configuration = encoded}

/-- Encode one representative as an effective state. -/
def toEffective
    (Q : NQuantizer Cfg rows columns)
    (configuration : Cfg) : Q.EffectiveState :=
  ⟨Q.encode configuration, configuration, rfl⟩

/-- Factor the multibit encoder through its indistinguishability quotient. -/
def quotientToEffective
    (Q : NQuantizer Cfg rows columns) :
    Quotient Q.setoid → Q.EffectiveState :=
  Quotient.lift Q.toEffective (by
    intro left right h
    apply Subtype.ext
    exact h)

@[simp]
theorem quotientToEffective_mk
    (Q : NQuantizer Cfg rows columns)
    (configuration : Cfg) :
    Q.quotientToEffective (Quotient.mk Q.setoid configuration) =
      Q.toEffective configuration :=
  rfl

theorem quotientToEffective_injective
    (Q : NQuantizer Cfg rows columns) :
    Function.Injective Q.quotientToEffective := by
  intro left right equality
  induction left using Quotient.inductionOn with
  | _ leftRepresentative =>
    induction right using Quotient.inductionOn with
    | _ rightRepresentative =>
      apply Quotient.sound
      change Q.encode leftRepresentative = Q.encode rightRepresentative
      exact congrArg Subtype.val equality

theorem quotientToEffective_surjective
    (Q : NQuantizer Cfg rows columns) :
    Function.Surjective Q.quotientToEffective := by
  rintro ⟨encoded, configuration, equality⟩
  refine ⟨Quotient.mk Q.setoid configuration, ?_⟩
  apply Subtype.ext
  exact equality

/-- Indistinguishability classes are equivalent to the realized image. -/
noncomputable def quotientEquivEffective
    (Q : NQuantizer Cfg rows columns) :
    Quotient Q.setoid ≃ Q.EffectiveState :=
  Equiv.ofBijective Q.quotientToEffective
    ⟨Q.quotientToEffective_injective,
      Q.quotientToEffective_surjective⟩

/-- Enumerate the realized multibit matrices for a finite domain. -/
def effectiveStates
    (Q : NQuantizer Cfg rows columns)
    [Fintype Cfg] :
    Finset (QuantizedMatrix Q.resolution.value rows columns) :=
  Finset.univ.image Q.encode

theorem mem_effectiveStates_iff
    (Q : NQuantizer Cfg rows columns)
    [Fintype Cfg]
    (encoded : QuantizedMatrix Q.resolution.value rows columns) :
    encoded ∈ Q.effectiveStates ↔
      ∃ configuration : Cfg, Q.encode configuration = encoded := by
  simp [effectiveStates]

theorem card_effectiveStates_le_domain
    (Q : NQuantizer Cfg rows columns)
    [Fintype Cfg] :
    Q.effectiveStates.card ≤ Fintype.card Cfg := by
  simpa [effectiveStates] using
    (Finset.card_image_le (s := Finset.univ) (f := Q.encode))

/-- The encoder image is bounded by the complete bit-plane state space. -/
theorem card_effectiveStates_le_resolution
    (Q : NQuantizer Cfg rows columns)
    [Fintype Cfg] :
    Q.effectiveStates.card ≤
      2 ^ (Q.resolution.value * rows * columns) := by
  calc
    Q.effectiveStates.card ≤
        Fintype.card
          (QuantizedMatrix Q.resolution.value rows columns) :=
      Finset.card_le_univ Q.effectiveStates
    _ = 2 ^ (Q.resolution.value * rows * columns) :=
      card_quantizedMatrix Q.resolution.value rows columns

end NQuantizer
end BitMatrix
