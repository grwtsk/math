# Test Edge Mv — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0c6609cbdf4b1b54d3a927f9978693873ed7c21` · SHA-256 `04404e63715d136a214f4d3f5eaa1333486ad43178042f10cc53673bdf3d54c0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCert.Tactic.Discovery

theorem edge_minimize_mv : ∃ m : ℚ, ∀ x ∈ Set.Icc (0:ℝ) 1, ∀ y ∈ Set.Icc (0:ℝ) 1, x * x + y * y ≥ m := by
  interval_minimize_mv

theorem edge_maximize_mv : ∃ M : ℚ, ∀ x ∈ Set.Icc (0:ℝ) 1, ∀ y ∈ Set.Icc (0:ℝ) 1, x + y ≤ M := by
  interval_maximize_mv
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1b62f537e00a33144f1553c8f6917cd77edcd41cf52ce01a7716e25dd09dfda -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeMv/Variant04404e63715d136a214f4d3f5eaa1333486ad43178042f10cc53673bdf3d54c0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
