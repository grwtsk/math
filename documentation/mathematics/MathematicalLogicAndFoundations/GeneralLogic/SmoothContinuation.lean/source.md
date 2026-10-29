# Smooth Continuation — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4c4b60adfe2c4ca9fa18ee4a84bb073a8bb033c` · SHA-256 `d8c805b7c94e86bd1c8a58ddc78fc1447b0a2f0f103efb702c28667e2c2ec65b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.GrandChallenge.NavierStokes.FlowComplex

/-!
# Folder.GrandChallenge.NavierStokes.SmoothContinuation

Radiation role: research-boundary
BinaryMatrix spine: This module records Navier-Stokes continuation contracts.
Ontology: navier_stokes_flow_complex
Pivot role: flow
Zero typology: blowup-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace NavierStokes

structure SmoothContinuation where
  flowComplex : FlowComplex
  continuationMapsExist : Prop
  continuationMapsExist_certified : continuationMapsExist
  preservesTrueNavierStokesNonlinearity : Prop
  preservesTrueNavierStokesNonlinearity_certified :
    preservesTrueNavierStokesNonlinearity
  compactnessOrRegularityControl : Prop
  compactnessOrRegularityControl_certified :
    compactnessOrRegularityControl
  sourceLabel : String

theorem ns_continuation_maps_exist_if_supplied
    (S : SmoothContinuation) :
    S.continuationMapsExist :=
  S.continuationMapsExist_certified

theorem ns_preserves_true_nonlinearity_if_supplied
    (S : SmoothContinuation) :
    S.preservesTrueNavierStokesNonlinearity :=
  S.preservesTrueNavierStokesNonlinearity_certified

end NavierStokes
end GrandChallenge
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5362f95b7eb9f0ddf2f9c19f1606a9b72c0f1b4b8e76cb50a2ca6c081e53160 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SmoothContinuation/Variantd8c805b7c94e86bd1c8a58ddc78fc1447b0a2f0f103efb702c28667e2c2ec65b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
