-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Vec2Mod.Variant87978163852bacc9a2d3b323d7178f7bfb0f6c7895f05fe6584bd169fca4b150","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"87978163852bacc9a2d3b323d7178f7bfb0f6c7895f05fe6584bd169fca4b150","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Vec2Mod.Variant87978163852bacc9a2d3b323d7178f7bfb0f6c7895f05fe6584bd169fca4b150","mathematical_subject":"Foundations.Unclassified","original_sha256":"87978163852bacc9a2d3b323d7178f7bfb0f6c7895f05fe6584bd169fca4b150","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Shader/PhaseSweeperSpec.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Shader.BijectiveSplit
import Folder.Cellular.Phase

/-!
# Folder.Shader.PhaseSweeperSpec

Radiation role: shader-spec
BinaryMatrix spine: This module specifies the runtime phase sweeper as arithmetic over visible and residual data, not as a BinaryMatrix proof engine.
Ontology:
- shader.phase_sweeper
- shader.bijective_split
Pivot role: none
Zero typology: shell
Contract boundary: proved
Composite stack role: phase
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Vec2Mod.Variant87978163852bacc9a2d3b323d7178f7bfb0f6c7895f05fe6584bd169fca4b150

namespace Folder
namespace Shader

structure Vec2Mod (m : Nat) where
  x : ZMod m
  y : ZMod m

def symplecticPhase
    {m : Nat}
    (P Q : Vec2Mod m) : ZMod m :=
  P.x * Q.y - P.y * Q.x

structure PhaseSweepInput (m : Nat) where
  P : Vec2Mod m
  Q : Vec2Mod m
  rawAsNat : Nat

structure PhaseSweepOutput where
  visible_phase : Nat
  residual_fiber : Nat
  quant_step : Nat

def phaseSweepSplit
    (raw step : Nat)
    (hstep : 0 < step) :
    PhaseSweepOutput :=
  let S := split raw step hstep
  {
    visible_phase := S.visible
    residual_fiber := S.residual
    quant_step := step
  }

def phaseSweepReconstruct
    (O : PhaseSweepOutput) : Nat :=
  O.visible_phase * O.quant_step + O.residual_fiber

theorem phaseSweep_split_reconstruct
    (raw step : Nat)
    (hstep : 0 < step) :
    phaseSweepReconstruct (phaseSweepSplit raw step hstep) = raw := by
  simpa [phaseSweepReconstruct, phaseSweepSplit, reconstruct, split]
    using reconstruct_split raw step hstep

end Shader
end Folder
