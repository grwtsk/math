import Folder.Core.ZeroTypology
import Folder.Research.CriticalLine

/-!
# Folder.Research.LFunctionZero

Radiation role: research-boundary
BinaryMatrix spine: This module keeps L-function zeros typed separately from finite spectral and de Bruijn-Newman zero data.
Ontology: research.rh.lfunction_zero
Pivot role: spectral
Zero typology: l-function
Contract boundary: proved
Composite stack role: research
-/

namespace Folder
namespace Research
namespace LFunctionZero

structure LFunctionZeroData where
  zero : Core.TypedZero
  kind_lfunction : zero.kind = Core.ZeroKind.lFunctionZero
  realPart : ℝ
  imagPart : ℝ
  nontrivial : Prop

def LiesOnCriticalLine (z : LFunctionZeroData) : Prop :=
  Research.CriticalLine.IsCriticalLineRealPart z.realPart

def CenteredAtSpectralPivot (z : LFunctionZeroData) : Prop :=
  Research.CriticalLine.CenteredWithZeroVariance z.realPart

theorem criticalLine_of_centered
    (z : LFunctionZeroData)
    (h : CenteredAtSpectralPivot z) :
    LiesOnCriticalLine z :=
  Research.CriticalLine.criticalLine_of_centered_zero z.realPart h

theorem lFunctionZero_ne_spectralModeZero :
    Core.ZeroKind.lFunctionZero ≠ Core.ZeroKind.spectralModeZero := by
  decide

theorem lFunctionZero_ne_deBruijnNewmanZero :
    Core.ZeroKind.lFunctionZero ≠ Core.ZeroKind.deBruijnNewmanZero := by
  decide

end LFunctionZero
end Research
end Folder
