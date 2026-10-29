import Std

/-! Concrete MSB-first Huffman wire packing. No Huffman tree or field hypothesis
is used here. Partial final octets are zero-filled and their true bit count is
retained separately, as in Rust huffman.rs and Python huffman.py. -/
namespace GRWTSK.InformationTheory.Huffman.Wire

def octet (a b c d e f g h : Bool) : UInt8 :=
  UInt8.ofNat ((if a then 128 else 0) + (if b then 64 else 0) +
    (if c then 32 else 0) + (if d then 16 else 0) +
    (if e then 8 else 0) + (if f then 4 else 0) +
    (if g then 2 else 0) + (if h then 1 else 0))

/-- Literal shift/OR form of the Rust packing loop after eight positions. -/
def rustOctet (a b c d e f g h : Bool) : UInt8 :=
  (a.toUInt8 <<< 7) ||| (b.toUInt8 <<< 6) ||| (c.toUInt8 <<< 5) |||
  (d.toUInt8 <<< 4) ||| (e.toUInt8 <<< 3) ||| (f.toUInt8 <<< 2) |||
  (g.toUInt8 <<< 1) ||| h.toUInt8

/-- Numeric encoding agrees with the concrete fixed-width shift/OR operations. -/
theorem octet_eq_rustOctet (a b c d e f g h : Bool) :
    octet a b c d e f g h = rustOctet a b c d e f g h := by
  cases a <;> cases b <;> cases c <;> cases d <;>
    cases e <;> cases f <;> cases g <;> cases h <;> decide

def octetBits (byte : UInt8) : List Bool :=
  [byte.toNat / 128 % 2 == 1, byte.toNat / 64 % 2 == 1,
   byte.toNat / 32 % 2 == 1, byte.toNat / 16 % 2 == 1,
   byte.toNat / 8 % 2 == 1, byte.toNat / 4 % 2 == 1,
   byte.toNat / 2 % 2 == 1, byte.toNat % 2 == 1]

/-- Literal shift/mask form used by both Rust and Python decoders. The bit
result is exposed as a Nat only after the fixed-width UInt8 operations. -/
def rustOctetBits (byte : UInt8) : List Bool :=
  [((byte >>> 7) &&& 1).toNat == 1, ((byte >>> 6) &&& 1).toNat == 1,
   ((byte >>> 5) &&& 1).toNat == 1, ((byte >>> 4) &&& 1).toNat == 1,
   ((byte >>> 3) &&& 1).toNat == 1, ((byte >>> 2) &&& 1).toNat == 1,
   ((byte >>> 1) &&& 1).toNat == 1, (byte &&& 1).toNat == 1]

theorem octetBits_eq_rustOctetBits (byte : UInt8) :
    octetBits byte = rustOctetBits byte := by
  simp [octetBits, rustOctetBits, Nat.shiftRight_eq_div_pow]

/-- Eight booleans reconstruct exactly after their numeric UInt8 encoding.
`decide` uses kernel reduction on all 256 boolean cases; no native oracle. -/
theorem octet_roundTrip (a b c d e f g h : Bool) :
    octetBits (octet a b c d e f g h) = [a,b,c,d,e,f,g,h] := by
  cases a <;> cases b <;> cases c <;> cases d <;>
    cases e <;> cases f <;> cases g <;> cases h <;> decide

/-- Structural eight-bit grouping, with zero-filled trailing low bits. -/
def pack : List Bool → List UInt8
  | [] => []
  | [a] => [octet a false false false false false false false]
  | [a,b] => [octet a b false false false false false false]
  | [a,b,c] => [octet a b c false false false false false]
  | [a,b,c,d] => [octet a b c d false false false false]
  | [a,b,c,d,e] => [octet a b c d e false false false]
  | [a,b,c,d,e,f] => [octet a b c d e f false false]
  | [a,b,c,d,e,f,g] => [octet a b c d e f g false]
  | a::b::c::d::e::f::g::h::rest => octet a b c d e f g h :: pack rest

def unpack (bytes : List UInt8) (bitCount : Nat) : List Bool :=
  (bytes.flatMap octetBits).take bitCount

theorem unpack_pack (bits : List Bool) : unpack (pack bits) bits.length = bits := by
  induction bits using pack.induct with
  | case1 => simp [pack, unpack]
  | case2 a => simp [pack, unpack, octet_roundTrip]
  | case3 a b => simp [pack, unpack, octet_roundTrip]
  | case4 a b c => simp [pack, unpack, octet_roundTrip]
  | case5 a b c d => simp [pack, unpack, octet_roundTrip]
  | case6 a b c d e => simp [pack, unpack, octet_roundTrip]
  | case7 a b c d e f => simp [pack, unpack, octet_roundTrip]
  | case8 a b c d e f g => simp [pack, unpack, octet_roundTrip]
  | case9 a b c d e f g h rest ih =>
    simpa [pack, unpack, octet_roundTrip, List.length_cons, List.take_succ_cons] using ih

/-- All physically stored bits have the source prefix and fewer than eight
zero low padding bits. This proves padding validity, not merely its removal. -/
theorem storedBits_padding (bits : List Bool) :
    ∃ padding, padding < 8 ∧
      (pack bits).flatMap octetBits = bits ++ List.replicate padding false := by
  induction bits using pack.induct with
  | case1 => exact ⟨0, by decide, by simp [pack]⟩
  | case2 a => exact ⟨7, by decide, by simp [pack, octet_roundTrip]⟩
  | case3 a b => exact ⟨6, by decide, by simp [pack, octet_roundTrip]⟩
  | case4 a b c => exact ⟨5, by decide, by simp [pack, octet_roundTrip]⟩
  | case5 a b c d => exact ⟨4, by decide, by simp [pack, octet_roundTrip]⟩
  | case6 a b c d e => exact ⟨3, by decide, by simp [pack, octet_roundTrip]⟩
  | case7 a b c d e f => exact ⟨2, by decide, by simp [pack, octet_roundTrip]⟩
  | case8 a b c d e f g => exact ⟨1, by decide, by simp [pack, octet_roundTrip]⟩
  | case9 a b c d e f g h rest ih =>
    obtain ⟨padding, hp, he⟩ := ih
    exact ⟨padding, hp, by simp [pack, octet_roundTrip, he]⟩

/-- The stored byte count is ceil(bitCount/8), including empty streams. -/
theorem pack_length (bits : List Bool) :
    (pack bits).length = (bits.length + 7) / 8 := by
  induction bits using pack.induct with
  | case1 => simp [pack]
  | case2 a => simp [pack]
  | case3 a b => simp [pack]
  | case4 a b c => simp [pack]
  | case5 a b c d => simp [pack]
  | case6 a b c d e => simp [pack]
  | case7 a b c d e f => simp [pack]
  | case8 a b c d e f g => simp [pack]
  | case9 a b c d e f g h rest ih =>
    simp only [pack, List.length_cons] at *
    omega

end GRWTSK.InformationTheory.Huffman.Wire
