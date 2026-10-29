-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Band.Variantacc291360b82cb3b2f9acbf648bf5ab924cd69e69821d096def784e7a6f83a8b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"acc291360b82cb3b2f9acbf648bf5ab924cd69e69821d096def784e7a6f83a8b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Band.Variantacc291360b82cb3b2f9acbf648bf5ab924cd69e69821d096def784e7a6f83a8b","mathematical_subject":"Foundations.Unclassified","original_sha256":"acc291360b82cb3b2f9acbf648bf5ab924cd69e69821d096def784e7a6f83a8b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/docs/ontology/Color/Black.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Color.Admissibility


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Band.Variantacc291360b82cb3b2f9acbf648bf5ab924cd69e69821d096def784e7a6f83a8b

namespace Color

namespace Black

def band : Band :=
  { name := "black",
    namespaceName := "Color.Black",
    bitDepth := 8,
    rangeMin := 0,
    rangeMax := 0,
    centroid := blackCentroid }

def accepts : ColorAtom → Prop := acceptsOnly ColorAtom.black

def rejects : ColorAtom → Prop := rejectsUnresolved

def admissibility : Admissibility :=
  { band, accepts, rejects, symmetric := true }

theorem namespace_eq : band.namespaceName = "Color.Black" := rfl

end Black

end Color
