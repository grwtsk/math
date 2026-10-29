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
