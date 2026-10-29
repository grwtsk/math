-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StandardReferenceCopyFixedPoint.Variant0c57b28010d665df28260f05040092f051726de88c62dd272baf81088bce7aa6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c57b28010d665df28260f05040092f051726de88c62dd272baf81088bce7aa6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.StandardReferenceCopyFixedPoint.Variant0c57b28010d665df28260f05040092f051726de88c62dd272baf81088bce7aa6","mathematical_subject":"Computation.DataStructures","original_sha256":"0c57b28010d665df28260f05040092f051726de88c62dd272baf81088bce7aa6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Archive/StandardReference.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Archive.SymmetricArchiveCodec
import Folder.Archive.FixedPoint
import Folder.Archive.FactorTreeIndex

/-!
# Folder.Archive.StandardReference

Radiation role: archive-standard-reference
BinaryMatrix spine: This module names the copy standard reference for symbolic BinaryMatrixStream archives.
Ontology: archive.standard_reference
Pivot role: arithmetic
Zero typology: none
Contract boundary: proved
Composite stack role: carrier
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StandardReferenceCopyFixedPoint.Variant0c57b28010d665df28260f05040092f051726de88c62dd272baf81088bce7aa6

namespace Folder
namespace Archive

def standardReferenceCopyFixedPoint
    (M : Carrier.BinaryMatrix) :
    FixedPointCertificate copyRule M :=
  copyFixedPointCertificate M

theorem standardReference_manifestSerializer_roundtrip_copy
    (S : ManifestSerializer)
    (T : FolderTree) :
    decodeArchiveWith S copyPresentationEncoder
      (encodeArchiveWith S copyPresentationEncoder T) = some T :=
  manifestSerializer_decode_encode_copy_with S T

theorem standardReference_copyArchive_materializes_file_layers
    (C : Byte.ByteCodec)
    (files : List (List Byte)) :
    materializeArchiveStream?
      (encodeCopyFileMatrixArchiveWith C files) =
        some (binaryMatrixStreamOfList (fileByteMatricesWith C files)) :=
  copyArchive_materializes_file_layers_with C files

def standardReference_rectV4_runtime_target : Prop :=
  rectV4ActionContractTarget

end Archive
end Folder
