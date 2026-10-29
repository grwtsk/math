-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Band.Variantdd23e2b7e976dc5891b484d10d5d9dcf7f93544eb5ace4c504c51ed6a9d6de12","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd23e2b7e976dc5891b484d10d5d9dcf7f93544eb5ace4c504c51ed6a9d6de12","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Band.Variantdd23e2b7e976dc5891b484d10d5d9dcf7f93544eb5ace4c504c51ed6a9d6de12","mathematical_subject":"Foundations.Unclassified","original_sha256":"dd23e2b7e976dc5891b484d10d5d9dcf7f93544eb5ace4c504c51ed6a9d6de12","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/docs/ontology/Color/Blue.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Color.Admissibility


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Band.Variantdd23e2b7e976dc5891b484d10d5d9dcf7f93544eb5ace4c504c51ed6a9d6de12

namespace Color

namespace Blue

def band : Band :=
  { name := "blue",
    namespaceName := "Color.Blue",
    bitDepth := 8,
    rangeMin := 0,
    rangeMax := 255,
    centroid := blueCentroid }

def accepts : ColorAtom → Prop := acceptsOnly ColorAtom.blue

def rejects : ColorAtom → Prop := rejectsUnresolved

def admissibility : Admissibility :=
  { band, accepts, rejects, symmetric := true }

theorem namespace_eq : band.namespaceName = "Color.Blue" := rfl

end Blue

end Color
