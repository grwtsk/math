/-!
# Folder.CanonicalPath.HeatKernelTransportModel

Radiation role: research-boundary
BinaryMatrix spine: This module records a heat-kernel index model, not BinaryMatrix heat.
Ontology: canonical.heat_kernel_transport_model
Pivot role: spectral
Zero typology: index-invariance-contract
Contract boundary: contract
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/--
Contract model inspired by heat-kernel index theory.

This does not construct Rodgers-Tao derived transport.
-/
structure HeatKernelIndexModel where
  OperatorFamily : Type
  HeatKernelData : Type
  supertrace : Type
  indexInvariantUnderHeat : Prop
  indexInvariantUnderHeat_certified : indexInvariantUnderHeat
  sourceLabel : String

theorem heat_kernel_index_invariant_if_supplied
    (H : HeatKernelIndexModel) :
    H.indexInvariantUnderHeat :=
  H.indexInvariantUnderHeat_certified

end CanonicalPath
end Folder
