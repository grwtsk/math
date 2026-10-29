-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FCRS.Variant415b33339dc6a705a8c8c93130e34b41fa14aea7348a31cf4841f438048b22a1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"415b33339dc6a705a8c8c93130e34b41fa14aea7348a31cf4841f438048b22a1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FCRS.Variant415b33339dc6a705a8c8c93130e34b41fa14aea7348a31cf4841f438048b22a1","mathematical_subject":"Foundations.Unclassified","original_sha256":"415b33339dc6a705a8c8c93130e34b41fa14aea7348a31cf4841f438048b22a1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/docs/theorem-transfer/audits/internal-lean-adversarial-cycle-4/reproductions/04_dynamic_root_axiom.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FCRS.Variant415b33339dc6a705a8c8c93130e34b41fa14aea7348a31cf4841f438048b22a1

namespace FCRS.TheoremTransfer.NegativeChecks

open Lean Parser Elab Command

/-!
Both declarations are parsed from strings, so the source lexer sees neither an
`axiom` token nor any of its currently prohibited environment-mutation tokens.
Root-qualified names also fall outside the exported-environment scan's `FCRS`
prefix filter.
-/
run_cmd do
  let parsed := Parser.runParserCategory (← getEnv) `command
    "axiom _root_.cycle4HiddenRoot : False"
  match parsed with
  | .ok commandSyntax => elabCommand commandSyntax
  | .error message => throwError message

run_cmd do
  let parsed := Parser.runParserCategory (← getEnv) `command
    "theorem _root_.cycle4DerivedFalse : False := cycle4HiddenRoot"
  match parsed with
  | .ok commandSyntax => elabCommand commandSyntax
  | .error message => throwError message

#check _root_.cycle4DerivedFalse
#print axioms _root_.cycle4DerivedFalse

end FCRS.TheoremTransfer.NegativeChecks
