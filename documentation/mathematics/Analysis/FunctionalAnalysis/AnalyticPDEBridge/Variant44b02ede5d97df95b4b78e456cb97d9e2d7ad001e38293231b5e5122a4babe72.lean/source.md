# Complete source: GRWTSK.Analysis.FunctionalAnalysis.AnalyticPDEBridge.Variant44b02ede5d97df95b4b78e456cb97d9e2d7ad001e38293231b5e5122a4babe72

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e9f12b9d82af71be74c7a6ddadcf3bdae996733f` · SHA-256 `44b02ede5d97df95b4b78e456cb97d9e2d7ad001e38293231b5e5122a4babe72`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Flow.AnalyticPDE
import Surface.Homology.OrientedFlatness
import Surface.Spectral.FiniteHilbertConvergence

namespace Surface
namespace Spectral

universe u v

/-!
Finite heat descriptors, symbolic kernels, Ricci mode labels, Kakeya covers,
oriented-flatness certificates, finite graph/matrix data, and finite
proof-carrying OS objects enter analytic PDE, spectral, quasi-isomorphism, and
homology-stability theorem infrastructure only through supplied `Prop`-valued
certificates. They do not by themselves prove analytic heat flow, Ricci flow,
spectral convergence, Hilbert spectral theorem applicability,
quasi-isomorphism, homology stability, Poincaré, geometrization, Connes trace
formulas, Hilbert–Pólya, BSD, or prismatic comparison.

This bridge aligns analytic PDE witnesses with Hilbert spectral evidence only
through `FiniteGraphLaplacianConvergenceCertificate` or stronger supplied
certificate fields.
-/

/--
The four analytic PDE theorem gates required before PDE infrastructure may
enter a spectral major-proof cone.

These are Prop-valued theorem inputs, not readiness booleans.  They mirror the
readiness policy in `Surface.Flow.AnalyticPDE.Readiness` while keeping theorem
authority local to the spectral bridge.
-/
structure AnalyticPDETheoremGates where
  existenceUniquenessTheorem : Prop
  existenceUniquenessTheoremCertified :
    existenceUniquenessTheorem
  regularityTheorem : Prop
  regularityTheoremCertified :
    regularityTheorem
  convergenceTheorem : Prop
  convergenceTheoremCertified :
    convergenceTheorem
  operatorComparisonTheorem : Prop
  operatorComparisonTheoremCertified :
    operatorComparisonTheorem
  boundary : List String

def AnalyticPDETheoremGates.certifiedForMajorProof
    (G : AnalyticPDETheoremGates) : Prop :=
  G.existenceUniquenessTheorem ∧
  G.regularityTheorem ∧
  G.convergenceTheorem ∧
  G.operatorComparisonTheorem

theorem AnalyticPDETheoremGates.certifiedForMajorProof_of_fields
    (G : AnalyticPDETheoremGates) :
    G.certifiedForMajorProof := by
  exact
    ⟨G.existenceUniquenessTheoremCertified,
      G.regularityTheoremCertified,
      G.convergenceTheoremCertified,
      G.operatorComparisonTheoremCertified⟩

/--
Analytic PDE input for a Hilbert spectral theorem path.

The finite-to-Hilbert convergence certificate remains the spectral evidence
gate.  Heat, Ricci, and oriented-flatness certificates are compatibility
inputs, not direct Hilbert spectral theorem evidence.
-/
structure AnalyticPDESpectralTheoremInput
    {H : Hilbert.Space.{u, v}}
    (T : Hilbert.LinearOperator H H) where
  finiteConvergence :
    FiniteGraphLaplacianConvergenceCertificate T
  finiteConvergenceCertified :
    finiteConvergence.certifiedForHilbertEvidence

  theoremGates : AnalyticPDETheoremGates
  theoremGatesCertified :
    theoremGates.certifiedForMajorProof

  analyticHeat : Flow.AnalyticHeatFlowCertificate
  analyticHeatCertified :
    analyticHeat.certifiedForMajorProof

  ricci : Flow.RicciFlowTheoremCertificate
  ricciCertified :
    ricci.certifiedForMajorProof

  orientedFlatness :
    Homology.OrientedFlatnessCertificate
  orientedFlatnessCertified :
    orientedFlatness.certifiedForMajorProof

  heatOperatorMatchesHilbertLimit : Prop
  heatOperatorMatchesHilbertLimitCertified :
    heatOperatorMatchesHilbertLimit

  ricciGeometryCompatibleWithHilbertLimit : Prop
  ricciGeometryCompatibleWithHilbertLimitCertified :
    ricciGeometryCompatibleWithHilbertLimit

  noSpectralTheoremFromFinitePDEDataAlone : Prop
  noSpectralTheoremFromFinitePDEDataAloneCertified :
    noSpectralTheoremFromFinitePDEDataAlone

  boundary : List String

/-- Major-proof predicate for analytic PDE spectral bridge input. -/
def AnalyticPDESpectralTheoremInput.certifiedForMajorProof
    {H : Hilbert.Space.{u, v}}
    {T : Hilbert.LinearOperator H H}
    (C : AnalyticPDESpectralTheoremInput T) : Prop :=
  C.finiteConvergence.certifiedForHilbertEvidence ∧
  C.theoremGates.certifiedForMajorProof ∧
  C.analyticHeat.certifiedForMajorProof ∧
  C.ricci.certifiedForMajorProof ∧
  C.orientedFlatness.certifiedForMajorProof ∧
  C.heatOperatorMatchesHilbertLimit ∧
  C.ricciGeometryCompatibleWithHilbertLimit ∧
  C.noSpectralTheoremFromFinitePDEDataAlone

theorem AnalyticPDESpectralTheoremInput.certifiedForMajorProof_of_fields
    {H : Hilbert.Space.{u, v}}
    {T : Hilbert.LinearOperator H H}
    (C : AnalyticPDESpectralTheoremInput T) :
    C.certifiedForMajorProof := by
  exact
    ⟨C.finiteConvergenceCertified,
     C.theoremGatesCertified,
     C.analyticHeatCertified,
     C.ricciCertified,
     C.orientedFlatnessCertified,
     C.heatOperatorMatchesHilbertLimitCertified,
     C.ricciGeometryCompatibleWithHilbertLimitCertified,
     C.noSpectralTheoremFromFinitePDEDataAloneCertified⟩

/--
Major-proof analytic PDE spectral input exposes the Prop-valued analytic theorem
gates.  This is the theorem-facing authority point; dashboard/readiness booleans
are not used to discharge it.
-/
theorem AnalyticPDESpectralTheoremInput.certifiedForMajorProof_has_theoremGates
    {H : Hilbert.Space.{u, v}}
    {T : Hilbert.LinearOperator H H}
    {C : AnalyticPDESpectralTheoremInput T}
    (h : C.certifiedForMajorProof) :
    C.theoremGates.certifiedForMajorProof := by
  rcases h with
    ⟨_hFinite, hGates, _hHeat, _hRicci, _hFlat,
      _hHeatMatch, _hRicciMatch, _hNoFiniteAlone⟩
  exact hGates

/-- Major-proof analytic PDE spectral input includes finite-to-Hilbert evidence. -/
theorem AnalyticPDESpectralTheoremInput.certifiedForMajorProof_has_finiteConvergence
    {H : Hilbert.Space.{u, v}}
    {T : Hilbert.LinearOperator H H}
    {C : AnalyticPDESpectralTheoremInput T}
    (h : C.certifiedForMajorProof) :
    C.finiteConvergence.certifiedForHilbertEvidence := by
  rcases h with
    ⟨hFinite, _hGates, _hHeat, _hRicci, _hFlat,
      _hHeatMatch, _hRicciMatch, _hNoFiniteAlone⟩
  exact hFinite

/--
Major-proof analytic PDE spectral input retains the boundary that finite PDE
data alone is not spectral-theorem evidence.
-/
theorem AnalyticPDESpectralTheoremInput.certifiedForMajorProof_keeps_noFiniteDataAlone
    {H : Hilbert.Space.{u, v}}
    {T : Hilbert.LinearOperator H H}
    {C : AnalyticPDESpectralTheoremInput T}
    (h : C.certifiedForMajorProof) :
    C.noSpectralTheoremFromFinitePDEDataAlone := by
  rcases h with
    ⟨_hFinite, _hGates, _hHeat, _hRicci, _hFlat,
      _hHeatMatch, _hRicciMatch, hNoFiniteAlone⟩
  exact hNoFiniteAlone

end Spectral
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8244cda9911691c71726ce418b8085c0c8f92370ec2f51b92175522a6965affc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant44b02ede5d97df95b4b78e456cb97d9e2d7ad001e38293231b5e5122a4babe72.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
