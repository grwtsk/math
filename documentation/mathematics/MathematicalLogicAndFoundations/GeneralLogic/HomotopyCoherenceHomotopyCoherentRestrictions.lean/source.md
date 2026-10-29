# Homotopy Coherence Homotopy Coherent Restrictions — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd4f475a5313023b2b8d81aa381bcd4962439f77` · SHA-256 `31792306851eb0c86057a21efd9c3cdf1ce468bf64eaddd7060cc2a2d04ca725`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.AdelicInfinityTopos.RestrictionMap

/-!
# Folder.AdelicInfinityTopos.HomotopyCoherence

Radiation role: research-boundary
BinaryMatrix spine: This module stores infinity-categorical coherence as contract fields.
Ontology: adelic.homotopy_coherence
Pivot role: dual
Zero typology: mixed
Contract boundary: contract
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace AdelicInfinityTopos

structure HomotopyCoherentRestrictions
    (S : AdelicSpectralSheaf) where
  restriction :
    Place → Place → Type _
  rho :
    ∀ i j, restriction i j → AdelicRestrictionMap S i j
  identityCoherent : Prop
  identityCoherent_certified : identityCoherent
  compositionCoherent : Prop
  compositionCoherent_certified : compositionCoherent
  higherCoherence : Prop
  higherCoherence_certified : higherCoherence

theorem homotopy_restrictions_identity_coherent
    {S : AdelicSpectralSheaf}
    (H : HomotopyCoherentRestrictions S) :
    H.identityCoherent :=
  H.identityCoherent_certified

theorem homotopy_restrictions_composition_coherent
    {S : AdelicSpectralSheaf}
    (H : HomotopyCoherentRestrictions S) :
    H.compositionCoherent :=
  H.compositionCoherent_certified

theorem homotopy_restrictions_higher_coherent
    {S : AdelicSpectralSheaf}
    (H : HomotopyCoherentRestrictions S) :
    H.higherCoherence :=
  H.higherCoherence_certified

end AdelicInfinityTopos
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d3f28b8d32482bc06bda90a8d3f65520ae588e6e6b26f170ed62a2f769cedf2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/HomotopyCoherence/Variant31792306851eb0c86057a21efd9c3cdf1ce468bf64eaddd7060cc2a2d04ca725.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
