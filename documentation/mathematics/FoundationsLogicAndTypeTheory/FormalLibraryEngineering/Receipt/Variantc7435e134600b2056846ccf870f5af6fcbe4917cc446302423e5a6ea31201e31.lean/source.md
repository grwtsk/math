# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Receipt.Variantc7435e134600b2056846ccf870f5af6fcbe4917cc446302423e5a6ea31201e31

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78da2e26e9c7ab1e11f04a8fc2a760b10058557d` · SHA-256 `c7435e134600b2056846ccf870f5af6fcbe4917cc446302423e5a6ea31201e31`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Refactor.Plan

/-! # Transaction and acceptance receipts -/

namespace Mathematics.Refactor

open Mathematics

inductive TransactionStatus
  | planned
  | staged
  | applied
  | rolledBack
  | accepted
  | rejected
  deriving DecidableEq, Repr, Inhabited

structure Receipt where
  transactionId : RefactorTransactionId
  status : TransactionStatus
  baselineDigest : Digest
  sourceAnalysisDigest : Digest
  millingProfileDigest : Digest
  partitionProfileDigest : Digest
  planDigest : Digest
  stagedEnvironmentDigest : Digest
  appliedEnvironmentDigest : Digest
  milledUnitCount : Nat
  movedUnitCount : Nat
  unchangedUnitCount : Nat
  blockedUnitCount : Nat
  publicStatementChanges : Nat
  trustClosureChanges : Nat
  cleanBuild : Bool
  freshKernelCheck : Bool
  fullAssurance : Bool
  idempotent : Bool
  rollbackReceipt : String
  deriving DecidableEq, Repr

end Mathematics.Refactor
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9498b16220ffa53366550a313b4c4c5349197e4628a4930d21a8aa1c1f138be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Receipt/Variantc7435e134600b2056846ccf870f5af6fcbe4917cc446302423e5a6ea31201e31.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
