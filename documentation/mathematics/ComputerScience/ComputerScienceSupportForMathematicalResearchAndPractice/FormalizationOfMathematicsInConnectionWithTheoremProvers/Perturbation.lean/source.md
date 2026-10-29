# Perturbation — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27b2895bae20f03a9732a52097b7967cc7e0318d` · SHA-256 `f0e230e9c2ac72d5aa24170ab28c83684c90ee70a5a6a59bb32d278f283d02e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Connector perturbation bounds

Residual terms are explicit fields and cannot disappear in limit notation.
-/

namespace Mathematics.StratifiedBoundary

structure FiniteTracePerturbationCertificate where
  traceDiscrepancy : Nat
  observableLipschitzScale : Nat
  invariantLawDisplacement : Nat
  bound :
    traceDiscrepancy ≤
      observableLipschitzScale * invariantLawDisplacement

theorem finite_trace_perturbation_bound
    (certificate : FiniteTracePerturbationCertificate) :
    certificate.traceDiscrepancy ≤
      certificate.observableLipschitzScale *
        certificate.invariantLawDisplacement :=
  certificate.bound

structure StratumConnectorPerturbationCertificate where
  traceConnectorDefect : Nat
  lawConnectorContribution : Nat
  observableMismatch : Nat
  bound :
    traceConnectorDefect ≤
      lawConnectorContribution + observableMismatch

theorem stratum_connector_perturbation_bound
    (certificate :
      StratumConnectorPerturbationCertificate) :
    certificate.traceConnectorDefect ≤
      certificate.lawConnectorContribution +
        certificate.observableMismatch :=
  certificate.bound

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57ef4c1c8c42b76b454105bf1eb02523fca839271f35a9c4095b154eae07ef76 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Perturbation/Variantf0e230e9c2ac72d5aa24170ab28c83684c90ee70a5a6a59bb32d278f283d02e8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
