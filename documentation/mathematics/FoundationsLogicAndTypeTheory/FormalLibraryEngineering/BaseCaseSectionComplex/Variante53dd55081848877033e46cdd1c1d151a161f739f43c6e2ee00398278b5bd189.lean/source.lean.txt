import Folder.DerivedSheaf.SectionComplex
import Folder.DerivedSheaf.EulerCharacteristic
import Folder.DerivedSheaf.BaseCaseEllipticCurve

/-!
# Folder.DerivedSheaf.BaseCaseSectionComplex

Radiation role: research-boundary
BinaryMatrix spine: This module records the base-case section complex, not BinaryMatrix data.
Ontology: base.section_complex
Pivot role: spectral
Zero typology: nonzero-euler
Contract boundary: external-witness
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

/--
A base-case section complex whose Euler characteristic is supplied and
nonzero.

This is the topological anchor.
-/
structure BaseCaseSectionComplex where
  arithmetic : CertifiedBaseCaseEllipticCurve
  complex : SectionComplex
  euler : EulerCharacteristic complex
  euler_nonzero : euler.value ≠ 0
  complexRealizesLFunction : Prop
  complexRealizesLFunction_certified : complexRealizesLFunction
  sourceLabel : String

theorem base_case_euler_nonzero
    (B : BaseCaseSectionComplex) :
    B.euler.value ≠ 0 :=
  B.euler_nonzero

theorem base_case_complex_realizes_lfunction
    (B : BaseCaseSectionComplex) :
    B.complexRealizesLFunction :=
  B.complexRealizesLFunction_certified

end DerivedSheaf
end Folder
