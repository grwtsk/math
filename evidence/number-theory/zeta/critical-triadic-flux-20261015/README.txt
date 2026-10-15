Critical triadic flux — source-bound RH reduction research
==========================================================

This package generalizes the repository's critical endpoint-defect recurrence
to every positive damping.  It derives a finite Abel identity whose only
unpaid term is a one-sided complete signed triadic flux.  The positive
recurrence correction and within-cell Mertens drift are bounded
unconditionally.  Uniform upper bounds for the signed flux on every reciprocal
line sigma = 1/(k+1), k >= 1, would feed the existing checked reciprocal-line
consumer and imply the pinned Mathlib RiemannHypothesis target.

The finite triadic moment and primitive-radial Möbius decompositions are checked
exactly.  Numerical profiles through N=200000 are diagnostics only.

Run the four fresh stages from the repository root:

  python3 -B scripts/verify_critical_triadic_flux.py --mode normal \
    --stage tests --output-dir /tmp/ctf-tests-normal

  python3 -B scripts/verify_critical_triadic_flux.py --mode optimized \
    --stage tests --output-dir /tmp/ctf-tests-optimized

  python3 -B scripts/verify_critical_triadic_flux.py --mode normal \
    --stage producer --output-dir /tmp/ctf-producer-normal

  python3 -B scripts/verify_critical_triadic_flux.py --mode optimized \
    --stage producer --output-dir /tmp/ctf-producer-optimized

The destination must not already exist.  The replay performs no network or Git
operation.  Candidate Lean modules are inactive .lean.txt evidence and were not
compiled or axiom-audited in this package.

Outcome: OPEN_FRONTIER.
