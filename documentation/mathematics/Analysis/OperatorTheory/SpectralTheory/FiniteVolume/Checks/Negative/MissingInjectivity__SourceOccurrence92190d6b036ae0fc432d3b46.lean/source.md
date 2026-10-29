# Complete source: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteVolume.Checks.Negative.MissingInjectivity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bca14364ee649363b60bb07f93ae5fc6909aef8` · SHA-256 `e2ac20f9c95ebec4231ca3bcdaafecd88141787dbf9eb709b617a19cd9dffb31`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.GapTransport
open GRWTSK.Spectral.GapTransport

-- A zero-energy coding cannot supply the injectivity premise needed by transport.
example : Function.Injective (fun _ : Bool => (0 : ℝ)) := by
  intro a b _h
  exact rfl
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4537316a3bf4124bb4270b0ff8294c5d5dd86badcaca9349b2650e92a0ea282 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/MissingInjectivity__SourceOccurrence92190d6b036ae0fc432d3b46.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
