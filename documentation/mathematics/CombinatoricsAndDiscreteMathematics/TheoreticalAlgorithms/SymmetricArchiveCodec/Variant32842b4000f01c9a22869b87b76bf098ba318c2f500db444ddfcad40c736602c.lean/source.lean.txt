import Folder.Archive.SymmetricArchiveCodec

/-!
# Folder.Theorem.Archive.SymmetricArchiveCodec

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes manifest serializer and copy archive materialization theorems.
Ontology: proof.archive.symmetric_archive_codec
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: carrier
-/

namespace Folder
namespace Theorem
namespace Archive

theorem manifestSerializer_decode_encode_copy_with
    (S : Folder.Archive.ManifestSerializer)
    (T : Folder.Archive.FolderTree) :
    Folder.Archive.decodeArchiveWith S Folder.Archive.copyPresentationEncoder
      (Folder.Archive.encodeArchiveWith S Folder.Archive.copyPresentationEncoder T) =
        some T :=
  Folder.Archive.manifestSerializer_decode_encode_copy_with S T

theorem copyArchive_materializes_file_layers_with
    (C : Folder.Archive.Byte.ByteCodec)
    (files : List (List Folder.Archive.Byte)) :
    Folder.Archive.materializeArchiveStream?
      (Folder.Archive.encodeCopyFileMatrixArchiveWith C files) =
        some (Folder.Archive.binaryMatrixStreamOfList
          (Folder.Archive.fileByteMatricesWith C files)) :=
  Folder.Archive.copyArchive_materializes_file_layers_with C files

end Archive
end Theorem
end Folder
