# Nomatch Namespaced Source — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d2888a3075e137b457bf5dd8f724145b2d89e76` · SHA-256 `565661f018a00506f623a1baa71b54cc19fa252010bb29b3d6984356766c4691`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ComplicatedEmpty.Variant8cfdcc0cbca1a24e2d8d26790544074ccd5064c05958b5862f9207d3cb14e337","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8cfdcc0cbca1a24e2d8d26790544074ccd5064c05958b5862f9207d3cb14e337","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ComplicatedEmpty.Variant8cfdcc0cbca1a24e2d8d26790544074ccd5064c05958b5862f9207d3cb14e337","mathematical_subject":"Foundations.Unclassified","original_sha256":"8cfdcc0cbca1a24e2d8d26790544074ccd5064c05958b5862f9207d3cb14e337","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/nomatch.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ComplicatedEmpty.Variant8cfdcc0cbca1a24e2d8d26790544074ccd5064c05958b5862f9207d3cb14e337

set_option autoImplicit true
example : False → α := nofun
example : False → α := by nofun
example : ¬ False := nofun
example : ¬ False := by nofun
example : ¬ ¬ 0 = 0 := nofun

example (h : False) : α := nomatch h

example (h : Nat → False) : Nat := nomatch h 1

def ComplicatedEmpty : Bool → Type
  | false => Empty
  | true => PEmpty

example (h : ComplicatedEmpty b) : α := nomatch b, h
example (h : Nat → ComplicatedEmpty b) : α := nomatch b, h 1
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3493a087f0d4f4b148862f3181e1c42d77ad113529a55ca538219e8db6f2d890 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoMatch/Variant26a53d16390efb205ac5ab1c0842a69cf8448eebc8e78e587941829698d08753.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
