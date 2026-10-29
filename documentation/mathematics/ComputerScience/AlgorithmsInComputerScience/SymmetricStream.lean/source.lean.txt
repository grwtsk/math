import Folder.Archive.SymmetricStream

/-!
# Folder.Theorem.Archive.SymmetricStream

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes symbolic stream copy materialization.
Ontology: proof.archive.symmetric_stream
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: carrier
-/

namespace Folder
namespace Theorem
namespace Archive

theorem materialize_copy_atom_stream
    (xs : List Folder.Carrier.BinaryMatrix) :
    Folder.Archive.materialize? (Folder.Archive.copyAtomStream xs) =
      some (Folder.Archive.binaryMatrixStreamOfList xs) :=
  Folder.Archive.materialize_copy_atom_stream xs

end Archive
end Theorem
end Folder
