# Certificate Endpoints Preserved — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0b7c8b9975b65e172ccef027cb48f59ae7ded63` · SHA-256 `46a3d638bad32c881e6e590246a5e21cff8d1a4321da1a118697a23d2e89c6cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GammaBridge.Approximation
import Mathematics.Authority.Evidence

/-! # Fixed bridge predicates -/

namespace Mathematics.GammaBridge

def EndpointsPreserved (bridge : Exact State) : Prop :=
  bridge.path 0 = bridge.left ∧ bridge.path 1 = bridge.right

def endpointCertificate (bridge : Exact State) :
    Authority.FixedPredicateCertificate (Exact State) EndpointsPreserved where
  payload := bridge
  proof := ⟨bridge.left_endpoint, bridge.right_endpoint⟩

end Mathematics.GammaBridge
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6796554f8492411ef38a99bf3598b5b6ac3f4d65cd24eab53033391fe79eb9df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certificate/Variant46a3d638bad32c881e6e590246a5e21cff8d1a4321da1a118697a23d2e89c6cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
