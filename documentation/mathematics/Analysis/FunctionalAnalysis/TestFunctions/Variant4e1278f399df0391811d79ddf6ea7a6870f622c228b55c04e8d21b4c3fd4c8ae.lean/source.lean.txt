import Mathlib.Analysis.Distribution.SchwartzSpace.Basic

/-!
# Folder.RH.TestFunctions

Radiation role: test-functions
BinaryMatrix spine: This module fixes the test-function type for trace formulas.
Ontology: rh.test_functions
Pivot role: spectral
Zero typology: zeta
Contract boundary: checked-test-function-type
Composite stack role: rh
-/

namespace Folder
namespace RH

noncomputable section

/--
Schwartz test functions for the RH trace-formula layer.

The Schwartz hypothesis is carried by Mathlib's `SchwartzMap` type rather than
by a project-specific proposition field.
-/
structure RHTestFunction where
  func : SchwartzMap ℝ ℂ
  label : String

theorem rh_test_function_has_schwartz_map
    (φ : RHTestFunction) :
    ∃ f : SchwartzMap ℝ ℂ, f = φ.func :=
  ⟨φ.func, rfl⟩

end

end RH
end Folder
