# Derive Shrinkable Mutual Test Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f54e8f540a5af499bfe79135a54b4593c37725b` · SHA-256 `2ca3135bc05472f0a3a81d3ef81db4325f53b18a45eedb48905270757a8c9b82`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Even.Variantdd1b1b76b5636d30ebdefcd8d18fc479e29e11535c0d8d64cb49681f9b81b407","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd1b1b76b5636d30ebdefcd8d18fc479e29e11535c0d8d64cb49681f9b81b407","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Even.Variantdd1b1b76b5636d30ebdefcd8d18fc479e29e11535c0d8d64cb49681f9b81b407","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"dd1b1b76b5636d30ebdefcd8d18fc479e29e11535c0d8d64cb49681f9b81b407","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/plausible/PlausibleTest/DeriveShrinkable/DeriveShrinkableMutualTest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import Plausible


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Even.Variantdd1b1b76b5636d30ebdefcd8d18fc479e29e11535c0d8d64cb49681f9b81b407

open Plausible

namespace ShrinkableMutualTests

-- Mutually recursive types
mutual
  inductive Even where
    | zero : Even
    | succOdd : Odd → Even

  inductive Odd where
    | succEven : Even → Odd
end

deriving instance Repr, Shrinkable for Even, Odd

-- `deriving instance ... for` on a non-mutual recursive type
inductive Expr where
  | Lit : Nat → Expr
  | Add : Expr → Expr → Expr
  | Neg : Expr → Expr
  deriving Repr

deriving instance Shrinkable for Expr

/-- info: [] -/
#guard_msgs in
#eval Shrinkable.shrink (Even.succOdd (Odd.succEven Even.zero))

/--
info: [ShrinkableMutualTests.Expr.Lit 3,
 ShrinkableMutualTests.Expr.Neg (ShrinkableMutualTests.Expr.Lit 1),
 ShrinkableMutualTests.Expr.Add
   (ShrinkableMutualTests.Expr.Lit 1)
   (ShrinkableMutualTests.Expr.Neg (ShrinkableMutualTests.Expr.Lit 1)),
 ShrinkableMutualTests.Expr.Add
   (ShrinkableMutualTests.Expr.Lit 0)
   (ShrinkableMutualTests.Expr.Neg (ShrinkableMutualTests.Expr.Lit 1)),
 ShrinkableMutualTests.Expr.Add (ShrinkableMutualTests.Expr.Lit 3) (ShrinkableMutualTests.Expr.Lit 1),
 ShrinkableMutualTests.Expr.Add
   (ShrinkableMutualTests.Expr.Lit 3)
   (ShrinkableMutualTests.Expr.Neg (ShrinkableMutualTests.Expr.Lit 0))]
-/
#guard_msgs in
#eval Shrinkable.shrink (Expr.Add (Expr.Lit 3) (Expr.Neg (Expr.Lit 1)))

end ShrinkableMutualTests
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37e8c478d9be8549488234e048b8e9172c7e81fa9d3162eb52b93f794a901243 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkableMutualTest/Variant4c33e9f2cc7d3c196c00898827e9115a9d6b9663ef36b3e07a6cf4c7ccf53cbe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
