# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckedQuasiIsomorphism.Variantb0fefbf02ab991f5925d91c4e612b198a4ba5bd64e9f6802cc294220db5b2a2c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19bf17b9d4223a1cec5deedf14f614505befbecd` · SHA-256 `b0fefbf02ab991f5925d91c4e612b198a4ba5bd64e9f6802cc294220db5b2a2c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.Derived.TorsionComplex
import Folder.Rebuild.ProofStatus

/-!
# Folder.Rebuild.Derived.CheckedQuasiIsomorphism

Checked quasi-isomorphism shadow relation for finite torsion complexes.
-/

namespace Folder
namespace Rebuild
namespace Derived

structure CheckedQuasiIsoShadow
    (A B : FiniteTorsionComplex) where
  euler_eq : eulerShadow A = eulerShadow B
  torsion_mass_eq : torsionMass A = torsionMass B

theorem checkedQuasiIsoShadow_refl
    (A : FiniteTorsionComplex) :
    CheckedQuasiIsoShadow A A where
  euler_eq := rfl
  torsion_mass_eq := rfl

theorem checkedQuasiIsoShadow_symm
    {A B : FiniteTorsionComplex}
    (h : CheckedQuasiIsoShadow A B) :
    CheckedQuasiIsoShadow B A where
  euler_eq := h.euler_eq.symm
  torsion_mass_eq := h.torsion_mass_eq.symm

theorem checkedQuasiIsoShadow_trans
    {A B C : FiniteTorsionComplex}
    (hAB : CheckedQuasiIsoShadow A B)
    (hBC : CheckedQuasiIsoShadow B C) :
    CheckedQuasiIsoShadow A C where
  euler_eq := hAB.euler_eq.trans hBC.euler_eq
  torsion_mass_eq := hAB.torsion_mass_eq.trans hBC.torsion_mass_eq

theorem checkedQuasiIsoShadow_preserves_euler
    {A B : FiniteTorsionComplex}
    (h : CheckedQuasiIsoShadow A B) :
    eulerShadow A = eulerShadow B :=
  h.euler_eq

theorem checkedQuasiIsoShadow_preserves_torsionMass
    {A B : FiniteTorsionComplex}
    (h : CheckedQuasiIsoShadow A B) :
    torsionMass A = torsionMass B :=
  h.torsion_mass_eq

structure LegacyQuasiIsoAnchor where
  sourceLabel : String
  legacyStatement : Prop
  status : RebuildProofStatus := RebuildProofStatus.classicalAnchorOnly

end Derived
end Rebuild
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59ab1a3a60bd24f4f4336e127135b0094838caa82f8326f675f84ccbdf6c54ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckedQuasiIsomorphism/Variantb0fefbf02ab991f5925d91c4e612b198a4ba5bd64e9f6802cc294220db5b2a2c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
