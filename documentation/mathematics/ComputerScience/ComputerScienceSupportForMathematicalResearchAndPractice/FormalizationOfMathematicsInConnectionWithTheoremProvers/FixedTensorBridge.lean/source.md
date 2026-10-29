# Fixed Tensor Bridge — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94fa55705bd60a2211b1989e5ee56ff6619d09d6` · SHA-256 `23e18fa2a0e01a87e024a54d38ff0aa56b34c0c4a7402b3b04923128a6e08c0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.FixedTensorBridge

/-!
# Folder.Theorem.CanonicalPath.FixedTensorBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports fixed tensor bridge contract facts.
Ontology: proof.fixed_tensor_bridge
Pivot role: fixed-point
Zero typology: trace-obstruction
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem fixed_tensor_controls_spectral_trace_if_supplied
    (B : Folder.CanonicalPath.FixedTensorBridge) :
    B.tensorTraceControlsSpectralTrace :=
  Folder.CanonicalPath.fixed_tensor_controls_spectral_trace_if_supplied B

theorem fixed_tensor_transport_invariant_if_supplied
    (B : Folder.CanonicalPath.FixedTensorBridge) :
    B.tensorInvariantUnderTransport :=
  Folder.CanonicalPath.fixed_tensor_transport_invariant_if_supplied B

end CanonicalPath
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9429f823b31594ce048f73402380611853b45febf62d125a15207f422ed20a33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedTensorBridge/Variant23e18fa2a0e01a87e024a54d38ff0aa56b34c0c4a7402b3b04923128a6e08c0f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
