import Std

/-!
# Exact little-endian RS wire words

The source implementation uses sixteen little-endian bytes per 128-bit field
word, four words per sixty-four-byte stripe, zero padding, and an independent
retained compressed length. These definitions concern the reversible wire layer
and assume no field law or interpolation inverse.
-/
namespace GRWTSK.InformationTheory.ReedSolomon.Wire

def packNatLE : List UInt8 → Nat
  | [] => 0
  | byte :: bytes => byte.toNat + 256 * packNatLE bytes

def unpackNatLE : Nat → Nat → List UInt8
  | 0, _ => []
  | count + 1, word => UInt8.ofNat (word % 256) :: unpackNatLE count (word / 256)

theorem unpackNatLE_packNatLE (bytes : List UInt8) :
    unpackNatLE bytes.length (packNatLE bytes) = bytes := by
  induction bytes with
  | nil => rfl
  | cons byte bytes ih =>
    have hb : byte.toNat < 256 := byte.toNat_lt_size
    have hmod : (byte.toNat + 256 * packNatLE bytes) % 256 = byte.toNat := by omega
    have hdiv : (byte.toNat + 256 * packNatLE bytes) / 256 = packNatLE bytes := by omega
    simp [packNatLE, unpackNatLE, hmod, hdiv, ih]

theorem packNatLE_bound (bytes : List UInt8) : packNatLE bytes < 256 ^ bytes.length := by
  induction bytes with
  | nil => decide
  | cons byte bytes ih =>
    have hb : byte.toNat < 256 := byte.toNat_lt_size
    simp only [packNatLE, List.length_cons, Nat.pow_succ]
    omega

theorem packNatLE_append_zero (bytes : List UInt8) (count : Nat) :
    packNatLE (bytes ++ List.replicate count 0) = packNatLE bytes := by
  induction bytes with
  | nil =>
    induction count with
    | zero => rfl
    | succ count ih =>
      have hi : packNatLE (List.replicate count 0) = 0 := by simpa only [List.nil_append, packNatLE] using ih
      simp [List.replicate_succ, packNatLE, hi]
  | cons byte bytes ih => simp [packNatLE, ih]

def pad (count : Nat) (bytes : List UInt8) : List UInt8 :=
  bytes.take count ++ List.replicate (count - bytes.length) 0

theorem pad_length (count : Nat) (bytes : List UInt8) : (pad count bytes).length = count := by
  simp only [pad, List.length_append, List.length_take, List.length_replicate]
  omega

theorem take_pad (count : Nat) (bytes : List UInt8) (h : bytes.length ≤ count) :
    (pad count bytes).take bytes.length = bytes := by
  simp [pad, List.take_of_length_le h]

theorem pad_nil (count : Nat) : pad count [] = List.replicate count 0 := by
  simp [pad]

theorem pad_cons (count : Nat) (byte : UInt8) (bytes : List UInt8) :
    pad (count + 1) (byte :: bytes) = byte :: pad count bytes := by
  simp [pad, List.take_succ_cons]

/-- Padding respects fixed-width subdivision, including a partial last piece. -/
theorem pad_add (left right : Nat) (bytes : List UInt8) :
    pad (left + right) bytes = pad left bytes ++ pad right (bytes.drop left) := by
  induction left generalizing bytes with
  | zero => simp [pad]
  | succ left ih =>
    cases bytes with
    | nil => simp [pad_nil]
    | cons byte bytes =>
      simpa only [Nat.succ_add, pad_cons, List.drop_succ_cons,
        List.cons_append] using congrArg (byte :: ·) (ih bytes)

def packWord (bytes : List UInt8) : BitVec 128 :=
  BitVec.ofNat 128 (packNatLE (pad 16 bytes))

def unpackWord (word : BitVec 128) : List UInt8 := unpackNatLE 16 word.toNat

/-- Sixteen little-endian byte digits fit exactly within the concrete 128-bit word. -/
theorem unpackWord_packWord (bytes : List UInt8) :
    unpackWord (packWord bytes) = pad 16 bytes := by
  have hb := packNatLE_bound (pad 16 bytes)
  rw [pad_length] at hb
  have ht : packNatLE (pad 16 bytes) < 2 ^ 128 := by simpa using hb
  simp only [packWord, unpackWord, BitVec.toNat_ofNat, Nat.mod_eq_of_lt ht]
  have h := unpackNatLE_packNatLE (pad 16 bytes)
  simpa only [pad_length] using h

/-- Retained input length removes only the zero high bytes of a partial word. -/
theorem unpackWord_packWord_take (bytes : List UInt8) (h : bytes.length ≤ 16) :
    (unpackWord (packWord bytes)).take bytes.length = bytes := by
  rw [unpackWord_packWord, take_pad 16 bytes h]

/-- Exactly four little-endian data words per sixty-four-byte stripe. -/
def packStripe (bytes : List UInt8) : List (BitVec 128) :=
  [packWord bytes, packWord (bytes.drop 16),
   packWord (bytes.drop 32), packWord (bytes.drop 48)]

def unpackStripe (words : List (BitVec 128)) : List UInt8 := words.flatMap unpackWord

theorem packStripe_length (bytes : List UInt8) : (packStripe bytes).length = 4 := rfl

/-- The four systematic RS data words preserve exactly a zero-padded stripe. -/
theorem unpackStripe_packStripe (bytes : List UInt8) :
    unpackStripe (packStripe bytes) = pad 64 bytes := by
  simp only [unpackStripe, packStripe, List.flatMap_cons, List.flatMap_nil,
    List.append_nil, unpackWord_packWord]
  have h0 := pad_add 16 48 bytes
  have h1 := pad_add 16 32 (bytes.drop 16)
  have h2 := pad_add 16 16 (bytes.drop 32)
  simp only [List.drop_drop, Nat.reduceAdd] at h0 h1 h2
  rw [show 64 = 16 + 48 by decide, h0, h1, h2]

theorem unpackStripe_packStripe_take (bytes : List UInt8) (h : bytes.length ≤ 64) :
    (unpackStripe (packStripe bytes)).take bytes.length = bytes := by
  rw [unpackStripe_packStripe, take_pad 64 bytes h]

/-- A declared number of stripes: each is four systematic 128-bit words. -/
def packStripes : Nat → List UInt8 → List (List (BitVec 128))
  | 0, _ => []
  | count + 1, bytes => packStripe bytes :: packStripes count (bytes.drop 64)

def unpackStripes (stripes : List (List (BitVec 128))) : List UInt8 :=
  stripes.flatMap unpackStripe

theorem packStripes_length (count : Nat) (bytes : List UInt8) :
    (packStripes count bytes).length = count := by
  induction count generalizing bytes with
  | zero => rfl
  | succ count ih => simp [packStripes, ih]

theorem packStripes_shape (count : Nat) (bytes : List UInt8) :
    ∀ stripe ∈ packStripes count bytes, stripe.length = 4 := by
  induction count generalizing bytes with
  | zero => simp [packStripes]
  | succ count ih =>
    intro stripe h
    simp only [packStripes, List.mem_cons] at h
    rcases h with h | h
    · subst stripe; rfl
    · exact ih (bytes.drop 64) stripe h

/-- Decoding every stripe yields the input prefix followed only by zero padding. -/
theorem unpackStripes_packStripes (count : Nat) (bytes : List UInt8) :
    unpackStripes (packStripes count bytes) = pad (64 * count) bytes := by
  induction count generalizing bytes with
  | zero => simp [unpackStripes, packStripes, pad]
  | succ count ih =>
    simp only [packStripes, unpackStripes, List.flatMap_cons,
      unpackStripe_packStripe]
    rw [show 64 * (count + 1) = 64 + 64 * count by omega, pad_add]
    exact congrArg (pad 64 bytes ++ ·) (ih (bytes.drop 64))

def stripeCount (bytes : List UInt8) : Nat := (bytes.length + 63) / 64

def packPayload (bytes : List UInt8) : List (List (BitVec 128)) :=
  packStripes (stripeCount bytes) bytes

def unpackPayload (stripes : List (List (BitVec 128))) (retainedLength : Nat) : List UInt8 :=
  (unpackStripes stripes).take retainedLength

theorem stripeCount_capacity (bytes : List UInt8) :
    bytes.length ≤ 64 * stripeCount bytes := by
  unfold stripeCount
  omega

/-- Arbitrary compressed payloads survive sixty-four-byte grouping, concrete
LE128 conversion, stripe concatenation, and retained-length zero unpadding. -/
theorem unpackPayload_packPayload (bytes : List UInt8) :
    unpackPayload (packPayload bytes) bytes.length = bytes := by
  unfold unpackPayload packPayload
  rw [unpackStripes_packStripes, take_pad _ bytes (stripeCount_capacity bytes)]

end GRWTSK.InformationTheory.ReedSolomon.Wire
