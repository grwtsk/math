import Folder.Archive.Byte
import Folder.Carrier.BinaryMatrix

/-!
# Folder.Archive.ByteMatrix

Radiation role: archive-codec
BinaryMatrix spine: This module represents byte payloads as 8-column BinaryMatrix values.
Ontology: archive.byte_matrix
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: carrier
-/

namespace Folder
namespace Archive

def bytesToMatrixWith
    (C : Byte.ByteCodec)
    (bs : List Byte) :
    Carrier.BinaryMatrix :=
  Carrier.BinaryMatrix.ofFunction bs.length 8
    (fun i j => C.toBits (bs.get i) j)

def matrixToBytesWith
    (C : Byte.ByteCodec)
    (M : Carrier.BinaryMatrix) :
    Option (List Byte) :=
  some (List.ofFn
    (fun i : Fin M.m =>
      C.ofBits (fun j : Fin 8 =>
        if h : j.val < M.n then
          M.get i ⟨j.val, h⟩
        else
          0)))

theorem matrixToBytes?_bytesToMatrix_of_codec
    (C : Byte.ByteCodec)
    (bs : List Byte) :
    matrixToBytesWith C (bytesToMatrixWith C bs) = some bs := by
  change
    some (List.ofFn
      (fun i : Fin bs.length =>
        C.ofBits (fun j : Fin 8 =>
          if h : j.val < 8 then
            C.toBits (bs.get i) ⟨j.val, h⟩
          else
            0))) = some bs
  congr
  have hfun :
      (fun i : Fin bs.length =>
        C.ofBits (fun j : Fin 8 =>
          if h : j.val < 8 then
            C.toBits (bs.get i) ⟨j.val, h⟩
          else
            0)) =
        (fun i : Fin bs.length => bs.get i) := by
    funext i
    have hbits :
        (fun j : Fin 8 =>
          if h : j.val < 8 then
            C.toBits (bs.get i) ⟨j.val, h⟩
          else
            0) = C.toBits (bs.get i) := by
      funext j
      by_cases h : j.val < 8
      · have hj : (⟨j.val, h⟩ : Fin 8) = j := Fin.ext rfl
        simp [h, hj]
      · exact False.elim (h j.isLt)
    rw [hbits, C.roundtrip]
  rw [hfun]
  exact List.ofFn_get bs

end Archive
end Folder
