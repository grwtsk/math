import Folder.ResearchTopos.RodgersTaoHeat
import Folder.DerivedSheaf.EulerTransport

/-!
# Folder.DerivedSheaf.RodgersTaoEulerTransport

Radiation role: research-boundary
BinaryMatrix spine: This module bridges external Rodgers-Tao heat data to derived transport contracts, not BinaryMatrix data.
Ontology: derived.rodgers_tao_transport
Pivot role: spectral
Zero typology: euler-invariance-contract
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

/--
A Rodgers-Tao flow interpreted as a derived transport between section
complexes.

This is a contract. It does not assert that the analytic Rodgers-Tao zero flow
automatically acts on section complexes.
-/
structure RodgersTaoDerivedTransport where
  heatFamily : ResearchTopos.RodgersTaoHeatFamily
  sourceComplex : SectionComplex
  targetComplex : SectionComplex
  eulerTransport :
    EulerPreservingTransport sourceComplex targetComplex
  flowRealizesDerivedTransport : Prop
  flowRealizesDerivedTransport_certified : flowRealizesDerivedTransport
  sourceLabel : String

theorem rodgers_tao_flow_realizes_derived_transport
    (T : RodgersTaoDerivedTransport) :
    T.flowRealizesDerivedTransport :=
  T.flowRealizesDerivedTransport_certified

theorem rodgers_tao_transport_preserves_euler_characteristic
    (T : RodgersTaoDerivedTransport) :
    T.eulerTransport.targetEuler.value =
      T.eulerTransport.sourceEuler.value :=
  euler_preserving_transport_value_eq T.eulerTransport

end DerivedSheaf
end Folder
