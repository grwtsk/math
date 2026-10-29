# Norm Num Flt Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `211c96d1e9fd37903d527dbaa1d2ad5c297c8f53` · SHA-256 `90b2c6c79c964726a26019f2b2554f165407582d79535aa49f44d849ff170bb8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NormNum.Variant6e6fdc73d80c02b4e6227e606d0007fd40fa3daee33142ecbf805ff7495906cf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e6fdc73d80c02b4e6227e606d0007fd40fa3daee33142ecbf805ff7495906cf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.NormNum.Variant6e6fdc73d80c02b4e6227e606d0007fd40fa3daee33142ecbf805ff7495906cf","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6e6fdc73d80c02b4e6227e606d0007fd40fa3daee33142ecbf805ff7495906cf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/norm_num_flt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.NormNum

-- From https://leanprover.zulipchat.com/#narrow/channel/113488-general/topic/Proving.20FLT.20with.20norm_num/near/429746342


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NormNum.Variant6e6fdc73d80c02b4e6227e606d0007fd40fa3daee33142ecbf805ff7495906cf

variable (ignore_me_please : ∀ a b c n : ℕ, a ^ n + b ^ n ≠ c ^ n)

-- previously this proof would work!
/--
error: unsolved goals
n : ℕ
hn : n > 2
a b c : ℕ
⊢ ¬a ^ n + b ^ n = c ^ n
-/
#guard_msgs in
example (n) (hn : n > 2) (a b c : ℕ) : a ^ n + b ^ n ≠ c ^ n := by
  clear ignore_me_please -- I promise not to use this, it would be cheating
  norm_num [*]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=702193a62161a27506302f60d578137dbebb3c02ff5a008f2e63b29488d5b392 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormNumFlt/Variant3c9937596f0f5530da4115852086fb4b458e3d515990d6014f4a17794555efe5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
