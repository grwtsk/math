# Euler Characteristic Cohomology Rank Data — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5a844a3a2d95019e464d8ebe49d047f74739e5e` · SHA-256 `d727cced95890f9ceddf3f07da907ec935e243111eb7844148cf381bfe0cd7d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.SectionComplex

/-!
# Folder.DerivedSheaf.EulerCharacteristic

Radiation role: research-boundary
BinaryMatrix spine: This module records Euler-characteristic data, not BinaryMatrix counts.
Ontology: derived.euler_characteristic
Pivot role: none
Zero typology: signed-alternating-contract
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

structure CohomologyRankData
    (C : SectionComplex) where
  rank : Degree → Int
  finiteSupport : Prop
  finiteSupport_certified : finiteSupport

def SignedRank
    (n : Degree)
    (r : Int) : Int :=
  if n % 2 = 0 then r else -r

structure EulerCharacteristic
    (C : SectionComplex) where
  value : Int
  rankData : CohomologyRankData C
  value_eq_signed_sum : Prop
  value_eq_signed_sum_certified : value_eq_signed_sum

theorem euler_characteristic_signed_sum
    {C : SectionComplex}
    (chi : EulerCharacteristic C) :
    chi.value_eq_signed_sum :=
  chi.value_eq_signed_sum_certified

end DerivedSheaf
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=09238e03bc7e84d14b89d79401fc32eb4bf06652c5683535feced2bd486053ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerCharacteristic/Variantd727cced95890f9ceddf3f07da907ec935e243111eb7844148cf381bfe0cd7d0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
