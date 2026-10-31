# Prioritized supplier: Liouville causal energy with the original weights

Local attribution: grwtsk contributors.

## Exact primary target

`GRWTSK.NumberTheory.LiouvilleCausalEnergy.UniformEnergySupplier` in
`LiouvilleCausalEnergyTarget.lean` is

    for every epsilon>0, exists C_epsilon>=0, for every T>=0,
    integral_0^T |sum_{n<=exp u}lambda(n)*pickupResponse(n,u)|² du
      <=C_epsilon*exp(epsilon*T).

The coefficient is Mathlib's actual integer ArithmeticFunction.liouville cast
to the reals. The existing pickupResponse is imported verbatim. No supplied
instance, axiom or theorem proves this target. The previously derived square-
divisor delay operator transfers any valid estimate to original Möbius energy
with factor at most (1+1/epsilon)², without rebuilding residue sectors.

## Route A: one-point complete multiplicativity

The new source candidate preserves complete multiplicativity as
`coefficient_mul`. Generic complete multiplicativity alone gives no cancellation:
the constant-one function is completely multiplicative and its causal energy
has exponential order. The actual signs lambda(p)=-1 must enter quantitatively.

Write L(x)=sum_{n<=x}lambda(n). Finite Abel summation gives, exactly,

    F_lambda(log X)=integral_1^X L(t)t^(-3/2) dt, X>=1.

This retains the original causal boundary subtraction. A proved power estimate
|L(x)|<=C*x^(1/2+eta) gives a waveform bound of order exp(eta*u), hence energy
exponent 2eta. It is a sufficient supplier, not an assumed theorem.

An alternative one-point analytic formulation follows by integrating individual
causal atoms. For Re(z)>1/2, absolute convergence justifies

    integral_0^infinity exp(-z*u)F_lambda(u)du
      =zeta(2z+1)/(z*(z+1/2)*zeta(z+1/2)).

Every original response contributes n^(-z-1/2)/(z*(z+1/2)). To close the target
this ratio would need the appropriate holomorphic Hardy-H² control on EVERY
right half-plane Re(z)>a, a>0, with source-bound Laplace identification.
Merely integrating a meromorphic formula on one vertical line is insufficient:
interior poles cannot be ignored. A zero rho of zeta with Re(rho)>1/2 produces
a denominator zero at z=rho-1/2 with positive real part; the numerator has
real part of its zeta argument greater than one and is nonzero there. Thus
this formulation exposes the RH-strength obstruction instead of resolving it.
No contour or Hardy-space theorem is newly formalized or accepted here.

## Route B: short intervals, measured against the missing low frequency

Primary source: Kaisa Matomäki and Maksym Radziwiłł, *Multiplicative functions
in short intervals*, arXiv:1501.04585v4 (2017 revision of 2015 submission),
https://arxiv.org/abs/1501.04585v4 . The theorem relates short averages to long
averages; almost-all interval cancellation is not a square-root-scale bound
for the complete anchored Abel primitive.

For X>=1 and X<=Y<=2X, the exact block identity is

    F_lambda(log Y)-F_lambda(log X)
      =2L(X)*(X^(-1/2)-Y^(-1/2))
        +integral_X^Y (L(t)-L(X))*t^(-3/2) dt.

The first term is a persistent signed boundary mode. Controlling only the
short sums L(t)-L(X) does not bound L(X), nor does it control interference
between accumulated blocks. A direct short-interval route must price both
that mode and the second term, or prove cancellation between them globally.

For comparison, an almost-all estimate |sum_{x<n<=x+h}lambda(n)|<=eta*h
outside an exceptional set of relative measure eta gives the coarse averaged
square allowance at most (eta²+eta)*h² by |lambda|<=1. This is not the
square-root-scale allowance h^(1+small exponent) unless eta is quantitatively
small enough. This calculation illustrates a loss; it is not a necessary
condition for every possible signed aggregation method.

A usable next test is an estimate for the two-term BLOCK EXPRESSION above,
including its covariance with the accumulated waveform, at all dyadic blocks.
Almost-all endpoint information without exceptional-set weights and cross-block
control does not yet bound the target cumulative energy.

## Route C: prime splitting and entropy, with an exact causal identity

For a prime p define F_{p-free}(u) by the same causal sum restricted to p not
dividing n. Complete multiplicativity and response scaling give

    F_lambda(u)=F_{p-free}(u)-p^(-1/2)F_lambda(u-log p),

with zero extension for negative time. Therefore the exact finite-horizon square
is the p-free energy plus the delayed energy MINUS twice their signed covariance.
A prime-entropy argument should target this covariance or a prime-averaged
version of the complete expression, not postulate independent prime signs.

On the weighted space ||f||_sigma²=integral_0^infinity exp(-sigma*u)|f(u)|²du,
the delay term has norm multiplier p^(-(1+sigma)/2). Normwise inversion of
a single prime split costs at most (1-p^(-(1+sigma)/2))^(-1), provided the
input norm is finite. Removing a finite prime set P gives exactly

    [product_{p in P}(I+p^(-1/2)Delay_{log p})]F_lambda
       =F restricted to gcd(n,product P)=1.

For 0<sigma<=1, the corresponding absolute inverse-product bound diverges
as P exhausts the primes. Thus removing primes and applying only triangle
inequalities cannot close the target at arbitrarily small sigma. This does
not preclude a signed covariance/entropy estimate; it identifies the term
where that genuinely new estimate must act.

Primary entropy sources:
- Terence Tao, *The logarithmically averaged Chowla and Elliott conjectures
  for two-point correlations*, arXiv:1509.05422v4 (2016),
  https://arxiv.org/abs/1509.05422v4 . Its logarithmic correlation conclusion
  has a different averaging kernel and quantifiers from this causal energy.
- Scott D. Hughes, *Effective logarithmic two-point Chowla bounds in every
  window*, arXiv:2609.28526v1 (2026), https://arxiv.org/abs/2609.28526v1 .
  The explicit parameter threshold and iterated-log shift range must be
  preserved; no full-cutoff prime-averaged causal covariance estimate is
  imported from its logarithmic conclusion.

## Research disposition

Priority is now the actual Liouville UniformEnergySupplier. The direct delay
return remains ready to consume a successful estimate. Three concrete tests
are exposed: one-point Hardy/Laplace control, the full signed short-interval
block expression, and prime-free/delayed signed covariance. None currently
proves the all-positive-rate estimate. Existing Möbius/parity/precision source
semantics and the original RH target remain unchanged.

The target definition and coefficient_mul are source proof candidates only.
Compilation, fresh kernel replay, expected-interface checks and transitive
axiom audit: NOT_RUN. This note does not claim that any cited paper proves
the energy supplier or that a new native verification job was dispatched.
