# Complete source: GRWTSK.Spectral.FiniteVolume.Checks.Negative.MissingInjectivity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d754e9c28ab3e491e09dd77b18605f32fa0ac77a` · SHA-256 `12d4eb4ef652c00200be8e935a8ddb9648d7f421da5e259bb02899f2c0962a4f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Spectral.GapTransport
open GRWTSK.Spectral.GapTransport

-- A zero-energy coding cannot supply the injectivity premise needed by transport.
example : Function.Injective (fun _ : Bool => (0 : ℝ)) := by
  intro a b _h
  exact rfl
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd9328fd0e88e19ead69d765f43be284dea8030f810a8dcb53597f785d6d27d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/MissingInjectivity__SourceOccurrencef342e02d39aa94e53cde56f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
