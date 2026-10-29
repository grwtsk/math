/-
Exact bit-document syntax/framing
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e2bb401b38826c5fb097d8b71828791218ea21785514859f30e58f06310c5d4a
Organized SHA-256: 3fc5bcef57329d1df85c5fb38b15e52819368de86f00945d0a13b1eaf7ad6b58
PMD: 510.7.090 coding theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Pure declarative finite bit/string data and equations only; no source IO, runtime decode/UTF8 test, omitted length bound or acceptance claim. Every copied field and proof is unchanged. -/

import BitMatrix.Codec.Source

/-!
# Canonical bit-document semantics

This is the provider-neutral semantic layer shared by runtime correspondence
tests.  It fixes prefix and payload bit order and the single final-LF framing;
resource limits and successful UTF-8 decoding remain explicit witnesses.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.CanonicalBitDocumentRelations.Variante2bb401b38826c5f

/-- A byte sequence paired with the exact Lean string whose UTF-8 encoding it is. -/
structure Utf8Payload where
  bytes : Array UInt8
  text : String
  encoding : text.toUTF8.data = bytes

/-- Least-significant-bit-first unsigned length prefix. -/
def lengthPrefixDigits (width length : Nat) : List Bool :=
  (List.range width).map (Nat.testBit length)

/-- Most-significant-bit-first digits of one byte. -/
def byteDigitsMSB (byte : UInt8) : List Bool :=
  (List.range 8).map fun index =>
    Nat.testBit byte.toNat (7 - index)

/-- Most-significant-bit-first payload digits, preserving byte order. -/
def payloadDigitsMSB (payload : Utf8Payload) : List Bool :=
  payload.bytes.toList.flatMap byteDigitsMSB

/-- Digit-level syntax; serialization adds the mandatory final LF byte. -/
structure BitDocument where
  digits : List Bool
  deriving DecidableEq, Repr

/-- Convert one Boolean digit to canonical ASCII. -/
def digitByte : Bool → UInt8
  | false => 48
  | true => 49

/-- Canonical ASCII serialization with exactly one final LF. -/
def BitDocument.serialize (document : BitDocument) : List UInt8 :=
  document.digits.map digitByte ++ [10]

/-- Canonical encoder for a fixed prefix width. -/
def encodeBitDocument (prefixWidth : Nat) (payload : Utf8Payload) : BitDocument :=
  ⟨lengthPrefixDigits prefixWidth payload.bytes.size ++ payloadDigitsMSB payload⟩

@[simp]
theorem lengthPrefixDigits_length (width length : Nat) :
    (lengthPrefixDigits width length).length = width := by
  simp [lengthPrefixDigits]

@[simp]
theorem byteDigitsMSB_length (byte : UInt8) :
    (byteDigitsMSB byte).length = 8 := by
  simp [byteDigitsMSB]

@[simp]
theorem serialize_final_lf (document : BitDocument) :
    document.serialize.getLast? = some 10 := by
  simp [BitDocument.serialize]

end GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.CanonicalBitDocumentRelations.Variante2bb401b38826c5f
