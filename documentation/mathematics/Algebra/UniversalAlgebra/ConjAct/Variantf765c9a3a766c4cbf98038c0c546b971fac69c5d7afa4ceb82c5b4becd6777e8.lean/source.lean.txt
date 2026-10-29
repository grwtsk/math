-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.GroupWithZero.Variante03b626a3789a92f3892b299d5f17db4a333958a29a38021dd7ff2fa1fb8b7b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e03b626a3789a92f3892b299d5f17db4a333958a29a38021dd7ff2fa1fb8b7b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.GroupWithZero.Variante03b626a3789a92f3892b299d5f17db4a333958a29a38021dd7ff2fa1fb8b7b7","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"e03b626a3789a92f3892b299d5f17db4a333958a29a38021dd7ff2fa1fb8b7b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/GroupWithZero/Action/ConjAct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.GroupTheory.GroupAction.ConjAct

/-!
# Conjugation action of a group with zero on itself
-/


namespace GRWTSK.Algebra.UniversalAlgebra.GroupWithZero.Variante03b626a3789a92f3892b299d5f17db4a333958a29a38021dd7ff2fa1fb8b7b7

assert_not_exists Ring

variable {α G₀ : Type*}

namespace ConjAct
variable [GroupWithZero G₀]

instance : GroupWithZero (ConjAct G₀) := ‹GroupWithZero G₀›

@[simp] lemma ofConjAct_zero : ofConjAct 0 = (0 : G₀) := rfl
@[simp] lemma toConjAct_zero : toConjAct (0 : G₀) = 0 := rfl

instance mulAction₀ : MulAction (ConjAct G₀) G₀ where
  one_smul := by simp [smul_def]
  mul_smul := by simp [smul_def, mul_assoc]

instance smulCommClass₀ [SMul α G₀] [SMulCommClass α G₀ G₀] [IsScalarTower α G₀ G₀] :
    SMulCommClass α (ConjAct G₀) G₀ where
  smul_comm a ug g := by rw [smul_def, smul_def, mul_smul_comm, smul_mul_assoc]

instance smulCommClass₀' [SMul α G₀] [SMulCommClass G₀ α G₀] [IsScalarTower α G₀ G₀] :
    SMulCommClass (ConjAct G₀) α G₀ :=
  haveI := SMulCommClass.symm G₀ α G₀
  .symm ..

end ConjAct
