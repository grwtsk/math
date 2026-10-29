# Graded theta transport preserves the threshold

For a target threshold rho>=1/2, suppose that on each large dyadic octave

|theta(u)-u| + 1
 <= C X^(rho+eta/2).

The higher-prime-power difference psi-theta is O(sqrt u), so it is absorbed by
the same amplitude scale whenever rho>=1/2.

Localized Abel reconstruction gives cumulative discrepancy of order

X^(rho-1+eta/2).

Squaring yields exactly the graded energy exponent

X^(-2(1-rho)+eta).

The graded Mellin and denominator-free ODE transport then gives

RiemannZetaZeroFreeRightHalfPlane(rho).

Thus the whole linear route is exponent-conserving:

theta error exponent rho
 -> energy exponent 2(1-rho)
 -> zero-free threshold rho.

In particular a 7/8-strength theta error returns a 7/8 zero-free region. It
does not descend to 3/4, 1/2, or any smaller threshold. Repeating this route is
therefore not a bootstrap mechanism.

Any genuine 7/8-to-1/2 descent must introduce a new inequality that improves
the exponent, such as a nonlinear positivity, moment amplification, density,
or quartic extraction step.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a00ae43b530987a7765e6b8522dbef4b6caf8247b6210c8dc99d5cee0d77ec16 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
