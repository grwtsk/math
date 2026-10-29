/-
Lossless variable-row packet codec and encoder injectivity
ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas/direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
Source original SHA-256: 82dd668c139400a90c72960ea256123c8c9d98cac76646b32d2082097727f83e
Manual conceptual split; uncompiled and not mathematically admitted.
These provisional roles and computational characterizations are user-supplied.
Existing source attribution, source identities and notices remain preserved in the immutable source archive.
Original FilesystemCodec.FieldRows remains an unresolved legacy import; no dependency replay or mathematical admission is asserted.
-/
import FilesystemCodec.FieldRows

/-!
# Lossless composition of filesystem serialization and matrix framing

This module composes three proved layers: an abstract canonical serializer, a
chosen byte-to-bit framing codec, and the reversible variable-row blocking
equivalence.  The resulting matrix codec is lossless on snapshots because
each supplied decoder is a left inverse and canonical blocking is an exact
equivalence.

As at the serialization layer, the exact correspondence is with the image of
the encoder: arbitrary packets are not asserted to decode.  This is a
variable-size, lossless representation and is deliberately distinct from a
fixed-width hash or digest.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.PacketFraming.Variant82dd668c

open FilesystemCodec

universe u

/--
A snapshot codec whose encoded values are canonically framed variable-row
binary matrix packets.
-/
structure FilesystemMatrixCodec
    (Snapshot : Type u)
    (r : Nat) where
  encode : Snapshot → BitPacket r
  decode : BitPacket r → Option Snapshot
  decode_encode : ∀ snapshot, decode (encode snapshot) = some snapshot

namespace FilesystemMatrixCodec

/-- A lossless filesystem matrix encoder is injective. -/
theorem encode_injective
    (C : FilesystemMatrixCodec Snapshot r) :
    Function.Injective C.encode := by
  intro x y hxy
  have hdecode := congrArg C.decode hxy
  simpa [C.decode_encode] using hdecode

end FilesystemMatrixCodec

end GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.PacketFraming.Variant82dd668c
