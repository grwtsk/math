# Prime-window shifted Hamiltonian source ledger

Local mathematical attribution: grwtsk contributors.

## Source chain

### `PadicMobiusPrimeWindowSeam.lean`

Provides the literal prime-number-theorem window

\[
\operatorname{pntWindow}(X,H)
\]

and its exact Möbius--logarithmic source identity. The shifted-Hamiltonian construction uses only the singleton specialization `(p-1,p]` and does not alter the window or replace its coefficients.

### `WilsonFullRegulatedHamiltonian.lean`

Provides the actual gauge-invariant regulated Hilbert space, the maximal logarithmic Hamiltonian domain, the source-defined unbounded linear Hamiltonian, graph self-adjointness, nonnegative quadratic form, normalized zero-energy vacuum, and finite-regulator excitation lower bound.

### `WilsonPrimeWindowResidueHamiltonian.lean`

Provides `PrimeWindowSupplier`, the exact equality

\[
\operatorname{pntWindow}(p_r-1,1)=\log p_r,
\]

positivity and injectivity of the supplied values, and an explicit supplier field certifying transcendence of each logarithm over `\mathbb Q`. It also records the predecessor state-scaling construction.

### `WilsonPrimeWindowShiftedHamiltonian.lean`

Adds the bounded scalar identity term on the unchanged maximal domain:

\[
H_r=H+\log(p_r)I.
\]

It proves source candidates for the form identity, unit-state and vacuum residue recovery, transcendental vacuum energies, eigenvalue translation, centered-form invariance, positivity, shifted excitation bound, and graph self-adjointness.

## Mathematical dependencies

The operator-theoretic input used in the new module is elementary:

- addition of a real scalar multiple of the identity to a linear operator on a fixed domain;
- bilinearity of the real inner product;
- `\langle x,x\rangle=\|x\|^2`;
- translation of eigenvalues under `H\mapsto H+sI`;
- preservation of graph self-adjointness under a real scalar shift.

The transcendence of `\log p` is not reproved. It remains a visible field of `PrimeWindowSupplier`, exactly as in the predecessor source.

## Novelty and boundary

The programme-specific contribution is the correction from homogeneous amplitude encoding to additive spectral encoding. The former recovers a residue from an unnormalized positive form but disappears from normalized energy; the latter places the same source value in the absolute Hamiltonian spectrum while leaving all energy differences unchanged.

This is not claimed as a new abstract result in spectral theory. It is a source-bound connection between the literal arithmetic prime window and the existing regulated Wilson Hamiltonian.

## Verification state

- source inspection: `DONE`;
- mathematical derivation: `WRITTEN`;
- repository publication: pending at the time of this ledger entry;
- Lean compilation: `NOT_RUN`;
- expected types: `NOT_RUN`;
- fresh-kernel replay: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`;
- native execution: `NOT_RUN`.

No physical continuum mass gap, arithmetic endpoint estimate, uniform energy theorem, or Riemann Hypothesis result is asserted.
