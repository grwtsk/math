# Every integral Weierstrass variable change transports the residue fibers

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-01.

**Disposition.** The predecessor `EllipticPrimeResidueYSignPort.lean` constructs
one genuine admissible coordinate-change port, namely the sign change
\((x,y)\mapsto(x,-y)\). The present increment proves the arbitrary translation
case and uses the classification \(\mathbb Z^\times=\{\pm1\}\) to cover every
Mathlib `WeierstrassCurve.VariableChange ℤ`. It then constructs the actual
target point-count certificate and routes the complete dependent
prime/residue/exponent state through the existing `ChannelPort` consumers.

This is a complete ordinary algebraic proof and a Lean source proof candidate.
Compilation, exact-type checking, fresh-kernel replay and transitive axiom
auditing are `NOT_RUN`.

## 1. Translation model and source identity

For \(r,s,t\in\mathbb Z\), take the actual Mathlib variable change

\[
C_{r,s,t}=(1,r,s,t).
\]

Mathlib's action gives the target coefficients

\[
\begin{aligned}
a'_1&=a_1+2s,\\
a'_2&=a_2-sa_1+3r-s^2,\\
a'_3&=a_3+ra_1+2t,\\
a'_4&=a_4-sa_3+2ra_2-(t+rs)a_1+3r^2-2st,\\
a'_6&=a_6+ra_4+r^2a_2+r^3-ta_3-t^2-rta_1.
\end{aligned}
\]

The source defines `translationModel W r s t` by these five expressions and
proves

\[
\boxed{
\operatorname{translationModel}(W,r,s,t)
=C_{r,s,t}\cdot W.
}
\tag{1}
\]

This is not a parallel curve representation: equation (1) identifies the
coefficientwise model with the pinned Mathlib action.

Since the scaling unit is one, Mathlib's exact discriminant law gives

\[
\boxed{\Delta(\operatorname{translationModel}(W,r,s,t))=\Delta(W).}
\tag{2}
\]

## 2. Explicit affine-fiber equivalence

The old and new affine coordinates satisfy

\[
X=x+r,\qquad Y=y+sx+t.
\]

Thus the inverse map from a source point \((X,Y)\) to target coordinates is

\[
x=X-r,\qquad y=Y-s(X-r)-t.
\]

Substituting the five coefficients above gives the polynomial identity

\[
F_{C_{r,s,t}\cdot W}(X-r,Y-s(X-r)-t)=F_W(X,Y),
\tag{3}
\]

where \(F_W=0\) is the original Weierstrass equation. No division, point
enumeration or characteristic restriction is used.

Equation (3) produces an actual equivalence

\[
\boxed{
\operatorname{AffinePointFiber}(W,p)
\simeq
\operatorname{AffinePointFiber}(C_{r,s,t}\cdot W,p)
}
\tag{4}
\]

at every prime. Its inverse is the coordinate map
\((x,y)\mapsto(x+r,y+sx+t)\). Both inverse laws are ring identities on the
original coordinates.

Consequently the full finite model count, including the point at infinity, is
preserved.

## 3. Exhausting all integral variable changes

For an arbitrary

\[
C=(u,r,s,t):\operatorname{VariableChange}(\mathbb Z),
\]

the scale \(u\) is a unit of \(\mathbb Z\), hence \(u=1\) or \(u=-1\).

If \(u=1\), \(C=C_{r,s,t}\).

If \(u=-1\), the group law gives

\[
C=C_Y\,C_{r,s,t},
\qquad
C_Y=(-1,0,0,0).
\]

The corresponding target model is therefore either

\[
C_{r,s,t}\cdot W
\]

or

\[
C_Y\cdot(C_{r,s,t}\cdot W)
=\operatorname{reverseYModel}
  (\operatorname{translationModel}(W,r,s,t)).
\]

Composing (4) with the predecessor's explicit \(y\)-sign affine equivalence
constructs

\[
\boxed{
\operatorname{AffinePointFiber}(W,p)
\simeq
\operatorname{AffinePointFiber}(C\cdot W,p)
}
\tag{5}
\]

for every integral Mathlib variable change and every prime.

The same case split and the exact discriminant laws show

\[
\boxed{\Delta(C\cdot W)=\Delta(W).}
\tag{6}
\]

This exact equality is special to integral units \(\pm1\); it is not a claim
about arbitrary units over a DVR.

## 4. Certificate and finite-sample consumers

Let \(x:\operatorname{ChannelAt}(W,p)\) be an actual source channel. It contains
a good-reduction certificate for \(W\), an exact point count, a residue and a
prime-power exponent.

Equations (5) and (6) construct a target
`GoodPointCountCertificate` for \(C\cdot W\):

- the target model is \(C\cdot W\);
- the source good-reduction proof transports by (6);
- the count is unchanged;
- count correctness follows from the affine-fiber equivalence.

The residue and exponent are copied exactly. This gives the existing typed port

\[
\operatorname{integralVariableChangeChannelPort}(C,W):
\operatorname{CurveFiber}(W)\to\operatorname{CurveFiber}(C\cdot W).
\]

It preserves

\[
p,\quad N_p,\quad\text{residue},\quad\text{exponent},
\]

and therefore preserves the Frobenius trace, every direct local Euler
coefficient, the local reciprocal factor, finite reciprocal products and the
complete ordered signed trace packet, including repeated occurrences and both
orientations.

The principal declarations are:

```text
translationModel_eq_variableChange
originalAffineEquation_translation_iff
translationAffineEquiv
integralVariableChange_eq_translation_or_ySign
integralVariableChangeGeometricPort
integralVariableChange_discriminant
integralVariableChangeCertificate
integralVariableChangeChannelPort
integralVariableChange_orderedTrace
integralVariableChange_finiteEulerWindow
```

## 5. Comparison and hostile boundary

The coefficient-congruence transport and this variable-change transport solve
different problems.

- Coefficient congruence identifies selected special fibers and may hold at only
  finitely many primes.
- An integral variable change is one global admissible coordinate change and
  induces an affine-fiber equivalence at every prime.

The earlier finite \(a_6\)-deformation obstruction remains essential: equality
of finitely many fibers or local Euler factors does not prove a global variable
change. Conversely, the present theorem does not yet identify Mathlib's chosen
minimal model over `PadicInt p`. Minimal-model uniqueness there uses units of the
DVR, not only the units \(\pm1\) of \(\mathbb Z\).

The next geometric supplier is therefore a residue-fiber equivalence for a
`VariableChange R` over a DVR or its residue field, with the scale mapped to a
unit in the residue field. That theorem can then be used to close the outstanding
minimal-model point-count transport in the native local-power-series programme.

No global elliptic \(L\)-function equality, elliptic zero-set correspondence,
Möbius endpoint kernel comparison, all-positive-rate estimate, BSD or RH follows
from the present local coordinate theorem.
