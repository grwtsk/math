# Projective System Finite Prefix Projective System — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6abfbd31950ef7255ebf0c280768ff41fb4d989` · SHA-256 `ac3653e2663687fcaf1394173e8e4ea259541cc661eacc794ee38f5e6f03cbfc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Finite-prefix projective system

The runtime may expose bounded prefixes.  The compatible witness is direct
project evidence; surjective maps alone are not silently used to choose an
infinite point.
-/

namespace Mathematics.StratifiedBoundary

structure FinitePrefixProjectiveSystem (State : Type u) where
  project : Nat → Nat → State → State
  identity :
    ∀ stage state,
      project stage stage state = state
  composition :
    ∀ {later middle earlier state},
      earlier ≤ middle →
      middle ≤ later →
      project later earlier state =
        project middle earlier (project later middle state)
  surjective :
    ∀ {later earlier},
      earlier ≤ later →
        Function.Surjective (project later earlier)
  compatibleWitness : Nat → State
  witnessCompatible :
    ∀ {later earlier},
      earlier ≤ later →
      project later earlier (compatibleWitness later) =
        compatibleWitness earlier
  finitePrefixOnly : Bool := true
  finitePrefixOnly_exact : finitePrefixOnly = true

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c09ea15a499270321a14fbcdeb0a752cb52168179713ec1f3929e9b3ec3ac855 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProjectiveSystem/Variantac3653e2663687fcaf1394173e8e4ea259541cc661eacc794ee38f5e6f03cbfc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
