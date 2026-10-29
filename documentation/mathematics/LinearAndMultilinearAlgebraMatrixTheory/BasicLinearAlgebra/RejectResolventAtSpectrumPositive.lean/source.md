# Reject Resolvent At Spectrum Positive — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48b5034ff999dbc02edd1800d65e7dbb3370da78` · SHA-256 `5859da41d78122b8249f0b9a14c9ce1c82c5e7240b9114445766a924154a1900`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.LinearAlgebra.FiniteSpectralHeat
example (M : Model (Fin 1) (Fin 1 → ℝ)) (z : ℝ)
    (hz : ∀ i, M.eigenvalue i ≠ z) :
    (M.shiftedOperator z).comp (M.resolvent z) = LinearMap.id :=
  M.shiftedOperator_comp_resolvent z hz
example (M : Model (Fin 1) (Fin 1 → ℝ)) (z : ℝ)
    (hz : ∀ i, M.eigenvalue i ≠ z) :
    (M.resolvent z).comp (M.shiftedOperator z) = LinearMap.id :=
  M.resolvent_comp_shiftedOperator z hz
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be7087b3f588e4c4e4c783b3610304eb156051722ac2ecfa8b4ab6d46eb272ff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectResolventAtSpectrumPositive/Variant5859da41d78122b8249f0b9a14c9ce1c82c5e7240b9114445766a924154a1900.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
