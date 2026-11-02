# Paper-to-formalization: reciprocal-zeta and Perron bridge

Date: 2026-11-02. Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.

## External theorem/result sources

### PR103 zero-free theorem

- repository `GTimG/QuasiRiemannTracker`;
- merge `8b1a0167c8e324099884152181e3fb2206510e88`;
- file `submissions/2026-11-01-closest-fraction-contact/src/Candidate/Main.lean`;
- blob `808d04cec892449707d23e81f94179e2738fdf1a`;
- theorem `Candidate.bound`.

### Generic logarithmic control

- repository `openai/math`;
- revision `4eaee87548250b2682affda7d05d947c05554bae`;
- file `lean/OAI/NumberTheory/DirichletL/LogarithmicControl.lean`;
- blob `dd75b86f7fa6ebf6b7bfa5c603dfda67e3e41373`;
- theorem `OAI.SevenEighths.LogarithmicControl.logarithmic_control`.

The OpenAI theorem is a generic complex-analytic result: zero-free holomorphy, polynomial outer growth and bounded inner logarithm yield both function and reciprocal bounds with arbitrarily small positive power loss. It is not itself a zeta theorem and is not imported by the local source.

### Contour infrastructure

At the same OpenAI revision:

- `lean/OAI/NumberTheory/TwoPoint/ShortIntervals/MRTRieszContour.lean`, blob `57d112ed2485a88ca260bfff22d2374db69d540d`;
- `lean/OAI/NumberTheory/DirichletL/Mellin/InverseContour.lean`, blob `7a3a90f5076faba3a309ca636fd37cff0e2926f1`.

These files provide comparison contour machinery for source-specific smoothed kernels. They do not directly establish the unsmoothed Möbius truncated Perron theorem used in the local bridge.

## Formalized local connection

Published local source:

- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPR103ReciprocalPerronBridge.lean`;
- merge `488c7372dac1737565d6a9f4585593f567abf4a4`;
- blob `1235f5b4b811dc93ba7a3b87c9ea73f3627f37d5`.

The local source formalizes:

1. exact interfaces for reciprocal-zeta subpower control and the truncated Perron three-term return;
2. the scalar absorption
   \[
   e^{(\sigma+\eta)u}+e^{\eta u}+1+u
   \le\left(3+\frac1\theta\right)e^{\theta u};
   \]
3. a valid intermediate contour line and subpower parameter for every requested exponent;
4. derivation of the existing `ZeroFreeToMertensPowerBridge` from the two explicit providers;
5. the exponent ledger for a polynomial reciprocal bound at height `x^B`;
6. the necessary inequality `A(1-sigma)<theta-sigma`;
7. an explicit family of requested exponents showing that every fixed `A>0` fails arbitrarily near the zero-free boundary;
8. routing of the existing conditional PR103 causal consumers through the factored bridge.

## Novelty and obstruction boundary

The generic logarithmic-control and contour principles are external prior formal work. The local programme-specific contribution is their exact factorization against the unchanged Mertens and causal interfaces, together with the quantitative obstruction

```text
rh-fixed-polynomial-reciprocal-perron-insufficiency-v1
```

showing that a fixed polynomial reciprocal estimate cannot close the plain rectangular Perron route at all margins. This is not claimed as a new theorem about zeta zeros or Mertens cancellation; it is a rigorous elimination of a proposed bootstrap inside the current proof architecture.

## Formalization boundary

The local source does not prove the zeta-specific reciprocal subpower estimate, the truncated Perron formula, or the external PR103 theorem. Compilation, expected types, fresh kernel, transitive axiom auditing and native execution remain `NOT_RUN`. The all-positive-rate endpoint supplier and RH remain unproved.
