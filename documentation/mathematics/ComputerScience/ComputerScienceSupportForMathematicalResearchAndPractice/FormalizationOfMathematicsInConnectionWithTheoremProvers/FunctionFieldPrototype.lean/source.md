# Function Field Prototype — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9419af48ad8ba5ba10071d03171ac12052ec6687` · SHA-256 `2e4538a2291ffa482bec820f0ecdb647b7a7fb0d34132bbff60189be4f7ab552`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.FunctionFieldPrototype

/-!
# Folder.Theorem.CanonicalPath.FunctionFieldPrototype

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports function-field prototype facts.
Ontology: proof.canonical_path.function_field_prototype
Pivot role: spectral
Zero typology: frobenius-zero
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem function_field_zeros_realized_by_frobenius
    {B : Folder.CanonicalPath.FunctionFieldBase}
    (R : Folder.CanonicalPath.CohomologicalSpectralRealization B) :
    R.zerosRealizedByFrobeniusEigenvalues :=
  Folder.CanonicalPath.function_field_zeros_realized_by_frobenius R

theorem function_field_trace_identity_holds
    {B : Folder.CanonicalPath.FunctionFieldBase}
    (P : Folder.CanonicalPath.FunctionFieldIndexPrototype B) :
    P.traceIdentityHolds :=
  Folder.CanonicalPath.function_field_trace_identity_holds P

theorem function_field_alignment_conclusion
    {B : Folder.CanonicalPath.FunctionFieldBase}
    (P : Folder.CanonicalPath.FunctionFieldIndexPrototype B) :
    P.alignmentConclusion :=
  Folder.CanonicalPath.function_field_alignment_conclusion P

end CanonicalPath
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32fba2795b9b58f222fefc6836dee68b17cb1cd61728de33fcc154cae585fc58 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionFieldPrototype/Variant2e4538a2291ffa482bec820f0ecdb647b7a7fb0d34132bbff60189be4f7ab552.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
