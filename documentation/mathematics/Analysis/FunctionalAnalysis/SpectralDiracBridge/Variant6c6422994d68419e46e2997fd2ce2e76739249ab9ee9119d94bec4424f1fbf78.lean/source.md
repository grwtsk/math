# Complete source: GRWTSK.Analysis.FunctionalAnalysis.SpectralDiracBridge.Variant6c6422994d68419e46e2997fd2ce2e76739249ab9ee9119d94bec4424f1fbf78

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4684ee9fb4f9cf580333a84d9294f93ef07bc0d0` · SHA-256 `6c6422994d68419e46e2997fd2ce2e76739249ab9ee9119d94bec4424f1fbf78`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Cube.ZetaTraceZKP

/-!
# Spectral Dirac bridge

This module exposes the existing certificate-gated Dirac bridge syntax under a
small dedicated import surface.  It does not construct a spectral triple,
Hilbert space, Dirac operator, prismatic comparison, or trace formula.
-/

namespace Boolean.Cube.SpectralDiracBridge

abbrev TraceConstraint :=
  Boolean.Cube.ZetaTraceZKP.TraceConstraint

abbrev DiracSymbol :=
  Boolean.Cube.ZetaTraceZKP.DiracSymbol

abbrev PrismaticDifferenceSymbol :=
  Boolean.Cube.ZetaTraceZKP.PrismaticDifferenceSymbol

abbrev SpectralBridgeNode :=
  Boolean.Cube.ZetaTraceZKP.SpectralBridgeNode

abbrev ConnesStyleBridge :=
  Boolean.Cube.ZetaTraceZKP.ConnesStyleBridge

abbrev PrismaticLimitCertificate :=
  Boolean.Cube.ZetaTraceZKP.PrismaticLimitCertificate

theorem connes_bridge_has_matrix_tree_lowering
    (B : ConnesStyleBridge) :
    B.matrixTreeLoweringCert :=
  Boolean.Cube.ZetaTraceZKP.connes_bridge_has_matrix_tree_lowering B

theorem prismatic_limit_aligns_with_functional_equation
    (P : PrismaticLimitCertificate) :
    P.limitAlignedWithFunctionalEquation :=
  Boolean.Cube.ZetaTraceZKP.prismatic_limit_aligns_with_functional_equation P

end Boolean.Cube.SpectralDiracBridge
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96c886bd31e313ae3ebc3b5a888316064c858eaccd9555d6a25359b369965ab8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/SpectralDiracBridge/Variant6c6422994d68419e46e2997fd2ce2e76739249ab9ee9119d94bec4424f1fbf78.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
