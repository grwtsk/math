# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RosserSchoenfeldPrimeTables.Variant1e7ab7380aba60b3cbf8f26a9913ea58e2403d8228b72e25f00601711db9c35b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `367e85a52cfab57c8f7b67a5762ef0ca01f300d3` · SHA-256 `1e7ab7380aba60b3cbf8f26a9913ea58e2403d8228b72e25f00601711db9c35b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic

/-
This file stores the numerical data for `RosserSchoenfeldPrime.lean`, as well as any purely numerical computations about that data.  This file should not import any other files from the PNT+ project, other than further numerical data files.  This is to avoid these computation-intensive files from having to be repeatedly compiled.

In general, data should be moved here once we require significant numerical calculations to be performed using that data.
-/


namespace RS_prime

/- This is the optimal constant in the inequality $\psi(x) \leq c_0 x$. -/

def c₀ : ℝ := 1.03883

end RS_prime
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47ca43cc6290ac3710091d0e29815754ceed71935f74594c906db0ec8d63da85 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RosserSchoenfeldPrimeTables/Variant1e7ab7380aba60b3cbf8f26a9913ea58e2403d8228b72e25f00601711db9c35b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
