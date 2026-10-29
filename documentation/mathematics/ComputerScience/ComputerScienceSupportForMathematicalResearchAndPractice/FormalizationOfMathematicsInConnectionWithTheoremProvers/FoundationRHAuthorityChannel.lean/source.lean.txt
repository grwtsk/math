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
