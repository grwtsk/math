-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Options.Variant0eef21246b077e9f939a842011274b83a0b5636cbc759b87985b57bb067f4fb9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0eef21246b077e9f939a842011274b83a0b5636cbc759b87985b57bb067f4fb9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Options.Variant0eef21246b077e9f939a842011274b83a0b5636cbc759b87985b57bb067f4fb9","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"0eef21246b077e9f939a842011274b83a0b5636cbc759b87985b57bb067f4fb9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Internal/UV/Loop.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Init.System.Promise


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Options.Variant0eef21246b077e9f939a842011274b83a0b5636cbc759b87985b57bb067f4fb9

@[expose] public section

namespace Std
namespace Internal
namespace UV
namespace Loop

/--
Options for configuring the event loop behavior.
-/
structure Options where
  /--
  Accumulate the amount of idle time the event loop spends in the event provider.
  -/
  accumulateIdleTime : Bool := False

  /--
  Block a SIGPROF signal when polling for new events. It's commonly used for unnecessary wakeups
  when using a sampling profiler.
  -/
  blockSigProfSignal : Bool := False

/--
Configures the event loop with the specified options.
-/
@[extern "lean_uv_event_loop_configure"]
opaque configure (options : Options) : BaseIO Unit

/--
Checks if the event loop is still active and processing events.
-/
@[extern "lean_uv_event_loop_alive"]
opaque alive : BaseIO Bool

end Loop
end UV
end Internal
end Std
