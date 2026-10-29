/-
NonzeroArgumentRecurrence
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: f3deff54818c56015c75076636835ba36c471f135c321520aad1789186875a68
Organized SHA-256: 403c50b2e6807bac89857ac5c743c45b4b0532cf9b895722e7643d8c28fdbbaa
PMD: 510.5.120.010.010 gamma function (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- ExactGamma recurrence keeps value:Real and value≠0 and the unchanged exactGamma_recurrence nonzero call. This is mathematical Real.Gamma in the captured provider; no identity with the foreign Lanczos model, error certificate or machine approximation is inferred. Every original noncomputable section/end and open scoped BigOperators remains exact. The original namespace BitMatrix.Tests.GammaDirichletSpectral is retained literally, so containing namespaces are not changed in this component despite the generic shared-header sentence. The physical GRWTSK subject path is its logical module. Original imported providers remain historical and unresolved; no GRWTSK alias or replacement provider is introduced. Distinct duplicate historical declarations cannot be assumed compatible coimports; there is no umbrella admission. Any decide/native_decide proof is retained source text and was NOT_RUN. -/

import BitMatrix.Probability
import BitMatrix.Spectral
import Mathlib.Tactic

/-!
# Gamma--Dirichlet and spectral transport tests

Focused kernel checks for the exact finite formal profile.  The tests do not
identify Mathlib's analytic Gamma with the foreign Lanczos implementation.
-/

namespace BitMatrix.Tests.GammaDirichletSpectral

noncomputable section

open scoped BigOperators
open BitMatrix.Probability
open BitMatrix.Probability.GammaDirichlet
open BitMatrix.Spectral
open MeasureTheory

example (value : ℝ) (nonzero : value ≠ 0) :
    exactGamma (value + 1) = value * exactGamma value :=
  exactGamma_recurrence nonzero

end

end BitMatrix.Tests.GammaDirichletSpectral
