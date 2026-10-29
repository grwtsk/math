import Folder.Archive.Byte
import Folder.Archive.SafePath

/-!
# Folder.Archive.FileEntry

Radiation role: archive-manifest
BinaryMatrix spine: This module records folder entries before file bytes become BinaryMatrix archive layers.
Ontology: archive.file_entry
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: carrier
-/

namespace Folder
namespace Archive

inductive EntryKind where
  | file
  | dir
  | symlink
deriving DecidableEq, Repr

structure ArchiveEntry where
  path : SafeRelPath
  kind : EntryKind
  bytes : List Byte
  mode : Nat
  sha256 : String

end Archive
end Folder
