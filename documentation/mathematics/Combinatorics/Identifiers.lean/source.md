# Identifiers — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b95123efbebf148ceb564555171dfecb8ded0084` · SHA-256 `641a1b8386617774dc9515c0764edd0a57f01f23bfa4a873a5bfd75bb58e7acb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Basic

/-!
# WP0 finite-horizon identities

Stable custody identities for the finite-horizon Sonin core.  No mathematical
property is attached to these identifiers.
-/

namespace Mathematics.SemiLocalDefect.SoninCore

structure HorizonId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure PrimeId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure PrimeCutId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure PersistentCutId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure PacketId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure TestRegistryId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure CoefficientRingId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure MatrixId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure BasisRevision where
  value : Nat
deriving DecidableEq, Ord, Repr

structure ProofId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure CheckerId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure Digest where
  words : Array UInt64
deriving DecidableEq, Repr

end Mathematics.SemiLocalDefect.SoninCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a96aa4a52dc5e269ae9eef66fe4010c57391c3e8d9225957135291dd92b4010 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Identifiers/Variant641a1b8386617774dc9515c0764edd0a57f01f23bfa4a873a5bfd75bb58e7acb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
