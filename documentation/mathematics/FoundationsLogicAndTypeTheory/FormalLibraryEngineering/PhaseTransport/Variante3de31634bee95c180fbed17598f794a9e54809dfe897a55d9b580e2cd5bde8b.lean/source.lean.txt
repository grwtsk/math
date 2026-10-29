-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PhaseTransport.Variantd451bb8a6275587859fae927bad1f6da7e6f698796c2228368741294a0b1e9b1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d451bb8a6275587859fae927bad1f6da7e6f698796c2228368741294a0b1e9b1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PhaseTransport.Variantd451bb8a6275587859fae927bad1f6da7e6f698796c2228368741294a0b1e9b1","mathematical_subject":"Foundations.Unclassified","original_sha256":"d451bb8a6275587859fae927bad1f6da7e6f698796c2228368741294a0b1e9b1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/PhaseTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.AmplitudeTransport

/-!
# Phase transport and defect holonomy
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PhaseTransport.Variantd451bb8a6275587859fae927bad1f6da7e6f698796c2228368741294a0b1e9b1

namespace Mathematics.SemiLocalDefect.ResidueDeflection

open Mathematics.GraphAccess

structure PhaseTransport
    {graph : GraphCut}
    (cut : ResidueDeflectionCut graph) where
  phase : Arc graph → Phase3
  reverse :
    ∀ arc,
      phase arc.reverse =
        phase arc
  defectHolonomy :
    ∀ bypass,
      (cut.defectLoop bypass).phaseProduct
          phase =
        .reflect
  Face : Type
  faceBoundary :
    Face →
      Σ node,
        DeflectionPath graph node node
  ordinaryFlatness :
    ∀ face,
      let boundary := faceBoundary face
      boundary.2.phaseProduct phase =
        .identity

def DeflectionPath.transportResidue
    {graph : GraphCut}
    (phase : Arc graph → Phase3)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (residue : Residue3) :
    Residue3 :=
  (path.phaseProduct phase).act residue

theorem DeflectionPath.transportResidue_safe
    {graph : GraphCut}
    (phase : Arc graph → Phase3)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    {residue : Residue3}
    (safe : residue.Safe) :
    (path.transportResidue phase residue).Safe :=
  phase3_action_preserves_safe
    (path.phaseProduct phase) safe

theorem PhaseTransport.defectLoop_reflects
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    (transport : PhaseTransport cut)
    (bypass : cut.Bypass)
    (residue : Residue3) :
    (cut.defectLoop bypass).transportResidue
        transport.phase residue =
      residue.reflect := by
  unfold DeflectionPath.transportResidue
  rw [transport.defectHolonomy bypass]
  rfl

end Mathematics.SemiLocalDefect.ResidueDeflection
