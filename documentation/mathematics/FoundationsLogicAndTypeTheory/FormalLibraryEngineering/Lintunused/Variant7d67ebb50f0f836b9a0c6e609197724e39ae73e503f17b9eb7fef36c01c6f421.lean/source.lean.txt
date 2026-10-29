-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variantd6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Foo.Variantd6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"d6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/lintunused.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

import Batteries.Tactic.Lint
import Batteries.Util.ProofWanted


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variantd6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48

public section

-- should be ignored as the proof contains sorry
/-- warning: declaration uses `sorry` -/
#guard_msgs in
def foo (h : 1 = 1) : Bool := sorry

-- should be ignored since it uses `_h`
def foo' (_h : 1 = 1) : Bool := true

-- should not be ignored
set_option linter.unusedVariables false in
def fooBad (h : 1 = 1) : Bool := true

theorem foo1_ok (_h : 1 = 2) : True := trivial

set_option linter.unusedVariables false in
theorem foo2_bad (h : 1 = 1) : True := trivial

theorem foo3_bad [Mul Nat] : True := trivial

set_option linter.unusedVariables false in
theorem foo4_bad [h : Mul Nat] : True := trivial

theorem foo5_ok [_h : Mul Nat] : True := trivial

theorem foo6_ok (_ : Nat) : True := trivial

set_option linter.unusedVariables false in
theorem foo7_bad [Mul Nat] [inst : Add Nat] {h : 1 = 1} ⦃h' : 0 = 0⦄ : True := trivial

-- deprecated names are ignored
set_option linter.unusedVariables false in
@[deprecated foo6_ok (since := "today")] theorem foo6_ok' (h : Nat) : True := trivial

-- private theorems are still linted
private theorem foo8_bad [Mul Nat] : True := trivial

-- `proof_wanted`/`def_wanted` is ignored
proof_wanted wanted (h : Bool) : True
def_wanted wanted' (h : Bool) : Bool

/--
error: /- The `unusedArguments` linter reports:
UNUSED ARGUMENTS.
This linter can be disabled with `@[nolint unusedArguments]`. -/
#check fooBad /- 1 unused argument:
  argument 1: (h : 1 = 1) -/
#check foo2_bad /- 1 unused argument:
  argument 1: (h : 1 = 1) -/
#check @foo3_bad /- 1 unused argument:
  argument 1: [Mul Nat] -/
#check @foo4_bad /- 1 unused argument:
  argument 1: [h : Mul Nat] -/
#check @foo7_bad /- 4 unused arguments:
  argument 1: [Mul Nat]
  argument 2: [inst : Add Nat]
  argument 3: {h : 1 = 1}
  argument 4: ⦃h' : 0 = 0⦄ -/
#check @foo8_bad /- 1 unused argument:
  argument 1: [Mul Nat] -/
-/
#guard_msgs in
#lint- only unusedArguments
