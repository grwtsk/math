import Folder.NumberTheory.PositiveNat

/-!
# Folder.Core.DualPivot

Radiation role: core-architecture
BinaryMatrix spine: This module organizes the dual arithmetic/spectral pivots before downstream BinaryMatrix carrier interpretations.
Ontology:
- core.dual_pivot
- core.arithmetic_pivot_one
- core.spectral_pivot_half
Pivot role: dual
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/

namespace Folder
namespace Core

/-- The analytic equilibrium pivot for normalized fields `[0,1]`. -/
noncomputable def spectralPivot : ℝ := (1 / 2 : ℝ)

/-- The arithmetic multiplicative root pivot. -/
def arithmeticPivot : NumberTheory.PositiveNat :=
  NumberTheory.PositiveNat.one

structure DualPivot where
  arithmetic : NumberTheory.PositiveNat
  spectral : ℝ

noncomputable def defaultDualPivot : DualPivot where
  arithmetic := arithmeticPivot
  spectral := spectralPivot

@[simp]
theorem arithmeticPivot_val_eq_one :
    arithmeticPivot.val = 1 := rfl

@[simp]
theorem spectralPivot_eq_half :
    spectralPivot = (1 / 2 : ℝ) := rfl

theorem defaultDualPivot_arithmetic :
    defaultDualPivot.arithmetic.val = 1 := rfl

theorem defaultDualPivot_spectral :
    defaultDualPivot.spectral = (1 / 2 : ℝ) := rfl

end Core
end Folder
