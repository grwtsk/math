# Approach1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `063637d9fcc0f884c48b6d068d03f3d005bef17f` · SHA-256 `30105a3b5de8b506f266dacc6bd73ecc6ed553b91a40e9957c18a3655bc8e2e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

namespace RepairReview
universe u v w a b
structure CertificateFamily (State : Type u) (Index : Type v) where
  value : Index → Type w
  observe : (i : Index) → State → value i

namespace CertificateFamily
variable {State : Type u} {Index : Type v} (C : CertificateFamily.{u, v, w} State Index)
def Equivalent (x y : State) : Prop := ∀ i, C.observe i x = C.observe i y
end CertificateFamily

structure SufficientRepresentation {State : Type u} {Index : Type v}
    (C : CertificateFamily.{u, v, w} State Index) where
  carrier : Type a
  compress : State → carrier
  recover : (i : Index) → carrier → C.value i
  recover_compress : ∀ i s, recover i (compress s) = C.observe i s

namespace SufficientRepresentation
variable {State : Type u} {Index : Type v} {C : CertificateFamily.{u, v, w} State Index}
def FactorsThrough (q : SufficientRepresentation.{u, v, w, a} C)
    (r : SufficientRepresentation.{u, v, w, b} C) : Prop :=
  ∃ f : r.carrier → q.carrier, q.compress = f ∘ r.compress

def IsMinimal (q : SufficientRepresentation.{u, v, w, a} C) : Prop :=
  ∀ r : SufficientRepresentation.{u, v, w, b} C, q.FactorsThrough r

set_option pp.universes true in
#check IsMinimal

theorem factor_of_minimal {q : SufficientRepresentation.{u, v, w, a} C}
    (hq : IsMinimal.{u, v, w, a, b} q)
    (r : SufficientRepresentation.{u, v, w, b} C) : q.FactorsThrough r :=
  hq r
end SufficientRepresentation
end RepairReview
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4fe22a450697195899b9e49ed416dea9f2723b0020ac9e4fe5e8c1b60ff8b906 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/30105a3b5de8b506f266dacc6bd73ecc6ed553b91a40e9957c18a3655bc8e2e2Approach1/Variant30105a3b5de8b506f266dacc6bd73ecc6ed553b91a40e9957c18a3655bc8e2e2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
