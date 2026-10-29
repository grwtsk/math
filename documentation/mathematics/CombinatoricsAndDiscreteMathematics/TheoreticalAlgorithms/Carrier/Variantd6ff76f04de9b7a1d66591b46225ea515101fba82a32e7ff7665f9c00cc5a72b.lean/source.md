# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Carrier.Variantd6ff76f04de9b7a1d66591b46225ea515101fba82a32e7ff7665f9c00cc5a72b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3bf9294af880ee3d84c73f8152e767ea248b8c92` · SHA-256 `d6ff76f04de9b7a1d66591b46225ea515101fba82a32e7ff7665f9c00cc5a72b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.PoleAssignment

set_option autoImplicit false

namespace Think.Poles.Carrier

def placements : List Think.SourceTree.PhasePlacement :=
  Think.SourceTree.placementsForPole Think.SourceTree.Pole.carrier

theorem placements_count :
    placements.length = 4 :=
  Think.SourceTree.carrierPole_count

theorem placements_centerControlled :
    ∀ q ∈ placements, q.phase ∈ Think.centerSpine := by
  intro q _hq
  exact Think.SourceTree.center_spine_controls_all_poles q

end Think.Poles.Carrier
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=594e293ae60d138afe52b5e72087c9c99149eeb113e0e09490db0c0ee9db6b75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Carrier/Variantd6ff76f04de9b7a1d66591b46225ea515101fba82a32e7ff7665f9c00cc5a72b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
