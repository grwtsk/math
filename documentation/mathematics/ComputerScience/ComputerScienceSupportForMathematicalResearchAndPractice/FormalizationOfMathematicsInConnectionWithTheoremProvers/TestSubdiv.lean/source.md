# Test Subdiv — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10d7f96c8dbf65a2a3b9ffbc41d877505c43cddf` · SHA-256 `0d462395c309f23da8b5fd21aeabdc46b5032deed193592e0442412bc6927079`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
  Test interval_bound_subdiv tactic
-/
import LeanCert.Tactic.IntervalAuto

open LeanCert.Core
open Set

-- Simple test - should work without subdivision
example : ∀ x ∈ Icc (0 : ℝ) 1, x * x ≤ 1 := by
  interval_bound_subdiv

-- This should also work with subdivision
example : ∀ x ∈ Icc (0 : ℝ) 1, x * x + x ≤ 2 := by
  interval_bound_subdiv

-- Test with transcendental - should work
example : ∀ x ∈ Icc (0 : ℝ) 1, Real.sin x ≤ 1 := by
  interval_bound_subdiv

-- Test on larger interval
example : ∀ x ∈ Icc (0 : ℝ) 2, x * x ≤ 4 := by
  interval_bound_subdiv

-- Test with exp (needs Taylor depth)
example : ∀ x ∈ Icc (0 : ℝ) 1, Real.exp x ≤ 3 := by
  interval_bound_subdiv 15

-- Note: Lower bounds not yet implemented for interval_bound_subdiv
-- The x*x - x case would need lower bound support
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5b501d89b767ce77272c8072bcc1473bffbf1894f131bbaf0d55675f7f2436b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestSubdiv/Variant0d462395c309f23da8b5fd21aeabdc46b5032deed193592e0442412bc6927079.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
