# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConductorThreeVaughanTypeIBridge.Variantc093a3a7549ae38a37e8ddabc892f9c975f5c6885f389d21e66083299026b62a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `560d389570ba6ec7691b64fba781fcec05b4456e` · SHA-256 `c093a3a7549ae38a37e8ddabc892f9c975f5c6885f389d21e66083299026b62a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeVaughanTypeI
public import Surface.Core.ConductorThreePrimeMomentProgram
import Mathlib.Tactic

/-!
# Type I prefix adapter

This small module connects the elementary expanded Type I estimate to the
public prime-moment predicate.  Its only hypothesis is the exact finite
convolution-reindexing proposition.  In particular, no Type II, packet,
Wang--Zahl, or GRH premise occurs in the bridge.
-/

public section

namespace Surface.Core.ConductorThreeVaughanTypeIBridge

noncomputable section

open Surface.Core.ConductorThreePrimeMoment
open Surface.Core.ConductorThreeVaughanTypeI
open Surface.Core.ConductorThreeWangZahlTTStar

/-- The public convolution prefix is definitionally the same finite formula
as the one isolated by the elementary Type I module. -/
@[surface_adapter, surface_published]
theorem convolutionTypeIPrefix_eq_public (N x : ℕ) :
    conductorThreeConvolutionTypeIPrefix N x =
      conductorThreeVaughanTypeIPrefix N x := by
  rfl

/-- The exact finite expansion adapter is sufficient to inhabit the public
uniform Type I maximal predicate. -/
@[surface_novel, surface_published]
theorem exactTypeIPrefixExpansion_implies_uniformPublic
    (hExpansion : ExactConductorThreeTypeIPrefixExpansion) :
    UniformConductorThreeTypeIMaximal := by
  intro epsilon hepsilon
  obtain ⟨C, hC, hBound⟩ :=
    exactTypeIPrefixExpansion_implies_uniform hExpansion epsilon hepsilon
  refine ⟨C, hC, ?_⟩
  intro N hN x hx
  rw [← convolutionTypeIPrefix_eq_public]
  exact hBound N hN x hx

end

end Surface.Core.ConductorThreeVaughanTypeIBridge
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8aa27db8318a7139558e706a191fc89eb0b2cee7fcc893080c81f4b322f3f865 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeVaughanTypeIBridge/Variantc093a3a7549ae38a37e8ddabc892f9c975f5c6885f389d21e66083299026b62a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
