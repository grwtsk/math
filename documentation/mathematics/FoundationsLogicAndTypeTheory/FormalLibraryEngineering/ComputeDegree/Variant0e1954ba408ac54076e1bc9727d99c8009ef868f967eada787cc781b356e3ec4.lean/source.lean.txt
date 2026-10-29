-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatDegreeCLe.Variante0c2eadb7ab6a66884a9a9a0364a6386b6a48e843c36852f6ecddd530148988a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e0c2eadb7ab6a66884a9a9a0364a6386b6a48e843c36852f6ecddd530148988a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.NatDegreeCLe.Variante0c2eadb7ab6a66884a9a9a0364a6386b6a48e843c36852f6ecddd530148988a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e0c2eadb7ab6a66884a9a9a0364a6386b6a48e843c36852f6ecddd530148988a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/ComputeDegree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/

import Mathlib.Data.Polynomial.Degree.Definitions

/-!
###  Simple lemmas about `natDegree`

The lemmas in this section all have the form `natDegree <some form of cast> ≤ 0`.
Their proofs are weakenings of the stronger lemmas `natDegree <same> = 0`.
These are the lemmas called by `compute_degree_le` on (almost) all the leaves of its recursion.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatDegreeCLe.Variante0c2eadb7ab6a66884a9a9a0364a6386b6a48e843c36852f6ecddd530148988a

open Polynomial

namespace Mathlib.Tactic.ComputeDegree

section leaf_lemmas

variable {R : Type*}

section semiring
variable [Semiring R]

theorem natDegree_C_le (a : R) : natDegree (C a) ≤ 0 := (natDegree_C a).le
theorem natDegree_nat_cast_le (n : ℕ) : natDegree (n : R[X]) ≤ 0 := (natDegree_nat_cast _).le
theorem natDegree_zero_le : natDegree (0 : R[X]) ≤ 0 := natDegree_zero.le
theorem natDegree_one_le : natDegree (1 : R[X]) ≤ 0 := natDegree_one.le

end semiring

variable [Ring R] in
theorem natDegree_int_cast_le (n : ℤ) : natDegree (n : R[X]) ≤ 0 := (natDegree_int_cast _).le

end leaf_lemmas

end Mathlib.Tactic.ComputeDegree
