# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Comparison.Variant5704b8a4705c2ac5d63aa4f47967d5b804fdb0e9242ab9c80ac317e0a93ab59e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c266b9138454b2cd2428a94a308a420b4742f43` · SHA-256 `5704b8a4705c2ac5d63aa4f47967d5b804fdb0e9242ab9c80ac317e0a93ab59e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Comparison.Core
import DAF.Comparison.Properties
import DAF.Comparison.LogicalStatus
import DAF.Comparison.Construction
import DAF.Comparison.Coefficients
import DAF.Comparison.Scope
import DAF.Comparison.Composition
import DAF.Comparison.Naturality
import DAF.Comparison.Chain

/-!
# Certified comparison calculus

This declaration-free umbrella exposes typed comparisons while keeping their
mathematical map, construction provenance, coefficient endpoints, ownership
scope, and logical status separate.

In particular, provenance is independent of logical status: “canonical” does
not mean definitionally equal, and a canonical map may still have only a
conjectural isomorphism claim.  A represented map is canonical only after its
representation has been fixed unless a proof removes that dependence.  A
conjectural target is not a theorem, and metadata proves neither injectivity,
surjectivity, nor equivalence.

Localization and completion change object types.  They are therefore crossed
only by an explicit coefficient change.  Code generation and architecture
manifests record implementation facts; neither is a theorem authority.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8877a1a52f9b8ce23bd959b47f529b1027f5bb429d094efeb533ebbeb5369c30 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comparison/Variant5704b8a4705c2ac5d63aa4f47967d5b804fdb0e9242ab9c80ac317e0a93ab59e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
