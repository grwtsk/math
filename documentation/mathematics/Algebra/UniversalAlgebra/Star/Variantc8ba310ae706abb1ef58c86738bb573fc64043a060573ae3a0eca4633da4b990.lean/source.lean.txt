-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Star.Variantbce90721bfadf4c4e37ab77a1f13b1b5cf26e0e8de88f3d8c3803595545596a1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bce90721bfadf4c4e37ab77a1f13b1b5cf26e0e8de88f3d8c3803595545596a1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Star.Variantbce90721bfadf4c4e37ab77a1f13b1b5cf26e0e8de88f3d8c3803595545596a1","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"bce90721bfadf4c4e37ab77a1f13b1b5cf26e0e8de88f3d8c3803595545596a1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Real/Star.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Floris van Doorn, Yury Kudryashov
-/
import Mathlib.Algebra.Star.Basic
import Mathlib.Data.Real.Basic

/-!
# The real numbers are a `*`-ring, with the trivial `*`-structure
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Star.Variantbce90721bfadf4c4e37ab77a1f13b1b5cf26e0e8de88f3d8c3803595545596a1

/-- The real numbers are a `*`-ring, with the trivial `*`-structure. -/
instance : StarRing ℝ :=
  starRingOfComm

instance : TrivialStar ℝ :=
  ⟨fun _ => rfl⟩
