-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.PiIff.Variantd98a0918cb3d1c527ab7f79804bdf99c8245f7dcc8c797e9deb9370d2ecbeba8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d98a0918cb3d1c527ab7f79804bdf99c8245f7dcc8c797e9deb9370d2ecbeba8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.PiIff.Variantd98a0918cb3d1c527ab7f79804bdf99c8245f7dcc8c797e9deb9370d2ecbeba8","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"d98a0918cb3d1c527ab7f79804bdf99c8245f7dcc8c797e9deb9370d2ecbeba8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Etale/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.RingTheory.Smooth.Pi
import Mathlib.RingTheory.Unramified.Pi
import Mathlib.RingTheory.Etale.Basic

/-!

# Formal-étaleness of finite products of rings

## Main result

- `Algebra.FormallyEtale.pi_iff`: If `I` is finite, `Π i : I, A i` is `R`-formally-étale
  if and only if each `A i` is `R`-formally-étale.

-/


namespace GRWTSK.Algebra.PiIff.Variantd98a0918cb3d1c527ab7f79804bdf99c8245f7dcc8c797e9deb9370d2ecbeba8

universe u v

namespace Algebra.FormallyEtale

variable {R : Type (max u v)} {I : Type u} (A : I → Type (max u v))
variable [CommRing R] [∀ i, CommRing (A i)] [∀ i, Algebra R (A i)]

theorem pi_iff [Finite I] :
    FormallyEtale R (Π i, A i) ↔ ∀ i, FormallyEtale R (A i) := by
  simp_rw [FormallyEtale.iff_unramified_and_smooth, forall_and]
  rw [FormallyUnramified.pi_iff A, FormallySmooth.pi_iff A]

instance [Finite I] [∀ i, FormallyEtale R (A i)] : FormallyEtale R (Π i, A i) :=
  .of_unramified_and_smooth

end Algebra.FormallyEtale
