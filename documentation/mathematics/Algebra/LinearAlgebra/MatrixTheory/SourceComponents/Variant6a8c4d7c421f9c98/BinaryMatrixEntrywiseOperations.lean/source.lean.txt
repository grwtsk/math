/-
BinaryMatrixEntrywiseOperations — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77
Organized SHA-256: 02587afbb8384718f0448dbaf9e54afd048908e902439e33230a3c8aaffb1807
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete unary/complement and binary entrywise operations. Ragged zipWith uses the left shape and exact zero fallback, not equal-shape truncation or an added hypothesis. Original declaration namespace and import identities remain exact. Same-source companion imports, if any, are explicit. Source documentation may describe archived workflow components. No Lean elaboration, provider activation, semantic acceptance or namespace coimport compatibility is asserted. -/

import Folder.Carrier.Bit
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.SourceComponents.Variant6a8c4d7c421f9c98.FiniteBinaryMatrixCarrier

/-!
# Folder.Carrier.BinaryMatrix

Radiation role: core-carrier
BinaryMatrix spine: This module sits on or immediately beside Folder.Carrier.BinaryMatrix as finite carrier infrastructure for the radiation program.
Ontology: bm.binary_matrix
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: carrier
-/


namespace Folder
namespace Carrier
namespace BinaryMatrix
def map (f : Bit → Bit) (M : BinaryMatrix) : BinaryMatrix :=
  ofFunction M.m M.n (fun i j => f (M.get i j))

def zipWith (f : Bit → Bit → Bit) (M N : BinaryMatrix) : BinaryMatrix :=
  ofFunction M.m M.n
    (fun i j =>
      if hi : i.val < N.m then
        if hj : j.val < N.n then
          f (M.get i j) (N.get ⟨i.val, hi⟩ ⟨j.val, hj⟩)
        else
          f (M.get i j) 0
      else
        f (M.get i j) 0)

def complement (M : BinaryMatrix) : BinaryMatrix :=
  map Bit.flip M

@[simp]
theorem rows_map (f : Bit → Bit) (M : BinaryMatrix) :
    rows (map f M) = rows M :=
  rfl

@[simp]
theorem cols_map (f : Bit → Bit) (M : BinaryMatrix) :
    cols (map f M) = cols M :=
  rfl

@[simp]
theorem get_map (f : Bit → Bit) (M : BinaryMatrix)
    (i : Fin M.m) (j : Fin M.n) :
    get (map f M) i j = f (M.get i j) :=
  rfl

@[simp]
theorem rows_zipWith (f : Bit → Bit → Bit) (M N : BinaryMatrix) :
    rows (zipWith f M N) = rows M :=
  rfl

@[simp]
theorem cols_zipWith (f : Bit → Bit → Bit) (M N : BinaryMatrix) :
    cols (zipWith f M N) = cols M :=
  rfl

@[simp]
theorem get_zipWith
    (f : Bit → Bit → Bit)
    (M N : BinaryMatrix)
    (i : Fin M.m)
    (j : Fin M.n) :
    get (zipWith f M N) i j =
      if hi : i.val < N.m then
        if hj : j.val < N.n then
          f (M.get i j) (N.get ⟨i.val, hi⟩ ⟨j.val, hj⟩)
        else
          f (M.get i j) 0
      else
        f (M.get i j) 0 :=
  rfl

@[simp]
theorem rows_complement (M : BinaryMatrix) :
    rows (complement M) = rows M :=
  rfl

@[simp]
theorem cols_complement (M : BinaryMatrix) :
    cols (complement M) = cols M :=
  rfl

@[simp]
theorem get_complement (M : BinaryMatrix) (i : Fin M.m) (j : Fin M.n) :
    get (complement M) i j = Bit.flip (M.get i j) :=
  rfl

end BinaryMatrix
end Carrier
end Folder
