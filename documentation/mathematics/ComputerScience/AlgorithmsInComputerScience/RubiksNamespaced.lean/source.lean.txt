-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RubiksProps.Varianta4726775a1eb70b1e1c49a0b6ea32172a7e7448192e987ead0118895108510ba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a4726775a1eb70b1e1c49a0b6ea32172a7e7448192e987ead0118895108510ba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.RubiksProps.Varianta4726775a1eb70b1e1c49a0b6ea32172a7e7448192e987ead0118895108510ba","mathematical_subject":"Computation.DataStructures","original_sha256":"a4726775a1eb70b1e1c49a0b6ea32172a7e7448192e987ead0118895108510ba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/proofwidgets/ProofWidgets/Demos/Rubiks.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ProofWidgets.Component.HtmlDisplay


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RubiksProps.Varianta4726775a1eb70b1e1c49a0b6ea32172a7e7448192e987ead0118895108510ba

open Lean ProofWidgets
open scoped ProofWidgets.Jsx

structure RubiksProps where
  seq : Array String := #[]
  deriving ToJson, FromJson, Inhabited

@[widget_module]
def Rubiks : Component RubiksProps where
  javascript := include_str ".." / ".." / "build" / "js" / "rubiks.js"

def eg := #["L", "L", "D⁻¹", "U⁻¹", "L", "D", "D", "L", "U⁻¹", "R", "D", "F", "F", "D"]

#html <Rubiks seq={eg} />
