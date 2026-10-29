/-
UnitIntervalRangePredicate — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037
Organized SHA-256: d1205bd4dd2ac5ec02055e282c762cc20ab75ec02e4021cd11cf3954e705e8e7
PMD: 510.5.010.010 real functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The exact pointwise conjunction 0<=X.value c q and X.value c q<=1. This defines a predicate without assuming or proving it for an arbitrary array; an empty index domain may make it vacuous. It asserts no visibility, physical or analytic law. -/

import Folder.Carrier.Grid

import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteGridRealArrays.Variant5f4fddd752ee2ea8.PointwiseArrayData

/-!
# Folder.Spectral.Tensor

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.spectral_tensor
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace GRWTSK.Analysis.RealAnalysis.RealFunctions.FiniteGridReadouts.Variant5f4fddd752ee2ea8

open Folder
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteGridRealArrays.Variant5f4fddd752ee2ea8

open Carrier

namespace SpectralTensor

def visibleRange01 {s : GridShape} {k : Nat}
    (X : SpectralTensor s k) :
    Prop :=
  ∀ c q, 0 ≤ X.value c q ∧ X.value c q ≤ 1


end SpectralTensor

end GRWTSK.Analysis.RealAnalysis.RealFunctions.FiniteGridReadouts.Variant5f4fddd752ee2ea8
