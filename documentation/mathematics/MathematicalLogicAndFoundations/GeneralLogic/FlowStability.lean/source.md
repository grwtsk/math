# Flow Stability — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbced67357bb621965f00bd4bb8725636de2a5fa` · SHA-256 `3ea646a3079c9f4fdd760569940d3aaac8d24a37d6c3d1616c4be9d60474156c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Homology.QuasiIsomorphism

namespace Surface
namespace Homology

structure HomologyStabilityCertificate where
  frameCommutation : FrameCommutationCertificate
  chainMap : ChainMapDescriptor
  quasiIso : QuasiIsomorphismDescriptor
  claimSound : Prop

/--
Accessor for the explicit stability claim carried by the certificate.

This is not a heat-flow stability theorem, not a quasi-isomorphism theorem, and
not evidence that homology is preserved.  A theorem with that content must use
the frame-commutation, chain-map, and quasi-isomorphism data in a nontrivial
homological statement.
-/
def HomologyStabilityCertificate.claimSoundInput
    (cert : HomologyStabilityCertificate) : Prop :=
  cert.claimSound

theorem HomologyStabilityCertificate.claimSound_id
    (cert : HomologyStabilityCertificate) :
    cert.claimSoundInput -> cert.claimSoundInput := by
  intro h
  exact h

end Homology
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2eccaa4210d8d3b8464a0209095f6a436269917ddbe0cbf41f23027639eb93a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FlowStability/Variant3ea646a3079c9f4fdd760569940d3aaac8d24a37d6c3d1616c4be9d60474156c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
