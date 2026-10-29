# Complete source: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteVolume.Checks.Negative.DroppedIDSLimit

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10ec988941e376c6a54831abcea39dd42f73ac8b` · SHA-256 `5178ce7db30a91ec1df73f40c3f15d013d3e8bf8f22952540d17071f3024178a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianFiniteVolume
open GRWTSK.Spectral.SturmianFiniteVolume Filter

-- Deliberately invalid: a free count limit does not supply the target limit.
example (α V ξ : ℝ) (origin : ℤ) (free ids : ℝ → ℝ)
    (hfree : ∀ E, Tendsto (fun N => freeNormalizedCount N E) atTop (nhds (free E))) :
    ∀ E, free (E-max V 0) ≤ ids E ∧ ids E ≤ free (E-min V 0) := by
  exact ids_comparison_of_count_limits α V ξ origin free ids hfree
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc61090be985ecb9bf55dc5e8f4c836142e99e6d37067e6aa545241e3c56962c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/DroppedIDSLimit__SourceOccurrencef273b62d5117d8f3a93b8bdd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
