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
