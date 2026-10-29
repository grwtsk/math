-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MaximalDefect.Variantcac476c303287dfbe6c46cc19ee6b00f74922b518c30c54b05dd73183b89b254","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cac476c303287dfbe6c46cc19ee6b00f74922b518c30c54b05dd73183b89b254","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.MaximalDefect.Variantcac476c303287dfbe6c46cc19ee6b00f74922b518c30c54b05dd73183b89b254","mathematical_subject":"Algebra.OrderTheory","original_sha256":"cac476c303287dfbe6c46cc19ee6b00f74922b518c30c54b05dd73183b89b254","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/broad-incremental-20261007T104512Z/portfolio-four32-focused-record-recovery/bytes/cac476c303287dfbe6c46cc19ee6b00f74922b518c30c54b05dd73183b89b254--Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MaximalDefect


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MaximalDefect.Variantcac476c303287dfbe6c46cc19ee6b00f74922b518c30c54b05dd73183b89b254

set_option autoImplicit false
set_option relaxedAutoImplicit false
-- This diagnostic file intentionally prints declarations. The independently
-- compiled source module is checked with the full standard linter set.
set_option linter.hashCommand false

open FormalResearch.PositiveAtlas.MaximalDefect

#print Supermodular
#print IsMaximizer
#check @maximizers_inf_sup
#check @exists_unique_greatest_maximizer_of_attained
#check @exists_unique_greatest_maximizer
#check @greatest_maximizer_fixed
#check @exists_greatest_maximizer_fixed
#check @bound_of_fixed_points_bound
#check @finset_exists_greatest_maximizer_fixed
#check @canonical_selection_does_not_bound_defect
#check @finite_values_do_not_ensure_greatest_maximizer

#print axioms maximizers_inf_sup
#print axioms exists_unique_greatest_maximizer_of_attained
#print axioms exists_unique_greatest_maximizer
#print axioms greatest_maximizer_fixed
#print axioms exists_greatest_maximizer_fixed
#print axioms bound_of_fixed_points_bound
#print axioms finset_exists_greatest_maximizer_fixed
#print axioms canonical_selection_does_not_bound_defect
#print axioms finite_values_do_not_ensure_greatest_maximizer

-- Semantically expanded consumer type: no source conjecture occurs here.
example {α : Type*} [Lattice α] [Finite α] [Nonempty α]
    {ι : Type*} {f : α → ℝ}
    (hsuper : ∀ x y, f x + f y ≤ f (x ⊓ y) + f (x ⊔ y))
    (symmetry : ι → α ≃o α)
    (hpreserve : ∀ i x, f (symmetry i x) = f x) (C : ℝ)
    (hbound : ∀ x, (∀ i, symmetry i x = x) → f x ≤ C) :
    ∀ x, f x ≤ C :=
  bound_of_fixed_points_bound hsuper symmetry hpreserve C hbound
