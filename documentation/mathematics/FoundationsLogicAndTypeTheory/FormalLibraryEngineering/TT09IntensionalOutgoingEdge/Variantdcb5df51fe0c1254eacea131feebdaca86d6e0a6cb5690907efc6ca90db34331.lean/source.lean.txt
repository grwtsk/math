-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tt09IntensionalOutgoingEdge.Variantc9246c42272489159376c1a2c52acb86ba67ebab868f6533f846df08dd1f39d3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c9246c42272489159376c1a2c52acb86ba67ebab868f6533f846df08dd1f39d3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tt09IntensionalOutgoingEdge.Variantc9246c42272489159376c1a2c52acb86ba67ebab868f6533f846df08dd1f39d3","mathematical_subject":"Foundations.Unclassified","original_sha256":"c9246c42272489159376c1a2c52acb86ba67ebab868f6533f846df08dd1f39d3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Transport/Theorems/TT09_IntensionalOutgoingEdge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Transport.Theorems.TT06_SieveCertificationSoundness
import FCRS.Transport.Graph


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tt09IntensionalOutgoingEdge.Variantc9246c42272489159376c1a2c52acb86ba67ebab868f6533f846df08dd1f39d3

universe uCoordinate uIntensionalEdge

namespace FCRS.Transport.Theorems

/--
An accepted sieve witness yields an intensional edge only through the exact
`accepts ↔ edge` semantics of the declared intensional graph.
-/
theorem tt09_intensionalOutgoingEdge
    {Coordinate : Type uCoordinate}
    {IntensionalEdge : Type uIntensionalEdge}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    {soundness : SieveSoundness procedure}
    {intensionalGraph :
      CoordinateGraph .Intensional Coordinate IntensionalEdge}
    (semantics : IntensionalGraphSemantics specification intensionalGraph)
    {source target : Coordinate}
    (evaluation : SieveEvaluation procedure source target)
    (witness : SieveWitness soundness evaluation) :
    Nonempty (EdgeOccurrence intensionalGraph source target) :=
  ⟨semantics.realize (tt06_sieveCertificationSound witness)⟩

end FCRS.Transport.Theorems
