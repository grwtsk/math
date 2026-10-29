# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SafeNeighbors.Variant15af3c8940a467d8a1817944c7c15e32fcb995a02cd4f18b241b1fcdcf7fb240

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `546167a1c5c274ee7886908ba6ab4b2fce134020` · SHA-256 `eb5619b70433e7c324f099586f49585f6d84fd2700a75c2c907b326618e8ba64`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SafeNeighborEnumeration.Variant1a0a4f3586c8c4451c5e1da0f31017b7e3fa97c8c1ad018acda7999bfa8f4d36","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1a0a4f3586c8c4451c5e1da0f31017b7e3fa97c8c1ad018acda7999bfa8f4d36","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SafeNeighborEnumeration.Variant1a0a4f3586c8c4451c5e1da0f31017b7e3fa97c8c1ad018acda7999bfa8f4d36","mathematical_subject":"Foundations.Unclassified","original_sha256":"1a0a4f3586c8c4451c5e1da0f31017b7e3fa97c8c1ad018acda7999bfa8f4d36","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/SafeNeighbors.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.Graph
import Mathematics.GraphAccess.NeighborEnumeration

/-!
# Safe canonical neighbors

The existing complete neighbor enumeration is specialized by the certified
safe admissibility profile.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SafeNeighborEnumeration.Variant1a0a4f3586c8c4451c5e1da0f31017b7e3fa97c8c1ad018acda7999bfa8f4d36

namespace Mathematics.SemiLocalDefect.ResidueDeflection

open Mathematics.GraphAccess

def safeNeighborEnumeration
    {graph : GraphCut}
    (cut : ResidueDeflectionCut graph)
    (scope : RelationScope graph)
    (digest : ProfileDigest) :
    NeighborEnumeration
      graph scope cut.admissibility :=
  NeighborEnumeration.canonical
    graph scope cut.admissibility digest

theorem safeNeighbor_endpoints
    {graph : GraphCut}
    (cut : ResidueDeflectionCut graph)
    (scope : RelationScope graph)
    (digest : ProfileDigest)
    (node : graph.Node)
    (arc : Arc graph)
    (member :
      arc ∈
        (safeNeighborEnumeration
          cut scope digest).neighbors node) :
    (cut.residue arc.tail).Safe ∧
      (cut.residue arc.head).Safe := by
  have eligible :=
    (safeNeighborEnumeration
      cut scope digest).sound node arc member
  have safeArc :
      cut.safeArc arc = true :=
    (cut.admitted_arc_iff_safe arc).mp
      eligible.2.2
  exact cut.safeArc_endpoints arc safeArc

end Mathematics.SemiLocalDefect.ResidueDeflection
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ed02fa2fe5102e8244699dc77470b57e4a47ba49ba174e9468dbd5b151ba57e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SafeNeighbors/Variant15af3c8940a467d8a1817944c7c15e32fcb995a02cd4f18b241b1fcdcf7fb240.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
