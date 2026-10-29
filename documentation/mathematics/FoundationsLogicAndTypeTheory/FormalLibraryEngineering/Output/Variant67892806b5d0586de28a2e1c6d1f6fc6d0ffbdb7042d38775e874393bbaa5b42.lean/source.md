# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Output.Variant67892806b5d0586de28a2e1c6d1f6fc6d0ffbdb7042d38775e874393bbaa5b42

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14baa3e6cf919af7216c33029f211065be65565a` · SHA-256 `433f37cc484312a4b428aba906b28e2544805a489f20b5057cecb1a1694b0c41`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Exactness.Variant46dd9f6aab039bba2ffc4d474ed8441afad866c375bf81a54ac27ad75c68c14d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"46dd9f6aab039bba2ffc4d474ed8441afad866c375bf81a54ac27ad75c68c14d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Exactness.Variant46dd9f6aab039bba2ffc4d474ed8441afad866c375bf81a54ac27ad75c68c14d","mathematical_subject":"Foundations.Unclassified","original_sha256":"46dd9f6aab039bba2ffc4d474ed8441afad866c375bf81a54ac27ad75c68c14d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/GraphAccess/Output.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.Frontier

/-!
# Request-indexed output and certificate families

The objective fixes the payload kind.  Exactness can only be obtained from the
certificate constructor selected by the mode implementation.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Exactness.Variant46dd9f6aab039bba2ffc4d474ed8441afad866c375bf81a54ac27ad75c68c14d

namespace Mathematics.GraphAccess

inductive Exactness
  | exact
  | bounded
  | asymptotic
  | heuristic
  | unknown
deriving DecidableEq, Repr

structure ModeOutputFamily
    (G : GraphCut)
    {profiles : ModeProfileFamily G}
    (req : AdmittedAccessRequest G profiles) where
  Payload : AccessProductKind → Type
  Certificate :
    Payload req.objective.productKind → Type
  exactness :
    ∀ payload, Certificate payload → Exactness

structure CertifiedModeOutput
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    (outputs : ModeOutputFamily G req) where
  payload :
    outputs.Payload req.objective.productKind
  certificate :
    outputs.Certificate payload

def CertifiedModeOutput.exactness
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    (result : CertifiedModeOutput outputs) :
    Exactness :=
  outputs.exactness
    result.payload result.certificate

end Mathematics.GraphAccess
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=06d29a118a444d65f8f214d9a2fb03a7b8e7d9af9eca95718afbfd65e4d80c1c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant67892806b5d0586de28a2e1c6d1f6fc6d0ffbdb7042d38775e874393bbaa5b42.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
