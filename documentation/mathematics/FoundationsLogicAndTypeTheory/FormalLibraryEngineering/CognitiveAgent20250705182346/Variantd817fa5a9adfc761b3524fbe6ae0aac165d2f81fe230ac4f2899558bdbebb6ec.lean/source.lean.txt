-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CognitiveAgent.Variantfae521909fc20dcabf6418987482af3d61864c2e5ac7c55bdc80214ca20fc765","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fae521909fc20dcabf6418987482af3d61864c2e5ac7c55bdc80214ca20fc765","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CognitiveAgent.Variantfae521909fc20dcabf6418987482af3d61864c2e5ac7c55bdc80214ca20fc765","mathematical_subject":"Foundations.Unclassified","original_sha256":"fae521909fc20dcabf6418987482af3d61864c2e5ac7c55bdc80214ca20fc765","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/passthrough-server/.history/lean/cognition/Agents/CognitiveAgent_20250705182346.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
-- lean/cognition/Agents/CognitiveAgent.lean
import cognition.Core.UserInputEvent
import cognition.Core.CognitiveState
import cognition.Dialogue.DialogueContext
import cognition.Agents.FlowProfile


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CognitiveAgent.Variantfae521909fc20dcabf6418987482af3d61864c2e5ac7c55bdc80214ca20fc765

namespace Cognition.Agents

/--
A `CognitiveAgent` is a stateful cognitive entity that:
- perceives user input,
- decides whether to respond,
- generates a plan,
- critiques flow alignment,
- and acts on a plan.

This trait allows for composable, swappable GPT-like agents.
-/
class CognitiveAgent (α : Type) where
  /-- Perceive an external user input and possibly mutate internal state. -/
  perceive : α → UserInputEvent → α

  /-- Determine if the agent is in a mode where it should respond. -/
  shouldRespond : α → Bool

  /-- Generate a plan (text) given a user prompt and optional dialogue context. -/
  plan : α → (prompt : String) → (ctx : Option DialogueContext) → (thread : Option String) → Option String

  /-- Critique the current dialogue flow versus a target profile.
      Returns a possibly compressed dialogue context and similarity score. -/
  critiqueFlow : α → DialogueContext → FlowProfile → Option (DialogueContext × Float)

  /-- Perform an action based on a plan, producing output text. -/
  act : α → (plan : String) → Option String

end Cognition.Agents
