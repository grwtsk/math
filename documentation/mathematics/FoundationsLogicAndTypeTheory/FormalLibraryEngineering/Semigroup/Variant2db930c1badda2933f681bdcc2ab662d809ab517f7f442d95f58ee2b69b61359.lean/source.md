# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Semigroup.Variant2db930c1badda2933f681bdcc2ab662d809ab517f7f442d95f58ee2b69b61359

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc29852aa233823da587d548b1821bd8fa06f278` · SHA-256 `2db930c1badda2933f681bdcc2ab662d809ab517f7f442d95f58ee2b69b61359`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Flow.Heat.Kernel

namespace Surface

structure HeatSemigroupCertificate where
  flow : HeatFlowDescriptor
  identityAtZero : Prop
  compositionLaw : Prop

theorem heatSemigroup_requires_identity_and_composition
    (cert : HeatSemigroupCertificate) :
    cert.identityAtZero ->
      cert.compositionLaw ->
        cert.identityAtZero ∧ cert.compositionLaw := by
  intro h0 hcomp
  exact ⟨h0, hcomp⟩

end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e34faf3a8a7dc564c8e22362d2dc40c0458f859dfd1c52ed9b63492e834274e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semigroup/Variant2db930c1badda2933f681bdcc2ab662d809ab517f7f442d95f58ee2b69b61359.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
