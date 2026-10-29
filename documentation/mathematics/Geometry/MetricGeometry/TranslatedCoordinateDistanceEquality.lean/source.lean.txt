/-
TranslatedCoordinateDistanceEquality — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e3f1879167b769771523cc514ab302cba0ffb90bd9ace971c5eede4a21fa5e83
Organized SHA-256: dea4d7e33731fd5d52a8420650805e9d79e780ada5b5d87e0aad745d159eba26
PMD: 510.3.030.010 metric spaces (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete nonzero key and explicit affine HammingIso record, with its exact two-state distance equality. This creates no MetricSpace instance or analytic derivative. -/

import BitMatrix.Algebra.Symmetry
import Mathlib.Logic.Equiv.Fin.Rotate

import GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.WidthThreeBitStateActions.Variante3f1879167b76977.FaithfulActionsAndCoordinateCycle
/-!
# Concrete tests for finite bit-state symmetries

These width-three checks exercise the faithful translation and coordinate
actions, a translated coordinate Hamming isometry, and the general SAC-score
invariance theorems for Hamming-isometric conjugacy.
-/

namespace BitMatrix.Tests.Symmetry

open BitMatrix.Reduction.SAT
open BitMatrix.Dynamics.Avalanche
open BitMatrix.Algebra.Symmetry
open BitMatrix.Network.Permutation

/-! ## Faithful width-three actions -/

/-- A nonzero width-three translation key. -/
def symmetryOffset3 : Bits 3 :=
  basisBit (0 : Fin 3)

/-- Coordinate rotation followed by XOR with `symmetryOffset3`. -/
def symmetryHammingIso3 : HammingIso 3 where
  offset := symmetryOffset3
  coordinates := symmetryRotate3Indices

example (x y : Bits 3) :
    hammingDistance (symmetryHammingIso3.toPerm x)
        (symmetryHammingIso3.toPerm y) =
      hammingDistance x y :=
  symmetryHammingIso3.hammingDistance_toPerm x y

/-! ## Hamming-isometric conjugacy preserves aggregate SAC scores -/

end BitMatrix.Tests.Symmetry
