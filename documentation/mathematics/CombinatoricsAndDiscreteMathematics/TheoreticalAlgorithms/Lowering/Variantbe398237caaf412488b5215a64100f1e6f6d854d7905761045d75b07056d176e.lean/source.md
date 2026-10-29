# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lowering.Variantbe398237caaf412488b5215a64100f1e6f6d854d7905761045d75b07056d176e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10b215bff162890568a6aaeddabb79837146fd43` · SHA-256 `be398237caaf412488b5215a64100f1e6f6d854d7905761045d75b07056d176e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.PoleAssignment

set_option autoImplicit false

namespace Think.Poles.Lowering

def placements : List Think.SourceTree.PhasePlacement :=
  Think.SourceTree.placementsForPole Think.SourceTree.Pole.lowering

theorem placements_count :
    placements.length = 4 :=
  Think.SourceTree.loweringPole_count

theorem placements_centerControlled :
    ∀ q ∈ placements, q.phase ∈ Think.centerSpine := by
  intro q _hq
  exact Think.SourceTree.center_spine_controls_all_poles q

end Think.Poles.Lowering
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81b05d08a5ed18fe57bdd014c106d5cdf33b40b511cbad769c4cbadbc6675581 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lowering/Variantbe398237caaf412488b5215a64100f1e6f6d854d7905761045d75b07056d176e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
