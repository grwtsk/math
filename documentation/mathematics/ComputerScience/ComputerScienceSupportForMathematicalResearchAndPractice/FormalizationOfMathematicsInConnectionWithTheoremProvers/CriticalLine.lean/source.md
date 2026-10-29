# Critical Line — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `998ad7f01fafefef542245b598379e98eb06a981` · SHA-256 `0ab7a1ba563f31216f0f4478d0110272f987b5fa6c42fcccfab9bb15d36d33ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Research.CriticalLine

/-!
# Folder.Theorem.Research.CriticalLine

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports critical-line normalization facts for the research-boundary layer.
Ontology: proof.research.critical_line
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: research
-/

namespace Folder
namespace Theorem
namespace Research
namespace CriticalLine

theorem criticalLine_of_centered_zero
    (x : ℝ)
    (h : Folder.Research.CriticalLine.CenteredWithZeroVariance x) :
    Folder.Research.CriticalLine.IsCriticalLineRealPart x :=
  Folder.Research.CriticalLine.criticalLine_of_centered_zero x h

theorem centered_zero_of_criticalLine
    (x : ℝ)
    (h : Folder.Research.CriticalLine.IsCriticalLineRealPart x) :
    Folder.Research.CriticalLine.CenteredWithZeroVariance x :=
  Folder.Research.CriticalLine.centered_zero_of_criticalLine x h

theorem criticalLine_iff_centered_zero
    (x : ℝ) :
    Folder.Research.CriticalLine.IsCriticalLineRealPart x ↔
      Folder.Research.CriticalLine.CenteredWithZeroVariance x :=
  Folder.Research.CriticalLine.criticalLine_iff_centered_zero x

end CriticalLine
end Research
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ea3b46cf0476c4e12aa22f9d718ff4b07d4070058ebe6dd784dc68ca9d5742f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalLine/Variant0ab7a1ba563f31216f0f4478d0110272f987b5fa6c42fcccfab9bb15d36d33ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
