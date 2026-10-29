-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variante594acbad5c679fa97c86e6916e3a5dfe17e49972104d909ea22df2bc2739476","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e594acbad5c679fa97c86e6916e3a5dfe17e49972104d909ea22df2bc2739476","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variante594acbad5c679fa97c86e6916e3a5dfe17e49972104d909ea22df2bc2739476","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e594acbad5c679fa97c86e6916e3a5dfe17e49972104d909ea22df2bc2739476","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/ElabConfig.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variante594acbad5c679fa97c86e6916e3a5dfe17e49972104d909ea22df2bc2739476

set_option aesop.check.all true

/-- error: `noSuchOption` is not a field of structure `Aesop.Options` -/
#guard_msgs in
example : True := by
  aesop (config := { noSuchOption := true })

/-- error: `noSuchOption` is not a field of structure `Lean.Meta.Simp.ConfigCtx` -/
#guard_msgs in
example : True := by
  aesop (simp_config := { noSuchOption := true })
