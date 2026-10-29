# Measure Theory — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad5fec04fbcff5a37790b99207996718527ae38a` · SHA-256 `b00703eb9cb41bd363c0565dc924b8d034ce6d3f945e5a35df2d3ecc393132e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
Mathlib measure-theory patch boundary.

This marker records local measure-theory patches without importing the patch
corpus.
-/

namespace Formal.Patches.Mathlib.MeasureTheory

def conceptualSubdirectories : List String :=
  [ "Integral"
  ]

theorem conceptualSubdirectories_count :
    conceptualSubdirectories.length = 1 := by
  rfl

end Formal.Patches.Mathlib.MeasureTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4adfe807560b1b1ce208def0357b43c6eb594f2924771f05441dbdf36ef80e7d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/MeasureTheory/Variantb00703eb9cb41bd363c0565dc924b8d034ce6d3f945e5a35df2d3ecc393132e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
