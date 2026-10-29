-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.Uniform.Variant960410e613c262be015bc51558982c1090611c2f2a8a66343cb183dc0a2b335e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"960410e613c262be015bc51558982c1090611c2f2a8a66343cb183dc0a2b335e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.Uniform.Variant960410e613c262be015bc51558982c1090611c2f2a8a66343cb183dc0a2b335e","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"960410e613c262be015bc51558982c1090611c2f2a8a66343cb183dc0a2b335e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/InnerProductSpace/Convex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Zhouhang Zhou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Zhouhang Zhou, Sébastien Gouëzel, Frédéric Dupuis
-/
module

public import Mathlib.Analysis.Convex.Uniform
public import Mathlib.Analysis.InnerProductSpace.Basic

/-!
# Convexity properties of inner product spaces

## Main results

- `InnerProductSpace.toUniformConvexSpace`: an inner product space is a uniformly convex space.

## Tags

inner product space, Hilbert space, norm

-/


namespace GRWTSK.Analysis.FunctionalAnalysis.Uniform.Variant960410e613c262be015bc51558982c1090611c2f2a8a66343cb183dc0a2b335e

public section


noncomputable section

open Real
open LinearMap (BilinForm)

variable {F : Type*}
  [SeminormedAddCommGroup F] [InnerProductSpace ℝ F]

-- See note [lower instance priority]
instance (priority := 100) InnerProductSpace.toUniformConvexSpace : UniformConvexSpace F :=
  ⟨fun ε hε => by
    refine
      ⟨2 - √(4 - ε ^ 2), sub_pos_of_lt <| (sqrt_lt' zero_lt_two).2 ?_, fun x hx y hy hxy => ?_⟩
    · norm_num
      exact pow_pos hε _
    rw [sub_sub_cancel]
    refine le_sqrt_of_sq_le ?_
    rw [sq, eq_sub_iff_add_eq.2 (parallelogram_law_with_norm_mul ℝ x y), ← sq ‖x - y‖, hx, hy]
    ring_nf
    gcongr⟩
