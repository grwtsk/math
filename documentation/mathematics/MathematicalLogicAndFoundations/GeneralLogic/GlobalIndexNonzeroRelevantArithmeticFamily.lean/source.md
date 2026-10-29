# Global Index Nonzero Relevant Arithmetic Family — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e40ca3697e06e16376b25ed3fd8600134a5c938b` · SHA-256 `9aed678e06b2b167a9c411c806f9468f537d6d675aec8fbeb16400f2e6066cf1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.KTheoryIndex

/-!
# Folder.CanonicalPath.GlobalIndexNonzero

Radiation role: research-boundary
BinaryMatrix spine: This module names the global K-index nonvanishing target, not BinaryMatrix data.
Ontology: canonical_path.global_index_nonzero
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/--
Arithmetic objects relevant to the canonical path, together with their
contract-level K-theory indices.
-/
structure RelevantArithmeticFamily
    (M : DerivedSheaf.MellKTheory) where
  Object : Type _
  relevant : Object → Prop
  kIndexAt : Object → DerivedSheaf.KTheoryIndex M
  sourceLabel : String

/--
Uniform nonvanishing of the K-index over the relevant arithmetic family.

This is currently a contract surface: it records the theorem target as a field.
-/
structure GlobalKIndexNonzero
    (M : DerivedSheaf.MellKTheory)
    extends RelevantArithmeticFamily M where
  globalNonzero :
    ∀ x : Object, relevant x → (kIndexAt x).indexClass.Nonzero

theorem global_k_index_nonzero
    {M : DerivedSheaf.MellKTheory}
    (G : GlobalKIndexNonzero M)
    {x : G.Object}
    (h : G.relevant x) :
    (G.kIndexAt x).indexClass.Nonzero :=
  G.globalNonzero x h

/--
A named elliptic-family specialization of the same global nonzero target.

The fields are still supplied data; no BSD, modularity, or central L-value
nonvanishing theorem is proved here.
-/
structure CertifiedEllipticCurveFamily
    (M : DerivedSheaf.MellKTheory) where
  Curve : Type _
  relevantForGRHBoundary : Curve → Prop
  kIndex : Curve → DerivedSheaf.KTheoryIndex M
  uniformIndexNonzero :
    ∀ E : Curve, relevantForGRHBoundary E →
      (kIndex E).indexClass.Nonzero
  sourceLabel : String

theorem elliptic_family_global_index_nonzero
    {M : DerivedSheaf.MellKTheory}
    (E : CertifiedEllipticCurveFamily M)
    {x : E.Curve}
    (h : E.relevantForGRHBoundary x) :
    (E.kIndex x).indexClass.Nonzero :=
  E.uniformIndexNonzero x h

end CanonicalPath
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c87ad8fb3378962404dce1a8e61695864ddd00715be528cef824948a8159314 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalIndexNonzero/Variant9aed678e06b2b167a9c411c806f9468f537d6d675aec8fbeb16400f2e6066cf1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
