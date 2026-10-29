# Exact quadratic threshold descent program

The graded Abel/Mellin route preserves its input threshold. A separate nonlinear theorem is therefore mandatory.

The natural quadratic threshold map is

Q(rho)=2 rho - 1.

If an octave theta-error envelope has size A_X approximately X^(rho+delta), then a source mechanism that genuinely replaces its normalized error A_X/X by a quadratic quantity has scale

X * (A_X/X)^2
 = A_X^2/X
 approximately X^(2rho-1+2delta).

The source proves this exponent arithmetic in the quadratic error-step theorem.

At the relevant thresholds:

Q(7/8)=3/4,
Q(3/4)=1/2.

Thus two genuine quadratic contractions would suffice.

The exact missing proposition is separated from the already-proved linear machinery:

QuadraticThetaDescentAt(rho):
  AllDyadicThetaAtThreshold(rho)
  -> AllDyadicThetaAtThreshold(2rho-1).

A uniform supplier over 3/4<=rho<=7/8 gives the two-step descent.

There is a second independent gate if the starting input is the external seven-eighths zero-free theorem rather than an arithmetic theta estimate:

SevenEighthsZeroFreeToTheta:
  zero-free on Re(s)>7/8
  -> theta error at threshold 7/8.

With both gates, an accepted seven-eighths port would imply RH.

The current repository does not instantiate either missing gate. Existing sequential packing and quartic extraction modules prove positivity and terminal forcing conditional on a comparison identity/residual decay; they do not currently prove the quadratic theta contraction.

The next substantive task is to derive a recurrence of the form

A_(j+1) <= K A_j^2/X_j + residual_j

from the actual prime-derived quartic/Gram source, with the residual already at the descended threshold. Merely squaring a bound or renaming a positive Gram is not sufficient.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ecf6bdd6ec8a9f3b6023b3a3fbf9eda34aa1a9284f40e8aa44a0eb73e4593fbd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
