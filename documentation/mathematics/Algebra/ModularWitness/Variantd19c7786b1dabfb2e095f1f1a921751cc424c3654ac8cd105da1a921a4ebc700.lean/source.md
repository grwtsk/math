# Complete source: GRWTSK.Algebra.ModularWitness.Variantd19c7786b1dabfb2e095f1f1a921751cc424c3654ac8cd105da1a921a4ebc700

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a02f7440500afc6da29dd805fba3528c678e25b4` · SHA-256 `d19c7786b1dabfb2e095f1f1a921751cc424c3654ac8cd105da1a921a4ebc700`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Monodromy.CatalanTransport

/-!
# Folder.Monodromy.ModularWitness

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: monodromy.modular_witness
Pivot role: none
Zero typology: modular
Contract boundary: witness
Composite stack role: torsion
-/


namespace Folder
namespace Monodromy

structure ModularMonodromyWitness
    {K : Type _} [Field K]
    (E : Arithmetic.ShortWeierstrass K)
    (β : Type _) where
  invariant : β
  level : Nat
  relationName : String
  certified : Prop

structure CompatibleModularWitness
    {K : Type _} [Field K]
    {k : Nat}
    (E : Arithmetic.ShortWeierstrass K)
    (G : Arithmetic.ECGroupLaw E)
    (M : CatalanMonodromySystem k E G)
    (β : Type _) where
  witness : ModularMonodromyWitness E β
  compatible : witness.certified

theorem modular_witness_certified
    {K : Type _} [Field K]
    {k : Nat}
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {M : CatalanMonodromySystem k E G}
    {β : Type _}
    (W : CompatibleModularWitness E G M β) :
    W.witness.certified :=
  W.compatible

end Monodromy
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b830bcdaed0cd2b9e60b9e0ad1127bb6ce9cc5f7116183bc2764565e8e41dcb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/ModularWitness/Variantd19c7786b1dabfb2e095f1f1a921751cc424c3654ac8cd105da1a921a4ebc700.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
