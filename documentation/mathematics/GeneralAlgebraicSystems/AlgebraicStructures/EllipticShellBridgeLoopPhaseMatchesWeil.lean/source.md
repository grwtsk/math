# Elliptic Shell Bridge Loop Phase Matches Weil — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58f85151dbaad6e7d5183c780500ee42f1f32b48` · SHA-256 `0b70a553e6057de8d5a22bb3faf4de23ff809733f35a126756008ad8ea457cc8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Arithmetic.HeisenbergExtension
import Folder.Cellular.HeatQuantizedTorsion
import Folder.Monodromy.Representation

/-!
# Folder.Monodromy.EllipticShellBridge

Radiation role: elliptic-compatibility
BinaryMatrix spine: This module names arithmetic compatibility structures that may act on shell torsion without identifying it with BinaryMatrix data.
Ontology: monodromy.elliptic_shell_bridge
Pivot role: none
Zero typology: shell
Contract boundary: contract
Composite stack role: torsion
-/


namespace Folder
namespace Monodromy

def LoopPhaseMatchesWeil
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {m d k : Nat}
    (W : Arithmetic.WeilPairingContract G m)
    (T : Cellular.HeatQuantizedShellTorsion d k m)
    (P Q : Arithmetic.MTorsionPoint G m)
    (r : ZMod m)
    {x : Cellular.CubeAddress d k}
    (loop : Cellular.EdgePath d k x x) : Prop :=
  Cellular.pathIntegral T.connection loop = r * W.pairing P Q

structure ShellWeilCompatibility
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    (G : Arithmetic.ECGroupLaw E)
    (m d k : Nat)
    (W : Arithmetic.WeilPairingContract G m) where
  shell :
    Cellular.HeatQuantizedShellTorsion d k m
  P : Arithmetic.MTorsionPoint G m
  Q : Arithmetic.MTorsionPoint G m
  exponent : ZMod m
  distinguishedLoop :
    Σ x, Cellular.EdgePath d k x x
  compatible :
    LoopPhaseMatchesWeil W shell P Q exponent distinguishedLoop.2

theorem shell_weil_compatible
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {m d k : Nat}
    {W : Arithmetic.WeilPairingContract G m}
    (C : ShellWeilCompatibility G m d k W) :
    LoopPhaseMatchesWeil
      W C.shell C.P C.Q C.exponent C.distinguishedLoop.2 :=
  C.compatible

structure ShellHeisenbergRepresentation
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    (G : Arithmetic.ECGroupLaw E)
    (m d k : Nat)
    (W : Arithmetic.WeilPairingContract G m)
    (H : Arithmetic.HeisenbergExtension G m W) where
  shell :
    Cellular.HeatQuantizedShellTorsion d k m
  rho :
    {x : Cellular.CubeAddress d k} →
      Cellular.EdgePath d k x x → H.H
  commutator_matches_shell :
    Prop

structure SelectedShellTwistGroup
    (d k m : Nat) where
  Twist : Set (Cellular.Cochain1 d k m)
  contains_zero : (fun _ => 0) ∈ Twist

def SurjectiveOntoSelectedShellTwists
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {m d k : Nat}
    (R : Arithmetic.MTorsionPoint G m → Cellular.Cochain1 d k m)
    (T : SelectedShellTwistGroup d k m) : Prop :=
  ∀ τ ∈ T.Twist, ∃ P, R P = τ

theorem selected_shell_twist_has_preimage
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {m d k : Nat}
    {R : Arithmetic.MTorsionPoint G m → Cellular.Cochain1 d k m}
    {T : SelectedShellTwistGroup d k m}
    (h : SurjectiveOntoSelectedShellTwists R T)
    {τ : Cellular.Cochain1 d k m}
    (hτ : τ ∈ T.Twist) :
    ∃ P, R P = τ :=
  h τ hτ

end Monodromy
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=20aa4a04f9de65478b52c1396301c8f7c5253f339bdbbb5a8dedebd77188e2e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/EllipticShellBridge/Variant0b70a553e6057de8d5a22bb3faf4de23ff809733f35a126756008ad8ea457cc8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
