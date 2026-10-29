-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RubiksProps.Variant15bfb0536ca32ec7f91921682a2e15e4709eaca6e895ad94450e5e97b21a2a49","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"15bfb0536ca32ec7f91921682a2e15e4709eaca6e895ad94450e5e97b21a2a49","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.RubiksProps.Variant15bfb0536ca32ec7f91921682a2e15e4709eaca6e895ad94450e5e97b21a2a49","mathematical_subject":"Computation.DataStructures","original_sha256":"15bfb0536ca32ec7f91921682a2e15e4709eaca6e895ad94450e5e97b21a2a49","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/ProofWidgets/Demos/Rubiks.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import ProofWidgets.Component.HtmlDisplay


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RubiksProps.Variant15bfb0536ca32ec7f91921682a2e15e4709eaca6e895ad94450e5e97b21a2a49

public meta section

open Lean ProofWidgets
open scoped ProofWidgets.Jsx

structure RubiksProps where
  seq : Array String := #[]
  deriving ToJson, FromJson, Inhabited

@[widget_module]
def Rubiks : Component RubiksProps where
  javascript := include_str ".." / ".." / "widget" / "js" / "rubiks.js"

def eg := #["L", "L", "D⁻¹", "U⁻¹", "L", "D", "D", "L", "U⁻¹", "R", "D", "F", "F", "D"]

#html <Rubiks seq={eg} />
