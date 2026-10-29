# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GeneratedTopology.Variant663b0436ce18af01d69903444245a84103377bf02f4c0f340ce16493c28f8a0b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b14057eeedda13daa418547917a23e2e5e5b61d` · SHA-256 `663b0436ce18af01d69903444245a84103377bf02f4c0f340ce16493c28f8a0b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Site.GeneratedTopology

/-!
# Folder.Theorem.Site.GeneratedTopology

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.site.generated_topology
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace Site

open CategoryTheory

universe u v w

theorem generated_minimal
    {C : Type u} [Category.{v} C]
    (T : Folder.Site.Pretopology.{u, v, w} C)
    (Base : ∀ U : C, Folder.Site.Cover C U → Prop)
    (hbase : ∀ U S, Base U S → T.IsCover S) :
    ∀ U S, Folder.Site.GeneratedCover T Base U S → T.IsCover S :=
  Folder.Site.GeneratedCover.generated_minimal T Base hbase

end Site
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d70965999f621db4f3db814c94825c174a3a86b9559fbd3220972271b9960304 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GeneratedTopology/Variant663b0436ce18af01d69903444245a84103377bf02f4c0f340ce16493c28f8a0b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
