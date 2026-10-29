import Surface.Legacy.BinaryLogicMatrix.Stream.Core

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure Frame where
  frameIndex : Nat
  payload : SomeBinaryLogicMatrix
  rowMajorPayload : List Bool
  payloadMatchesMatrix :
    rowMajorPayload =
      BinaryLogicMatrix.rowMajorBits payload.matrix
  roundTripMatrix :
    BinaryLogicMatrix.fromBoolList
      payload.rows
      payload.cols
      rowMajorPayload =
        payload.matrix
  matrixHash : String
  previousHash? : Option String
  boundaryHash : String
  claimBoundary : List String

theorem frame_payload_is_BinaryLogicMatrix
    (F : Frame) :
    Nonempty (BinaryLogicMatrix F.payload.rows F.payload.cols) :=
  ⟨F.payload.matrix⟩

end Stream
end BinaryLogicMatrix
end Surface.Legacy
