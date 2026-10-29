# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SitePlanning.Variante943d5cf0462a68db4f4db47fb6f84514599a4db3d5430649b837e3c9b686c96

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f328dbbc637a336f7077cb5e6e0b39a7abc026d` · SHA-256 `96da69946784cdbdecd12abb101cca2237e95bf9e66eb9eeb95d696d467ae8f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ComplexSitePlan.Variant1dcdf392d177518c1fef53da5a04583983b2bddddf19748a171ebc6a93730d42","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1dcdf392d177518c1fef53da5a04583983b2bddddf19748a171ebc6a93730d42","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ComplexSitePlan.Variant1dcdf392d177518c1fef53da5a04583983b2bddddf19748a171ebc6a93730d42","mathematical_subject":"Computation.DataStructures","original_sha256":"1dcdf392d177518c1fef53da5a04583983b2bddddf19748a171ebc6a93730d42","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Tree/SitePlanning.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Tree.StreamEncoding


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ComplexSitePlan.Variant1dcdf392d177518c1fef53da5a04583983b2bddddf19748a171ebc6a93730d42

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

structure ComplexSitePlan where
  tree : BinaryLogicTree
  normalForm : OrderedPrimeNormalForm
  localObjects : List String
  covers : List String
  irreduciblePrimeModularities : List PrimeLabel
  topologyPrime : PrimeLabel
  obstructionBoundary : List String
  claimBoundary : List String

def complexSitePlan
    (R : NormalizationRules)
    (T : BinaryLogicTree)
    (localObjects covers : List String)
    (obstructionBoundary : List String) :
    ComplexSitePlan where
  tree := T
  normalForm := normalize R T
  localObjects := localObjects
  covers := covers
  irreduciblePrimeModularities := primeFactorsCore (normalizeCore R T)
  topologyPrime := topologyPrimeIdentity R T
  obstructionBoundary := obstructionBoundary
  claimBoundary := [
    "ComplexSitePlan is site-planning metadata only.",
    "Site-theoretic universality requires checked AffineTopos or NativeSyntacticTopos theorems."
  ]

theorem complexSitePlan_primeModularities_visible
    (R : NormalizationRules)
    (T : BinaryLogicTree)
    (localObjects covers obstructionBoundary : List String) :
    (complexSitePlan R T localObjects covers obstructionBoundary).irreduciblePrimeModularities =
      primeFactorsCore (normalizeCore R T) := rfl

theorem complexSitePlan_topologyPrime_visible
    (R : NormalizationRules)
    (T : BinaryLogicTree)
    (localObjects covers obstructionBoundary : List String) :
    (complexSitePlan R T localObjects covers obstructionBoundary).topologyPrime =
      topologyPrimeIdentity R T := rfl

theorem complexSitePlan_claimBoundary_visible
    (R : NormalizationRules)
    (T : BinaryLogicTree)
    (localObjects covers obstructionBoundary : List String) :
    (complexSitePlan R T localObjects covers obstructionBoundary).claimBoundary ≠ [] := by
  simp [complexSitePlan]

end Tree
end BinaryLogicMatrix
end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b6215cd557535f11a33922a0ee2e5a6aa03373b9e501b7392e1cc3ac8e49ef2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SitePlanning/Variante943d5cf0462a68db4f4db47fb6f84514599a4db3d5430649b837e3c9b686c96.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
