# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ClassicalNumberTheoryIndex.Variantd757534a65301cb1d0d017d3b0a86a2a9c42feb23dfb97cd75398cae32ebb285

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a65079639f0fcb044b6fc5d534fa9475cbf76029` · SHA-256 `d757534a65301cb1d0d017d3b0a86a2a9c42feb23dfb97cd75398cae32ebb285`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.NumberTheory.Mobius
import Folder.Rebuild.NumberTheory.EulerPhi
import Folder.Rebuild.NumberTheory.SigmaTau
import Folder.Rebuild.NumberTheory.FiniteEulerLogDerivative
import Folder.Rebuild.Exposition.AnchorIndex

/-!
# Folder.Rebuild.Exposition.ClassicalNumberTheoryIndex

Exposition index for the checked finite multiplicative-number-theory layer.
-/

namespace Folder
namespace Rebuild
namespace Exposition

def mobiusInversionAnchor : ClassicalAnchor where
  shortName := "Moebius inversion"
  paperOrBook := "Classical finite divisor-sum theory"
  theoremLabel := "mobius_inversion"
  mathematicalContent :=
    "Finite divisor-sum inversion is checked locally for positive natural inputs."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def eulerPhiAnchor : ClassicalAnchor where
  shortName := "Euler phi"
  paperOrBook := "Classical elementary number theory"
  theoremLabel := "eulerPhi_prime_power"
  mathematicalContent :=
    "Prime and prime-power formulas for Euler phi are repackaged as checked rebuild theorems."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.mathlibInternal

def divisorProblemAnchor : ClassicalAnchor where
  shortName := "Divisor functions"
  paperOrBook := "Classical divisor-sum theory"
  theoremLabel := "tau_prime / sigma_prime"
  mathematicalContent :=
    "The finite tau and sigma functions have checked prime and prime-power identities."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def finiteEulerProductAnchor : ClassicalAnchor where
  shortName := "Finite Euler product"
  paperOrBook := "Finite algebraic Euler-product scaffold"
  theoremLabel := "finite_geometric_euler_factor_mul"
  mathematicalContent :=
    "Finite Euler factors satisfy checked truncated geometric identities."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def analyticEulerProductAnchor : ClassicalAnchor where
  shortName := "Analytic Euler product"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "EulerProductForZetaHalfPlaneTarget"
  mathematicalContent :=
    "Infinite Euler-product convergence remains a theorem target, not a proof input."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def pntClassicalRouteAnchor : ClassicalAnchor where
  shortName := "Classical prime asymptotic route"
  paperOrBook := "Hadamard, de la Vallee Poussin, and Tauberian references"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "The analytic route through continuation, boundary nonvanishing, and Tauberian input remains a target."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def classicalNumberTheoryAnchors : List ClassicalAnchor :=
  [ mobiusInversionAnchor
  , eulerPhiAnchor
  , divisorProblemAnchor
  , finiteEulerProductAnchor
  , analyticEulerProductAnchor
  , pntClassicalRouteAnchor
  ]

end Exposition
end Rebuild
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73b10ca46c1e83dfa9cbc2e0e2148a2945e36191229969dddd5cf0ec095ac033 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ClassicalNumberTheoryIndex/Variantd757534a65301cb1d0d017d3b0a86a2a9c42feb23dfb97cd75398cae32ebb285.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
