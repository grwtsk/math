# Complete source: GRWTSK.Algebra.LinearAlgebra.FixedProgramInterpreter.Variant70b74a6ca34dc747dd43195cf0f9ae0240fc8ad67ada909726fc496d05cfc694

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a7c528a9ed07aa6d63bb0701099eda04478f71e` · SHA-256 `70b74a6ca34dc747dd43195cf0f9ae0240fc8ad67ada909726fc496d05cfc694`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Runtime.FixedProgramInterpreter

/-! Focused kernel-checked examples for the bounded fixed interpreter profile. -/

namespace BitMatrix.Tests.FixedProgramInterpreter

open BitMatrix.Runtime.FixedProgramInterpreter

example : validateOperations [.pushTrue, .return] = some 1 := by
  native_decide

example : validateOperations [.return] = none := by
  rfl

example :
    evaluateOperations [.readSelf, .not, .return]
      (fun index => index == 3) 3 = some false := by
  native_decide

example :
    evaluateOperations [.indexBit ⟨0, by simp [programLengthBits]⟩, .return]
      zeroState 5 = some true := by
  native_decide

example
    (decoder : CheckedDecoder)
    (programCode input : State)
    (malformed : decoder.decode programCode = none) :
    interpretChecked decoder programCode input = none ∧
      interpretTotal decoder programCode input = zeroState := by
  exact ⟨
    interpretChecked_of_decode_none decoder programCode input malformed,
    interpretTotal_of_decode_none decoder programCode input malformed⟩

end BitMatrix.Tests.FixedProgramInterpreter
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7949a7553f7dfca008e5ce9bded4833fbd0281dff5f8efcd300698a3c8272b24 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/FixedProgramInterpreter/Variant70b74a6ca34dc747dd43195cf0f9ae0240fc8ad67ada909726fc496d05cfc694.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
