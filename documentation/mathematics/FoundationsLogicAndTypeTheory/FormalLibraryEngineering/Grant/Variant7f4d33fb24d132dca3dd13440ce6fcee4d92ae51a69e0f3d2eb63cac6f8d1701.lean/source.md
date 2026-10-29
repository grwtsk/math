# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Grant.Variant7f4d33fb24d132dca3dd13440ce6fcee4d92ae51a69e0f3d2eb63cac6f8d1701

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6133d1dfd3e090bc6d3cf773389357598f1cec0b` · SHA-256 `7f4d33fb24d132dca3dd13440ce6fcee4d92ae51a69e0f3d2eb63cac6f8d1701`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Capability.Permission
import Mathematics.Capability.Scope

/-!
# Certified grants

A grant is a conjunction of independent veto observations and a
nonamplifying capability refinement.  The record does not infer permission
from competence, model output, or operating-system API availability.
-/

namespace Mathematics.Capability

structure GrantRequest where
  requestId : RequestId
  requester : Principal
  capability : OperationalCapability

structure CertifiedGrant where
  grantId : GrantId
  issuer : Principal
  holder : Principal
  request : GrantRequest
  capability : OperationalCapability
  veto : IndependentVeto
  capability_within_request :
    capability ≤ request.capability
  veto_allows :
    veto.PermitsExecution

namespace CertifiedGrant

theorem nonamplifying
    (grant : CertifiedGrant) :
    grant.capability ≤ grant.request.capability :=
  grant.capability_within_request

theorem human_permitted
    (grant : CertifiedGrant) :
    grant.veto.human.Permits :=
  grant.veto_allows.1

theorem operating_system_permitted
    (grant : CertifiedGrant) :
    grant.veto.operatingSystem.Permits :=
  grant.veto_allows.2.1

theorem hardware_permitted
    (grant : CertifiedGrant) :
    grant.veto.hardware.Permits :=
  grant.veto_allows.2.2

end CertifiedGrant

end Mathematics.Capability
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f497e05962f2278b23b4ab4877f5cd4e9b4f2f52d5f0fd4e1678e5c6d7c8c06a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grant/Variant7f4d33fb24d132dca3dd13440ce6fcee4d92ae51a69e0f3d2eb63cac6f8d1701.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
