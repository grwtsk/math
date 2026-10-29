-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanSourceInfoMkCanonical.Variant528d2ca224df9e2bdef0a1b90e8b15f1dc466330e6759ad80f0d805e95030fbc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"528d2ca224df9e2bdef0a1b90e8b15f1dc466330e6759ad80f0d805e95030fbc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LeanSourceInfoMkCanonical.Variant528d2ca224df9e2bdef0a1b90e8b15f1dc466330e6759ad80f0d805e95030fbc","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"528d2ca224df9e2bdef0a1b90e8b15f1dc466330e6759ad80f0d805e95030fbc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/ProofWidgets/Demos/Macro.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import ProofWidgets.Component.HtmlDisplay


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanSourceInfoMkCanonical.Variant528d2ca224df9e2bdef0a1b90e8b15f1dc466330e6759ad80f0d805e95030fbc

public meta section

-- See the `Jsx.lean` demo for more about JSX.
open scoped ProofWidgets.Jsx

/-! # Widgets in macros

Macros may expand to commands or terms that end up saving widget info,
but the syntax to which the widget info is associated must be marked as `canonical`
for the widget to be displayed.
-/

def Lean.SourceInfo.mkCanonical : SourceInfo → SourceInfo
  | .synthetic s e _ => .synthetic s e true
  | si => si

def Lean.Syntax.mkInfoCanonical : Syntax → Syntax
  | .missing => .missing
  | .node i k a => .node i.mkCanonical k a
  | .atom i v => .atom i.mkCanonical v
  | .ident i r v p => .ident i.mkCanonical r v p

def Lean.TSyntax.mkInfoCanonical : TSyntax k → TSyntax k :=
  (.mk ·.raw.mkInfoCanonical)

macro "#browse " src:term : command =>
  Lean.TSyntax.mkInfoCanonical <$>
    `(#html <iframe src={$src} width="100%" height="600px" />)

#browse "https://leanprover-community.github.io/"
-- Do you like recursion?
#browse "https://lean.math.hhu.de"
