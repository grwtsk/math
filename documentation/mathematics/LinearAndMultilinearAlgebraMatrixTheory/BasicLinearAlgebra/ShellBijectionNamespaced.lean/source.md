# Shell Bijection Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f5f8d30a6804dd851d79561c460c701bac26ef5` · SHA-256 `8dbd1f06ec09c286804f63a3a0beca349e489d14bf103c9295692a197edf19a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.DecodeEncodeShell.Variantba383e27f327907edb201c1a22a29645971350f2fd0a7a8af3c58d6ad2c75c7a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ba383e27f327907edb201c1a22a29645971350f2fd0a7a8af3c58d6ad2c75c7a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DecodeEncodeShell.Variantba383e27f327907edb201c1a22a29645971350f2fd0a7a8af3c58d6ad2c75c7a","mathematical_subject":"Foundations.Unclassified","original_sha256":"ba383e27f327907edb201c1a22a29645971350f2fd0a7a8af3c58d6ad2c75c7a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/BinaryMatrix/ShellBijection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Expansion.ShellBijection

/-!
# Folder.Theorem.BinaryMatrix.ShellBijection

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.binary_matrix.shell_bijection
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.Algebra.LinearAlgebra.DecodeEncodeShell.Variantba383e27f327907edb201c1a22a29645971350f2fd0a7a8af3c58d6ad2c75c7a

namespace Folder
namespace Theorem
namespace BinaryMatrix

theorem decode_encode_shell
    {s : Carrier.GridShape}
    (M : Carrier.BinaryMatrix)
    (hm : M.m = s.rows + 2)
    (hn : M.n = s.cols + 2) :
    Expansion.decodeShell (Expansion.encodeShell M hm hn) = M :=
  Expansion.decode_encode_shell M hm hn

end BinaryMatrix
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a7a2e8d78db9cb1e180dff5addf05b9b9f77e29d423244069c5578cb7600b49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ShellBijection/Variant978a81988dcc7de87e643566e939a7d490a603eb489a021ac55032ba421d9fcc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
