-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.TraceRestrictEqOfForallMem.Variant21d2a5121ca566d4d653041860d87958b0c4dcefbf073b0284ea4939a6f8243d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"21d2a5121ca566d4d653041860d87958b0c4dcefbf073b0284ea4939a6f8243d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.TraceRestrictEqOfForallMem.Variant21d2a5121ca566d4d653041860d87958b0c4dcefbf073b0284ea4939a6f8243d","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"21d2a5121ca566d4d653041860d87958b0c4dcefbf073b0284ea4939a6f8243d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/PID.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.LinearAlgebra.Trace
import Mathlib.LinearAlgebra.FreeModule.PID
import Mathlib.LinearAlgebra.FreeModule.Finite.Basic

/-!
# Linear maps of modules with coefficients in a principal ideal domain

Since a submodule of a free module over a PID is free, certain constructions which are often
developed only for vector spaces may be generalised to any module with coefficients in a PID.

This file is a location for such results and exists to avoid making large parts of the linear
algebra import hierarchy have to depend on the theory of PIDs.

## Main results:
* `LinearMap.trace_restrict_eq_of_forall_mem`

-/


namespace GRWTSK.Algebra.LinearAlgebra.TraceRestrictEqOfForallMem.Variant21d2a5121ca566d4d653041860d87958b0c4dcefbf073b0284ea4939a6f8243d

namespace LinearMap

variable {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M]
  [Module.Finite R M] [Module.Free R M]

/-- If a linear endomorphism of a (finite, free) module `M` takes values in a submodule `p ⊆ M`,
then the trace of its restriction to `p` is equal to its trace on `M`. -/
lemma trace_restrict_eq_of_forall_mem [IsDomain R] [IsPrincipalIdealRing R]
    (p : Submodule R M) (f : M →ₗ[R] M)
    (hf : ∀ x, f x ∈ p) (hf' : ∀ x ∈ p, f x ∈ p := fun x _ ↦ hf x) :
    trace R p (f.restrict hf') = trace R M f := by
  let ι := Module.Free.ChooseBasisIndex R M
  obtain ⟨n, snf : Basis.SmithNormalForm p ι n⟩ := p.smithNormalForm (Module.Free.chooseBasis R M)
  rw [trace_eq_matrix_trace R snf.bM, trace_eq_matrix_trace R snf.bN]
  set A : Matrix (Fin n) (Fin n) R := toMatrix snf.bN snf.bN (f.restrict hf')
  set B : Matrix ι ι R := toMatrix snf.bM snf.bM f
  have aux : ∀ i, B i i ≠ 0 → i ∈ Set.range snf.f := fun i hi ↦ by
    contrapose! hi; exact snf.repr_eq_zero_of_notMem_range ⟨_, (hf _)⟩ hi
  change ∑ i, A i i = ∑ i, B i i
  rw [← Finset.sum_filter_of_ne (p := fun j ↦ j ∈ Set.range snf.f) (by simpa using aux)]
  simp [A, B]

end LinearMap
