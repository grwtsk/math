# Complex Euler Product Index — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5d30098ad68b836c710369620bd02bdd3467909` · SHA-256 `7463c34623f989f42885e8e1062f2bc7555a89d0a64138c93cb28475d1fc656a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.ComplexEulerProductConvergence
import Folder.Rebuild.Exposition.RealEulerProductIndex

/-!
# Folder.Rebuild.Exposition.ComplexEulerProductIndex

Exposition anchors for the checked complex half-plane Euler-product layer.
-/

namespace Folder
namespace Rebuild
namespace Exposition

def complexWeightNormAnchor : ClassicalAnchor where
  shortName := "Complex weight norm"
  paperOrBook := "Checked rebuild complex half-plane layer"
  theoremLabel := "norm_complexWeight_le_posWeightReal_re"
  mathematicalContent :=
    "The norm of the complex Dirichlet weight is bounded by the real positive weight at the real part."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def complexZetaHalfPlaneConvergenceAnchor : ClassicalAnchor where
  shortName := "Complex zeta half-plane convergence"
  paperOrBook := "Checked rebuild complex half-plane layer"
  theoremLabel := "tendsto_zetaPartialComplex"
  mathematicalContent :=
    "The ordinary complex zeta Dirichlet partial sums converge when Re(s) is greater than one."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def complexEulerProductConvergenceAnchor : ClassicalAnchor where
  shortName := "Complex Euler-product convergence"
  paperOrBook := "Checked rebuild complex half-plane layer"
  theoremLabel := "tendsto_zetaEulerApproxComplex"
  mathematicalContent :=
    "Diagonal finite complex Euler products over primes up to N with cutoff N converge to the complex zeta series when Re(s) is greater than one."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def complexZetaNonzeroHalfPlaneTargetAnchor : ClassicalAnchor where
  shortName := "Complex zeta nonzero half-plane target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "zetaComplexHalfPlane_nonzero_target"
  mathematicalContent :=
    "Nonvanishing in the complex half-plane remains target-only until the inverse-product argument is formalized."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def zetaAnalyticContinuationStillTargetAnchor : ClassicalAnchor where
  shortName := "Zeta analytic continuation still target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "ZetaAnalyticContinuationTarget"
  mathematicalContent :=
    "Analytic continuation of zeta is outside this checked half-plane layer."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def pntRouteStillTargetAnchor : ClassicalAnchor where
  shortName := "PNT route still target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "The route from zeta analytic information to prime asymptotics remains target-only."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def complexEulerProductAnchors : List ClassicalAnchor :=
  [ complexWeightNormAnchor
  , complexZetaHalfPlaneConvergenceAnchor
  , complexEulerProductConvergenceAnchor
  , complexZetaNonzeroHalfPlaneTargetAnchor
  , zetaAnalyticContinuationStillTargetAnchor
  , pntRouteStillTargetAnchor
  ]

end Exposition
end Rebuild
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f2639916f8ccad98155b179f818e8fbe9546db39e84f9e3e1ad3c5be3462ef21 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexEulerProductIndex/Variant7463c34623f989f42885e8e1062f2bc7555a89d0a64138c93cb28475d1fc656a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
