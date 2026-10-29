-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant917f1b7f16242946b10fb5c4e08ccf4a772636f626fdec1d6906d70115660cd8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"917f1b7f16242946b10fb5c4e08ccf4a772636f626fdec1d6906d70115660cd8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant917f1b7f16242946b10fb5c4e08ccf4a772636f626fdec1d6906d70115660cd8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"917f1b7f16242946b10fb5c4e08ccf4a772636f626fdec1d6906d70115660cd8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/Logic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant917f1b7f16242946b10fb5c4e08ccf4a772636f626fdec1d6906d70115660cd8

set_option aesop.check.all true

example : True := by
  aesop

example : Unit := by
  aesop

example : PUnit.{u} := by
  aesop

example (h : False) : α := by
  aesop

example (h : Empty) : α := by
  aesop

example (h : PEmpty.{u}) : α := by
  aesop
