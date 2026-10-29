# Trace Stability Projective Boundary Status — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d35b07f7f5ad8b255679944fccd2480244ba754` · SHA-256 `126e498e3833f56ab208c22438859fa4524bba3722e13f048a30a449962b7261`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Trace.TraceExtension
import Mathematics.StratifiedBoundary.Boundary.Perturbation

/-!
# Trace stability classification
-/

namespace Mathematics.StratifiedBoundary

inductive ProjectiveBoundaryStatus where
  | exact
  | asymptotic
  | residual (bound : Nat)
  | unbounded
  | unknown
deriving DecidableEq, Repr

structure VisibleTraceResidual where
  connectorDefect : Nat
  observableMismatch : Nat
  classification : ProjectiveBoundaryStatus
  residualVisible : Bool := true
  residualVisible_exact : residualVisible = true

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e9c05a9e8ed9c19ccd7d0640f2156103ae84410eba175791b2593e12f79f1b2e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variant126e498e3833f56ab208c22438859fa4524bba3722e13f048a30a449962b7261.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
