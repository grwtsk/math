-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.FstStar.Variant76128e8e65a144c1249caf48af1d82b4862e5226c05ce5879c32a37cc0d6f0a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76128e8e65a144c1249caf48af1d82b4862e5226c05ce5879c32a37cc0d6f0a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.FstStar.Variant76128e8e65a144c1249caf48af1d82b4862e5226c05ce5879c32a37cc0d6f0a3","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"76128e8e65a144c1249caf48af1d82b4862e5226c05ce5879c32a37cc0d6f0a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Star/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Ring.Prod
import Mathlib.Algebra.Star.Basic

/-!
# `Star` on product types

We put a `Star` structure on product types that operates elementwise.
-/



namespace GRWTSK.Algebra.UniversalAlgebra.FstStar.Variant76128e8e65a144c1249caf48af1d82b4862e5226c05ce5879c32a37cc0d6f0a3

universe u v w

variable {R : Type u} {S : Type v}

namespace Prod

instance [Star R] [Star S] : Star (R × S) where star x := (star x.1, star x.2)

@[simp]
theorem fst_star [Star R] [Star S] (x : R × S) : (star x).1 = star x.1 :=
  rfl

@[simp]
theorem snd_star [Star R] [Star S] (x : R × S) : (star x).2 = star x.2 :=
  rfl

theorem star_def [Star R] [Star S] (x : R × S) : star x = (star x.1, star x.2) :=
  rfl

instance [Star R] [Star S] [TrivialStar R] [TrivialStar S] : TrivialStar (R × S) where
  star_trivial _ := Prod.ext (star_trivial _) (star_trivial _)

instance [InvolutiveStar R] [InvolutiveStar S] : InvolutiveStar (R × S) where
  star_involutive _ := Prod.ext (star_star _) (star_star _)

instance [Mul R] [Mul S] [StarMul R] [StarMul S] : StarMul (R × S) where
  star_mul _ _ := Prod.ext (star_mul _ _) (star_mul _ _)

instance [AddMonoid R] [AddMonoid S] [StarAddMonoid R] [StarAddMonoid S] :
    StarAddMonoid (R × S) where
  star_add _ _ := Prod.ext (star_add _ _) (star_add _ _)

instance [NonUnitalNonAssocSemiring R] [NonUnitalNonAssocSemiring S] [StarRing R] [StarRing S] :
    StarRing (R × S) :=
  { inferInstanceAs (StarAddMonoid (R × S)),
    inferInstanceAs (StarMul (R × S)) with }

instance {α : Type w} [SMul α R] [SMul α S] [Star α] [Star R] [Star S]
    [StarModule α R] [StarModule α S] : StarModule α (R × S) where
  star_smul _ _ := Prod.ext (star_smul _ _) (star_smul _ _)

end Prod

theorem Units.embed_product_star [Monoid R] [StarMul R] (u : Rˣ) :
    Units.embedProduct R (star u) = star (Units.embedProduct R u) :=
  rfl
