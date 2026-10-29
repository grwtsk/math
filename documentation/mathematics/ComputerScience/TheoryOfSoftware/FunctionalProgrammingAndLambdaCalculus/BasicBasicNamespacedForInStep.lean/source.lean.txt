-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ForInStepBindList.Variant508f75ccd33a72ae6fbbe4710d92dd3582103dd5ad46a737ba83b59d4658e74e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"508f75ccd33a72ae6fbbe4710d92dd3582103dd5ad46a737ba83b59d4658e74e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ForInStepBindList.Variant508f75ccd33a72ae6fbbe4710d92dd3582103dd5ad46a737ba83b59d4658e74e","mathematical_subject":"Computation.DataStructures","original_sha256":"508f75ccd33a72ae6fbbe4710d92dd3582103dd5ad46a737ba83b59d4658e74e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Control/ForInStep/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/

/-! # Additional definitions on `ForInStep` -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ForInStepBindList.Variant508f75ccd33a72ae6fbbe4710d92dd3582103dd5ad46a737ba83b59d4658e74e

/--
This is similar to a monadic `bind` operator, except that the two type parameters have to be
the same, which prevents putting a monad instance on `ForInStepT m α := m (ForInStep α)`.
-/
@[inline] protected def ForInStep.bind [Monad m]
    (a : ForInStep α) (f : α → m (ForInStep α)) : m (ForInStep α) :=
  match a with
  | .done a => return .done a
  | .yield a => f a

@[inherit_doc ForInStep.bind] protected abbrev ForInStep.bindM [Monad m]
    (a : m (ForInStep α)) (f : α → m (ForInStep α)) : m (ForInStep α) := a >>= (·.bind f)

/--
Get the value out of a `ForInStep`.
This is usually done at the end of a `forIn` loop to scope the early exit to the loop body.
-/
@[inline] def ForInStep.run : ForInStep α → α
  | .done a
  | .yield a => a

/-- Applies function `f` to each element of a list to accumulate a `ForInStep` value. -/
def ForInStep.bindList [Monad m]
      (f : α → β → m (ForInStep β)) : List α → ForInStep β → m (ForInStep β)
  | [], s => pure s
  | a::l, s => s.bind fun b => f a b >>= (·.bindList f l)
