# Paper-to-formalization: PR103 modulus-one adapter

Date: 2026-11-02. Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.

## Paper/result source

External result:

- repository `GTimG/QuasiRiemannTracker`;
- merge `8b1a0167c8e324099884152181e3fb2206510e88`;
- file `submissions/2026-11-01-closest-fraction-contact/src/Candidate/Main.lean`;
- blob `808d04cec892449707d23e81f94179e2738fdf1a`;
- theorem `Candidate.bound`.

The theorem gives nonvanishing of every complex Dirichlet-character L-function strictly to the right of the exact PR103 rational boundary, excluding only the principal-character pole pair `(chi,s)=(1,1)`.

## Formalized local connection

Published local source:

- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPR103ModOneAdapter.lean`;
- merge `50073a4f1984afbfb092d0d9f8af4d791f8385cd`;
- blob `050b4f77a7a22acf89268599cbee178f7748f198`.

Pinned Mathlib supplier:

- `Mathlib/NumberTheory/LSeries/DirichletContinuation.lean` at `d13f23b723b8a846827a245b89c10fc7d3f11612`;
- blob `89c72580697983d86706cff17ccbea2cee6475a3`;
- theorem `DirichletCharacter.LFunction_modOne_eq`.

The local source formalizes:

1. an exact family proposition with the quantifiers and pole guard of `Candidate.bound`;
2. the pointwise identity `L(s,1 mod 1)=zeta(s)`;
3. the equivalence of the external pole guard with `s != 1` at modulus one;
4. lossless specialization of family nonvanishing to zeta nonvanishing at the same boundary;
5. routing of all existing conditional PR103 causal-energy consumers through the exact external family proposition.

## Formalization boundary

The external theorem is not imported into the local Lake dependency closure and is not replayed by this adapter. Its local proposition remains an explicit input. The Perron/contour zero-free-to-Mertens theorem also remains unformalized. The adapter contributes no new signed Möbius estimate, no all-positive-rate endpoint supplier, and no RH proof.

## Verification status

- source publication and immutable blob readback: `DONE`;
- ordinary mathematical specialization: `WRITTEN/PROVED`;
- Lean compilation: `NOT_RUN`;
- expected types: `NOT_RUN`;
- fresh-kernel replay: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`;
- external theorem replay: `NOT_RUN`;
- zero-free-to-Mertens bridge: `NOT_FORMALIZED`;
- all-positive-rate endpoint supplier: `UNPROVED`;
- RH: `UNPROVED`.
