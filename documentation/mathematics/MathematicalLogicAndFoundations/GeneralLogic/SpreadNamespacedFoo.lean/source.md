# Spread Namespaced Foo — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc3b3fe4ac501fb9a7a4191b29cfcdf5d4368928` · SHA-256 `c13fd781fc567749f15cdb24e54932edbbda10fdde95e11323199f14871f79c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variantd2cd1f8d0af04a997cce0a9fde5fa8223e248cf93f6c43652bb4f66b28b8e19b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d2cd1f8d0af04a997cce0a9fde5fa8223e248cf93f6c43652bb4f66b28b8e19b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Foo.Variantd2cd1f8d0af04a997cce0a9fde5fa8223e248cf93f6c43652bb4f66b28b8e19b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d2cd1f8d0af04a997cce0a9fde5fa8223e248cf93f6c43652bb4f66b28b8e19b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/spread.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Spread


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variantd2cd1f8d0af04a997cce0a9fde5fa8223e248cf93f6c43652bb4f66b28b8e19b

set_option autoImplicit true
class Foo (α : Type) where
  bar : True

class Something where
  bar : True

instance : Something where
  bar := by trivial

instance : Foo α where
  __ := instSomething -- include fields from `instSomething`

example : Foo α := {
  __ := instSomething -- include fields from `instSomething`
}

structure A (α : Type) where
  default : α
  x : α

axiom mkDefault (α : Type) : Inhabited α

noncomputable example (α : Type) : A α where
  __ := mkDefault α
  x := default
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=54cfd6c02b3868e226033955913f06764da4dafba3e822f8a7fdb563e91123a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spread/Variant05bbc211a8fb0f7ba69ef597c437bab37a020db0c65bef4a5ca83275a01d5c05.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
