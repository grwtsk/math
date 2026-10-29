# Numeric — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `479115768e138c3aac55bd72eca70cd42fe86f7e` · SHA-256 `01ac2f382702c1e4fa56d8a2c36d3761bd86c18487358c68a10fa2ed1a4b47b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Real.Basic

/-!
# Numeric representation boundaries
-/

namespace BitMatrix.Runtime.Numeric

/-- Mathematical arbitrary-precision integers used to specify JavaScript `BigInt` values. -/
abbrev ArbitraryPrecisionInteger := ℤ

/-- Nonnegative absolute and relative tolerances. -/
structure Tolerance where
  absolute : ℝ
  relative : ℝ
  absoluteNonnegative : 0 ≤ absolute
  relativeNonnegative : 0 ≤ relative

/-- The symmetric mixed absolute/relative comparison contract. -/
def Tolerance.NearlyEqual (tolerance : Tolerance) (left right : ℝ) : Prop :=
  |left - right| ≤
    tolerance.absolute + tolerance.relative * max |left| |right|

/-- Checked conversion is a partial relation, never wrapping or saturating. -/
def CheckedNaturalConversion (integer : ArbitraryPrecisionInteger) (natural : Nat) : Prop :=
  integer = natural

end BitMatrix.Runtime.Numeric
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8168f956f789837f4fc416d61fee4d80e1a5aab50d5e814cbeab229a4a6bdbb2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Numeric/Variant01ac2f382702c1e4fa56d8a2c36d3761bd86c18487358c68a10fa2ed1a4b47b6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
