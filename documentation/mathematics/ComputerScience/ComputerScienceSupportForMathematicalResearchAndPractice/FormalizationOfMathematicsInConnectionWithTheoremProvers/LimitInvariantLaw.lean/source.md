# Limit Invariant Law — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d63a17029e012f0465a4f86e6e38feb8494e595a` · SHA-256 `6fbee60e8e567e36a39f1047d5e794bec9d8e011f63d52a1c3ff0710d5b530ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Boundary.LimitKernel

/-!
# Unique projective limit invariant law
-/

namespace Mathematics.StratifiedBoundary

structure UniqueProjectiveInvariantLaw
    (Kernel Law : Type u) where
  kernel : Kernel
  limitLaw : Law
  finiteMarginal : Nat → Law
  invariant : Prop
  invariantProof : invariant
  projects : Nat → Prop
  projectProof :
    ∀ stage : Nat,
      projects stage
  unique :
    ∀ candidate : Law,
      candidate = limitLaw

theorem projective_limit_invariant_law_unique
    {Kernel Law : Type u}
    (certificate :
      UniqueProjectiveInvariantLaw Kernel Law)
    (candidate : Law) :
    candidate = certificate.limitLaw :=
  certificate.unique candidate

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a714ea84d0aee7a756639b80b8ad6feda91b8c6f5c89c27de68bd0b6cbcc2f0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LimitInvariantLaw/Variant6fbee60e8e567e36a39f1047d5e794bec9d8e011f63d52a1c3ff0710d5b530ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
