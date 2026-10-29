# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LimitCoupling.Varianteee376659ca8d2d91ba0428e1f8b53fcc2828e0b2bf523d1499476bbeae4578b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb2fec4d8f642705d4a3a64965cccfb1f1c51c08` · SHA-256 `7dc3419c12aa92ccf140ffa17a88aa1ce83b99db32b64b684b676d70683b5d46`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompatibleLimitCoupling.Variantee0d5f609a511804ac8c42201545f89b4da123a11841f6a71097d5fe9e72b568","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ee0d5f609a511804ac8c42201545f89b4da123a11841f6a71097d5fe9e72b568","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CompatibleLimitCoupling.Variantee0d5f609a511804ac8c42201545f89b4da123a11841f6a71097d5fe9e72b568","mathematical_subject":"Foundations.Unclassified","original_sha256":"ee0d5f609a511804ac8c42201545f89b4da123a11841f6a71097d5fe9e72b568","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Boundary/LimitCoupling.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Compatible coupling construction

Finite marginal contraction does not construct this certificate.  Either this
coupling object or a separate direct construction is required.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompatibleLimitCoupling.Variantee0d5f609a511804ac8c42201545f89b4da123a11841f6a71097d5fe9e72b568

namespace Mathematics.StratifiedBoundary

structure CompatibleLimitCoupling
    (FiniteKernel LimitKernel : Type u) where
  finiteKernel : Nat → FiniteKernel
  projectivelyCompatible : Prop
  compatibilityProof : projectivelyCompatible
  limitKernel : LimitKernel
  constructionValid : Prop
  constructionProof : constructionValid
  compatibilityProofRef : String
  limitKernelConstructionRef : String

theorem compatible_couplings_construct_limit_kernel
    {FiniteKernel LimitKernel : Type u}
    (certificate :
      CompatibleLimitCoupling FiniteKernel LimitKernel) :
    ∃ kernel : LimitKernel,
      kernel = certificate.limitKernel ∧
        certificate.constructionValid :=
  ⟨certificate.limitKernel, rfl, certificate.constructionProof⟩

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8add282a91d8429723bac40878dff12bfd115372642683fad94b8180afc78533 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LimitCoupling/Varianteee376659ca8d2d91ba0428e1f8b53fcc2828e0b2bf523d1499476bbeae4578b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
