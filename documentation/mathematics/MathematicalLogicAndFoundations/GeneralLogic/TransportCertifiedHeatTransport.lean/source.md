# Transport Certified Heat Transport — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35f16a5b8462f7d00ff260a446e60cdfdbf6b5b1` · SHA-256 `05dd9a2fcfd19c50a1de56b53846494c80acfe6cf31413439a27dc93513a1d46`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Flow.Heat.Semigroup

namespace Surface

structure CertifiedHeatTransport where
  flow : HeatFlowDescriptor
  certificate : HeatFlowTransportCertificate
  preservesDeclaredDomain : Prop

/--
Accessor for the transport-soundness field carried by the nested certificate.

This is not an analytic transport theorem and does not prove domain
preservation beyond the explicitly supplied certificate data.
-/
theorem CertifiedHeatTransport.transportSound_id
    (T : CertifiedHeatTransport) :
    T.certificate.transportSound -> T.certificate.transportSound := by
  intro h
  exact h

end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93d15cccc99aca1b9cbb93fee43288f3f49f9f671ce4bd15d5c63ed257188617 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transport/Variant05dd9a2fcfd19c50a1de56b53846494c80acfe6cf31413439a27dc93513a1d46.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
