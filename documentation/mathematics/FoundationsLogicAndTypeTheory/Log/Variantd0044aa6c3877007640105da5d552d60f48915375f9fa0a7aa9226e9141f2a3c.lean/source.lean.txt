-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.Log.Variant69b42e0f812b41c504cff5c8b632c6000a822220390024dab7a02f36bf97d1f7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"69b42e0f812b41c504cff5c8b632c6000a822220390024dab7a02f36bf97d1f7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Log.Variant69b42e0f812b41c504cff5c8b632c6000a822220390024dab7a02f36bf97d1f7","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"69b42e0f812b41c504cff5c8b632c6000a822220390024dab7a02f36bf97d1f7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Nat/log.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Nat.Log

/-!
This used to fail (ran out of heartbeats) but with a new faster `Nat.logC` tagged `csimp`, it
succeeds.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.Log.Variant69b42e0f812b41c504cff5c8b632c6000a822220390024dab7a02f36bf97d1f7

/-- info: 10000000 -/
#guard_msgs in
#eval Nat.log 2 (2 ^ 10000000)
