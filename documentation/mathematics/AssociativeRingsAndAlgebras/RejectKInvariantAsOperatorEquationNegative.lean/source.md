# Reject KInvariant As Operator Equation Negative — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f45778feabf2e17425ac71b95bb4a4a4358a3d6d` · SHA-256 `b34a8b99ad7b6e98b78c4e80a61709428763d1cd8989c2fd6bc4f916478ffb94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.LinearAlgebra.FramedFiberPort
universe u v w m n
variable {R : Type u} [Ring R]
variable {E : Type v} [AddCommGroup E] [Module R E]
variable {F : Type w} [AddCommGroup F] [Module R F]
variable {M : Type m} [CommMonoid M] {N : Type n} [CommMonoid N]
variable {D : E →ₗ[R] E} {D' : F →ₗ[R] F}
-- Hostile mutation: equality of the K-channel cannot discharge the operator residual.
example (P : StableKOperatorPort D D' M N)
    (h : P.kZeroMap = P.kZeroMap) : P.IsExact := by
  exact h
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0018f0caa87a2964a915b1cd02024d06c0e879f6a33a5b8acb31ee43e8913afe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectKInvariantAsOperatorEquationNegative/Variantb34a8b99ad7b6e98b78c4e80a61709428763d1cd8989c2fd6bc4f916478ffb94.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
