import Folder.Research.ArithmeticBoundary

/-!
# Folder.Theorem.Research.ArithmeticBoundary

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.research.arithmetic_boundary
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace Research
namespace ArithmeticBoundary

theorem bsd_rank_eq
    (B : Folder.Research.ArithmeticBoundary.BSDContract) :
    B.analyticRank = B.algebraicRank :=
  Folder.Research.ArithmeticBoundary.bsd_rank_eq B

theorem bsd_sha_eq
    (B : Folder.Research.ArithmeticBoundary.BSDContract) :
    B.shaOrderAnalytic = B.shaOrderAlgebraic :=
  Folder.Research.ArithmeticBoundary.bsd_sha_eq B

theorem hasse_weil_has_analytic_continuation
    (H : Folder.Research.ArithmeticBoundary.HasseWeilContract) :
    H.hasAnalyticContinuation :=
  Folder.Research.ArithmeticBoundary.hasse_weil_has_analytic_continuation H

theorem hasse_weil_has_functional_equation
    (H : Folder.Research.ArithmeticBoundary.HasseWeilContract) :
    H.hasFunctionalEquation :=
  Folder.Research.ArithmeticBoundary.hasse_weil_has_functional_equation H

theorem shafarevich_tate_finite
    (S : Folder.Research.ArithmeticBoundary.ShafarevichTateContract) :
    S.finite :=
  Folder.Research.ArithmeticBoundary.shafarevich_tate_finite S

theorem modularity_associated
    (M : Folder.Research.ArithmeticBoundary.ModularityContract) :
    M.associated :=
  Folder.Research.ArithmeticBoundary.modularity_associated M

end ArithmeticBoundary
end Research
end Theorem
end Folder
