import Folder.Archive.Byte
import Folder.Archive.ByteMatrix
import Folder.Archive.FolderTree
import Folder.Archive.Manifest
import Folder.Archive.MatrixOrbit

/-!
# Folder.Archive.SymmetricArchiveCodec

Radiation role: archive-codec
BinaryMatrix spine: This module separates manifest serializer roundtrip from copy-presentation BinaryMatrixStream materialization.
Ontology: archive.symmetric_bitmatrix_stream
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: carrier
-/

namespace Folder
namespace Archive

structure ManifestSerializer where
  serialize : FolderTree → List Byte
  deserialize : List Byte → Option FolderTree
  roundtrip : ∀ T, deserialize (serialize T) = some T

structure PresentationEncoder (A : MatrixAction) where
  canonicalizer : OrbitCanonicalizer A
  encodeMatrices :
    List Carrier.BinaryMatrix → SymmetricMatrixStream A copyRuleEngine
  materialize_encode :
    ∀ xs, materialize? (encodeMatrices xs) =
      some (binaryMatrixStreamOfList xs)

def copyPresentationEncoder : PresentationEncoder copyAction where
  canonicalizer := copyCanonicalizer
  encodeMatrices := copyAtomStream
  materialize_encode := materialize_copy_atom_stream

structure SymmetricArchivePackage (A : MatrixAction) where
  manifestBytes : List Byte
  stream : SymmetricMatrixStream A copyRuleEngine
  manifest : ArchiveManifest

def emptyArchiveManifest : ArchiveManifest where
  dirs := []
  files := []
  atomCount := 0
  logicalLayerCount := 0
  symmetryGroup := "copy"
  rulebookId := "copy"

def encodeArchiveWith
    (S : ManifestSerializer)
    (P : PresentationEncoder A)
    (T : FolderTree) :
    SymmetricArchivePackage A where
  manifestBytes := S.serialize T
  stream := P.encodeMatrices []
  manifest := emptyArchiveManifest

def decodeArchiveWith
    (S : ManifestSerializer)
    (_P : PresentationEncoder A)
    (B : SymmetricArchivePackage A) :
    Option FolderTree :=
  S.deserialize B.manifestBytes

noncomputable def materializeArchiveStream?
    (B : SymmetricArchivePackage A) :
    Option Carrier.BinaryMatrixStream :=
  materialize? B.stream

def encodeCopyMatrixArchive
    (xs : List Carrier.BinaryMatrix) :
    SymmetricArchivePackage copyAction where
  manifestBytes := []
  stream := copyAtomStream xs
  manifest := {
    emptyArchiveManifest with
    atomCount := xs.length
    logicalLayerCount := xs.length
  }

def fileByteMatricesWith
    (C : Byte.ByteCodec)
    (files : List (List Byte)) :
    List Carrier.BinaryMatrix :=
  files.map (bytesToMatrixWith C)

def encodeCopyFileMatrixArchiveWith
    (C : Byte.ByteCodec)
    (files : List (List Byte)) :
    SymmetricArchivePackage copyAction :=
  encodeCopyMatrixArchive (fileByteMatricesWith C files)

theorem manifestSerializer_decode_encode_with
    (S : ManifestSerializer)
    (P : PresentationEncoder A)
    (T : FolderTree) :
    decodeArchiveWith S P (encodeArchiveWith S P T) = some T :=
  S.roundtrip T

theorem manifestSerializer_decode_encode_copy_with
    (S : ManifestSerializer)
    (T : FolderTree) :
    decodeArchiveWith S copyPresentationEncoder
      (encodeArchiveWith S copyPresentationEncoder T) = some T :=
  S.roundtrip T

theorem encodeCopyMatrixArchive_materializes
    (xs : List Carrier.BinaryMatrix) :
    materializeArchiveStream? (encodeCopyMatrixArchive xs) =
      some (binaryMatrixStreamOfList xs) :=
  materialize_copy_atom_stream xs

theorem copyArchive_materializes_file_layers_with
    (C : Byte.ByteCodec)
    (files : List (List Byte)) :
    materializeArchiveStream?
      (encodeCopyFileMatrixArchiveWith C files) =
        some (binaryMatrixStreamOfList (fileByteMatricesWith C files)) :=
  materialize_copy_atom_stream (fileByteMatricesWith C files)

end Archive
end Folder
