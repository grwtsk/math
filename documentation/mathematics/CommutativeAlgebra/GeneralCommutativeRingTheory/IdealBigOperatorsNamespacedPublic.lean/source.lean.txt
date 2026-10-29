-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.SumMem.Variant0e5bc2917a9058b600bea2dedf98a74cd8bf3db8518151efac6f6d851805155c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0e5bc2917a9058b600bea2dedf98a74cd8bf3db8518151efac6f6d851805155c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.SumMem.Variant0e5bc2917a9058b600bea2dedf98a74cd8bf3db8518151efac6f6d851805155c","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"0e5bc2917a9058b600bea2dedf98a74cd8bf3db8518151efac6f6d851805155c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Ideal/BigOperators.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau, Chris Hughes, Mario Carneiro
-/
module

public import Mathlib.Algebra.Module.Submodule.Basic
public import Mathlib.RingTheory.Ideal.Defs

/-!

# Big operators for ideals

This contains some results on the big operators `∑` and `∏` interacting with the `Ideal` type.
-/


namespace GRWTSK.Algebra.SumMem.Variant0e5bc2917a9058b600bea2dedf98a74cd8bf3db8518151efac6f6d851805155c

public section


universe u v w

variable {α : Type u}

namespace Ideal

variable [Semiring α] (I : Ideal α) {a : α}

theorem sum_mem (I : Ideal α) {ι : Type*} {t : Finset ι} {f : ι → α} :
    (∀ c ∈ t, f c ∈ I) → (∑ i ∈ t, f i) ∈ I :=
  Submodule.sum_mem I

end Ideal
