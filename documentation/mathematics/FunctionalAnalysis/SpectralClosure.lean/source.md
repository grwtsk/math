# Spectral Closure — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6af6f1b5dea07f9cabb1672d7d0450a51000c72d` · SHA-256 `f71b973300ec0fa1c861b445c1bf09cea9ff69f6270560fa3a3dbe750fe47c82`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.RHIsolation.IsolationMachine

/-!
# Finite-height spectral proposal closure

The analytic finite-height certificate already proves line membership.  The
additional fields certify a finite spectral realization, a perfect
multiplicity-preserving match, and equality in a measure-determining test
class.
-/

namespace Mathematics.RHIsolation

universe uMeasure uTest uAnalytic uSpectral

set_option linter.checkUnivs false in
structure FiniteHeightSpectralClosureCertificate
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    (authority :
      ArgumentPrincipleAuthority model xi xiPrime)
    (cut : CriticalStripCut)
    (Measure : Type uMeasure)
    (Test : Type uTest) where
  finiteHeightRH :
    FiniteHeightRHCertificate authority cut
  spectralModel :
    SelfAdjointSpectralCut
  matching :
    FiniteSpectralMatchingCertificate.{uAnalytic, uSpectral}
      authority
  modelMatchesMatching : Prop
  modelMatchesMatchingProof :
    modelMatchesMatching
  analyticCount : Nat
  spectralCount : Nat
  countEqual :
    analyticCount = spectralCount
  traceIdentity :
    CertifiedArithmeticTraceIdentity Test
  testClass :
    MeasureDeterminingTestClass Measure Test
  analyticZeroMeasure : Measure
  spectralMeasure : Measure
  testEquality :
    ∀ test,
      testClass.evaluate test analyticZeroMeasure =
        testClass.evaluate test spectralMeasure

theorem FiniteHeightSpectralClosureCertificate.measureEquality
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cut : CriticalStripCut}
    {Measure : Type uMeasure}
    {Test : Type uTest}
    (certificate :
      FiniteHeightSpectralClosureCertificate
        authority cut Measure Test) :
    certificate.analyticZeroMeasure =
      certificate.spectralMeasure :=
  certificate.testClass.separatesFiniteMeasures
    certificate.analyticZeroMeasure
    certificate.spectralMeasure
    certificate.testEquality

theorem finiteHeightSpectralClosure_sound
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cut : CriticalStripCut}
    {Measure : Type uMeasure}
    {Test : Type uTest}
    (certificate :
      FiniteHeightSpectralClosureCertificate
        authority cut Measure Test) :
    ∀ z,
      cut.owns z →
      xi z = 0 →
      z.re = (1 : ℝ) / 2 :=
  finiteHeightRH_sound certificate.finiteHeightRH

theorem finiteSpectralClosure_places_actualZerosOnLine
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cut : CriticalStripCut}
    {Measure : Type uMeasure}
    {Test : Type uTest}
    (certificate :
      FiniteHeightSpectralClosureCertificate
        authority cut Measure Test) :
    ∀ z,
      cut.owns z →
      xi z = 0 →
      z.re = (1 : ℝ) / 2 :=
  finiteHeightSpectralClosure_sound certificate

end Mathematics.RHIsolation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4a0b13e9a3e00fdba6b14a6e6b4fd9681398b95d87740e82d867fef230b2f83 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/SpectralClosure/Variantf71b973300ec0fa1c861b445c1bf09cea9ff69f6270560fa3a3dbe750fe47c82.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
