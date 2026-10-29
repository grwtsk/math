# Complete source: GRWTSK.Analysis.FunctionalAnalysis.OperatorPullback.Variant3196a6d6daef4f9b02958f30e9397e084e86f923684446970523a042390cc6a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6716a13c788fcd5bc5f5b063cb1a38fa603d646` · SHA-256 `3196a6d6daef4f9b02958f30e9397e084e86f923684446970523a042390cc6a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.ResidueDeflection.Trace.PacketModel
import Mathlib.Analysis.InnerProductSpace.Adjoint

/-!
# Fixed-Hilbert operator pullback
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Trace

universe uHilbert

noncomputable def operatorPullback
    {Hilbert : Type uHilbert}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (transport defect : HilbertEnd Hilbert) :
    HilbertEnd Hilbert :=
  transport.adjoint.comp
    (defect.comp transport)

end Mathematics.SemiLocalDefect.ResidueDeflection.Trace
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a84212f67db8d2d92af363c4086201513ff01e2aee3d9305c1ebffffa4436a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/OperatorPullback/Variant3196a6d6daef4f9b02958f30e9397e084e86f923684446970523a042390cc6a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
