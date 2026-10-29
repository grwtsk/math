-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Centroid.Variant72cbd0df0e85f16cf80ef1b0f4109dc86eb289d2fe98e50e922a2e83d7e05d08","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"72cbd0df0e85f16cf80ef1b0f4109dc86eb289d2fe98e50e922a2e83d7e05d08","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Centroid.Variant72cbd0df0e85f16cf80ef1b0f4109dc86eb289d2fe98e50e922a2e83d7e05d08","mathematical_subject":"Foundations.Unclassified","original_sha256":"72cbd0df0e85f16cf80ef1b0f4109dc86eb289d2fe98e50e922a2e83d7e05d08","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/docs/ontology/Color/Centroid.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Color.RGB


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Centroid.Variant72cbd0df0e85f16cf80ef1b0f4109dc86eb289d2fe98e50e922a2e83d7e05d08

namespace Color

structure Centroid where
  bitDepth : Nat
  aperture : Byte
  rgb : RGB
  hex : String
deriving Repr, DecidableEq

def blackCentroid : Centroid :=
  { bitDepth := 8, aperture := 0, rgb := RGB.black, hex := "#000000" }

def whiteCentroid : Centroid :=
  { bitDepth := 8, aperture := 255, rgb := RGB.white, hex := "#FFFFFF" }

def redCentroid : Centroid :=
  { bitDepth := 8, aperture := 255, rgb := RGB.redPrimary, hex := "#FF0000" }

def greenCentroid : Centroid :=
  { bitDepth := 8, aperture := 255, rgb := RGB.greenPrimary, hex := "#00FF00" }

def blueCentroid : Centroid :=
  { bitDepth := 8, aperture := 255, rgb := RGB.bluePrimary, hex := "#0000FF" }

theorem whiteCentroid_hex_eq : whiteCentroid.hex = "#FFFFFF" := rfl

end Color
