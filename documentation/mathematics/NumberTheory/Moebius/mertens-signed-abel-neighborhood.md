# The finite mathematical neighborhood of the signed Abel prime operator

Contribution: grwtsk.

Status: SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
All five source leaves coexist at `900f2c5191ce6b00be6cf408594ed8e9e22e3eed`.
Reviewed predecessor: `8bf742a803d88a9d2cac521a86332738b62454b5`.
This is a finite neighborhood integration, not a claim that every repository
route or unresolved analytic comparison has been formalized.

## Reused source and new connections

The old prime band, ordered tuple multiplicities, repeated-prime guards,
unsifted term, variable ordinary prefixes, kernel support and factor 2/Y are
unchanged. The original complete packet is P, its square-root-collar bulk is B,
and the inherited source comparison is |P-B| <= 2.

| Existing source | New consumer | Exact connection |
| --- | --- | --- |
| `Analysis/FiniteSums/DyadicVariance.lean` | `ThreeCoordinateReadout.energy_split` | Equal-cell splitting isolates the last-two contrast. |
| `Analysis/FiniteSums/WeightedCellRefinement.lean` | `ThreeCoordinateReadout.energy_split` | The unequal 1:2 split isolates the signed observable and its remaining detail. |
| `Analysis/FiniteSums/ThresholdEnergy.lean` | `MertensSignedAbelResponseCoordinates.responseEnergy_le_of_threshold_count` | The actual three squared response errors, their threshold count, and the small-value contribution are retained. |
| `MertensSignedAbelTripleOperator.lean` | `MertensSignedAbelFiniteRows.cofactorResponse_eq_row_sum` | Finite input support and signed linearity identify the actual point-source coefficient rows. |
| `DyadicSignedAbelShiftPacket.lean` | `MertensSignedAbelRowAbel.signedResponse_eq_prefix_drop_sum` | The existing finite Abel identity acts on the combined signed row; its terminal coefficient is proved zero. |
| `Analysis/FiniteSums/DyadicBlockSquareMaximal.lean` | `MertensSignedAbelRowAbel.signedResponse_sq_le_dyadicTree` | The same shifted input sequence supplies the existing deterministic prefix/tree comparison, with both depth and variation factors. |
| Existing two-unit boundary and canonical bulk RH consumer | `MertensSignedAbelResponseCoordinates` and `MertensSignedAbelInputApproximation` | Scalar, input-prefix, coefficient-aware and joint-head estimates return to the original packet. |

Paths in the first column are beneath `GRWTSK/`; unqualified number-theory
leaves are beneath `GRWTSK/NumberTheory/Moebius/`. The new generic leaf is
`GRWTSK/Analysis/FiniteSums/ThreeCoordinateReadout.lean`. All other new leaves
use the existing Moebius subject directory. No public-root import is added.

## 1. Only one of the three response coordinates is observed

For errors e1,e2,e3, set s=e1-e2-e3. The source proves

```
e1^2+e2^2+e3^2 = s^2/3 + (e2-e3)^2/2 + (2e1+e2+e3)^2/6.
```

The two details are nonnegative energy contributions but are invisible to the
signed readout. This derives from the existing dyadic/weighted split sources;
it is not merely an analogy with orthogonal decomposition.

The scalar is unchanged by (e1,e2,e3) -> (e1+d+e,e2+d,e3+e). The generic
module proves exact projection energy, full coordinate reconstruction from
(s,e2-e3,2e1+e2+e3), and existence of arbitrarily large energy with zero readout.
In particular a small response norm is sufficient but strictly stronger than
a small signed output. No claim says that an arbitrary fitted profile has a
small scalar residual.

The source-specific equality `responseEnergy_eq_readout_add_details` applies
the split to e_v=A_v(mu)-b_v, using the actual old responseResidualEnergy.
`abs_full_packet_sub_profile_le_of_signed` replaces the old full-norm supplier
by |s|<=epsilon and returns the same 2+epsilon/6 bound. The profile modification
`gaugeProfile` changes only invisible directions and has an explicit invariance
proof; it is not an arithmetic approximation construction.

## 2. Preserve head/triple cancellation as well

The old signed head remains

```
H_actual = T(U) - T(F0) - (1/2)T(G2).
```

For a candidate H and profile b, define

```
M = H - (1/6)(b1-b2-b3)
J = H_actual-H - (1/6)s.
```

The source proves B=M+J exactly, P<=M+J+2, and |P-M|<=2+E when |J|<=E.
The new one-sided RH wrapper consumes independently supplied subpolynomial
upper budgets on M and J. Constants combine as C+D in the bulk budget; the
old boundary consumer pays its existing constant. It requires every positive
exponent and every dyadic scale. Neither budget is constructed.

This is weaker than separately charging |H_actual-H| and |s|/6. The source
does not silently replace J by that larger expression. Choosing H and b to
reproduce exact unknown arithmetic values is tautological, not a proof of a
small model or residual.

## 3. Actual finite rows, not a fitted spectral matrix

For positive input coordinate a, let delta_a(n)=1 when n=a and 0 otherwise.
Define w_v(a)=A_v(delta_a). The existing finite support and linearity give

```
A_v(f) = sum_(1<=a<=Y) w_v(a) f(a),   w_v(a)>=0,
w_v(a)=0 when a>Y.
```

Form the combined signed row ell(a)=w_1(a)-w_2(a)-w_3(a) BEFORE estimating.
For L(f)=A_1(f)-A_2(f)-A_3(f),

```
L(f)=sum_a ell(a)f(a),    T(G3)=L(mu).
L(f)^2 <= (sum_a |ell(a)|) (sum_a |ell(a)| f(a)^2).
```

The second line is a weighted finite Cauchy comparison on the actual combined
row. It supplies neither a small row norm nor a small input error. It is not
a zeta-spectrum realization or an arithmetic-expander estimate.

## 4. Exact feature-recovery boundary

`ThreeCoordinateReadout.decoder_exists_iff` proves that a scalar readout factors
through a feature map exactly when it is constant on every feature fibre.
Its source-specific form is

```
feature(f)=feature(g)  ==>  sum_a ell(a)(f(a)-g(a))=0.
```

This criterion is necessary and sufficient for exact recovery of L from the
features. It is weaker than injectivity/recovery of the full input. It imposes
no finite-type or probability interpretation on an arbitrary feature map.
The generic obstruction shows that total coordinate mass and the last-two
difference do not determine a-b-c: (0,0,0) and (2,-1,-1) share those features
but have different signed values.

No Huffman byte encoding, Bombieri moment map, symbolic trace, or entropy
observation has been shown to satisfy this source-specific fibre condition.
Those applications need their own exact feature identification. A lossless
byte codec alone is not a recovery theorem for an unspecified real input.

## 5. The signed row is an ordinary-prefix observable

Put S_f(N)=sum_(a=1..N) f(a) and Delta_ell(t)=ell(t+1)-ell(t+2). The new row
support theorem proves ell(Y+1)=0. Applying the existing finite Abel identity
then gives

```
L(f)=sum_(0<=t<Y) S_f(t+1) Delta_ell(t).
```

The terminal term is not dropped on an assumed decay premise. It vanishes by
actual finite source support. Thus prefix-dependent envelopes give

```
|S_f(t+1)|<=E(t)  ==>  |L(f)|<=sum_t E(t)|Delta_ell(t)|.
```

The uniform-max supplier and deterministic tree supplier are optional stronger
consequences. Writing V=sum_t |Delta_ell(t)| and m=j+1, the latter reads

```
L(f)^2 <= (m+1) * dyadicTreeSquareEnergy(m, a -> f(a+1)) * V^2.
```

Neither V nor the tree energy is proved small. In particular this does not
revive the rejected subpolynomial bound for a complete unweighted two-point
tree: it is a generic deterministic comparison, not an arithmetic supplier.
The original signed prefix/drop identity is retained separately.

## 6. Complete approximation handoff

A candidate input g defines b_v=A_v(g). The final integration leaf proves

```
s = L(mu-g)
J = H_actual-H - (1/6)L(mu-g).
```

Consequently either of the following source-matched estimates yields an
explicit packet comparison without a new boundary estimate:

* If (sum|ell|)(sum|ell| |mu-g|^2)<=epsilon^2 and epsilon>=0, then the
  comparison with H_actual-(1/6)L(g) costs at most 2+epsilon/6.
* If every ordinary prefix of mu-g has allowance E(t), the same comparison
  costs at most 2+(1/6)sum_t E(t)|Delta_ell(t)|.

Recoverable features shared by mu and g give zero triple-modeling error, but
still do not estimate the unchanged head. These are complete formal handoffs
between the new leaves, not asserted compatibility arrows in documentation.

## Boundaries of the neighborhood

The finite source identities/inequalities above are SOURCE_PROOF_CANDIDATE.
The profile/input/count/feature hypotheses are conditional interfaces.
Finite rational diagnostics are not compiler or kernel acceptance.
No new entropy decrement, Pinsker inequality, Fourier uniformity, prime
expansion, analytic large-value theorem, Weil pairing, or Hilbert--Polya
identification is imported. The generic threshold lemma is reused only at its
finite mathematical scope, not as an admission of the motivating literature.
The radical logarithm/finite entropy budget is a different source invariant;
it does not bound the input residual or signed row correlation here.
No equality with pickupCross and no application of good-scale monotonicity to
a signed individual row or dyadic packet is asserted.

The remaining arithmetic objective is an independently useful candidate g or
profile b and signed model, together with a quantitative bound for the joint
error. A source-matched prefix or weighted-energy estimate may supply the
triple portion. The unsifted/one-prime/two-prime head still has to be controlled
in the same signed combination. This increment makes those transfers exact;
it does not provide an all-positive-exponent cancellation estimate.

## Source pins and verification

| New source leaf | Git blob at the common snapshot |
| --- | --- |
| `ThreeCoordinateReadout.lean` | `c1bdf3ee53d3a8eb38dcd91ffb3460148e05d338` |
| `MertensSignedAbelResponseCoordinates.lean` | `8ca55cc517caeb387f99c1bfe4ea29600a6f19fa` |
| `MertensSignedAbelFiniteRows.lean` | `e9415026c8585f9fbf0a0526335607a7f02a7210` |
| `MertensSignedAbelRowAbel.lean` | `0bf8a48516af6a61eccc93fb02dc8cde73bfe226` |
| `MertensSignedAbelInputApproximation.lean` | `6a186df12cfe2a04d66773f6b9b00293545b7b93` |

The complete lexical roster is 13 definitions and 46 theorem scripts. No new
private source helper occurs; generated/private dependencies still need audit.
Lean is pinned to `leanprover/lean4:v4.33.0`; Mathlib to
`db584cd6d46c92f209a44c0f1c829460d327499d`.
The passive bundle is
`docs/verification/NumberTheory/Moebius/MertensSignedAbelInputApproximation/neighborhood-v0.1.toml`.
Compilation, fresh kernel checking and transitive axiom audit are NOT_RUN.
No accepted receipt exists. Operational execution/receipts belong outside
math in grwtsk/noeaaeue. No runner is dispatched by these sources or this note.
This increment is local finite mathematics using explicit repository and
Mathlib dependencies, not a port of a new external paper theorem.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f6eb1a0fef212ee6c6201d0816bea1294fd72c26cfaa74a4ae1c033c26f3fad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FiniteSums/ThreeCoordinateReadout.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
