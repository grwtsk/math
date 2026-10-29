# Torsion Witness — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bcaede3eff68c459e7967c2eb15a8daea6c53a6` · SHA-256 `9b77002fd5e58d5d763ffdb39a004ee4cb5c6a17b88a95dd59cdad49cb607c01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Arithmetic.ModularWitness

/-!
# Folder.Theorem.Arithmetic.TorsionWitness

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.arithmetic.torsion_witness
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Arithmetic

theorem torsion_witness_sound {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    {G : ECGroupLaw E}
    {P : ECPoint E}
    {n : Nat}
    (h : HasOrder G P n) :
    IsTorsion G P :=
  torsion_of_hasOrder h

theorem modular_witness_exposes_claim {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    {β : Type _}
    (W : ModularRelationWitness E β) :
    modularRelationClaim W = W.certified :=
  rfl

end Arithmetic
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef9f1ee3c19c305624de88a5c9194208ef5cd929a016656d6de6059dde23b660 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/TorsionWitness/Variant9b77002fd5e58d5d763ffdb39a004ee4cb5c6a17b88a95dd59cdad49cb607c01.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
