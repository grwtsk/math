# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FunctionalEquation.Variantd6c6d71031bf7a4b1c13959ec04ff116614eaa75d0e2aa0e483b04011893ae9d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `170aff21e03bb559e985a68229d9cd98b0a3bd2a` · SHA-256 `d6c6d71031bf7a4b1c13959ec04ff116614eaa75d0e2aa0e483b04011893ae9d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Arithmetic.EllipticCurve.BSD.RootNumberParity

namespace Surface.Arithmetic
namespace EllipticCurve
namespace BSD

/-!
# BSD FunctionalEquation

What is formalized:
Functional-equation and root-number obligations remain certificate-gated and feed the parity and theorem-input components.

What is certificate-gated:
The actual analytic theorem inputs remain explicit certificates in the imported
component layers.

What is not claimed:
This file does not prove analytic continuation, a functional equation, Euler
product convergence, or BSD.

Primary mathematical source:
Internal Surface BSD proof-boundary and theorem-cone architecture.
-/

/-- Review-facing declaration list for the BSD `FunctionalEquation` component. -/
def functionalEquationComponentDeclarations : List String := []

end BSD
end EllipticCurve
end Surface.Arithmetic
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce701611731094a592a38607bd5cc9f337ce4be40d30701dc4244b74cdac3c78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FunctionalEquation/Variantd6c6d71031bf7a4b1c13959ec04ff116614eaa75d0e2aa0e483b04011893ae9d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
