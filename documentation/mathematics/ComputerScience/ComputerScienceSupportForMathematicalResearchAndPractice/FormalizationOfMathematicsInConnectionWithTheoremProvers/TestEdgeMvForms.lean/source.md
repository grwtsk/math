# Test Edge Mv Forms — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9287759f0bbf82b0fc4764196886096ad3a6f54` · SHA-256 `6635ce770dea74e65bd9d91f18ef5c8f7b7fa16eae379707a0a2772d31dac484`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCert.Tactic.Discovery

theorem edge_minimize_mv_and :
    ∃ m : ℚ,
      ∀ x : ℝ, (0:ℝ) ≤ x ∧ x ≤ 1 →
      ∀ y : ℝ, (0:ℝ) ≤ y ∧ y ≤ 1 →
      x * x + y * y ≥ m := by
  interval_minimize_mv

theorem edge_minimize_mv_arrow :
    ∃ m : ℚ,
      ∀ x : ℝ, (0:ℝ) ≤ x → x ≤ 1 →
      ∀ y : ℝ, (0:ℝ) ≤ y → y ≤ 1 →
      x * x + y * y ≥ m := by
  interval_minimize_mv

theorem edge_maximize_mv_setof :
    ∃ M : ℚ,
      ∀ x ∈ {x : ℝ | (0:ℝ) ≤ x ∧ x ≤ 1},
      ∀ y ∈ {y : ℝ | (0:ℝ) ≤ y ∧ y ≤ 1},
      x + y ≤ M := by
  interval_maximize_mv
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dfa3772b499f8c8f7a2ff43c2d8186e8734dd825204dcdad049479f92d96fd96 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeMvForms/Variant6635ce770dea74e65bd9d91f18ef5c8f7b7fa16eae379707a0a2772d31dac484.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
