-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EntryKind.Varianta9b0282570d30b60f477c80166407749f92be7a86bbf9031c2f3512d1fdd0d43","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a9b0282570d30b60f477c80166407749f92be7a86bbf9031c2f3512d1fdd0d43","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.EntryKind.Varianta9b0282570d30b60f477c80166407749f92be7a86bbf9031c2f3512d1fdd0d43","mathematical_subject":"Computation.DataStructures","original_sha256":"a9b0282570d30b60f477c80166407749f92be7a86bbf9031c2f3512d1fdd0d43","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Archive/FileEntry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EntryKind.Varianta9b0282570d30b60f477c80166407749f92be7a86bbf9031c2f3512d1fdd0d43

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
