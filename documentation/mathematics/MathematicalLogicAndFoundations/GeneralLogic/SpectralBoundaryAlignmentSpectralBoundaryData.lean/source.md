# Spectral Boundary Alignment Spectral Boundary Data — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `606ce825e49656d6ffe53686f65773e0618cc041` · SHA-256 `16b43b6d5ff246104dbd71d41b90712055cebe73648d338511fe74938338f038`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Research.LFunctionZero
import Folder.Research.CriticalLine
import Folder.AdelicInfinityTopos.StrongApproximationBoundary
import Folder.AdelicInfinityTopos.TateIwasawaBoundary
import Folder.AdelicInfinityTopos.HomotopyCoherence

/-!
# Folder.AdelicInfinityTopos.SpectralBoundaryAlignment

Radiation role: research-boundary
BinaryMatrix spine: This module names spectral boundary alignment as noncircular boundary data.
Ontology: adelic.spectral_boundary_alignment
Pivot role: dual
Zero typology: l-function
Contract boundary: theorem-target
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace AdelicInfinityTopos

structure SpectralBoundaryData
    (S : AdelicSpectralSheaf) where
  Boundary : Type _
  archimedeanBoundary : Boundary
  nonarchimedeanBoundary : Place → Option Boundary
  aligned : Prop

structure SpectralBoundaryAlignment
    (S : AdelicSpectralSheaf)
    (Z : Type) where
  zeroData : Z → Research.LFunctionZero.LFunctionZeroData
  boundaryData : SpectralBoundaryData S
  strongApproximation? : Option StrongApproximationToBoundaryAlignment
  tateIwasawa? : Option TateIwasawaCompatibility
  homotopyCoherence? : Option (HomotopyCoherentRestrictions S)
  alignmentHolds : boundaryData.aligned
  sourceLabel : String :=
    "noncircular boundary-alignment criterion; critical-line forcing is separate"

/--
A separate bridge from boundary alignment to critical-line location.

This is the decisive spectral-boundary criterion. It is not bundled into
`SpectralBoundaryAlignment`, so the alignment record cannot smuggle in the
critical-line conclusion by definition.
-/
structure SpectralBoundaryCriticalLineBridge
    {S : AdelicSpectralSheaf}
    {Z : Type}
    (A : SpectralBoundaryAlignment S Z) where
  forcesCriticalLine :
    A.boundaryData.aligned →
      ∀ z : Z,
        Research.LFunctionZero.LiesOnCriticalLine (A.zeroData z)
  sourceLabel : String

theorem spectral_boundary_alignment_holds
    {S : AdelicSpectralSheaf}
    {Z : Type}
    (A : SpectralBoundaryAlignment S Z) :
    A.boundaryData.aligned :=
  A.alignmentHolds

theorem spectral_boundary_alignment_does_not_force_critical_line_alone
    {S : AdelicSpectralSheaf}
    {Z : Type}
    (_A : SpectralBoundaryAlignment S Z) :
    True :=
  trivial

theorem critical_line_from_spectral_boundary_bridge
    {S : AdelicSpectralSheaf}
    {Z : Type}
    (A : SpectralBoundaryAlignment S Z)
    (B : SpectralBoundaryCriticalLineBridge A)
    (z : Z) :
    Research.LFunctionZero.LiesOnCriticalLine (A.zeroData z) :=
  B.forcesCriticalLine A.alignmentHolds z

theorem critical_line_from_spectral_boundary_alignment
    {S : AdelicSpectralSheaf}
    {Z : Type}
    (A : SpectralBoundaryAlignment S Z)
    (B : SpectralBoundaryCriticalLineBridge A)
    (z : Z) :
    Research.LFunctionZero.LiesOnCriticalLine (A.zeroData z) :=
  critical_line_from_spectral_boundary_bridge A B z

end AdelicInfinityTopos
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9155a9f638dc510123835f67ed6cbcc189e4d4c797eadf0920b7a35b6ca4731a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralBoundaryAlignment/Variant16b43b6d5ff246104dbd71d41b90712055cebe73648d338511fe74938338f038.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
