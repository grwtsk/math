# Interval Namespaced Closed Interval — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f055aaad3c716c5da059884c18373aa83fd0789` · SHA-256 `7f8c8051657e2b30e94929d88b826c0751e114a87794dbb13aeb566c9ade165a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClosedInterval.Variant71f834269589609a55d021187ae568c0946da86f7239398e8d3f34c8cf501a06","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"71f834269589609a55d021187ae568c0946da86f7239398e8d3f34c8cf501a06","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ClosedInterval.Variant71f834269589609a55d021187ae568c0946da86f7239398e8d3f34c8cf501a06","mathematical_subject":"Foundations.Unclassified","original_sha256":"71f834269589609a55d021187ae568c0946da86f7239398e8d3f34c8cf501a06","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Topology/Interval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Topology.Foundations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClosedInterval.Variant71f834269589609a55d021187ae568c0946da86f7239398e8d3f34c8cf501a06

universe u

namespace FCRS.Topology

/--
An abstract closed interval.  It is not identified with the real unit
interval; the endpoint and interior laws record only the semantics needed by
the core graph-realization layer.
-/
structure ClosedInterval where
  Point : Type u
  topology : TopologicalSpaceLike Point
  zero : Point
  one : Point
  zero_ne_one : zero ≠ one
  interior : Set Point
  zero_not_mem_interior : ¬ zero ∈ interior
  one_not_mem_interior : ¬ one ∈ interior

end FCRS.Topology
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81de4c3498493b06550326e31d1a8282a1ffc9df9cde101a85366e5bd64fce2d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4268c3425b612e5058610b40e55d4c96a568c4ebc299db0b83053fb2d95da3a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
