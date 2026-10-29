-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Message.Variantddc80c66572353481babedb67e8286ef3edd0064debf98c60a230d3b1685aa1f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ddc80c66572353481babedb67e8286ef3edd0064debf98c60a230d3b1685aa1f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Message.Variantddc80c66572353481babedb67e8286ef3edd0064debf98c60a230d3b1685aa1f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ddc80c66572353481babedb67e8286ef3edd0064debf98c60a230d3b1685aa1f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Lean/Message.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.Init
import Lean.Message

/-!
# Additional operations on MessageData and related types
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Message.Variantddc80c66572353481babedb67e8286ef3edd0064debf98c60a230d3b1685aa1f

open Lean Std MessageData

instance {α β : Type} [ToMessageData α] [ToMessageData β] : ToMessageData (α × β) :=
  ⟨fun x => paren <| toMessageData x.1 ++ ofFormat "," ++ Format.line ++ toMessageData x.2⟩
