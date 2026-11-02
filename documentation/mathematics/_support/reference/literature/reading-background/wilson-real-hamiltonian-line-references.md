# Real Hamiltonian line source ledger

Local mathematical attribution: grwtsk contributors.

## grwtsk/math sources

- `WilsonFullRegulatedHamiltonian.lean`: actual maximal logarithmic domain,
  graph self-adjoint Hamiltonian, nonnegative form, normalized vacuum, and
  finite-regulator excitation lower bound.
- `WilsonPrimeWindowResidueHamiltonian.lean`: literal singleton von Mangoldt
  window, \(q_r=\log p_r\), positivity, injectivity, and the explicit
  transcendence supplier field.
- `WilsonPrimeWindowShiftedHamiltonian.lean`: residue-indexed pullback
  \(H_r=H+q_rI\).
- `WilsonPrimeWindowGradedHamiltonian.lean`: finite PiLp-2 direct sum and exact
  graded form.
- `WilsonPrimeWindowGradedEvolution.lean`: exact scalar character
  \(e^{-tq_r}\) multiplying the maintained Wilson evolution.
- `DiagonalHilbertDomain.lean` and `CompactPositiveLogarithm.lean`: maximal
  spectral multiplier domain, quadratic series, and logarithmic generator.

## OpenAI comparative sources

Pinned OpenAI revision:
`4eaee87548250b2682affda7d05d947c05554bae`.

- `lean/OAI/Analysis/CoulombRadii/FieldAnalysis/PotentialAddRsmul.lean`:
  exact quadratic restriction to \(\psi+t\phi\) and the lemma that local
  nonnegativity of \(At+Bt^2\) forces \(A=0\).
- `lean/OAI/Analysis/CoulombRadii/FormDomain/H1Pairing.lean`:
  polarization identities and weak eigen equation from a real variational
  line.
- `lean/OAI/NumberTheory/TwoPoint/Bounds/SelfAdjointPath.lean`:
  Lipschitz least Rayleigh quotient and positivity along an invertible
  self-adjoint real path.
- `preprints/Exact-mass-asymptotics-for-the-two-dimensional-O4-lattice-model-October-5-2026/build/sections/04-bethe-line.tex`:
  reconstruction of a quadratic form and its domain from a real semigroup
  parameter by spectral monotone convergence.

## Scope

The new source internalizes the universal affine real line \(q\mapsto H+qI\),
its state-line quadratic polynomial, polarization reconstruction, vacuum
readout, and exponential character. It does not transfer unrelated physical
claims from the comparative sources.
