-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FromSource.Variantb501523f6c011f869b868e85163b97f64b94c1ece96c0c0cf9018f69cf21a273","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b501523f6c011f869b868e85163b97f64b94c1ece96c0c0cf9018f69cf21a273","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FromSource.Variantb501523f6c011f869b868e85163b97f64b94c1ece96c0c0cf9018f69cf21a273","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b501523f6c011f869b868e85163b97f64b94c1ece96c0c0cf9018f69cf21a273","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/importGraph/ImportGraphTest/ImportPretty.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import ImportGraph.Imports.FromSource



public meta import Lean.Elab.Command -- some comment

public meta import ImportGraph.Imports.Pretty


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FromSource.Variantb501523f6c011f869b868e85163b97f64b94c1ece96c0c0cf9018f69cf21a273

open ImportGraph Lean Elab Command

elab tk:"#pretty_current_imports " p:("without_public")? : command => do
  let (header, _) ← parseCurrentHeader
  let refs := headerToImportRefsWithWhitespace header
  let some (msg, _) ← liftCoreM <| Import.mkImportSuggestionMessage tk
    -- suggest `meta import Lean.Elab.Command` and `public import ImportGraph.Imports.Pretty`
    #[{ module := `Lean.Elab.Command, isMeta := true, isExported := p.isNone },
      { module := `ImportGraph.Imports.Pretty, isExported := true}]
    refs
    | throwError "Could not create message"
  logInfoAt tk msg

/--
info:
  public meta import I̵m̵p̵o̵r̵t̵G̵r̵a̵p̵h̵.̵I̵m̵p̵o̵r̵t̵s̵.̵F̵r̵o̵m̵S̵o̵u̵r̵c̵e̵
  ̵
  ̵
  ̵
  ̵p̵u̵b̵l̵i̵c̵ ̵m̵e̵t̵a̵ ̵i̵m̵p̵o̵r̵t̵ ̵Lean.Elab.Command -- some comment
  public m̵e̵t̵a̵ ̵import ImportGraph.Imports.Pretty
-/
#guard_msgs in
#pretty_current_imports

/--
info:
  [apply] public import ImportGraph.Imports.Pretty
  ⏎
  meta import Lean.Elab.Command
  ⏎
  /-
  Comments were present when importing `Lean.Elab.Command`, but this module is now imported differently as `meta import Lean.Elab.Command`.
  Decide if the following original comments still apply:
  ```
  public meta import Lean.Elab.Command -- some comment
  ```
  -/
-/
#guard_msgs in
#pretty_current_imports without_public
