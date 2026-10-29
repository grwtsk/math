# Lint TCNamespaced Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3c612c5d5692fa3771f0ca7cb92c250fc449d9b` · SHA-256 `66d7d15c5d248173698ed9e8a10adf4fcb319f424466932b59ea740b1d29fc66`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeClass.Variant7dfebfb0f2a10b9557ef0b7c315ad83466186c47e4c661fdcebc38e0b3059136","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7dfebfb0f2a10b9557ef0b7c315ad83466186c47e4c661fdcebc38e0b3059136","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TypeClass.Variant7dfebfb0f2a10b9557ef0b7c315ad83466186c47e4c661fdcebc38e0b3059136","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7dfebfb0f2a10b9557ef0b7c315ad83466186c47e4c661fdcebc38e0b3059136","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/lintTC.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Tactic.Lint.TypeClass
import Lean.Elab.Command


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeClass.Variant7dfebfb0f2a10b9557ef0b7c315ad83466186c47e4c661fdcebc38e0b3059136

open Batteries.Tactic.Lint

namespace A

/--
error: This instance has 1 argument that cannot be inferred using typeclass synthesis. Specifically

  argument 2: `{β : Type}`

These arguments are not instance-implicit and appear neither in another instance-implicit argument nor the return type, so they cannot be inferred using typeclass synthesis.
-/
#guard_msgs in
local instance impossible {α β : Type} [Inhabited α] : Nonempty α := ⟨default⟩

end A

namespace B
/--
error: The declaration `bad` should not be an instance as its return type `Nat` is not a type class.
-/
#guard_msgs in
instance bad : Nat := 1

instance good : Inhabited Nat := ⟨1⟩

end B
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c66998df7bfe28c890c580eb919f29e7bda6a8668cb82f9fc0d5cd65c0fae4f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintTC/Variant2177109b4696f35651f72a42b4311da32295c284e822d7916d62af86434f9977.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
