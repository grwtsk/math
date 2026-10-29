import Surface.Homology.FiniteOS.Basic
import Surface.Homology.Coverage

namespace Surface
namespace Homology

/-!
Finite OS authority is certificate-gated. A finite OS expression, symbolic
graph/matrix object, Boolean dashboard, Ricci label, heat descriptor, or finite
homological syntax tree is not theorem authority by itself. Authority comes
only from supplied `Prop`-valued witnesses for categorical status,
chain-complex validity, boundary commutation, quasi-isomorphism, Betti proof
certificates, homology-stability coverage, and explicit no-promotion
boundaries.

This module does not prove analytic heat flow, Ricci flow, spectral
convergence, Hilbert spectral theorem applicability, Prismatic Cohomology
comparison, Connes trace formulas, Hilbert–Pólya, BSD, Poincaré, or
geometrization.

Finite OS objects become authoritative inside Surface only through a supplied
`Prop`-valued witness that includes chain-complex, chain-map,
quasi-isomorphism, Betti, homology-stability, and coverage criteria; finite
syntax and descriptors remain non-authoritative by themselves.
-/

/--
Concrete homology-stability criteria required before a finite OS object can
be treated as authoritative inside the finite proof-carrying homological OS.

This is still certificate infrastructure. It does not turn finite syntax,
finite matrices, graph data, heat descriptors, or Ricci labels into analytic
or spectral theorem authority.
-/
structure FiniteOSHomologyStabilityCriteria where
  sourceComplex : ChainComplex
  targetComplex : ChainComplex

  chainMap : ChainMapDescriptor
  quasiIso : QuasiIsomorphismDescriptor

  sourceHomology : HomologyDescriptor
  targetHomology : HomologyDescriptor

  sourceBetti : BettiCertificateDescriptor
  targetBetti : BettiCertificateDescriptor

  stability : HomologyStabilityCertificate
  coverageContext : HomologyCoverageContext

  chainMap_source_matches :
    chainMap.source = sourceComplex
  chainMap_target_matches :
    chainMap.target = targetComplex

  quasiIso_chainMap_matches :
    quasiIso.chainMap = chainMap

  sourceHomology_complex_matches :
    sourceHomology.complex = sourceComplex
  targetHomology_complex_matches :
    targetHomology.complex = targetComplex

  sourceBetti_homology_matches :
    sourceBetti.homology = sourceHomology
  targetBetti_homology_matches :
    targetBetti.homology = targetHomology

  stability_chainMap_matches :
    stability.chainMap = chainMap
  stability_quasiIso_matches :
    stability.quasiIso = quasiIso

  sourceBoundarySquaredZero :
    sourceComplex.boundarySquaredZero
  targetBoundarySquaredZero :
    targetComplex.boundarySquaredZero

  chainMapCommutes :
    chainMap.commutesWithBoundary

  quasiIsoInducesHomologyIso :
    quasiIso.inducesHomologyIso

  sourceHomologyComputed :
    sourceHomology.computedByCertificate
  targetHomologyComputed :
    targetHomology.computedByCertificate

  sourceBettiProof :
    sourceBetti.proofCertificate
  targetBettiProof :
    targetBetti.proofCertificate

  bettiNumbersStable :
    sourceBetti.bettiNumber = targetBetti.bettiNumber

  stabilityClaimSound :
    stability.claimSound

  coverageAdmissible :
    HomologyStabilityCoverageAdmissible coverageContext stability

  noAnalyticTopologyFromFiniteOSAlone : Prop
  noAnalyticTopologyFromFiniteOSAloneCertified :
    noAnalyticTopologyFromFiniteOSAlone

  noSpectralAuthorityFromFiniteOSAlone : Prop
  noSpectralAuthorityFromFiniteOSAloneCertified :
    noSpectralAuthorityFromFiniteOSAlone

  noLegacyIntegrableLatticeHierarchyAssumption : Prop
  noLegacyIntegrableLatticeHierarchyAssumptionCertified :
    noLegacyIntegrableLatticeHierarchyAssumption

  boundary : List String

/--
Certificate predicate for finite OS homology-stability criteria.

It unpacks only the criteria fields supplied by the witness.
-/
def FiniteOSHomologyStabilityCriteria.certifiedForHomologyStability
    (C : FiniteOSHomologyStabilityCriteria) : Prop :=
  C.chainMap.source = C.sourceComplex ∧
  C.chainMap.target = C.targetComplex ∧
  C.quasiIso.chainMap = C.chainMap ∧
  C.sourceHomology.complex = C.sourceComplex ∧
  C.targetHomology.complex = C.targetComplex ∧
  C.sourceBetti.homology = C.sourceHomology ∧
  C.targetBetti.homology = C.targetHomology ∧
  C.stability.chainMap = C.chainMap ∧
  C.stability.quasiIso = C.quasiIso ∧
  C.sourceComplex.boundarySquaredZero ∧
  C.targetComplex.boundarySquaredZero ∧
  C.chainMap.commutesWithBoundary ∧
  C.quasiIso.inducesHomologyIso ∧
  C.sourceHomology.computedByCertificate ∧
  C.targetHomology.computedByCertificate ∧
  C.sourceBetti.proofCertificate ∧
  C.targetBetti.proofCertificate ∧
  C.sourceBetti.bettiNumber = C.targetBetti.bettiNumber ∧
  C.stability.claimSound ∧
  HomologyStabilityCoverageAdmissible C.coverageContext C.stability ∧
  C.noAnalyticTopologyFromFiniteOSAlone ∧
  C.noSpectralAuthorityFromFiniteOSAlone ∧
  C.noLegacyIntegrableLatticeHierarchyAssumption

theorem FiniteOSHomologyStabilityCriteria.certifiedForHomologyStability_of_fields
    (C : FiniteOSHomologyStabilityCriteria) :
    C.certifiedForHomologyStability := by
  exact
    ⟨C.chainMap_source_matches,
     C.chainMap_target_matches,
     C.quasiIso_chainMap_matches,
     C.sourceHomology_complex_matches,
     C.targetHomology_complex_matches,
     C.sourceBetti_homology_matches,
     C.targetBetti_homology_matches,
     C.stability_chainMap_matches,
     C.stability_quasiIso_matches,
     C.sourceBoundarySquaredZero,
     C.targetBoundarySquaredZero,
     C.chainMapCommutes,
     C.quasiIsoInducesHomologyIso,
     C.sourceHomologyComputed,
     C.targetHomologyComputed,
     C.sourceBettiProof,
     C.targetBettiProof,
     C.bettiNumbersStable,
     C.stabilityClaimSound,
     C.coverageAdmissible,
     C.noAnalyticTopologyFromFiniteOSAloneCertified,
     C.noSpectralAuthorityFromFiniteOSAloneCertified,
     C.noLegacyIntegrableLatticeHierarchyAssumptionCertified⟩

/--
Prop-valued witness for finite OS object authority.

The finite object is a Cambridge-style finite OS expression. Authority comes
from the supplied homology-stability criteria and explicit finite-OS boundary
proofs, not from the expression, labels, Boolean metadata, graph/matrix data,
or descriptors alone.
-/
structure FiniteOSAuthorityWitness where
  object :
    FiniteOS.Expression String

  criteria :
    FiniteOSHomologyStabilityCriteria

  criteriaCertified :
    criteria.certifiedForHomologyStability

  isCategoricalObject : Prop
  isCategoricalObjectCertified :
    isCategoricalObject

  isFiniteHomologicalSystem : Prop
  isFiniteHomologicalSystemCertified :
    isFiniteHomologicalSystem

  isProofCarrying : Prop
  isProofCarryingCertified :
    isProofCarrying

  isCertificateGated : Prop
  isCertificateGatedCertified :
    isCertificateGated

  finiteSyntaxAccepted : Prop
  finiteSyntaxAcceptedCertified :
    finiteSyntaxAccepted

  noAuthorityFromSyntaxAlone : Prop
  noAuthorityFromSyntaxAloneCertified :
    noAuthorityFromSyntaxAlone

  noPrismaticComparisonFromFiniteOSAlone : Prop
  noPrismaticComparisonFromFiniteOSAloneCertified :
    noPrismaticComparisonFromFiniteOSAlone

  noAnalyticPDEFromFiniteOSAlone : Prop
  noAnalyticPDEFromFiniteOSAloneCertified :
    noAnalyticPDEFromFiniteOSAlone

  noHilbertSpectralEvidenceFromFiniteOSAlone : Prop
  noHilbertSpectralEvidenceFromFiniteOSAloneCertified :
    noHilbertSpectralEvidenceFromFiniteOSAlone

  boundary : List String

/-- Certificate predicate for finite OS authority. -/
def FiniteOSAuthorityWitness.certifiedForFiniteOSAuthority
    (W : FiniteOSAuthorityWitness) : Prop :=
  W.criteria.certifiedForHomologyStability ∧
  W.isCategoricalObject ∧
  W.isFiniteHomologicalSystem ∧
  W.isProofCarrying ∧
  W.isCertificateGated ∧
  W.finiteSyntaxAccepted ∧
  W.noAuthorityFromSyntaxAlone ∧
  W.noPrismaticComparisonFromFiniteOSAlone ∧
  W.noAnalyticPDEFromFiniteOSAlone ∧
  W.noHilbertSpectralEvidenceFromFiniteOSAlone

theorem FiniteOSAuthorityWitness.certifiedForFiniteOSAuthority_of_fields
    (W : FiniteOSAuthorityWitness) :
    W.certifiedForFiniteOSAuthority := by
  exact
    ⟨W.criteriaCertified,
     W.isCategoricalObjectCertified,
     W.isFiniteHomologicalSystemCertified,
     W.isProofCarryingCertified,
     W.isCertificateGatedCertified,
     W.finiteSyntaxAcceptedCertified,
     W.noAuthorityFromSyntaxAloneCertified,
     W.noPrismaticComparisonFromFiniteOSAloneCertified,
     W.noAnalyticPDEFromFiniteOSAloneCertified,
     W.noHilbertSpectralEvidenceFromFiniteOSAloneCertified⟩

/--
Finite OS objects are authoritative only relative to a supplied authority
witness. This theorem only unpacks the witness; it does not promote symbolic
finite data into analytic, prismatic, or spectral theorem authority.
-/
theorem finite_os_objects_authoritative_witness
    (W : FiniteOSAuthorityWitness) :
    W.certifiedForFiniteOSAuthority :=
  W.certifiedForFiniteOSAuthority_of_fields

/--
Thin helper for callers that already have the authority propositions in hand.

The packed witness remains the main certificate API.
-/
theorem finite_os_objects_authoritative_witness_of_props
    (W : FiniteOSAuthorityWitness)
    (hCriteria : W.criteria.certifiedForHomologyStability)
    (hCat : W.isCategoricalObject)
    (hHom : W.isFiniteHomologicalSystem)
    (hProof : W.isProofCarrying)
    (hGate : W.isCertificateGated)
    (hSyntax : W.finiteSyntaxAccepted)
    (hNoSyntax : W.noAuthorityFromSyntaxAlone)
    (hNoPrism : W.noPrismaticComparisonFromFiniteOSAlone)
    (hNoPDE : W.noAnalyticPDEFromFiniteOSAlone)
    (hNoSpectral : W.noHilbertSpectralEvidenceFromFiniteOSAlone) :
    W.certifiedForFiniteOSAuthority := by
  exact
    ⟨hCriteria, hCat, hHom, hProof, hGate, hSyntax,
     hNoSyntax, hNoPrism, hNoPDE, hNoSpectral⟩

end Homology
end Surface
