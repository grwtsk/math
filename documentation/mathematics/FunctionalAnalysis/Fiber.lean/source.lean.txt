import Folder.Expansion.Shell
import Folder.Spectral.Tensor

/-!
# Folder.Spectral.Fiber

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.fiber
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace Folder
namespace Spectral

open Carrier

structure SpectralShellFiber (s : GridShape) (k : Nat) where
  value :
    {c : Cell (Expansion.expandedShape s) //
      Expansion.IsShellCell c} →
    Fin k →
    ℝ

namespace SpectralShellFiber

@[ext]
theorem ext {s : GridShape} {k : Nat}
    {F G : SpectralShellFiber s k}
    (h : ∀ c q, F.value c q = G.value c q) :
    F = G := by
  cases F
  cases G
  congr
  funext c q
  exact h c q

def zero (s : GridShape) (k : Nat) : SpectralShellFiber s k where
  value := fun _ _ => 0

def add {s : GridShape} {k : Nat}
    (F G : SpectralShellFiber s k) :
    SpectralShellFiber s k where
  value := fun c q => F.value c q + G.value c q

def map {s : GridShape} {k : Nat}
    (f : ℝ → ℝ)
    (F : SpectralShellFiber s k) :
    SpectralShellFiber s k where
  value := fun c q => f (F.value c q)

instance {s : GridShape} {k : Nat} : Zero (SpectralShellFiber s k) :=
  ⟨zero s k⟩

instance {s : GridShape} {k : Nat} : Add (SpectralShellFiber s k) :=
  ⟨add⟩

@[simp]
theorem value_zero {s : GridShape} {k : Nat}
    (c : {c : Cell (Expansion.expandedShape s) // Expansion.IsShellCell c})
    (q : Fin k) :
    (0 : SpectralShellFiber s k).value c q = 0 :=
  rfl

@[simp]
theorem value_add {s : GridShape} {k : Nat}
    (F G : SpectralShellFiber s k)
    (c : {c : Cell (Expansion.expandedShape s) // Expansion.IsShellCell c})
    (q : Fin k) :
    (F + G).value c q = F.value c q + G.value c q :=
  rfl

@[simp]
theorem value_map {s : GridShape} {k : Nat}
    (f : ℝ → ℝ)
    (F : SpectralShellFiber s k)
    (c : {c : Cell (Expansion.expandedShape s) // Expansion.IsShellCell c})
    (q : Fin k) :
    (map f F).value c q = f (F.value c q) :=
  rfl

end SpectralShellFiber

end Spectral
end Folder
