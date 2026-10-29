# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SitePlanning.Variant1dcdf392d177518c1fef53da5a04583983b2bddddf19748a171ebc6a93730d42

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e21dbaa8b73ce7a082a466d3d84a2b5461d7f73d` · SHA-256 `1dcdf392d177518c1fef53da5a04583983b2bddddf19748a171ebc6a93730d42`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Tree.StreamEncoding

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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8463a8891d27dc5bd53d130bc266675819242fb7005f66a7ba596123131f371d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SitePlanning/Variant1dcdf392d177518c1fef53da5a04583983b2bddddf19748a171ebc6a93730d42.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
