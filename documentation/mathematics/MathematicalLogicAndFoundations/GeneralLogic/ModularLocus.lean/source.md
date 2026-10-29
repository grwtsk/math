# Modular Locus — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29d9ff78367faf0cbfd4deac78e3e965cd291fdd` · SHA-256 `00703101a3672ba26aea4d3686d7cafe6cf931b1dc4f3af1e0c739d9ed448d98`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Arithmetic.ModularWitness
import Folder.Monodromy.EllipticShellBridge

/-!
# Folder.Core.ModularLocus

Radiation role: core-architecture
BinaryMatrix spine: This module names compatibility loci without treating BinaryMatrix, shell, or arithmetic witnesses as modularity proofs.
Ontology: core.modular_locus
Pivot role: none
Zero typology: modular
Contract boundary: witness
Composite stack role: torsion
-/

namespace Folder
namespace Core

structure ModularFormLocus where
  EllipticCurveData : Type
  ShellTorsionData : Type
  ModularWitnessData : Type
  compatible :
    EllipticCurveData → ShellTorsionData → ModularWitnessData → Prop

structure ModularLocusPoint (L : ModularFormLocus) where
  curve : L.EllipticCurveData
  shell : L.ShellTorsionData
  witness : L.ModularWitnessData
  certified : L.compatible curve shell witness

theorem modular_locus_point_certified
    {L : ModularFormLocus}
    (P : ModularLocusPoint L) :
    L.compatible P.curve P.shell P.witness :=
  P.certified

end Core
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2928a183a2d6673163316b9efbbd156758a34d73f9175b3ad50da253da6269c7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModularLocus/Variant00703101a3672ba26aea4d3686d7cafe6cf931b1dc4f3af1e0c739d9ed448d98.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
