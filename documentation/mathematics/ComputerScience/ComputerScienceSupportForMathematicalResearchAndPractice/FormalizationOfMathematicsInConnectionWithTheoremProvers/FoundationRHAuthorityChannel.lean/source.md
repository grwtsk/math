# Foundation RHAuthority Channel — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f4d34ad8ec64e8d4f00f1c6b5d228a12c70436b` · SHA-256 `fe2a82114bc1760cc17e5d7ee61106328fd04fbf2e96c67688476cab5c278e43`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.RHIsolation.UnknownLedger

/-!
# RH-directed authority factorization

Analytic isolation, spectral proposal generation, and certified
correspondence remain separate channels.  Only the analytic channel constructs
finite-height zero authority.
-/

namespace Mathematics.RHIsolation

inductive RHAuthorityChannel
  | analyticIsolation
  | spectralProposal
  | certifiedCorrespondence
deriving DecidableEq, Repr

structure RHDirectedFiniteClosure
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    (authority :
      ArgumentPrincipleAuthority model xi xiPrime)
    (cut : CriticalStripCut) where
  analytic :
    FiniteHeightRHCertificate authority cut
  spectral : SelfAdjointSpectralCut
  correspondence :
    FiniteSpectralMatchingCertificate authority
  traceAuthorityPresent : Prop
  traceAuthorityPresentProof :
    traceAuthorityPresent

theorem RHDirectedFiniteClosure.actualZeroOnLine
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cut : CriticalStripCut}
    (closure :
      RHDirectedFiniteClosure authority cut)
    {z : ℂ}
    (owned : cut.owns z)
    (zero : xi z = 0) :
    z.re = (1 : ℝ) / 2 :=
  finiteHeightRH_sound closure.analytic z owned zero

theorem spectralProposal_channel_nonauthoritative
    (candidate : SpectralCandidate) :
    ¬ CarriesAnalyticZeroAuthority candidate :=
  spectralCandidate_has_no_analyticAuthority candidate

end Mathematics.RHIsolation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d2315f163deae37ac866903f1ce603ad6da25dda7cbbac10d29cd38db897d63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Foundation/Variantfe2a82114bc1760cc17e5d7ee61106328fd04fbf2e96c67688476cab5c278e43.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
