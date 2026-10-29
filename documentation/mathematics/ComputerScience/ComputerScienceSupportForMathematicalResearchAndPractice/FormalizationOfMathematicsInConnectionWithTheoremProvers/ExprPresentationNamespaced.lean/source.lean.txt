-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Presenter.Variant8284158e02bbc67b45521193a25a3bc37055edc99d2743ef491a3b24671d1511","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8284158e02bbc67b45521193a25a3bc37055edc99d2743ef491a3b24671d1511","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Presenter.Variant8284158e02bbc67b45521193a25a3bc37055edc99d2743ef491a3b24671d1511","mathematical_subject":"Foundations.Unclassified","original_sha256":"8284158e02bbc67b45521193a25a3bc37055edc99d2743ef491a3b24671d1511","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/proofwidgets/ProofWidgets/Demos/ExprPresentation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ProofWidgets.Component.SelectionPanel
import ProofWidgets.Component.GoalTypePanel


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Presenter.Variant8284158e02bbc67b45521193a25a3bc37055edc99d2743ef491a3b24671d1511

open ProofWidgets Jsx

@[expr_presenter]
def presenter : ExprPresenter where
  userName := "With octopodes"
  layoutKind := .inline
  present e :=
    return Html.ofTHtml
      <span>
        {.text "🐙 "}<InteractiveCode fmt={← Lean.Widget.ppExprTagged e} />{.text " 🐙"}
      </span>

example : 2 + 2 = 4 ∧ 3 + 3 = 6 := by
  with_panel_widgets [GoalTypePanel]
    -- Place cursor here.
    constructor
    rfl
    rfl

example (h : 2 + 2 = 5) : 2 + 2 = 4 := by
  with_panel_widgets [SelectionPanel]
    -- Place cursor here and select subexpressions in the goal with shift-click.
    rfl
