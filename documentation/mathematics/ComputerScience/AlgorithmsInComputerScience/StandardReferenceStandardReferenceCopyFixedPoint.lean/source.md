# Standard Reference Standard Reference Copy Fixed Point — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ebd21286cba6b3cb1dcc280dcaef29f0f8ebcf15` · SHA-256 `0c57b28010d665df28260f05040092f051726de88c62dd272baf81088bce7aa6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b0d8a4806ab81ee56bbb7f69e4148e9a9dfb695295dd4c90d812778895c7d5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StandardReference/Variant0c57b28010d665df28260f05040092f051726de88c62dd272baf81088bce7aa6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
