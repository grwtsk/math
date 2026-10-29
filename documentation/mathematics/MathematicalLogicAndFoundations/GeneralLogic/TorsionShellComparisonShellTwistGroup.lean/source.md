# Torsion Shell Comparison Shell Twist Group — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42e38b915adbc62711d80ec81a727693c8ddbf7c` · SHA-256 `ec1401243bc73c4f40020dca41680124b1d144c24dfe050f7e95bcc65ecdf7d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48d5e1f8495f991724b3b49edb322d97a317314bdd25642fe7dfa7cc8afe0bf1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/TorsionShellComparison/Variantec1401243bc73c4f40020dca41680124b1d144c24dfe050f7e95bcc65ecdf7d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
