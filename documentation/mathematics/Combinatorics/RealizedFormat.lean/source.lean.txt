/-
RealizedFormat
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 3cabdda54a9b7fe2b0a5e6c27c564afff9f94b480bb976b1344df613dab6cb1d
Organized SHA-256: 4b5d1df012bd6991e21b144199c1fb9a4207d6a1d55f953cb3abc7fa0e43275a
PMD: 510.7.090 coding theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: physical GRWTSK subject placement only. Exact original namespace blocks, imported provider names, fields, hypotheses, equations and proofs are preserved. Historical provider lookup is unreplayed; the archive path is not an activated import alias. Distinct historical candidate versions are isolated and are not claimed compatible for coimport. No extra algebraic, analytic or computational acceptance claim is added.
-/

import BooleanMatrix.Format
import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.PartialDecodingAndImageFormats.Variant3cabdda54a9b7fe2.LosslessCodec

/-!
# BooleanMatrix codecs

A codec gives a lossless representation of values in the common matrix
carrier.
-/

namespace BooleanMatrix

universe u

namespace Codec

variable {α : Type u}

/-- The format consisting exactly of matrices realized by a codec. -/
def format
    (codec : Codec α) :
    Format where
  Valid := fun matrix =>
    ∃ value, codec.encode value = matrix

end Codec
end BooleanMatrix
