# Complete source: GRWTSK.Spectral.FiniteVolume.Checks.Negative.DroppedIDSLimit

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be08e6586ff846d59dc49725028573103c8c3178` · SHA-256 `a08a30459b5115ac3249e7aa389f8b5f25e7c724dda28a2d933ba90b70304717`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Spectral.SturmianFiniteVolume
open GRWTSK.Spectral.SturmianFiniteVolume Filter

-- Deliberately invalid: a free count limit does not supply the target limit.
example (α V ξ : ℝ) (origin : ℤ) (free ids : ℝ → ℝ)
    (hfree : ∀ E, Tendsto (fun N => freeNormalizedCount N E) atTop (nhds (free E))) :
    ∀ E, free (E-max V 0) ≤ ids E ∧ ids E ≤ free (E-min V 0) := by
  exact ids_comparison_of_count_limits α V ξ origin free ids hfree
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4019680f7d16c522ab9669b471f1f3312c372f29788b0d9214adc8fd1080fd7b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/DroppedIDSLimit__SourceOccurrence7472d2c21247214ccd913883.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
