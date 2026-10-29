# Complete source: GRWTSK.Algebra.GroupTheory.GaloisDescent.Variantbd822dcc09a6b86b7581beecc198d3d172697b5a168e95cc0a631fd6cf066629

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8562022557c1a238efff96c6b26d167ad88fa76a` · SHA-256 `bd822dcc09a6b86b7581beecc198d3d172697b5a168e95cc0a631fd6cf066629`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Federation.GaloisDescent

/-!
# Galois cocycles, transport compatibility, and effective descent
-/

namespace Mathematics.MobiusOntology

universe u v w x y

abbrev GaloisCocycle
    (Galois : Type u) (Coefficient : Type v)
    [Group Galois] [Group Coefficient] [MulAction Galois Coefficient] :=
  Mathematics.Federation.GaloisCocycle Galois Coefficient

abbrev GaloisDescentDatum
    (Galois : Type u) (Coefficient : Type v) (ExtendedObject : Type w)
    [Group Galois] [Group Coefficient] [MulAction Galois Coefficient] :=
  Mathematics.Federation.GaloisDescentDatum
    Galois Coefficient ExtendedObject

abbrev EffectiveDescentCertificate
    {Galois : Type u} {Coefficient : Type v}
    {BaseObject : Type w} {ExtendedObject : Type x}
    [Group Galois] [Group Coefficient] [MulAction Galois Coefficient]
    (baseChange : BaseObject → ExtendedObject)
    (datum : GaloisDescentDatum Galois Coefficient ExtendedObject) :=
  Mathematics.Federation.EffectiveDescentCertificate baseChange datum

/-- The descent datum must commute with transported holonomy. -/
structure DescentTransportCompatibility
    (Galois : Type u) (Loop : Type v) (Object : Type w) where
  galoisLoop : Galois → Loop → Loop
  descend : Galois → Object → Object
  holonomy : Loop → Object → Object
  commutes :
    ∀ symmetry loop object,
      descend symmetry (holonomy loop object) =
        holonomy (galoisLoop symmetry loop)
          (descend symmetry object)

end Mathematics.MobiusOntology
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7352422dd474602cdbdaca32f5961324738d5816cd3dc983740ccfcdb41f4b58 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/GaloisDescent/Variantbd822dcc09a6b86b7581beecc198d3d172697b5a168e95cc0a631fd6cf066629.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
