# Complete source: GRWTSK.Topology.MetricTopology.Fredholm.Variant3a1dc6c4f988b21bdadd9033858c9a5b7610b45463a6cba97c86af299714e71d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c742fa869e2c6b28aeef107cf453f618a5ed7ad` · SHA-256 `3a1dc6c4f988b21bdadd9033858c9a5b7610b45463a6cba97c86af299714e71d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Topology.MetricSpace.Basic
open Set

/--
A toy “Fredholm” lemma: every finite-dimensional subspace is closed.
This is small but non-trivial, perfect for CI smoke tests.
-/
lemma finiteDimensional_subspace_closed
  {E : Type} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
  {F : Submodule ℝ E} (h : FiniteDimensional ℝ F) :
  IsClosed (F : Set E) := by
  -- one-liner with library lemma
  simpa using F.closed_of_finiteDimensional h
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de97e6d4630bb2088e88695b31a1e4a628662fe13faa4f5c6b53181a9cdde020 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Fredholm/Variant3a1dc6c4f988b21bdadd9033858c9a5b7610b45463a6cba97c86af299714e71d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
