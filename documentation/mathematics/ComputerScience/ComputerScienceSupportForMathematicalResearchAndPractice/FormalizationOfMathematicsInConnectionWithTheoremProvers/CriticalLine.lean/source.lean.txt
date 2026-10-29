import Folder.Research.CriticalLine

/-!
# Folder.Theorem.Research.CriticalLine

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports critical-line normalization facts for the research-boundary layer.
Ontology: proof.research.critical_line
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: research
-/

namespace Folder
namespace Theorem
namespace Research
namespace CriticalLine

theorem criticalLine_of_centered_zero
    (x : ℝ)
    (h : Folder.Research.CriticalLine.CenteredWithZeroVariance x) :
    Folder.Research.CriticalLine.IsCriticalLineRealPart x :=
  Folder.Research.CriticalLine.criticalLine_of_centered_zero x h

theorem centered_zero_of_criticalLine
    (x : ℝ)
    (h : Folder.Research.CriticalLine.IsCriticalLineRealPart x) :
    Folder.Research.CriticalLine.CenteredWithZeroVariance x :=
  Folder.Research.CriticalLine.centered_zero_of_criticalLine x h

theorem criticalLine_iff_centered_zero
    (x : ℝ) :
    Folder.Research.CriticalLine.IsCriticalLineRealPart x ↔
      Folder.Research.CriticalLine.CenteredWithZeroVariance x :=
  Folder.Research.CriticalLine.criticalLine_iff_centered_zero x

end CriticalLine
end Research
end Theorem
end Folder
