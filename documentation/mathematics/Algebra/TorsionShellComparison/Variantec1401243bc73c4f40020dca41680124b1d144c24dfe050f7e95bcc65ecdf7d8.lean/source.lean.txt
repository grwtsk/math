import Folder.Arithmetic.Torsion
import Folder.Expansion.ShellTorsion
import Folder.Monodromy.EllipticTorsionAction

/-!
# Folder.Research.TorsionShellComparison

Radiation role: research-contract
BinaryMatrix spine: This module marks research-boundary contracts and theorem targets around the BinaryMatrix radiation program.
Ontology: research.boundary.torsion_shell_comparison
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: infrastructure
-/


namespace Folder
namespace Research
namespace TorsionShellComparison

abbrev ShellTwistGroup
    (s : Carrier.GridShape) :=
  Folder.Expansion.ShellTorsion s

structure EllipticToShellTorsion
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    (G : Arithmetic.ECGroupLaw E)
    (s : Carrier.GridShape) where
  map : Arithmetic.ECPoint E → ShellTwistGroup s
  map_zero :
    map (Arithmetic.ECPoint.infinity (E := E)) =
      Folder.Expansion.ShellTorsion.id s
  map_add :
    ∀ P Q,
      map (G.add P Q) =
        Folder.Expansion.ShellTorsion.comp (map P) (map Q)

def UsesTorsionClass
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {s : Carrier.GridShape}
    (R : EllipticToShellTorsion G s)
    (P : Arithmetic.ECPoint E) : Prop :=
  R.map P ≠ Folder.Expansion.ShellTorsion.id s

theorem shell_twist_of_zero_is_identity
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {s : Carrier.GridShape}
    (R : EllipticToShellTorsion G s) :
    R.map (Arithmetic.ECPoint.infinity (E := E)) =
      Folder.Expansion.ShellTorsion.id s :=
  R.map_zero

theorem shell_twist_respects_add
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {s : Carrier.GridShape}
    (R : EllipticToShellTorsion G s)
    (P Q : Arithmetic.ECPoint E) :
    R.map (G.add P Q) =
      Folder.Expansion.ShellTorsion.comp (R.map P) (R.map Q) :=
  R.map_add P Q

end TorsionShellComparison
end Research
end Folder
