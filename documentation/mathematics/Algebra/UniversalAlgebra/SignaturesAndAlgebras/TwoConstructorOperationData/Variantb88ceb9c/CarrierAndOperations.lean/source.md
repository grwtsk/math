# Complete source: GRWTSK.Algebra.UniversalAlgebra.SignaturesAndAlgebras.TwoConstructorOperationData.Variantb88ceb9c.CarrierAndOperations

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ddadc4f0c6c43b0b2d682880ed799d15aee4d8b` · SHA-256 `c69f9e0382bb443544f495fd4e4acc03b82b36806188257c6f116f1c011a8f11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Two-constructor carrier with a selected zero, left-projection binary operation and identity unary operation
ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas/direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
Source original SHA-256: b88ceb9cf61945a7e0c74f356e0d608b808818f6d920dd3ab616749ac13c4c3b
Manual conceptual split; uncompiled and not mathematically admitted.
These provisional roles and computational characterizations are user-supplied.
Existing source attribution, source identities and notices remain preserved in the immutable source archive.
Only the stated complete pure-data component is copied. Original whole-file documentation and field labels are retained as source context and do not establish arithmetic provenance.
ToyKClass has exactly the source constructors zero and one and its original deriving DecidableEq clause. No Fintype instance, group axioms, K-theory group or group-completion theorem is added.
The exact legacy BaseCaseIndexAnchor import is unresolved. An explicit open Folder.DerivedSheaf preserves the original raw KTheorySpace/KTheoryClass provider; no new review103 provider is substituted.
-/
import Folder.DerivedSheaf.BaseCaseIndexAnchor

/-!
# Folder.DerivedSheaf.StandardReferenceBaseCase

Radiation role: research-boundary
BinaryMatrix spine: This module supplies toy and external standard references for base-case index anchors, not BinaryMatrix data.
Ontology: base.standard_reference
Pivot role: spectral
Zero typology: nonzero-euler
Contract boundary: standard-reference
Composite stack role: derived-sheaf
-/

namespace GRWTSK.Algebra.UniversalAlgebra.SignaturesAndAlgebras.TwoConstructorOperationData.Variantb88ceb9c

open Folder.DerivedSheaf

noncomputable section

inductive ToyKClass where
  | zero
  | one
deriving DecidableEq

def standardKTheorySpace : KTheorySpace where
  Base := PUnit
  Class := ToyKClass
  zero := ToyKClass.zero
  add := fun x _ => x
  neg := fun x => x
  label := "toy K(M_ell) two-point carrier"

end

end GRWTSK.Algebra.UniversalAlgebra.SignaturesAndAlgebras.TwoConstructorOperationData.Variantb88ceb9c
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f882dbc9649bdb0ca0fe431acb33da7bd24bd6066cd106d42e8f712cfb43ce6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/SignaturesAndAlgebras/TwoConstructorOperationData/Variantb88ceb9c/CarrierAndOperations.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
