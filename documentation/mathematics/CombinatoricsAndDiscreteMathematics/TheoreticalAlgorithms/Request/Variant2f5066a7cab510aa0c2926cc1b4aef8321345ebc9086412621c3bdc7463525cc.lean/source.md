# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Request.Variant2f5066a7cab510aa0c2926cc1b4aef8321345ebc9086412621c3bdc7463525cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a097c0ead096818eca3d4b8caf55cf939361a5f` · SHA-256 `daf90c7ba0876d3a52bea4d89834c00ef3febc130e44b8075a084e4d9e00cc1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Placements.Varianteca4a494db0db71c08d2f8ff7fa91a8e28a5b153ff7fba12ad30c51955ceb084","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eca4a494db0db71c08d2f8ff7fa91a8e28a5b153ff7fba12ad30c51955ceb084","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Placements.Varianteca4a494db0db71c08d2f8ff7fa91a8e28a5b153ff7fba12ad30c51955ceb084","mathematical_subject":"Computation.DataStructures","original_sha256":"eca4a494db0db71c08d2f8ff7fa91a8e28a5b153ff7fba12ad30c51955ceb084","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Poles/Request.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.PoleAssignment


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Placements.Varianteca4a494db0db71c08d2f8ff7fa91a8e28a5b153ff7fba12ad30c51955ceb084

set_option autoImplicit false

namespace Think.Poles.Request

def placements : List Think.SourceTree.PhasePlacement :=
  Think.SourceTree.placementsForPole Think.SourceTree.Pole.request

theorem placements_count :
    placements.length = 4 :=
  Think.SourceTree.requestPole_count

theorem placements_centerControlled :
    ∀ q ∈ placements, q.phase ∈ Think.centerSpine := by
  intro q _hq
  exact Think.SourceTree.center_spine_controls_all_poles q

end Think.Poles.Request
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad257d004aaa94146a5b4f602841f233485e74b44f8a4d2053b6441d5461478d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Request/Variant2f5066a7cab510aa0c2926cc1b4aef8321345ebc9086412621c3bdc7463525cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
