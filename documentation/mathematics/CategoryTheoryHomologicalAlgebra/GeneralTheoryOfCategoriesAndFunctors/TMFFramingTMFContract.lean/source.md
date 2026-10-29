# TMFFraming TMFContract — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e38cc6b58927a43bc451efbfd4b23be8917bebf` · SHA-256 `0eb62f0725721bb496be3a4660850a303893ffbb345643231a602a3cb0074843`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.ResearchTopos.TMFFraming

Radiation role: research-boundary
BinaryMatrix spine: This module records TMF framing as contract data for later cellular boundary interpretation.
Ontology: research_topos.tmf_framing
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: research-topos
-/

namespace Folder
namespace ResearchTopos

structure TMFContract where
  Spectrum : Type _
  RingOfTopologicalModularForms : Type _
  hasStringOrientation : Prop
  hasWittenGenus : Prop
  hasWittenGenus_certified : hasWittenGenus
  sourceLabel : String

structure WittenGenusWitness where
  Domain : Type _
  Codomain : Type _
  genus : Domain → Codomain
  modularityWitness : Prop

structure TMFTorsionFraming where
  tmf : TMFContract
  TorsionClass : Type _
  torsionOrder? : Option Nat
  framingAnomaly : Prop
  trivialized : Prop
  trivialized_certified : trivialized

theorem tmf_has_witten_genus
    (T : TMFContract) :
    T.hasWittenGenus :=
  T.hasWittenGenus_certified

theorem tmf_framing_trivialized
    (F : TMFTorsionFraming) :
    F.trivialized :=
  F.trivialized_certified

end ResearchTopos
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59bf8d82481514fb20e508d6e00c778b981a3df1c997a9fac6bdbd79704a7192 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TMFFraming/Variant0eb62f0725721bb496be3a4660850a303893ffbb345643231a602a3cb0074843.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
