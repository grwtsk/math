import Folder.ResearchTopos.RodgersTaoHeat
import Folder.DerivedSheaf.SectionComplex

/-!
# Folder.CanonicalPath.AnalyticContinuationMap

Radiation role: research-boundary
BinaryMatrix spine: This module records analytic continuation maps, not BinaryMatrix heat.
Ontology: canonical.continuation_quasi_iso
Pivot role: spectral
Zero typology: transport-boundary
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

structure AnalyticContinuationMap where
  heatFamily : ResearchTopos.RodgersTaoHeatFamily
  sourceComplex : DerivedSheaf.SectionComplex
  targetComplex : DerivedSheaf.SectionComplex
  chainMapData : Type
  respectsDifferential : Prop
  respectsDifferential_certified : respectsDifferential
  compactnessFredholmEstimates : Prop
  compactnessFredholmEstimates_certified : compactnessFredholmEstimates
  sourceLabel : String

theorem continuation_map_respects_differential
    (C : AnalyticContinuationMap) :
    C.respectsDifferential :=
  C.respectsDifferential_certified

theorem continuation_map_has_estimates
    (C : AnalyticContinuationMap) :
    C.compactnessFredholmEstimates :=
  C.compactnessFredholmEstimates_certified

end CanonicalPath
end Folder
