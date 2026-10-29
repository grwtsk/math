/-!
# Folder.CanonicalPath.SuperconnectionTransportModel

Radiation role: research-boundary
BinaryMatrix spine: This module records a superconnection transport model, not BinaryMatrix data.
Ontology: canonical.superconnection_transport_model
Pivot role: spectral
Zero typology: families-index
Contract boundary: contract
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/--
Contract model inspired by superconnection proofs of families index invariance.
-/
structure SuperconnectionFamiliesIndexModel where
  ParameterSpace : Type
  SuperconnectionData : Type
  familyIndexClass : Type
  heatEquationProofLike : Prop
  familyIndexInvariant : Prop
  familyIndexInvariant_certified : familyIndexInvariant
  sourceLabel : String

theorem superconnection_family_index_invariant_if_supplied
    (S : SuperconnectionFamiliesIndexModel) :
    S.familyIndexInvariant :=
  S.familyIndexInvariant_certified

end CanonicalPath
end Folder
