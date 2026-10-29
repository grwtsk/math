# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Correspondence.Variant0ffeb6441d7bcf74ddedb339661b807a9a142eb20bb1cdb23295ad54200a8334

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe52972acdac79849985f1e5e37e8bee86bca487` · SHA-256 `0ffeb6441d7bcf74ddedb339661b807a9a142eb20bb1cdb23295ad54200a8334`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d2975698daa87ca74c1750b689d9b8ccb2fe047cbd90fd77d94cbf015b13ecc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Correspondence/Variant0ffeb6441d7bcf74ddedb339661b807a9a142eb20bb1cdb23295ad54200a8334.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
