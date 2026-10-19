import Folder.Carrier.Bit

/-!
# Folder.Archive.Byte

Radiation role: archive-codec
BinaryMatrix spine: This module defines byte values before byte payloads are represented as BinaryMatrix rows.
Ontology: archive.byte
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: carrier
-/

namespace Folder
namespace Archive

abbrev Byte := Fin 256

namespace Byte

def toNat (b : Byte) : Nat := b.val

def ofNat? (n : Nat) : Option Byte :=
  if h : n < 256 then some ⟨n, h⟩ else none

structure ByteCodec where
  toBits : Byte → Fin 8 → Carrier.Bit
  ofBits : (Fin 8 → Carrier.Bit) → Byte
  roundtrip : ∀ b, ofBits (toBits b) = b

theorem byteCodec_roundtrip
    (C : ByteCodec)
    (b : Byte) :
    C.ofBits (C.toBits b) = b :=
  C.roundtrip b

def msb0CodecTarget : Prop :=
  Nonempty ByteCodec

end Byte
end Archive
end Folder
