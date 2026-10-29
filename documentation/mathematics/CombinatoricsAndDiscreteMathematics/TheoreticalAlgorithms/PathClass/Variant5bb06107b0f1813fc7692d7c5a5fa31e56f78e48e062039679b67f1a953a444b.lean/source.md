# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PathClass.Variant5bb06107b0f1813fc7692d7c5a5fa31e56f78e48e062039679b67f1a953a444b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ff7e4abb8af6197daf309067654a33eeee58baa` · SHA-256 `5bb06107b0f1813fc7692d7c5a5fa31e56f78e48e062039679b67f1a953a444b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Carrier.Bit

/-!
# Folder.Spectral.PathClass

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.path_class
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace Folder
namespace Spectral

open Carrier

inductive EndpointClass
  | zero_zero
  | zero_one
  | one_zero
  | one_one
deriving DecidableEq, Repr

namespace EndpointClass

def ofEndpoints (a b : Bit) : EndpointClass :=
  if a = 0 then
    if b = 0 then zero_zero else zero_one
  else
    if b = 0 then one_zero else one_one

end EndpointClass

def lastBit? : List Bit → Option Bit
  | [] => none
  | [b] => some b
  | _ :: rest => lastBit? rest

def endpointClassOfBits : List Bit → Option EndpointClass
  | [] => none
  | b :: rest => some (EndpointClass.ofEndpoints b ((lastBit? (b :: rest)).getD b))

theorem lastBit?_cons_ne_none (b : Bit) (rest : List Bit) :
    ∃ z, lastBit? (b :: rest) = some z := by
  induction rest generalizing b with
  | nil =>
      exact ⟨b, rfl⟩
  | cons c rest ih =>
      simpa [lastBit?] using ih c

theorem endpointClass_depends_only_on_endpoints
    {xs : List Bit}
    {a b : Bit}
    (hfirst : xs.head? = some a)
    (hlast : lastBit? xs = some b) :
    endpointClassOfBits xs = some (EndpointClass.ofEndpoints a b) := by
  cases xs with
  | nil =>
      simp [lastBit?] at hlast
  | cons x rest =>
      simp at hfirst
      subst x
      simp [endpointClassOfBits, hlast]

end Spectral
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31553d6935d65f235b35acf4d69c8c47a3cff33bf805f6f6c34cc68221fb793c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant5bb06107b0f1813fc7692d7c5a5fa31e56f78e48e062039679b67f1a953a444b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
