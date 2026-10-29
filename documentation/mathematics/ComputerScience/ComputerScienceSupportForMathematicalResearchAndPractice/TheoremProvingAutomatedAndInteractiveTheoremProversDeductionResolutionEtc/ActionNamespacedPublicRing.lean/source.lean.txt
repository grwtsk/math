-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ring.Variant5330941c1d8f34553ea07d4f2034804dab9e0abb6b2c70c8463ca979bb924cec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5330941c1d8f34553ea07d4f2034804dab9e0abb6b2c70c8463ca979bb924cec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Ring.Variant5330941c1d8f34553ea07d4f2034804dab9e0abb6b2c70c8463ca979bb924cec","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5330941c1d8f34553ea07d4f2034804dab9e0abb6b2c70c8463ca979bb924cec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/CommRing/Action.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Action
import Lean.Meta.Tactic.Grind.Arith.CommRing.EqCnstr

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ring.Variant5330941c1d8f34553ea07d4f2034804dab9e0abb6b2c70c8463ca979bb924cec

namespace Lean.Meta.Grind.Action

/-- Ring solver action. -/
public def ring : Action :=
  solverAction Arith.CommRing.check `(grind| ring)

end Lean.Meta.Grind.Action
