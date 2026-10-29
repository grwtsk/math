-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.ClassicalGeometry.EuclideanGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Theorems100InverseTriangleSum.Variant2c8dbee14aab1eb5ce6fbfbb72bd2be4d69fac8617de66e69187d2612b1d3c6f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2c8dbee14aab1eb5ce6fbfbb72bd2be4d69fac8617de66e69187d2612b1d3c6f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.EuclideanGeometry.SourceCorpus.Theorems100InverseTriangleSum.Variant2c8dbee14aab1eb5ce6fbfbb72bd2be4d69fac8617de66e69187d2612b1d3c6f","mathematical_subject":"Geometry.EuclideanGeometry","original_sha256":"2c8dbee14aab1eb5ce6fbfbb72bd2be4d69fac8617de66e69187d2612b1d3c6f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Archive/Wiedijk100Theorems/InverseTriangleSum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jalex Stark, Yury Kudryashov
-/
import Mathlib.Algebra.BigOperators.Group.Finset.Powerset
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

/-!
# Sum of the Reciprocals of the Triangular Numbers

This file proves Theorem 42 from the [100 Theorems List](https://www.cs.ru.nl/~freek/100/).

We interpret “triangular numbers” as naturals of the form $\frac{k(k+1)}{2}$ for natural `k`.
We prove that the sum of the reciprocals of the first `n` triangular numbers is $2 - \frac2n$.

## Tags

discrete_sum
-/



namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Theorems100InverseTriangleSum.Variant2c8dbee14aab1eb5ce6fbfbb72bd2be4d69fac8617de66e69187d2612b1d3c6f

open Finset

/-- **Sum of the Reciprocals of the Triangular Numbers** -/
theorem Theorems100.inverse_triangle_sum :
    ∀ n, ∑ k ∈ range n, (2 : ℚ) / (k * (k + 1)) = if n = 0 then 0 else 2 - (2 : ℚ) / n := by
  refine sum_range_induction _ _ rfl ?_
  rintro (_ | _)
  · norm_num
  field_simp
  ring
