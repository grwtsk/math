-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Instances.Variantfd96a38add77d2cdc7cbde3ac48f393ad1bf15cf37549a9b09e536b8f90d795a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd96a38add77d2cdc7cbde3ac48f393ad1bf15cf37549a9b09e536b8f90d795a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Instances.Variantfd96a38add77d2cdc7cbde3ac48f393ad1bf15cf37549a9b09e536b8f90d795a","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"fd96a38add77d2cdc7cbde3ac48f393ad1bf15cf37549a9b09e536b8f90d795a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Order/Group/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Algebra.Order.Group.Instances
import Mathlib.Algebra.Order.Monoid.Prod


namespace GRWTSK.Algebra.UniversalAlgebra.Instances.Variantfd96a38add77d2cdc7cbde3ac48f393ad1bf15cf37549a9b09e536b8f90d795a

#align_import algebra.order.group.prod from "leanprover-community/mathlib"@"ee0c179cd3c8a45aa5bffbf1b41d8dbede452865"

/-!
# Products of ordered commutative groups.
-/


variable {α : Type*}

namespace Prod

variable {G H : Type*}

@[to_additive]
instance [OrderedCommGroup G] [OrderedCommGroup H] : OrderedCommGroup (G × H) :=
  { Prod.instCommGroup, Prod.instPartialOrder G H, Prod.instOrderedCancelCommMonoid
    with }

namespace Lex

@[to_additive]
instance orderedCommGroup [OrderedCommGroup G] [OrderedCommGroup H] :
    OrderedCommGroup (G ×ₗ H) where
  mul_le_mul_left _ _ := mul_le_mul_left'

@[to_additive]
instance linearOrderedCommGroup [LinearOrderedCommGroup G] [LinearOrderedCommGroup H] :
    LinearOrderedCommGroup (G ×ₗ H) where
  __ := (inferInstance : LinearOrder (G ×ₗ H))
  mul_le_mul_left _ _ := mul_le_mul_left'

end Lex

end Prod
