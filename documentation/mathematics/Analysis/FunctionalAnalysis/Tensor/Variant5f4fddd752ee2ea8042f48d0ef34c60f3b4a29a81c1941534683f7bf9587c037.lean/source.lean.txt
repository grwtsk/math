import Folder.Carrier.Grid

/-!
# Folder.Spectral.Tensor

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.spectral_tensor
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace Folder
namespace Spectral

open Carrier

structure SpectralTensor (s : GridShape) (k : Nat) where
  value : Cell s → Fin k → ℝ

namespace SpectralTensor

@[ext]
theorem ext
    {s : GridShape}
    {k : Nat}
    {X Y : SpectralTensor s k}
    (h : ∀ c q, X.value c q = Y.value c q) :
    X = Y := by
  cases X
  cases Y
  congr
  funext c q
  exact h c q

def zero (s : GridShape) (k : Nat) : SpectralTensor s k where
  value := fun _ _ => 0

def add {s : GridShape} {k : Nat}
    (X Y : SpectralTensor s k) :
    SpectralTensor s k where
  value := fun c q => X.value c q + Y.value c q

def sub {s : GridShape} {k : Nat}
    (X Y : SpectralTensor s k) :
    SpectralTensor s k where
  value := fun c q => X.value c q - Y.value c q

def smul {s : GridShape} {k : Nat}
    (a : ℝ)
    (X : SpectralTensor s k) :
    SpectralTensor s k where
  value := fun c q => a * X.value c q

def constant (s : GridShape) {k : Nat}
    (a : Fin k → ℝ) :
    SpectralTensor s k where
  value := fun _ q => a q

noncomputable def mean {s : GridShape} {k : Nat}
    (X : SpectralTensor s k) :
    ℝ :=
  (∑ c : Cell s, ∑ q : Fin k, X.value c q) /
    ((s.rows * s.cols * k : Nat) : ℝ)

def visibleRange01 {s : GridShape} {k : Nat}
    (X : SpectralTensor s k) :
    Prop :=
  ∀ c q, 0 ≤ X.value c q ∧ X.value c q ≤ 1

instance {s : GridShape} {k : Nat} : Zero (SpectralTensor s k) :=
  ⟨zero s k⟩

instance {s : GridShape} {k : Nat} : Add (SpectralTensor s k) :=
  ⟨add⟩

instance {s : GridShape} {k : Nat} : Sub (SpectralTensor s k) :=
  ⟨sub⟩

instance {s : GridShape} {k : Nat} : SMul ℝ (SpectralTensor s k) :=
  ⟨smul⟩

@[simp]
theorem value_zero {s : GridShape} {k : Nat} (c : Cell s) (q : Fin k) :
    (0 : SpectralTensor s k).value c q = 0 :=
  rfl

@[simp]
theorem value_add {s : GridShape} {k : Nat}
    (X Y : SpectralTensor s k)
    (c : Cell s)
    (q : Fin k) :
    (X + Y).value c q = X.value c q + Y.value c q :=
  rfl

@[simp]
theorem value_sub {s : GridShape} {k : Nat}
    (X Y : SpectralTensor s k)
    (c : Cell s)
    (q : Fin k) :
    (X - Y).value c q = X.value c q - Y.value c q :=
  rfl

@[simp]
theorem value_smul {s : GridShape} {k : Nat}
    (a : ℝ)
    (X : SpectralTensor s k)
    (c : Cell s)
    (q : Fin k) :
    (a • X).value c q = a * X.value c q :=
  rfl

@[simp]
theorem value_constant {s : GridShape} {k : Nat}
    (a : Fin k → ℝ)
    (c : Cell s)
    (q : Fin k) :
    (constant s a).value c q = a q :=
  rfl

end SpectralTensor

/--
A single eigenvalue datum in a Dirac-type spectrum.

This is contract-level spectrum data. It does not assert construction of an
actual Dirac operator.
-/
structure DiracEigenDatum where
  index : Nat
  eigenvalue : ℝ
  multiplicity : Nat
  multiplicity_pos : 0 < multiplicity
  label : String

/--
A contract-level Dirac spectrum.

The fields `selfAdjointLike`, `discreteSpectrum`, and `compactResolventLike`
are hypotheses/metadata, not internally proved analytic facts.
-/
structure DiracSpectrum where
  Operator : Type _
  eigen : Nat → Option DiracEigenDatum
  selfAdjointLike : Prop
  selfAdjointLike_certified : selfAdjointLike
  discreteSpectrum : Prop
  discreteSpectrum_certified : discreteSpectrum
  compactResolventLike : Prop
  compactResolventLike_certified : compactResolventLike
  sourceLabel : String

/--
A spectral tensor object enhanced with optional Dirac spectrum data.

This is the object that can later be mapped to K-theory.
-/
structure DiracSpectrumObject where
  shape? : Option Carrier.GridShape
  channels? : Option Nat
  tensorCarrier? : Option (Type _)
  spectrum : DiracSpectrum
  categoricalObject : Prop
  categoricalObject_certified : categoricalObject
  sourceLabel : String

theorem dirac_spectrum_self_adjoint_like
    (S : DiracSpectrum) :
    S.selfAdjointLike :=
  S.selfAdjointLike_certified

theorem dirac_spectrum_discrete
    (S : DiracSpectrum) :
    S.discreteSpectrum :=
  S.discreteSpectrum_certified

theorem dirac_spectrum_compact_resolvent_like
    (S : DiracSpectrum) :
    S.compactResolventLike :=
  S.compactResolventLike_certified

theorem dirac_spectrum_object_is_categorical
    (X : DiracSpectrumObject) :
    X.categoricalObject :=
  X.categoricalObject_certified

end Spectral
end Folder
