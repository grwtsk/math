# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ObstructionReturn.Variantf58d1fe053a01222f2b2f9cd3c73833137ba6d38aa1de1f5a33e6583840d9421

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b86f29d08deab24d4ba4663dbc3069d96e529ce5` · SHA-256 `f58d1fe053a01222f2b2f9cd3c73833137ba6d38aa1de1f5a33e6583840d9421`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Primitive obstruction return

Inaccessibility follows only from explicit completion semantics, a first
infeasible boundary, and a primitive core.
-/

namespace Mathematics.GraphAccess

structure PrimitiveObstructionCertificate where
  blockedTargetRef : String
  firstInfeasibleBoundaryRef : String
  primitiveCoreRef : String
  canonicalObstructionRef : String
  completionSemanticsAdmitted : Prop
  primitiveCoreMinimal : Prop
  targetBlocked : Prop
  completionSemanticsEvidence : completionSemanticsAdmitted
  primitiveCoreMinimalEvidence : primitiveCoreMinimal
  targetBlockedEvidence : targetBlocked

theorem primitive_obstruction_blocks_target
    (certificate : PrimitiveObstructionCertificate) :
    certificate.targetBlocked :=
  certificate.targetBlockedEvidence

end Mathematics.GraphAccess
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f18c1d4bc66debb52ca649d735a7dd5fa55186d05e7cfd40147899a0fe7e53a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObstructionReturn/Variantf58d1fe053a01222f2b2f9cd3c73833137ba6d38aa1de1f5a33e6583840d9421.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
