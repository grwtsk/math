# Finite Euler Expansion Index Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f4f7bfb9e2e51549dc29292d3c8b13870ad41bc` · SHA-256 `3d625190a21f92fb40cf71cd6eea783a5a3c1da0d6abe6c45326373f765c7f26`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WeightedFiniteCauchyProductAnchor.Variant47a8d99cfd472857a0bf01b1a4e55aa316f982aab8bb65fe5120246d71dd8864","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"47a8d99cfd472857a0bf01b1a4e55aa316f982aab8bb65fe5120246d71dd8864","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.WeightedFiniteCauchyProductAnchor.Variant47a8d99cfd472857a0bf01b1a4e55aa316f982aab8bb65fe5120246d71dd8864","mathematical_subject":"Computation.DataStructures","original_sha256":"47a8d99cfd472857a0bf01b1a4e55aa316f982aab8bb65fe5120246d71dd8864","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/Exposition/FiniteEulerExpansionIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.WeightedDirichletPolynomialProduct
import Folder.Rebuild.AnalyticNumberTheory.FiniteEulerSmoothNumbers
import Folder.Rebuild.Exposition.AnalyticNumberTheoryIndex

/-!
# Folder.Rebuild.Exposition.FiniteEulerExpansionIndex

Exposition index for finite weighted Cauchy and Euler-product expansion facts.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WeightedFiniteCauchyProductAnchor.Variant47a8d99cfd472857a0bf01b1a4e55aa316f982aab8bb65fe5120246d71dd8864

namespace Folder
namespace Rebuild
namespace Exposition

def weightedFiniteCauchyProductAnchor : ClassicalAnchor where
  shortName := "Weighted finite Cauchy product"
  paperOrBook := "Checked rebuild finite Dirichlet-polynomial layer"
  theoremLabel := "dirichletPolynomialComplex_mul_pair"
  mathematicalContent :=
    "The weighted finite Dirichlet-polynomial product is checked in pair-indexed form."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def finiteExponentVectorEulerExpansionAnchor : ClassicalAnchor where
  shortName := "Finite exponent-vector Euler expansion"
  paperOrBook := "Checked rebuild finite Euler-product layer"
  theoremLabel := "finiteZetaEulerProductReal_expands_exponent_vectors"
  mathematicalContent :=
    "The finite Euler product expands exactly over bounded exponent vectors."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def boundedSmoothNumberReindexingAnchor : ClassicalAnchor where
  shortName := "Bounded smooth-number reindexing"
  paperOrBook := "Finite Euler-product smooth-number route"
  theoremLabel := "finiteEulerProductOf_expands_boundedSmoothNumbers"
  mathematicalContent :=
    "The bounded smooth-number image is defined and the finite Euler-product reindexing is checked."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def infiniteEulerProductTargetAnchor : ClassicalAnchor where
  shortName := "Infinite Euler product target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "EulerProductForZetaHalfPlaneTarget"
  mathematicalContent :=
    "The infinite Euler product remains a target and is not used as a checked dependency here."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def dirichletSeriesCauchyProductTargetAnchor : ClassicalAnchor where
  shortName := "Dirichlet-series Cauchy product target"
  paperOrBook := "Classical Dirichlet-series references"
  theoremLabel := "InfiniteDirichletSeriesCauchyProductTarget"
  mathematicalContent :=
    "The infinite Cauchy product for convergent Dirichlet series remains target-only."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def finiteEulerExpansionAnchors : List ClassicalAnchor :=
  [ weightedFiniteCauchyProductAnchor
  , finiteExponentVectorEulerExpansionAnchor
  , boundedSmoothNumberReindexingAnchor
  , infiniteEulerProductTargetAnchor
  , dirichletSeriesCauchyProductTargetAnchor
  ]

end Exposition
end Rebuild
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b19daf719291ce07ffe273ef04d59e53c925b625dfb461409a408e5a5f1e7e85 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteEulerExpansionIndex/Variant8a7c5595f200825558fcb6302b17e82c6b6acd58936830287f08e16fe70c106a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
