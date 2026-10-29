# Core Theorems Finite Height Authority Is Analytic — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a59d510237766182e3f887495cf76688241f285` · SHA-256 `c356d608d17f6b540c38962ba56bd4f5fcca0a62fbaf4f2b83f63322aeb8925a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.RHIsolation.Foundation

/-!
# Public RH-isolation theorem surface

This module records the final authority split without introducing a shortcut
from spectral proposals to analytic zeros.
-/

namespace Mathematics.RHIsolation

theorem finite_height_authority_is_analytic
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cut : CriticalStripCut}
    (certificate :
      FiniteHeightRHCertificate authority cut)
    {z : ℂ}
    (owned : cut.owns z)
    (zero : xi z = 0) :
    z.re = (1 : ℝ) / 2 :=
  finiteHeightRH_sound certificate z owned zero

theorem spectral_proposal_cannot_close_analytic_zero
    (candidate : SpectralCandidate) :
    ¬ CarriesAnalyticZeroAuthority candidate :=
  spectralCandidate_has_no_analyticAuthority candidate

end Mathematics.RHIsolation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=709003e8a09cb73fcd822d721e829066100c0d680a7fe77addd49be04788c1e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreTheorems/Variantc356d608d17f6b540c38962ba56bd4f5fcca0a62fbaf4f2b83f63322aeb8925a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
