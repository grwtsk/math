# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RepresentationFaithfulness.Variante7dadde62f2f861d1a881463f4c787dbd94b9c18550351bcc501ec3257e58d8b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e03b7b75c7ccda1a7f84d1b802f2a71688ac4068` · SHA-256 `e7dadde62f2f861d1a881463f4c787dbd94b9c18550351bcc501ec3257e58d8b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Research.RepresentationFaithfulness

/-!
# Folder.Theorem.Research.RepresentationFaithfulness

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.research.representation_faithfulness
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace Research
namespace RepresentationFaithfulness

theorem every_selected_twist_has_preimage
    {Γ α : Type _}
    {one : Γ}
    {mul : Γ → Γ → Γ}
    {R : Monodromy.MonodromyRepresentation Γ mul one α}
    {T : Folder.Research.RepresentationFaithfulness.SelectedTwistGroup α}
    (C : Folder.Research.RepresentationFaithfulness.ClassifiesSelectedTwists R T)
    {φ : α ≃ α}
    (hφ : φ ∈ T.Twist) :
    ∃ g, R.ρ g = φ :=
  Folder.Research.RepresentationFaithfulness.every_selected_twist_has_preimage
    C hφ

theorem selected_twist_preimage_unique_of_faithful
    {Γ α : Type _}
    {one : Γ}
    {mul : Γ → Γ → Γ}
    {R : Monodromy.MonodromyRepresentation Γ mul one α}
    {T : Folder.Research.RepresentationFaithfulness.SelectedTwistGroup α}
    (C : Folder.Research.RepresentationFaithfulness.ClassifiesSelectedTwists R T)
    {φ : α ≃ α}
    {g h : Γ}
    (hg : R.ρ g = φ)
    (hh : R.ρ h = φ) :
    g = h :=
  Folder.Research.RepresentationFaithfulness.selected_twist_preimage_unique_of_faithful
    C hg hh

end RepresentationFaithfulness
end Research
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ccbcee547bbc88361a2371f8e0027eb2239d4bf7fc02c27952d20295f7e4e01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RepresentationFaithfulness/Variante7dadde62f2f861d1a881463f4c787dbd94b9c18550351bcc501ec3257e58d8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
