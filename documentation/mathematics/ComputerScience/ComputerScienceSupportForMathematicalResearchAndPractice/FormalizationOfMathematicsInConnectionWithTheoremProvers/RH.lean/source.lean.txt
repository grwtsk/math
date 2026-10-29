import Folder.GrandChallenge.RH.FixedPointTranscendencyReduction

/-!
# Folder.Theorem.GrandChallenge.RH

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports RH branch contract facts.
Ontology: proof.grand_challenge_rh
Pivot role: spectral
Zero typology: off-critical
Contract boundary: theorem-wrapper
Composite stack role: grand-challenge
-/

namespace Folder
namespace Theorem
namespace GrandChallenge

theorem rh_pivot_atlas_if_supplied
    (R : Folder.GrandChallenge.RH.RHCanonicalPathReduction) :
    R.pivotAtlasSupplied :=
  Folder.GrandChallenge.RH.rh_pivot_atlas_if_supplied R

theorem rh_fixed_point_transcendency_if_supplied
    (R : Folder.GrandChallenge.RH.RHCanonicalPathReduction) :
    R.fixedPointTranscendencySupplied :=
  Folder.GrandChallenge.RH.rh_fixed_point_transcendency_if_supplied R

theorem rh_spectral_boundary_criterion_if_supplied
    (R : Folder.GrandChallenge.RH.RHCanonicalPathReduction) :
    R.spectralBoundaryCriterionSupplied :=
  Folder.GrandChallenge.RH.rh_spectral_boundary_criterion_if_supplied R

end GrandChallenge
end Theorem
end Folder

