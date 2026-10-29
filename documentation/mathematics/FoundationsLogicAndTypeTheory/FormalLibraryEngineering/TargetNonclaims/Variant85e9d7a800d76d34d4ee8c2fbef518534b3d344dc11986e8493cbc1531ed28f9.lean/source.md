# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TargetNonclaims.Variant85e9d7a800d76d34d4ee8c2fbef518534b3d344dc11986e8493cbc1531ed28f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48442423d359be9e1331431f4c5f642debd9a8f4` · SHA-256 `85e9d7a800d76d34d4ee8c2fbef518534b3d344dc11986e8493cbc1531ed28f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Validation.BraidCoverage
import Think.Targets.All

set_option autoImplicit false

namespace Think.Validation

def targetNonclaimProfile : Prop :=
  ∀ w ∈ Think.Targets.allTargetWrappers,
    w.centerRoot = FWR.Target.CenterWeightedPipeline ∧
      Think.Targets.noExternalAuthorityUpgradeFor w.target

theorem targetNonclaimProfile_true :
    targetNonclaimProfile := by
  intro w h
  exact
    ⟨Think.Targets.allTargetWrappers_rootedAtCenter w h,
      Think.Targets.allTargetWrappers_noExternalAuthorityUpgrade w h⟩

end Think.Validation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3948a54bcc440fd4dfd6d711baa5e324efca421dff9e47e84152c09330f64da3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TargetNonclaims/Variant85e9d7a800d76d34d4ee8c2fbef518534b3d344dc11986e8493cbc1531ed28f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
