import Mathematics.RHIsolation.SpectralCandidate

/-!
# Local analytic--spectral correspondence

Heuristic statuses are observations.  Only the dedicated certified structure
contains the equalities needed to enter the authoritative matching graph.
-/

namespace Mathematics.RHIsolation

inductive LocalMatchStatus
  | geometricCandidate
  | uniqueNearest
  | countCompatible
  | certifiedCorrespondence
  | rejected
  | unresolved
deriving DecidableEq, Repr

structure LocalMatchAssessment
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    (analytic : CertifiedZeroRegion authority)
    (spectral : SpectralCandidate) where
  status : LocalMatchStatus
  evidenceDigest : CertificateDigest

structure LocalCorrespondenceCertificate
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    (analytic : CertifiedZeroRegion authority)
    (spectral : SpectralCandidate) where
  assessment :
    LocalMatchAssessment analytic spectral
  status_certified :
    assessment.status =
      .certifiedCorrespondence
  multiplicityEqual :
    analytic.count.count =
      spectral.multiplicity
  analyticWindowUnique : Prop
  analyticWindowUniqueProof :
    analyticWindowUnique
  spectralWindowUnique : Prop
  spectralWindowUniqueProof :
    spectralWindowUnique
  arithmeticContributionEqual : Prop
  arithmeticContributionEqualProof :
    arithmeticContributionEqual
  traceContributionEqual : Prop
  traceContributionEqualProof :
    traceContributionEqual

theorem certifiedLocalCorrespondence_preservesMultiplicity
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {analytic : CertifiedZeroRegion authority}
    {spectral : SpectralCandidate}
    (certificate :
      LocalCorrespondenceCertificate
        analytic spectral) :
    analytic.count.count =
      spectral.multiplicity :=
  certificate.multiplicityEqual

end Mathematics.RHIsolation
