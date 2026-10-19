/-!
# Folder.CanonicalPath.CanonicalPathComposition

Radiation role: research-boundary
BinaryMatrix spine: This module composes supplied canonical-path contracts.
Ontology: canonical.path
Pivot role: dual
Zero typology: l-function
Contract boundary: contract-composition
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/--
The current canonical path is contract composition only.

Do not read `finalAlignment` as RH, GRH, or an unconditional boundary theorem.
-/
structure CanonicalPathContract where
  familiesIndex : Type
  transportInvariance : Type
  traceIdentity : Type
  positivityAlignment : Type
  finalAlignment : Prop
  finalAlignment_certified : finalAlignment
  sourceLabel : String

theorem canonical_path_contract_composes
    (C : CanonicalPathContract) :
    C.finalAlignment :=
  C.finalAlignment_certified

end CanonicalPath
end Folder
