# Conv Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7f25d77661d3929cac8ce8b81e57b6e7cc41e3e` · SHA-256 `a793accfca5029e2d75b73d7ca5cfb5a9526da0a569b4c0190d21117ec53ece4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Conv.Variantdcb9aa3ee17b1192a070c624162f05c6ce3acd520cf4f044a2448f5c685f8ecd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dcb9aa3ee17b1192a070c624162f05c6ce3acd520cf4f044a2448f5c685f8ecd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Conv.Variantdcb9aa3ee17b1192a070c624162f05c6ce3acd520cf4f044a2448f5c685f8ecd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"dcb9aa3ee17b1192a070c624162f05c6ce3acd520cf4f044a2448f5c685f8ecd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/conv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Conv


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Conv.Variantdcb9aa3ee17b1192a070c624162f05c6ce3acd520cf4f044a2448f5c685f8ecd

/-- Testing nested `conv in ... => ...` -/
example (a b c : Nat) : a + b + c = c + a + b := by
  conv =>
    conv in a + b =>
      rw [Nat.add_comm]
    guard_target = b + a + c = c + a + b
    rw [Nat.add_comm, Nat.add_assoc]
    conv in (occs := 4) _ + _ =>
      guard_target = a + b
      rw [Nat.add_comm]

/-- Testing nested `conv in ... => ...` -/
example (a b : Nat) : (a + b) + (a + b) = (b + a) + (b + a) := by
  conv =>
    lhs
    conv in (occs := *) a + b =>
      rw [Nat.add_comm]
    guard_target = b + a + (b + a)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f7b4c1cb582898d3081fdc75145d69aca8863d126b8e53a9a6b6f386c24b329 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant64e7614b3e2c7869fcb9a82abe3a235d6a9afbf1a52757df1ecb35945baf1a64.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
