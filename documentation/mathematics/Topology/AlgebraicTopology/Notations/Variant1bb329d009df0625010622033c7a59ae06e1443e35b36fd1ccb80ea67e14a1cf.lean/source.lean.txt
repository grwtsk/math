-- corpus-organization-transform:v1
-- Mathematical subject: Topology.AlgebraicTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.AlgebraicTopology.AlternatingFaceMapComplex.Variant2209eb59a429ed5db9b355fa5d2a093153344538ec2993d188d19b17913a4fbe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2209eb59a429ed5db9b355fa5d2a093153344538ec2993d188d19b17913a4fbe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.AlgebraicTopology.SourceCorpus.AlternatingFaceMapComplex.Variant2209eb59a429ed5db9b355fa5d2a093153344538ec2993d188d19b17913a4fbe","mathematical_subject":"Topology.AlgebraicTopology","original_sha256":"2209eb59a429ed5db9b355fa5d2a093153344538ec2993d188d19b17913a4fbe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicTopology/DoldKan/Notations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.AlgebraicTopology.AlternatingFaceMapComplex

/-!

# Notations for the Dold-Kan equivalence

This file defines the notation `K[X] : ChainComplex C ℕ` for the alternating face
map complex of `(X : SimplicialObject C)` where `C` is a preadditive category, as well
as `N[X]` for the normalized subcomplex in the case `C` is an abelian category.

(See `Equivalence.lean` for the general strategy of proof of the Dold-Kan equivalence.)

-/



namespace GRWTSK.Topology.AlgebraicTopology.AlternatingFaceMapComplex.Variant2209eb59a429ed5db9b355fa5d2a093153344538ec2993d188d19b17913a4fbe

@[inherit_doc]
scoped[DoldKan] notation "K[" X "]" => AlgebraicTopology.AlternatingFaceMapComplex.obj X

@[inherit_doc]
scoped[DoldKan] notation "N[" X "]" => AlgebraicTopology.NormalizedMooreComplex.obj X
