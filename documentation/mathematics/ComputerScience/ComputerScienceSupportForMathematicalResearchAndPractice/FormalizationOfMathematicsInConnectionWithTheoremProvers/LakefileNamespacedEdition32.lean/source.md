# Lakefile Namespaced Edition32 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ccc009080aa0c84bc80f99f8a61f5d49acc630dd` · SHA-256 `a5039d5db8f05d1770682a0ab1a9a16287703e8d55e9f2f00342e915e67ec082`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variantf4aa25be75bdd5e1adeacb4872c0a593977bf4f4bd3ba8d26bc289f538a2f5d2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f4aa25be75bdd5e1adeacb4872c0a593977bf4f4bd3ba8d26bc289f538a2f5d2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variantf4aa25be75bdd5e1adeacb4872c0a593977bf4f4bd3ba8d26bc289f538a2f5d2","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"f4aa25be75bdd5e1adeacb4872c0a593977bf4f4bd3ba8d26bc289f538a2f5d2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/N/cord/src/theory/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variantf4aa25be75bdd5e1adeacb4872c0a593977bf4f4bd3ba8d26bc289f538a2f5d2

open Lake DSL

package «cord-single-entry» where
  version := v!"1.0.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.32.2"

@[default_target]
lean_lib CordTheory

lean_exe cordTheoryCheck where
  root := `Main
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17036628f1f270e9eaf4df21230fc2c72a058fe8e0ecea14041ab52a40839989 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant41648f85748c97c25952e97f24b75e18ae44d1f880f683e069a02cb552f9ce43.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
