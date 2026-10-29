-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.ClassicalGeometry.EuclideanGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Theorems100InverseTriangleSum.Variantf38d8e4051d60cbb25050bf9d94208bf88c9c1a3e67ec1990ed3bbb9933b2f7c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f38d8e4051d60cbb25050bf9d94208bf88c9c1a3e67ec1990ed3bbb9933b2f7c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.EuclideanGeometry.SourceCorpus.Theorems100InverseTriangleSum.Variantf38d8e4051d60cbb25050bf9d94208bf88c9c1a3e67ec1990ed3bbb9933b2f7c","mathematical_subject":"Geometry.EuclideanGeometry","original_sha256":"f38d8e4051d60cbb25050bf9d94208bf88c9c1a3e67ec1990ed3bbb9933b2f7c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Archive/Wiedijk100Theorems/InverseTriangleSum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Jalex Stark, Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jalex Stark, Yury Kudryashov
-/
module

public import Mathlib.Algebra.BigOperators.Group.Finset.Powerset
public import Mathlib.Basic.Real.Basic
public import Mathlib.Tactic.FieldSimp
public import Mathlib.Tactic.Positivity.Basic
public import Mathlib.Tactic.Ring

/-!
# Sum of the Reciprocals of the Triangular Numbers

This file proves Theorem 42 from the [100 Theorems List](https://www.cs.ru.nl/~freek/100/).

We interpret “triangular numbers” as naturals of the form $\frac{k(k+1)}{2}$ for natural `k`.
We prove that the sum of the reciprocals of the first `n` triangular numbers is $2 - \frac2n$.

## Tags

discrete_sum
-/


namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Theorems100InverseTriangleSum.Variantf38d8e4051d60cbb25050bf9d94208bf88c9c1a3e67ec1990ed3bbb9933b2f7c

open Finset

/-- **Sum of the Reciprocals of the Triangular Numbers** -/
public theorem Theorems100.inverse_triangle_sum (n : ℕ) :
    ∑ k ∈ range n, (2 : ℚ) / (k * (k + 1)) = if n = 0 then 0 else 2 - (2 : ℚ) / n := by
  apply sum_range_induction _ _ rfl
  rintro (_ | _)
  · norm_num
  · simp [field]
    ring_nf
    simp
