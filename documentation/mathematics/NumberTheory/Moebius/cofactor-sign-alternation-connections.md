# Cofactor sign alternation and ordinary-Chowla connections

Local attribution: grwtsk contributors.

Status: SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.

This note formalizes connections exposed by obstruction fixed-degree-cofactor-sign-alternation-v1. It does not import a cancellation theorem and does not alter the original RH endpoint target.

## Existing source retained

The completed small-cofactor source is the existing complete-small-cofactor-family mathematics from commit 45b9ab6ee50bad1c3b6b255d7b22604bca3b5bf2. It freezes N=2^j, T=log N, the original causal Gram, h, W, d, strict gap, rough Mobius coefficient, both squarefree coprime small cofactors, one prime >j^8 in each selected residual core, and the independent p=q correction. Its positive proper-family main is not a bound for the complete source.

## Finite-degree sign alternation

Write H=sum_(ell in P(d)) 1/ell and e_r for the elementary symmetric polynomial in the reciprocal small primes. The degree-zero/one retained coefficient is 3e2-H-3e3. Adding the disjoint sector with i=ell1*ell2, ell1<ell2, and k containing one or two distinct small primes disjoint from i contributes -3e3+6e4. The factors 3 and 6 count allocations of a three- or four-prime support. Hence the enlarged coefficient is -H+3e2-6e3+6e4.

The Lean theorem degreeTwoCoeff_eq_degreeOne_add_increment scripts exactly this algebra. It is not promoted to a source estimate.

Completing both coprime squarefree cofactors replaces fixed-degree truncations by the local three-state product product_(ell in P(d))(1-2/ell). This is represented by completeLocalFactor. The separate absolute-mass product is completeAbsoluteLocalFactor. No theorem identifies the sign of a finite-degree truncation with the sign of the completed product.

## Connection 1: ordinary two-point Chowla

Imported literature, not imported theorem: OpenAI, Ordinary two-point correlations of multiplicative functions, 24 September 2026, OpenAI Math Release preprint. Stable source: https://github.com/openai/math/tree/main/preprints/Ordinary-two-point-correlations-of-multiplicative-functions-September-24-2026 .

The manuscript proves an ordinary two-point logarithmic saving for every fixed pair of nonproportional affine forms, with an absolute exponent; the implied constant may depend on the fixed affine/progression data. Its quantitative setup fixes the shift and modulus before the scale parameter. The proof uses prime supplies, centered divisibility coordinates, an independent residue space, deletion of small edge mass, prohibited-path/forest organization and spectral transfer.

The local connection is structural: the completed cofactor family also requires all prime-assignment states to be combined before absolute values. However the pickup parameters d,i,k,p,q,j,h, residue restrictions, Gram weights and endpoints grow with the source scale.

OrdinaryTwoPointPickupBridgeRequirements therefore keeps the missing bridges explicit: exact source identification; nonproportional affine-form reduction; uniformity in growing cofactors, shifts and residues; preservation of the original Gram observation; frozen endpoint and rough-mask compatibility; independent p=q correction; coverage of the exact disjoint complement; and one constant valid for the growing family. OrdinaryTwoPointPickupBridgeReady is only their conjunction. No value is constructed.

This reuses, rather than supersedes, the repository's existing growing-shift affine-Chowla formalization. The present connection is specific to the complete cofactor/rough-block source and records why a fixed-form theorem cannot be inserted by name alone.

## Connection 2: sieve parity barrier

The parity analogy is formalized only as a boundary: FiniteDegreeParityBoundary keeps a truncated coefficient and the completed coefficient as distinct data. No sieve parity theorem is imported and no implication from the classical parity problem to the pickup estimate is claimed. Cancellation credit is assigned only after the complete compatible prime state has been restored.

## Connection 3: geometric/function-field trace models

Finite-field Mobius-correlation results provide a model in which a complete signed family can become a trace function and receive square-root cancellation. That remains analogy until an integer-source comparison is proved.

GeometricTracePickupRequirements records the non-negotiable bridge: preserve the integer source, recover the signed observation and Gram weights, restore cutoff/boundary terms, control growing geometric complexity and pay exceptional fibers. No geometric trace theorem is imported.

## Exact obstruction after formalization

The obstruction is not that Chowla is unknown in fixed form. The available fixed-form ordinary binary correlation theorem does not supply a uniform estimate for the scale-dependent family produced by the completed cofactor source, and the current source contains additional Gram, cutoff, mask, repeated-prime and complement terms.

A useful next theorem must either prove the required growing-family uniformity for the exact source or transplant the centered-prime/forest/spectral proof architecture with every comparison cost controlled.

## Evidence classification

Imported mathematics in the Lean module: none.
Literature connection: OpenAI 2026 ordinary two-point correlations, fixed-form scope only.
Local source proof: degree-two coefficient aggregation.
Existing local written source: complete coprime cofactor family and Johnston--Yang PNT comparison.
Conditional interface populated: none.
Analogy only: sieve parity and finite-field/geometric trace mechanisms.
New cancellation estimate: none.
Compilation: NOT_RUN.
Fresh kernel replay: NOT_RUN.
Transitive axiom audit: NOT_RUN.
External theorem proof acceptance: NOT_CLAIMED.
