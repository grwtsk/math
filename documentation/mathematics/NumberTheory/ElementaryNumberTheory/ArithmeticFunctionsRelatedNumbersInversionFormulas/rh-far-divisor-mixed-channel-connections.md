# RH far divisor-mask mixed-channel connection atlas

Local mathematical attribution: grwtsk contributors.

## Scope

Source commit: `fe17c4d29c15a76ce590bf06bcb43bc3362875c7`. Source blob: `923dfba7bb871701c1894f45c63f49f863ac3786`. Verification issue: `grwtsk/math#1492`.

This note records the formal connection layer for the stable obstruction

```text
RH-FAR-DIVISOR-CHANNEL-MISMATCH-03
```

The preceding source has already reduced the original `transportedDivisorMask`
consumer to three exact mechanisms:

1. the mixed Gram
   `gram P T m (p*n) - gram P T (p*m) (p*n)`;
2. the moved selector difference at `p*n`;
3. the atomic term containing the actual source denominator
   `(omega P N (p*n) : ℝ)⁻¹`.

The new module is:

```text
GRWTSK/NumberTheory/ElementaryNumberTheory/
ArithmeticFunctionsRelatedNumbersInversionFormulas/
PickupRoughFarMixedChannelConnections.lean
```

Its namespace is:

```text
GRWTSK.NumberTheory.Moebius.PickupRoughFarMixedChannelConnections
```

This is a source proof candidate. Compilation, fresh kernel replay, transitive
axiom auditing and expected-interface checking are NOT_RUN.

## Exact source decomposition

The module defines separate atoms and complete finite sums:

```text
gramMismatchAtom
indicatorMismatchAtom
atomicDenominatorAtom

gramMismatchSum
indicatorMismatchSum
atomicDenominatorSum
```

It proves:

```text
mixedChannelAtom_eq_components
transportedDivisorMask_eq_componentSums
```

Thus the external analogies do not replace the arithmetic source. Every later
estimate must act on one of the three named sums or on their proved recombination.

## Conditional supplier boundary

Three independent records carry one-sided bounds:

```text
GramMismatchSupplier
IndicatorMismatchSupplier
AtomicDenominatorSupplier
```

A `CompleteChannelSupplier` contains all three. The theorem

```text
transportedDivisorMask_le_of_completeChannelSupplier
```

returns their total budget to the unchanged `transportedDivisorMask`.

This interface deliberately has no field saying “the method resembles shifted
convolution,” “entropy is small,” or “the divisor density is favorable.” Such a
statement must first produce one of the exact component inequalities.

## Typed connection atlas

The source classifies the connections as follows.

| Connection | Exact component | Formal status |
| --- | --- | --- |
| Existing source decomposition | complete source | proved source bridge candidate |
| Shifted convolution | mixed Gram | conditional interface |
| Cutoff/boundary-strip analysis | moved indicator | conditional interface |
| Inverse-omega averaging | atomic denominator | conditional interface |
| Chowla/Elliott alignment | complete source | method analogy |
| Sieve parity boundary | complete source | negative control |
| Selberg decomposition | complete source | method analogy |
| Entropic PFR | complete source | method analogy |

`proofBearing_iff_exactSourceDecomposition` proves that only the exact local
source decomposition is proof-bearing in this atlas. The other entries remain
research guidance until a theorem inhabits a supplier.

The existing paper-to-formalization register entry
“RH mixed-channel connections: shifted convolution, Chowla/Elliott, Carleson,
and formalized PFR” remains the literature provenance for these analogies. No
historical influence is inferred.

## Literature mappings and nonclaims

### Shifted convolution

Florea, Lalín, Malik and Sahay, *The shifted convolution problem in function
fields* (2025), arXiv:2502.16067, motivates treating a displaced correlation as
one object. No function-field, Voronoi or Estermann theorem is imported. The
local formal interface is only `GramMismatchSupplier`.

### Chowla and Elliott

Tao, *The logarithmically averaged Chowla and Elliott conjectures for two-point
correlations* (2015), arXiv:1509.05422, and Tao--Teräväinen, *The structure of
logarithmically averaged correlations of multiplicative functions, with
applications to the Chowla and Elliott conjectures* (2017/2019),
arXiv:1708.02610, motivate dependence-aware prime-channel alignment. No entropy
decrement, logarithmic average or multiplicative-function correlation estimate
is imported. A valid transfer must bound the complete source components above.

### Sieve parity

The sieve parity problem supplies a negative methodological control: exact
weight algebra does not collapse two channels when their selectors or readouts
differ. The theorem

```text
scalar_telescoping_does_not_collapse_channels
```

provides a finite exact fixture for this failure.

### Selberg decomposition

The formalized Selberg/PNT pattern motivates separating an exact arithmetic
decomposition from the analytic estimate that consumes it. No Selberg formula or
prime-number-theorem result is imported into this module.

### Polynomial Freiman--Ruzsa

The Lean PFR project based on Gowers--Green--Manners--Tao,
*On a conjecture of Marton* (2023), arXiv:2311.05762, motivates explicit channel,
copy and information-loss typing. No PFR or Shannon-entropy theorem is imported.

## Hostile controls

The module proves two source-independent finite controls.

`scalar_telescoping_does_not_collapse_channels` shows that a relation
`deltaR + deltaB = -1` does not permit replacement of two differently sampled
terms by one collapsed term.

`atomic_control_alone_does_not_bound_total` shows that controlling the atomic
sector alone cannot bound an unrestricted complete three-sector expression.

These controls do not prove that any actual arithmetic sector is large. They
prevent incomplete certificates from being used as source-facing estimates.

## RH endpoint boundary

This formalization does not prove the terminal endpoint estimate. The endpoint
route still requires a fixed adequately covering set of scales and, at every
positive rate, a one-sided subexponential upper bound for the actual
`PickupEndpointQuadrature.endpointSum`.

A future use of this atlas must additionally:

1. relate the far divisor-mask consumer to the complete endpoint or cross-energy
   budget without dropping the other geometric, near, main, diagonal or error
   sectors;
2. construct component suppliers with the required rate and uniformity;
3. prove the resulting complete upper certificate on a fixed adequately covering
   scale set;
4. preserve the source quantifier order.

The radical-logarithm identity is not part of this obstruction. Its source proof
already exists elsewhere; an alternative cast-and-`Real.log_prod` implementation
has separate unconfirmed API obligations and supplies no cancellation here.

## Verification boundary

The passive target binds the exact source commit, blob, imported dependency,
declaration inventory and requested commands. No source inspection, finite
fixture or issue publication counts as compilation or kernel acceptance. Any
repair must preserve the three exact source sectors and requires new source pins.
