# Complete source: GRWTSK.Algebra.LinearAlgebra.Core.Variant904476e1a96b6b0466435faf56af0e352f63f2b3547efa1f04e87c0cf22fec7d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `246d4e14e0413b02d5f74bb7d84a5a9ce4b9c831` · SHA-256 `904476e1a96b6b0466435faf56af0e352f63f2b3547efa1f04e87c0cf22fec7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BooleanMatrix.Matrix.Core

/-!
# BooleanMatrix applications

An application is an extensional, total transformation of the common matrix
carrier. Interpretation and validity conditions are supplied separately by
formats and typed applications.
-/

namespace BooleanMatrix

/-- A total transformation of the BooleanMatrix carrier. -/
abbrev Application := Matrix → Matrix

namespace Application

/-- The identity matrix application. -/
def identity : Application :=
  fun input => input

/-- Sequential composition, applying `before` and then `after`. -/
def comp
    (after before : Application) :
    Application :=
  fun input => after (before input)

@[simp]
theorem identity_apply (input : Matrix) :
    identity input = input :=
  rfl

@[simp]
theorem comp_apply
    (after before : Application)
    (input : Matrix) :
    comp after before input = after (before input) :=
  rfl

end Application
end BooleanMatrix
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05218ed6d1688c349eb4baf6cb686237a0a9374398c605060b1f549232b8fd06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Core/Variant904476e1a96b6b0466435faf56af0e352f63f2b3547efa1f04e87c0cf22fec7d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
