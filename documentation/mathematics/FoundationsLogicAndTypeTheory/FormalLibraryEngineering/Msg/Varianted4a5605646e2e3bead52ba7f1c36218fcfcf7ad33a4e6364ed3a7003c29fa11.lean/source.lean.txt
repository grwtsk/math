-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Decls.Variant3dad15d20edd45d64467c98b1a8385ac57dbb103bd4cbc8e0e68e1e1517dda0d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3dad15d20edd45d64467c98b1a8385ac57dbb103bd4cbc8e0e68e1e1517dda0d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Decls.Variant3dad15d20edd45d64467c98b1a8385ac57dbb103bd4cbc8e0e68e1e1517dda0d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3dad15d20edd45d64467c98b1a8385ac57dbb103bd4cbc8e0e68e1e1517dda0d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/importGraph/ImportGraphTest/Widget/GoToModule/Msg.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import ImportGraphTest.Widget.GoToModule.Decls
public meta import Lean.Elab.Command
public meta import ImportGraph.Widget.GoToModule

-- To load declaration ranges under `lake build` (usually only present in the server):
import all ImportGraphTest.Widget.GoToModule.Decls


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Decls.Variant3dad15d20edd45d64467c98b1a8385ac57dbb103bd4cbc8e0e68e1e1517dda0d

open ImportGraph Widget Lean Elab Command GoToModule

elab "#go_to" : command => liftCoreM do
  let msgs := [
    ← goToModule `ImportGraphTest.Widget.GoToModule.Decls,
    -- Note that Lsp positions are 0-indexed, so this should show up as line 4
    ← goToModule `ImportGraphTest.Widget.GoToModule.Decls (pos := ⟨3,7⟩)
      (overrideText := "Some module"),
    m!"end of `bar`:",
    ← goToModuleOfDecl ``bar,
    m!"end of `bar` (last declaration):",
    ← goToModuleOfDecls #[``bar, ``foo] (.end true),
    m!"line after `bar`:",
    ← goToModuleOfDecls #[``bar, ``foo] (.end false),
    m!"line before `foo`:",
    ← goToModuleOfDecls #[``bar, ``foo] (.start true),
    m!"start of `foo`:",
    ← goToModuleOfDecls #[``bar, ``foo] (.start false),
  ]
  logInfo <| m!"\n".joinSep msgs

-- Note that these positions are only visible in fallback `MessageData`.
/--
info: ImportGraphTest.Widget.GoToModule.Decls (1:0)
Some module (4:7)
end of `bar`:
ImportGraphTest.Widget.GoToModule.Decls (14:0)
end of `bar` (last declaration):
ImportGraphTest.Widget.GoToModule.Decls (14:0)
line after `bar`:
ImportGraphTest.Widget.GoToModule.Decls (13:16)
line before `foo`:
ImportGraphTest.Widget.GoToModule.Decls (8:0)
start of `foo`:
ImportGraphTest.Widget.GoToModule.Decls (9:0)
-/
#guard_msgs in
#go_to
