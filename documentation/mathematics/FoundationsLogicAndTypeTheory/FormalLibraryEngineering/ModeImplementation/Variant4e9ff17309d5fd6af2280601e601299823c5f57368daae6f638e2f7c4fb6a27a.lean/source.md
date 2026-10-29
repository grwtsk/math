# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModeImplementation.Variant4e9ff17309d5fd6af2280601e601299823c5f57368daae6f638e2f7c4fb6a27a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `549f35278a3b9a426d4678fa58e9261c76ad21f4` · SHA-256 `4e9ff17309d5fd6af2280601e601299823c5f57368daae6f638e2f7c4fb6a27a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Resolver

/-!
# Concrete-mode implementation contract

Every later traversal mode supplies its own applicability predicate, output
certificate family, and invariant-preserving machine through this package.
-/

namespace Mathematics.GraphAccess

structure ModeImplementation
    (G : GraphCut)
    (profiles : ModeProfileFamily G)
    (mode : TraversalMode) where
  applies :
    ∀ request : AdmittedAccessRequest G profiles,
      request.plan.primary = mode → Prop
  outputs :
    ∀ request : AdmittedAccessRequest G profiles,
      request.plan.primary = mode →
        ModeOutputFamily G request
  build :
    ∀ request : AdmittedAccessRequest G profiles,
      ∀ modeEquality :
        request.plan.primary = mode,
      applies request modeEquality →
        AccessMachine G request
          (outputs request modeEquality)

end Mathematics.GraphAccess
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2622f05d3ddb0ef013690165e0d9c50b50adf1f2337411aa4b504fccb52a5042 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModeImplementation/Variant4e9ff17309d5fd6af2280601e601299823c5f57368daae6f638e2f7c4fb6a27a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
