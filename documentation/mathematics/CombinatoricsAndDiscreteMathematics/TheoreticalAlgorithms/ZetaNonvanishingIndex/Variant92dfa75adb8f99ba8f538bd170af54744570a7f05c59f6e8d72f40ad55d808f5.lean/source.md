# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ZetaNonvanishingIndex.Variant92dfa75adb8f99ba8f538bd170af54744570a7f05c59f6e8d72f40ad55d808f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `984e8681d4b5cef106ca48a5791f1e68219018c8` · SHA-256 `92dfa75adb8f99ba8f538bd170af54744570a7f05c59f6e8d72f40ad55d808f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.ZetaNonvanishingHalfPlane
import Folder.Rebuild.Exposition.ComplexEulerProductIndex

/-!
# Folder.Rebuild.Exposition.ZetaNonvanishingIndex

Exposition anchors for the checked Möbius-inverse nonvanishing theorem.
-/

namespace Folder
namespace Rebuild
namespace Exposition

def mobiusDirichletSeriesConvergenceAnchor : ClassicalAnchor where
  shortName := "Moebius Dirichlet convergence"
  paperOrBook := "Checked rebuild half-plane layer"
  theoremLabel := "mobiusDirichlet_absSummable"
  mathematicalContent :=
    "The Moebius Dirichlet series is absolutely summable for Re(s) greater than one."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def dirichletCauchyProductAnchor : ClassicalAnchor where
  shortName := "Generic Dirichlet Cauchy product"
  paperOrBook := "Checked rebuild half-plane layer"
  theoremLabel := "complexDirichletSeries_mul_of_absSummable"
  mathematicalContent :=
    "The checked generic Cauchy product multiplies absolutely summable Dirichlet series by Dirichlet convolution."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def zetaNonvanishingHalfPlaneAnchor : ClassicalAnchor where
  shortName := "Zeta nonvanishing half-plane"
  paperOrBook := "Checked rebuild half-plane layer"
  theoremLabel := "zetaComplexHalfPlane_ne_zero"
  mathematicalContent :=
    "The ordinary complex zeta Dirichlet series is nonzero for Re(s) greater than one."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def zetaZeroFreeLineOneTargetAnchor : ClassicalAnchor where
  shortName := "Zeta zero-free line target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "ZetaZeroFreeLineReOneTarget"
  mathematicalContent :=
    "The boundary-line zero-free theorem remains target-only."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def pntStillTargetAnchor : ClassicalAnchor where
  shortName := "PNT still target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "The prime-counting asymptotic route remains target-only."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def analyticContinuationStillTargetAnchor : ClassicalAnchor where
  shortName := "Analytic continuation still target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "ZetaAnalyticContinuationTarget"
  mathematicalContent :=
    "Analytic continuation remains outside the checked half-plane Dirichlet-series theorem."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def zetaNonvanishingAnchors : List ClassicalAnchor :=
  [ mobiusDirichletSeriesConvergenceAnchor
  , dirichletCauchyProductAnchor
  , zetaNonvanishingHalfPlaneAnchor
  , zetaZeroFreeLineOneTargetAnchor
  , pntStillTargetAnchor
  , analyticContinuationStillTargetAnchor
  ]

end Exposition
end Rebuild
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd65449599bc0ac1632abe70a840cd1b6fd5748af7d46d6727e4dcc0816672c7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ZetaNonvanishingIndex/Variant92dfa75adb8f99ba8f538bd170af54744570a7f05c59f6e8d72f40ad55d808f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
