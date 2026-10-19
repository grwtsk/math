-- corpus-organization-transform:v1
-- Mathematical subject: Computation.LeanMetaprogramming
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PPWithUniv.Variant3e35c855a31bdfe1c61e6262a7c46f88213b1eda1a345c6bf7f70ea8aaf31a5a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e35c855a31bdfe1c61e6262a7c46f88213b1eda1a345c6bf7f70ea8aaf31a5a","provenance":{"attribution":"Organization assisted by OpenAI Codex under R.A. Jacob Martone direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PPWithUniv.Variant3e35c855a31bdfe1c61e6262a7c46f88213b1eda1a345c6bf7f70ea8aaf31a5a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3e35c855a31bdfe1c61e6262a7c46f88213b1eda1a345c6bf7f70ea8aaf31a5a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/think/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - Robert\u2019s MacBook Pro/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/ToLevel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Tactic.PPWithUniv

/-! # `ToLevel` class

This module defines `Lean.ToLevel`, which is the `Lean.Level` analogue to `Lean.ToExpr`.

**Warning:** Import `Mathlib/Tactic/ToExpr.lean` instead of this one if you are writing `ToExpr`
instances. This ensures that you are using the universe polymorphic `ToExpr` instances that
override the ones from Lean 4 core.

-/


namespace FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PPWithUniv.Variant3e35c855a31bdfe1c61e6262a7c46f88213b1eda1a345c6bf7f70ea8aaf31a5a

namespace Lean

attribute [pp_with_univ] toLevel

end Lean
