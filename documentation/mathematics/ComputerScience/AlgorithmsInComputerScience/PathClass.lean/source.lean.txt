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
