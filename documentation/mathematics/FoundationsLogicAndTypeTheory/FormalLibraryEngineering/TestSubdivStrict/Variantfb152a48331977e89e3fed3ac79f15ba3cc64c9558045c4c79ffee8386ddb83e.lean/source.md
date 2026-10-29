# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSubdivStrict.Variantfb152a48331977e89e3fed3ac79f15ba3cc64c9558045c4c79ffee8386ddb83e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d43914bb7f4dbe88ea1ae9788a091d98c9b72935` · SHA-256 `fb152a48331977e89e3fed3ac79f15ba3cc64c9558045c4c79ffee8386ddb83e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
  Test interval_bound_subdiv with strict inequalities
-/
import LeanCert.Tactic.IntervalAuto

open LeanCert.Core
open Set

-- Strict upper bound (f x < c)
example : ∀ x ∈ Icc (0 : ℝ) 1, x * x < 2 := by
  interval_bound_subdiv

example : ∀ x ∈ Icc (0 : ℝ) 1, Real.sin x < 2 := by
  interval_bound_subdiv

example : ∀ x ∈ Icc (0 : ℝ) 1, Real.exp x < 4 := by
  interval_bound_subdiv 15

-- Strict lower bound (c < f x)
example : ∀ x ∈ Icc (0 : ℝ) 1, -1 < x * x := by
  interval_bound_subdiv

example : ∀ x ∈ Icc (0 : ℝ) 1, -2 < Real.sin x := by
  interval_bound_subdiv

example : ∀ x ∈ Icc (0 : ℝ) 1, 0 < Real.exp x := by
  interval_bound_subdiv 15

-- Combining strict and non-strict
example : ∀ x ∈ Icc (0 : ℝ) 1, x * x ≤ 1 := by
  interval_bound_subdiv

example : ∀ x ∈ Icc (0 : ℝ) 1, x * x < (3/2 : ℚ) := by
  interval_bound_subdiv

-- tanh strict bounds
example : ∀ x ∈ Icc (-5 : ℝ) 5, Real.tanh x < 2 := by
  interval_bound_subdiv

example : ∀ x ∈ Icc (-5 : ℝ) 5, -2 < Real.tanh x := by
  interval_bound_subdiv
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3be578e523f4a4ee8c5e79e7349a2757d1cee030450df329e8d43c32729d159e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestSubdivStrict/Variantfb152a48331977e89e3fed3ac79f15ba3cc64c9558045c4c79ffee8386ddb83e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
