# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestEdgeMv.Variant1a223c3bb3fe9622303366b84d0deca38890c5e440bfaa779e46a7a12ba24aa0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `533ba1aee16ad0e71de1307966be328b02c11394` · SHA-256 `b0519f107810a32355976b4da95265ac59af19a9ba79314316eedf6d12ece08e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EdgeMinimizeMv.Variant04404e63715d136a214f4d3f5eaa1333486ad43178042f10cc53673bdf3d54c0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"04404e63715d136a214f4d3f5eaa1333486ad43178042f10cc53673bdf3d54c0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.EdgeMinimizeMv.Variant04404e63715d136a214f4d3f5eaa1333486ad43178042f10cc53673bdf3d54c0","mathematical_subject":"Foundations.Unclassified","original_sha256":"04404e63715d136a214f4d3f5eaa1333486ad43178042f10cc53673bdf3d54c0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_edge_mv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert.Tactic.Discovery


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EdgeMinimizeMv.Variant04404e63715d136a214f4d3f5eaa1333486ad43178042f10cc53673bdf3d54c0

theorem edge_minimize_mv : ∃ m : ℚ, ∀ x ∈ Set.Icc (0:ℝ) 1, ∀ y ∈ Set.Icc (0:ℝ) 1, x * x + y * y ≥ m := by
  interval_minimize_mv

theorem edge_maximize_mv : ∃ M : ℚ, ∀ x ∈ Set.Icc (0:ℝ) 1, ∀ y ∈ Set.Icc (0:ℝ) 1, x + y ≤ M := by
  interval_maximize_mv
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=61d65c2f54550e88cf761bb3f6b3da61c371516269b9f594cfc5bb69ee92c1ff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeMv/Variant1a223c3bb3fe9622303366b84d0deca38890c5e440bfaa779e46a7a12ba24aa0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
