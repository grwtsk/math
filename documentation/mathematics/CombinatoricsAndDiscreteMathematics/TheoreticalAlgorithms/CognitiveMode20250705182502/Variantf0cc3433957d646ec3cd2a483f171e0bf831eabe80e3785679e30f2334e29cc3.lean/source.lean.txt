-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CognitiveMode.Variant597be841cd384284362228b8cb83f267d489fceb50d47459ead84258a348a878","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"597be841cd384284362228b8cb83f267d489fceb50d47459ead84258a348a878","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CognitiveMode.Variant597be841cd384284362228b8cb83f267d489fceb50d47459ead84258a348a878","mathematical_subject":"Computation.DataStructures","original_sha256":"597be841cd384284362228b8cb83f267d489fceb50d47459ead84258a348a878","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/passthrough-server/.history/lean/cognition/Core/CognitiveMode_20250705182502.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
-- lean/cognition/Core/CognitiveMode.lean


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CognitiveMode.Variant597be841cd384284362228b8cb83f267d489fceb50d47459ead84258a348a878

namespace Cognition.Core

/--
`CognitiveMode` is a coarse classification of the agent’s current mental posture.

It reflects how the system interprets user behavior based on event patterns.
-/
inductive CognitiveMode
  /-- Actively typing or reading; default working mode. -/
  | focus
  /-- A pause suggests internal reflection. -/
  | reflect
  /-- A planning intention is detected in the prompt. -/
  | plan
  /-- High load detected; user likely needs help. -/
  | offload
  /-- User explicitly delegates control to the system. -/
  | delegate
  deriving DecidableEq, Repr

namespace CognitiveMode

/-- All known cognitive modes. -/
def all : List CognitiveMode :=
  [focus, reflect, plan, offload, delegate]

/-- Render a `CognitiveMode` as a human-readable string. -/
def toString : CognitiveMode → String
  | focus    => "Focus"
  | reflect  => "Reflect"
  | plan     => "Plan"
  | offload  => "Offload"
  | delegate => "Delegate"

instance : ToString CognitiveMode := ⟨toString⟩

end CognitiveMode

end Cognition.Core
