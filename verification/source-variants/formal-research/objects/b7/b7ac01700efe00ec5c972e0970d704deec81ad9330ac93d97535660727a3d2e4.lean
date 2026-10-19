import Folder.GrandChallenge.RH.CanonicalPathReduction

/-!
# Folder.GrandChallenge.RH.FixedPointTranscendencyReduction

Radiation role: research-boundary
BinaryMatrix spine: This module records RH fixed-point-transcendency reduction contracts.
Ontology: rh_canonical_path_reduction
Pivot role: fixed-point
Zero typology: off-critical
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace RH

theorem rh_fixed_point_transcendency_if_supplied
    (R : RHCanonicalPathReduction) :
    R.fixedPointTranscendencySupplied :=
  R.fixedPointTranscendencySupplied_certified

theorem rh_offcritical_obstruction_if_supplied
    (R : RHCanonicalPathReduction) :
    R.offCriticalObstructionSupplied :=
  R.offCriticalObstructionSupplied_certified

end RH
end GrandChallenge
end Folder
