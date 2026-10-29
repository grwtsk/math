# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Partition.Variante3dabcdf08b3cddbc0c7dc58cd239cdf5ea8072ba6d6c468ec7bc9647a9c4de4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92297717a1f5f5d05feb7f3ebdcb3077380f8195` · SHA-256 `e3dabcdf08b3cddbc0c7dc58cd239cdf5ea8072ba6d6c468ec7bc9647a9c4de4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Refactor.Constraint

/-! # Deterministic constrained partitions -/

namespace MathDiscovery.Refactor

open MathDiscovery

structure LexicographicObjective where
  hardPolicyFailures : Nat
  atomCountPenalty : Nat
  largestAtom : Nat
  contextFrontierSize : Nat
  additionalImports : Nat
  compatibilityFacades : Nat
  changedBytes : Nat
  stableTieBreak : String
  deriving DecidableEq, Repr, Inhabited

structure Partition where
  assignments : Array MathDiscovery.Atom.ModuleAssignment
  constraints : Array Constraint
  objective : LexicographicObjective
  importGraphDigest : Digest
  deterministic : Bool
  acyclic : Bool
  deriving DecidableEq, Repr

end MathDiscovery.Refactor
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=21f25b717fbe41a60d91688267e69fa367e229c821d320e671600c555b2d6c17 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variante3dabcdf08b3cddbc0c7dc58cd239cdf5ea8072ba6d6c468ec7bc9647a9c4de4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
