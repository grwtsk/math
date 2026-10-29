# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TraceApproximation.Variantba0dc72086b0e69b203e10032e87cb5a489e98ccd14d94f6d2e0b10bc7e9ab3a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e48dad7ae34381cc52a89730ae5fdde107c7fcf` · SHA-256 `ba0dc72086b0e69b203e10032e87cb5a489e98ccd14d94f6d2e0b10bc7e9ab3a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Sampling.LowDiscrepancy

/-!
# Conditional invariant-trace approximation bound
-/

namespace Mathematics.GraphAccess

theorem low_discrepancy_trace_error_bound
    {State Observable : Type u}
    (certificate : LowDiscrepancyCertificate State Observable) :
    certificate.errorMagnitude ≤ certificate.errorBound :=
  certificate.errorWithinBound

theorem sampled_trace_is_not_reclassified_as_canonical
    {State Observable : Type u}
    (certificate : LowDiscrepancyCertificate State Observable)
    (distinct :
      certificate.estimatedTrace ≠
        certificate.invariantLaw.canonicalTrace certificate.observable) :
    certificate.estimatedTrace ≠
      certificate.invariantLaw.canonicalTrace certificate.observable :=
  distinct

end Mathematics.GraphAccess
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=083af92753ce274a58e034fc1db137f227d10c797b360f703b26bd873f93432e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceApproximation/Variantba0dc72086b0e69b203e10032e87cb5a489e98ccd14d94f6d2e0b10bc7e9ab3a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
