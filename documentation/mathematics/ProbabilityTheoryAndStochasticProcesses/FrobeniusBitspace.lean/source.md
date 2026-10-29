# Frobenius Bitspace — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71465927db4997e79176cd4cf194829295bc65ca` · SHA-256 `5f4638f32c21802d86d36aa78a33c5e40fc2cb66b53ccdecde95bab5d470df25`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Carrier.BinaryMatrixStream

/-!
# Folder.Bitspace.FrobeniusBitspace

Radiation role: shell-filtration
BinaryMatrix spine: This module organizes boundary, shell, or expansion layers radiating out from BinaryMatrix-shaped finite carriers.
Ontology: bitspace.frobenius_bitspace
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace Folder
namespace Bitspace

open Carrier

structure FrobeniusBitspace where
  stream : BinaryMatrixStream
  capacity : Nat
  fits : stream.length ≤ capacity

namespace FrobeniusBitspace

def bitValue (b : Bit) : ℝ :=
  if b = 0 then 0 else 1

def bitNormSq (b : Bit) : ℝ :=
  bitValue b * bitValue b

theorem bitNormSq_le_one (b : Bit) :
    bitNormSq b ≤ 1 := by
  by_cases h : b = 0 <;> simp [bitNormSq, bitValue, h]

end FrobeniusBitspace
end Bitspace
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc5629a37b3b9e136d20b52ddf4aeee012b10c3d04535d308559a21d2742cdc6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/FrobeniusBitspace/Variant5f4638f32c21802d86d36aa78a33c5e40fc2cb66b53ccdecde95bab5d470df25.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
