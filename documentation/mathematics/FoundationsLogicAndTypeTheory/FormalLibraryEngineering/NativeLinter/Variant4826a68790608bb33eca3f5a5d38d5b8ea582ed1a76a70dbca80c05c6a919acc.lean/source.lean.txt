-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant791c07ef926c745a642d56b4500861cfd965477081a1e20a916208037178e1ba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"791c07ef926c745a642d56b4500861cfd965477081a1e20a916208037178e1ba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Tactic.Variant791c07ef926c745a642d56b4500861cfd965477081a1e20a916208037178e1ba","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"791c07ef926c745a642d56b4500861cfd965477081a1e20a916208037178e1ba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Tactic/Inclusion/NativeLinter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 David Ledvinka. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Ledvinka
-/
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Tactic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant791c07ef926c745a642d56b4500861cfd965477081a1e20a916208037178e1ba

open Inclusion

set_option linter.style.native true

/--
warning: Using `+native` is not allowed in mathlib: because it trusts the entire Lean compiler (not
just the Lean kernel), it could quite possibly be used to prove `False`.

Note: This linter can be disabled with `set_option linter.style.native false`
-/
#guard_msgs in
example : (0 : ℝ) ≤ 1 := by inclusion +native [core, interval_dyadic_real]

/--
warning: Using `+native` is not allowed in mathlib: because it trusts the entire Lean compiler (not
just the Lean kernel), it could quite possibly be used to prove `False`.

Note: This linter can be disabled with `set_option linter.style.native false`
-/
#guard_msgs in
example : (0 : ℝ) ≤ 1 := by inclusion (native := true) [core, interval_dyadic_real]

/--
warning: Using `+native` is not allowed in mathlib: because it trusts the entire Lean compiler (not
just the Lean kernel), it could quite possibly be used to prove `False`.

Note: This linter can be disabled with `set_option linter.style.native false`
-/
#guard_msgs in
example : (0 : ℝ) ≤ 1 := by dyadic_interval +native

/--
warning: Using `+native` is not allowed in mathlib: because it trusts the entire Lean compiler (not
just the Lean kernel), it could quite possibly be used to prove `False`.

Note: This linter can be disabled with `set_option linter.style.native false`
-/
#guard_msgs in
example : (0 : ℝ) ≤ 1 := by dyadic_interval (native := true)
