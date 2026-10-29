-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParabolaDecouplingDependency.Variant64c84c0d04c94012bd49df871bb80c04ad892778c352107194eda97fd5d7ae63","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"64c84c0d04c94012bd49df871bb80c04ad892778c352107194eda97fd5d7ae63","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ParabolaDecouplingDependency.Variant64c84c0d04c94012bd49df871bb80c04ad892778c352107194eda97fd5d7ae63","mathematical_subject":"Foundations.Unclassified","original_sha256":"64c84c0d04c94012bd49df871bb80c04ad892778c352107194eda97fd5d7ae63","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Analysis/Decoupling/ParabolaImport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Analysis.Decoupling.VanishingCurvature


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParabolaDecouplingDependency.Variant64c84c0d04c94012bd49df871bb80c04ad892778c352107194eda97fd5d7ae63

set_option autoImplicit false

namespace Think.Analysis.Decoupling
namespace ParabolaImport

/--
Dependency surface for Bourgain-Demeter parabola decoupling.

No theorem dependency is imported here. A later trusted-import policy would
need to fill this surface before any theorem depending on it can be promoted.
-/
structure ParabolaDecouplingDependency where
  dependencyName : String
  authority : DecouplingAuthority
  trustedImportWitnessPresent : Bool
deriving DecidableEq, Repr

def bourgainDemeterParabolaDependency : ParabolaDecouplingDependency :=
  { dependencyName := "Bourgain-Demeter parabola decoupling"
    authority := .openResidue
    trustedImportWitnessPresent := false }

theorem bourgain_demeter_dependency_is_open_residue :
    bourgainDemeterParabolaDependency.authority = .openResidue := rfl

theorem bourgain_demeter_dependency_has_no_trusted_import_witness :
    bourgainDemeterParabolaDependency.trustedImportWitnessPresent = false := rfl

end ParabolaImport
end Think.Analysis.Decoupling
