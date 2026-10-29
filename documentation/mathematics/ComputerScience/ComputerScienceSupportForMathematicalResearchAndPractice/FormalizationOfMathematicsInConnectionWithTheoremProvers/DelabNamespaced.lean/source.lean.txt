-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CustomProps.Variant428f1dd3350de2308ae53b9f83ca477e830d7c006fd89cd670ea747918d99020","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"428f1dd3350de2308ae53b9f83ca477e830d7c006fd89cd670ea747918d99020","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CustomProps.Variant428f1dd3350de2308ae53b9f83ca477e830d7c006fd89cd670ea747918d99020","mathematical_subject":"Foundations.Unclassified","original_sha256":"428f1dd3350de2308ae53b9f83ca477e830d7c006fd89cd670ea747918d99020","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/test/delab.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ProofWidgets.Data.Html


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CustomProps.Variant428f1dd3350de2308ae53b9f83ca477e830d7c006fd89cd670ea747918d99020

open scoped ProofWidgets.Jsx
open ProofWidgets.Html Lean


/-- info: <span id="greeting">Hello world</span> : ProofWidgets.Html -/
#guard_msgs in
#check <span id="greeting">Hello world</span>

/-- info: <span>Hello interpolated world</span> : ProofWidgets.Html -/
#guard_msgs in
#check <span>Hello {.text "interpolated"} world</span>

/-- info: <span>Hello {text "<>"} world</span> : ProofWidgets.Html -/
#guard_msgs in
#check <span>Hello {.text "<>"} world</span>

/-- info: <hr/> : ProofWidgets.Html -/
#guard_msgs in
#check <hr />

variable (attrs children)
/-- info: <div {...attrs}>{...children}</div> : ProofWidgets.Html -/
#guard_msgs in
#check element "div" attrs children

structure CustomProps where
  val : Nat
  str : String
  deriving Server.RpcEncodable

def CustomComponent : ProofWidgets.Component CustomProps where
  javascript := ""

-- TODO: spacing between attributes
/-- info: <div><CustomComponent val={2}str={"3"}>Content</CustomComponent></div> : ProofWidgets.Html -/
#guard_msgs in
#check <div><CustomComponent val={2} str="3">Content</CustomComponent></div>

def ProdComponent : ProofWidgets.Component (Nat × Nat) where
  javascript := ""

/-- info: <div><ProdComponent {...(1, 2)}/></div> : ProofWidgets.Html -/
#guard_msgs in
#check <div><ProdComponent fst={1} snd={2} /></div>
/-- info: <div><ProdComponent {...(1, 2)}/></div> : ProofWidgets.Html -/
#guard_msgs in
#check <div><ProdComponent {...Prod.mk 1 2}/></div>
/--
info: <div><ProdComponent {...let __src := (1, 2);
          (__src.fst, 3)}/></div> : ProofWidgets.Html
-/
#guard_msgs in
#check <div><ProdComponent {...Prod.mk 1 2} snd={3}/></div>

-- interactive test: check that the hovers in the infoview on subexpressions are correct
#check <span id="test">Hello {.text "<>"} world<CustomComponent val={1} str="3" /></span>
