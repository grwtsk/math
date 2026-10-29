# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Representation.Variant610bf619750e0d2a258e3375a050505699e60feacd9370cfd4714bbd55fa85d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b83f0947c62f6fd2c63c7a432329086a0629f89` · SHA-256 `4c35ee8612243f1834f60f35879748803ce77008a8956be02be58a5e5ddd55a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DecodeEncodePositiveNat.Variantacd4727cfb4b745527d78f9b369af8f22a3f973c98da54ffa8800e6ca8b5f75f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"acd4727cfb4b745527d78f9b369af8f22a3f973c98da54ffa8800e6ca8b5f75f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DecodeEncodePositiveNat.Variantacd4727cfb4b745527d78f9b369af8f22a3f973c98da54ffa8800e6ca8b5f75f","mathematical_subject":"Foundations.Unclassified","original_sha256":"acd4727cfb4b745527d78f9b369af8f22a3f973c98da54ffa8800e6ca8b5f75f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CellularArithmetic/Representation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CellularArithmetic.CellularRepresentation

/-!
# Folder.Theorem.CellularArithmetic.Representation

Radiation role: theorem-wrapper
BinaryMatrix spine: This module participates in the finite carrier, cellular, spectral, torsion, or proof layer radiating from the BinaryMatrix spine.
Ontology: proof.cellular_arithmetic.representation
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DecodeEncodePositiveNat.Variantacd4727cfb4b745527d78f9b369af8f22a3f973c98da54ffa8800e6ca8b5f75f

namespace Folder
namespace Theorem
namespace CellularArithmetic

theorem decode_encode_positiveNat
    (n : Folder.NumberTheory.PositiveNat) :
    (Folder.CellularArithmetic.encodePositiveNat n).decode = n.val :=
  Folder.CellularArithmetic.decode_encode_positiveNat n

theorem factorMap_unique_of_same_number
    (A B : Folder.CellularArithmetic.CellularArithmeticRepresentation)
    (h : A.number.val = B.number.val) :
    A.factorMapRep.factorMap = B.factorMapRep.factorMap :=
  Folder.CellularArithmetic.factorMap_unique_of_same_number A B h

end CellularArithmetic
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=390c12d05ce7e55150445aa72c0b872b5c3633cb71a26154de65a8471d0f74ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Representation/Variant610bf619750e0d2a258e3375a050505699e60feacd9370cfd4714bbd55fa85d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
