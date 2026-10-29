-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Qq.Variantb6fd267de2b3966f47d2a5d88f19c1b85dd580da04d012c392d9f0a62e9d29e3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b6fd267de2b3966f47d2a5d88f19c1b85dd580da04d012c392d9f0a62e9d29e3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Qq.Variantb6fd267de2b3966f47d2a5d88f19c1b85dd580da04d012c392d9f0a62e9d29e3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b6fd267de2b3966f47d2a5d88f19c1b85dd580da04d012c392d9f0a62e9d29e3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/Qq/QqTest/conjs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Qq

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Qq.Variantb6fd267de2b3966f47d2a5d88f19c1b85dd580da04d012c392d9f0a62e9d29e3

open Qq Lean Elab Meta Tactic

elab "print_conjs" : tactic => do
  for ldecl in ← getLCtx do
    if let some ty ← checkTypeQ (u := Level.one) ldecl.type q(Prop) then
      if let ~q($p ∧ $q) := ty then
        logInfo m!"left = {p}, right = {q}"

/--
info: left = true = true, right = False
-/
#guard_msgs in
example (_ : true ∧ False) : true := by
  print_conjs
  trivial
