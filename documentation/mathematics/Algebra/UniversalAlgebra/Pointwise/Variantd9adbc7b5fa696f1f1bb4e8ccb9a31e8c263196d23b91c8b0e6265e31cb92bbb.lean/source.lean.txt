-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.SmulIoo.Variant61f3e1c8d84408441f6249fe83f3cd8a10ccc7350885fd82a124f3e3b929626a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"61f3e1c8d84408441f6249fe83f3cd8a10ccc7350885fd82a124f3e3b929626a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.SmulIoo.Variant61f3e1c8d84408441f6249fe83f3cd8a10ccc7350885fd82a124f3e3b929626a","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"61f3e1c8d84408441f6249fe83f3cd8a10ccc7350885fd82a124f3e3b929626a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Field/Pointwise.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Alex J. Best. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best, Yaël Dillies
-/
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Pointwise.Set.Scalar
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.OrderIso
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Order.Interval.Set.OrderIso

/-!
# Pointwise operations on ordered algebraic objects

This file contains lemmas about the effect of pointwise operations on sets with an order structure.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.SmulIoo.Variant61f3e1c8d84408441f6249fe83f3cd8a10ccc7350885fd82a124f3e3b929626a

open Function Set
open scoped Pointwise

namespace LinearOrderedField

variable {K : Type*} [Field K] [LinearOrder K] [IsStrictOrderedRing K] {a b r : K} (hr : 0 < r)
include hr

theorem smul_Ioo : r • Ioo a b = Ioo (r * a) (r * b) := (OrderIso.mulLeft₀ r hr).image_Ioo a b
theorem smul_Icc : r • Icc a b = Icc (r * a) (r * b) := (OrderIso.mulLeft₀ r hr).image_Icc a b
theorem smul_Ico : r • Ico a b = Ico (r * a) (r * b) := (OrderIso.mulLeft₀ r hr).image_Ico a b
theorem smul_Ioc : r • Ioc a b = Ioc (r * a) (r * b) := (OrderIso.mulLeft₀ r hr).image_Ioc a b
theorem smul_Ioi : r • Ioi a = Ioi (r * a) := (OrderIso.mulLeft₀ r hr).image_Ioi a
theorem smul_Iio : r • Iio a = Iio (r * a) := (OrderIso.mulLeft₀ r hr).image_Iio a
theorem smul_Ici : r • Ici a = Ici (r * a) := (OrderIso.mulLeft₀ r hr).image_Ici a
theorem smul_Iic : r • Iic a = Iic (r * a) := (OrderIso.mulLeft₀ r hr).image_Iic a

end LinearOrderedField
