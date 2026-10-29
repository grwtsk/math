# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Correspondence.Variant4d918d7ba72658cf3e9f6f9c546125eb3d57b3bed51385b50ccc04c53e1e3398

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31223269736b43050c347319b44699ad325678e6` · SHA-256 `4d918d7ba72658cf3e9f6f9c546125eb3d57b3bed51385b50ccc04c53e1e3398`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Formal
import BitMatrix.Runtime.Semantics
import Mathlib.Tactic

namespace BitMatrix.Tests.Correspondence

open BitMatrix.Carrier

private def identityCantor : DesignatedCantorRepresentation where
  Scalar := BitStream
  theta := Equiv.refl BitStream

private def falseBaseline : BooleanState Nat := fun _ => false

example (target : BooleanState Nat) :
    baselineEquiv (Equiv.refl Nat) identityCantor falseBaseline
      ((baselineEquiv (Equiv.refl Nat) identityCantor falseBaseline).symm target) =
        target :=
  (baselineEquiv (Equiv.refl Nat) identityCantor falseBaseline).apply_symm_apply target

example : BitMatrix.Codec.lengthPrefixDigits 4 5 =
    [true, false, true, false] := by
  native_decide

example : BitMatrix.Codec.byteDigitsMSB 128 =
    [true, false, false, false, false, false, false, false] := by
  native_decide

example (vertex : BitMatrix.Runtime.Semantics.TriangleVertex) :
    (BitMatrix.Runtime.Semantics.triangleSuccessor ^ 3) vertex = vertex :=
  BitMatrix.Runtime.Semantics.triangleSuccessor_third_power vertex

example : BitMatrix.Configuration.Schema003.Valid
    BitMatrix.Configuration.Schema003.policy :=
  BitMatrix.Configuration.Schema003.policy_valid

example (theory : BitMatrix.Rhetorical.InvariantTheory) :
    let presentations := BitMatrix.Rhetorical.fourModePresentation theory
    presentations.formalHypotactic.semanticValue =
      presentations.formalParatactic.semanticValue := by
  simpa using
    (BitMatrix.Rhetorical.FourModePresentation.semantic_invariance
      (BitMatrix.Rhetorical.fourModePresentation theory)).1

end BitMatrix.Tests.Correspondence
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db510edc2d72f088ec220b6cb290db0a611b0bbb4d0e45c6238501cc9d8fac06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Correspondence/Variant4d918d7ba72658cf3e9f6f9c546125eb3d57b3bed51385b50ccc04c53e1e3398.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
