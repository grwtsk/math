# Hodge De Rham Filtration — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7759a30a665ab425e48915c7daf13b7578337f29` · SHA-256 `dc740ef81be143c29de50b1e8a28e38f28720008625b501ac4851d8c9418f45b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineTensor.IntegrableConnection

/-!
# Folder.CrystallineTensor.HodgeDeRhamFiltration

Radiation role: research-boundary
BinaryMatrix spine: This module records filtration boundary data, not BinaryMatrix density or heat.
Ontology: crystalline.hodge_de_rham_filtration
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace CrystallineTensor

structure Filtration where
  Carrier : Type _
  step : Nat → Type _
  exhaustive : Prop
  exhaustive_certified : exhaustive
  separated : Prop
  separated_certified : separated
  label : String

structure HodgeDeRhamFiltration
    {C : CrystallineSite}
    (F : Crystal C) where
  filtration : Filtration
  associatedConnection : Prop
  associatedConnection_certified : associatedConnection
  degeneratesAtE1? : Prop
  harmonicBasis? : Option Type
  sourceLabel : String

theorem filtration_exhaustive
    (F : Filtration) :
    F.exhaustive :=
  F.exhaustive_certified

theorem filtration_separated
    (F : Filtration) :
    F.separated :=
  F.separated_certified

theorem hodge_de_rham_has_associated_connection
    {C : CrystallineSite}
    {F : Crystal C}
    (H : HodgeDeRhamFiltration F) :
    H.associatedConnection :=
  H.associatedConnection_certified

end CrystallineTensor
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e0020aaac557d6bfaff4b80a2843c62ca6216ec36972b78116783922b21ba83 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/HodgeDeRhamFiltration/Variantdc740ef81be143c29de50b1e8a28e38f28720008625b501ac4851d8c9418f45b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
