-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lia.Variantdcddfaabf749af472dd7142be3eafe34fdfc71d55ebf3eca721e2f4f9f95187a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dcddfaabf749af472dd7142be3eafe34fdfc71d55ebf3eca721e2f4f9f95187a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Lia.Variantdcddfaabf749af472dd7142be3eafe34fdfc71d55ebf3eca721e2f4f9f95187a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"dcddfaabf749af472dd7142be3eafe34fdfc71d55ebf3eca721e2f4f9f95187a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/Cutsat/Action.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Action
import Lean.Meta.Tactic.Grind.Arith.Cutsat.Search

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lia.Variantdcddfaabf749af472dd7142be3eafe34fdfc71d55ebf3eca721e2f4f9f95187a

namespace Lean.Meta.Grind.Action

/-- Linear integer arithmetic action. -/
public def lia : Action :=
  terminalAction Arith.Cutsat.check `(grind| lia)

end Lean.Meta.Grind.Action
