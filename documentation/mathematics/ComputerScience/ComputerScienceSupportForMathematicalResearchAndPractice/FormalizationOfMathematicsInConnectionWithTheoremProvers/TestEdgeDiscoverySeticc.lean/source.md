# Test Edge Discovery Seticc — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2be65ac402f4878e625e4ffceac185bef1365ed` · SHA-256 `0b06e00d71a33abd936b70038e81730049114471a24545bf11ef0c7261e8ee09`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCert.Tactic.Discovery

def Icc01 : Set ℝ := Set.Icc (0:ℝ) 1

theorem edge_minimize_seticc : ∃ m : ℚ, ∀ x ∈ Icc01, x * x ≥ m := by
  interval_minimize

theorem edge_maximize_seticc : ∃ M : ℚ, ∀ x ∈ Icc01, x * x ≤ M := by
  interval_maximize

theorem edge_root_seticc : ∃ x ∈ Set.Icc (0:ℝ) 2, x * x - 2 = 0 := by
  interval_roots

theorem edge_unique_root_seticc : ∃! x, x ∈ Set.Icc (1:ℝ) 2 ∧ x * x - 2 = 0 := by
  interval_unique_root

theorem edge_argmax_seticc : ∃ x ∈ Icc01, ∀ y ∈ Icc01, (0:ℝ) ≤ (0:ℝ) := by
  interval_argmax
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8cd6dffe7fa5c0bc16d42920a1258567844c3b2011885b80d4748bd78d7935e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeDiscoverySeticc/Variant0b06e00d71a33abd936b70038e81730049114471a24545bf11ef0c7261e8ee09.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
