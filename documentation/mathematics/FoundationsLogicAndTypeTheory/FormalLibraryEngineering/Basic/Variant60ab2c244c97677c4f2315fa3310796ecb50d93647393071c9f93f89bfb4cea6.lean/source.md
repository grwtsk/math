# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant60ab2c244c97677c4f2315fa3310796ecb50d93647393071c9f93f89bfb4cea6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc65bb894681261cd4523ecb2e1d2c8b6ebc3aec` · SHA-256 `a997f49fb4308bea3354f42ab76f8343b4407897d13211bd644916961bf46c06`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Options.Variante642f11fa930e53d902d4b349719ecaa65b82664dd018ca91df9b91c4361d941","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e642f11fa930e53d902d4b349719ecaa65b82664dd018ca91df9b91c4361d941","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Options.Variante642f11fa930e53d902d4b349719ecaa65b82664dd018ca91df9b91c4361d941","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e642f11fa930e53d902d4b349719ecaa65b82664dd018ca91df9b91c4361d941","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/LeanSearchClient/LeanSearchClient/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Lean.Data.Options


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Options.Variante642f11fa930e53d902d4b349719ecaa65b82664dd018ca91df9b91c4361d941

public meta section

register_option leansearch.queries : Nat :=
  { defValue := 6
    descr := "Number of results requested from leansearch (default 6)" }

register_option loogle.queries : Nat :=
  { defValue := 6
    descr := "Number of results requested from loogle (default 6)" }

register_option statesearch.queries : Nat :=
  { defValue := 6
    descr := "Number of results requested from statesearch (default 6)" }

register_option statesearch.revision : String :=
  { defValue := s!"v{Lean.versionString}"
    descr := "Revision of LeanStateSearch to use" }

register_option leansearchclient.useragent : String :=
  { defValue := "LeanSearchClient"
    descr := "Username for leansearchclient" }

register_option leansearchclient.backend : String :=
  { defValue := "leansearch"
    descr := "The backend to use by default, currently only leansearch" }
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd55fade22bd615ba1ea9cb9795101b8fe0eccaeea52ffade3255919cba2a0fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant60ab2c244c97677c4f2315fa3310796ecb50d93647393071c9f93f89bfb4cea6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
