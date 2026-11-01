# Integral Weierstrass variable-change residue-fiber transport references

Local mathematical attribution: grwtsk contributors. Date: 2026-11-01.

## Formalized source

- Source module:
  `GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/EllipticPrimeResidueIntegralVariableChangePort.lean`.
- Namespace:
  `GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueIntegralVariableChangePort`.
- Mathematical source role:
  local elementary construction using the actual Mathlib
  `WeierstrassCurve.VariableChange ℤ`, the existing affine residue-fiber subtype,
  and the existing typed prime-residue port consumers.
- Verification:
  source proof candidate; compilation, expected-type checking, fresh-kernel
  replay and transitive axiom audit `NOT_RUN`.

## Pinned upstream interfaces

- Mathlib `AlgebraicGeometry/EllipticCurve/VariableChange.lean`,
  revision `d13f23b723b8a846827a245b89c10fc7d3f11612`.
  Used interfaces:
  `WeierstrassCurve.VariableChange`,
  `variableChange_a₁`, `variableChange_a₂`, `variableChange_a₃`,
  `variableChange_a₄`, `variableChange_a₆`, `variableChange_Δ`,
  the group law and `mul_smul`.
- Mathlib `Algebra/Group/Int/Units.lean`, same revision.
  Used theorem:
  `Int.isUnit_eq_one_or`.
- GRWTSK predecessor:
  `EllipticPrimeResidueYSignPort.lean`.
  Used declarations:
  `ySignVariableChange`, `reverseYModel`,
  `reverseYModel_eq_variableChange`, `reverseYModel_discriminant`,
  `reverseYGeometricPort`, and `originalAffineEquation`.
- GRWTSK consumers:
  `EllipticPrimeResidueFiberPorts.lean` and
  `EllipticPrimeResidueFiberCounting.lean`.
  Used objects:
  `AffinePointFiber`, `GeometricFiberPort`, `GoodPointCountCertificate`,
  `ChannelAt`, `ChannelPort`, `BoundedSample`, `traceKernel`,
  `tracePacket_route`, and `finite_good_euler_window_route`.

## Mathematical scope and missing bridges

The source proves an actual affine-fiber equivalence for every integral
Weierstrass variable change. It does not prove the corresponding general theorem
over `PadicInt p` or another DVR, and therefore does not by itself identify the
finite special fibers of two arbitrary integral minimal models related by a DVR
unit change. It also supplies no global elliptic L-function comparison, zero-set
identity, Möbius endpoint comparison, BSD statement or RH estimate.

No external research-paper theorem is imported. Silverman's standard variable
change is already represented by the pinned Mathlib source; no claim of new
historical influence or number-theoretic novelty is made.
