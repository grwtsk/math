# Moduli Stack KTheory — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98ace141a5c0d54da2905fe55c69c6c8c276ee5c` · SHA-256 `b3332bdd432fd189b160a107c0ac75ddb5071f9c91a4c113cc97d7a2899b1c17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.KTheoryClass

/-!
# Folder.DerivedSheaf.ModuliStackKTheory

Radiation role: research-boundary
BinaryMatrix spine: This module names K(M_ell) contracts, not BinaryMatrix data.
Ontology: derived.k_mell
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

structure ModuliStackContract where
  Stack : Type _
  label : String
  isMell : Prop
  isMell_certified : isMell
  constructedInternally : Prop := False

structure MellKTheory where
  mell : ModuliStackContract
  K : KTheorySpace
  K_of_Mell : Prop
  K_of_Mell_certified : K_of_Mell
  sourceLabel : String

theorem mell_k_theory_targets_mell
    (M : MellKTheory) :
    M.K_of_Mell :=
  M.K_of_Mell_certified

theorem mell_contract_is_mell
    (M : ModuliStackContract) :
    M.isMell :=
  M.isMell_certified

end DerivedSheaf
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf14787442d473be93ec9776ae6e4f74bf1910840e81d73fbaf03418a9177207 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuliStackKTheory/Variantb3332bdd432fd189b160a107c0ac75ddb5071f9c91a4c113cc97d7a2899b1c17.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
