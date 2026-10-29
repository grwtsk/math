# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant72d0a50762ffeb21a837a8f715a780c9a98a837b566ca77612fe5f3a6c58eaec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `434e5297a5379e042e716d3d709c0d10c5c08cc1` · SHA-256 `72d0a50762ffeb21a837a8f715a780c9a98a837b566ca77612fe5f3a6c58eaec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Sort

/-!
# Graph-access scalar identities

These wrappers are the serialization-independent identities used by the
finite graph-access core.  Display strings and ambient runtime hashes are not
part of mathematical identity.
-/

namespace Mathematics.GraphAccess

structure CutDigest where
  bytes : ByteArray
deriving DecidableEq

instance : Repr CutDigest where
  reprPrec digest precedence :=
    Repr.reprPrec digest.bytes.data precedence

structure RequestDigest where
  bytes : ByteArray
deriving DecidableEq

instance : Repr RequestDigest where
  reprPrec digest precedence :=
    Repr.reprPrec digest.bytes.data precedence

structure StateDigest where
  bytes : ByteArray
deriving DecidableEq

instance : Repr StateDigest where
  reprPrec digest precedence :=
    Repr.reprPrec digest.bytes.data precedence

structure ProfileDigest where
  bytes : ByteArray
deriving DecidableEq

instance : Repr ProfileDigest where
  reprPrec digest precedence :=
    Repr.reprPrec digest.bytes.data precedence

structure SourceEventId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure RequestId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure PrincipalId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure ContextCutId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure ProfileId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure ModeRevision where
  value : Nat
deriving DecidableEq, Ord, Repr

structure PersistentId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure CanonicalCode where
  value : Nat
deriving DecidableEq, Ord, Repr

instance : LinearOrder SourceEventId :=
  LinearOrder.lift' SourceEventId.value (by
    intro a b equality
    cases a
    cases b
    cases equality
    rfl)

instance : LinearOrder RequestId :=
  LinearOrder.lift' RequestId.value (by
    intro a b equality
    cases a
    cases b
    cases equality
    rfl)

instance : LinearOrder PrincipalId :=
  LinearOrder.lift' PrincipalId.value (by
    intro a b equality
    cases a
    cases b
    cases equality
    rfl)

instance : LinearOrder ContextCutId :=
  LinearOrder.lift' ContextCutId.value (by
    intro a b equality
    cases a
    cases b
    cases equality
    rfl)

instance : LinearOrder ProfileId :=
  LinearOrder.lift' ProfileId.value (by
    intro a b equality
    cases a
    cases b
    cases equality
    rfl)

instance : LinearOrder ModeRevision :=
  LinearOrder.lift' ModeRevision.value (by
    intro a b equality
    cases a
    cases b
    cases equality
    rfl)

instance : LinearOrder PersistentId :=
  LinearOrder.lift' PersistentId.value (by
    intro a b equality
    cases a
    cases b
    cases equality
    rfl)

instance : LinearOrder CanonicalCode :=
  LinearOrder.lift' CanonicalCode.value (by
    intro a b equality
    cases a
    cases b
    cases equality
    rfl)

end Mathematics.GraphAccess
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a3352114720ed6354d3a4484a500b066491ae1fa921978067800d21e32ba0b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant72d0a50762ffeb21a837a8f715a780c9a98a837b566ca77612fe5f3a6c58eaec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
