# Endpoint completion attempt: exact core equivalence and the Putnam absorption ceiling

**Disposition:** the requested complete endpoint estimate was attacked through the
published Putnam counting and energy bounds. The geometric reduction can be
made logically exact, but the proposed contraction bootstrap fails at an
identity-level loss: paying a degree-\(d\) packet by \(d\) times the diagonal
and then dividing by the geometric gap \(d/(N-1)\) restores the full factor
\(N-1\). No choice of the paid gap cutoff improves that loss.

No complete endpoint estimate, uniform causal-energy theorem, or Riemann
Hypothesis proof is claimed.

**Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.

**Prepared against current `grwtsk/math/main`:**
`a6061aab98774288f1c5f6ccf22cf1f4458efd3d`, tree
`c46ca7d54f2df5c709af54d9cf10673c8647442e`.

**New source candidate:**
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointPutnamAbsorptionObstruction.lean`.

Compilation, expected-type checking, fresh-kernel replay, native execution,
and transitive axiom auditing are all `NOT_RUN`.

## 1. Exact completion target retained

The endpoint source remains the existing ordered Möbius response Gram

\[
\mathcal X(T)=
\sum_{\substack{1\le m,n\le\lfloor e^T\rfloor\\m\ne n}}
\mu(m)\mu(n)K_T(m,n),
\qquad
K_T(m,n)=\int_0^T r_m(u)r_n(u)\,du,
\]

and the exact endpoint quadrature \(\mathcal E(T)\), with

\[
|\mathcal E(T)-\mathcal X(T)|\le\frac14.
\]

The requested terminal estimate is

\[
\forall\varepsilon>0\ \exists C_\varepsilon,R_\varepsilon\ge0\
\forall T\ge R_\varepsilon:
\qquad
\mathcal E(T)\le C_\varepsilon e^{\varepsilon T}.
\tag{1.1}
\]

The more general good-scale formulation and the concrete dyadic birth sum
remain the repository completion targets. This increment does not alter their
quantifier order, source, or analytic return.

## 2. Previously paid geometric sectors

For a finite additive-gap set \(A\), the Putnam double count gives

\[
|\mathcal X_A(T)|
\le 2|A|\mathcal D(T)
\le 4|A|T^2,
\tag{2.1}
\]

where \(\mathcal D(T)\) is the actual Möbius diagonal energy. With

\[
A_\varepsilon(T)=
\{1,\ldots,\lfloor e^{\varepsilon T/2}\rfloor\},
\]

this sector has every-positive-rate growth.

If \(M_T=\lfloor e^{2T/3}\rfloor\), every pair touching the last \(M_T\)
births, after excluding the selected gaps, is bounded absolutely by \(64\)
eventually. The exact decomposition is

\[
\mathcal X(T)=
\mathcal X_{A_\varepsilon(T)}(T)
+\mathcal B^{\mathrm{out}}_{A_\varepsilon(T),M_T}(T)
+\mathcal C_\varepsilon(T).
\tag{2.2}
\]

Here \(\mathcal C_\varepsilon(T)\) is
`endpointPutnamCoreCross`.

## 3. New converse: the dense-core supplier is equivalent to endpoint completion

The existing source proves that all-positive-rate control of
\(\mathcal C_\varepsilon\), together with the two geometric bounds, implies
(1.1).

The new source proves the converse. From the endpoint error,

\[
\mathcal X(T)\le\mathcal E(T)+\frac14.
\]

Using (2.2),

\[
\begin{aligned}
\mathcal C_\varepsilon(T)
&=
\mathcal X(T)
-\mathcal X_{A_\varepsilon(T)}(T)
-\mathcal B^{\mathrm{out}}_{A_\varepsilon(T),M_T}(T)\\
&\le
\mathcal E(T)+\frac14
+|\mathcal X_{A_\varepsilon(T)}(T)|
+|\mathcal B^{\mathrm{out}}_{A_\varepsilon(T),M_T}(T)|.
\end{aligned}
\tag{3.1}
\]

Therefore, once the geometric inputs are supplied,

\[
\boxed{
\operatorname{PutnamCoreEndpointSupplier}
\iff
\operatorname{CompleteEndpointEstimate}.
}
\tag{3.2}
\]

The source theorem is

```lean
putnamCore_iff_completeEndpoint_of_geometric_inputs
```

and the reverse implication is proved in

```lean
putnamCore_of_completeEndpoint
```

with the exact rate-dependent gap set and terminal width retained.

This is an important negative clarification. The dense-core proposition is
not a weaker arithmetic target that could be discharged by another unsigned
energy estimate. It is the complete endpoint problem after two already
payable geometric sectors have been removed.

## 4. Attempted centered-energy contraction

A natural completion attempt is to remove a degree-\(d\) relation, control it
by the diagonal, and use the complement as a contraction.

For a constant unit Gram fixture on \(N\) vertices, the complete ordered packet
is

\[
P_{\mathrm{all}}=N(N-1).
\]

A \(d\)-regular paid relation contributes

\[
P_{\mathrm{paid}}=Nd,
\]

and the complement contributes

\[
P_{\mathrm{core}}=N(N-1-d).
\]

Thus the geometric contraction factor is

\[
q=1-\frac{d}{N-1}.
\tag{4.1}
\]

The paid packet costs \(dD\) under the endpoint Young/degree estimate. To
absorb the core, one divides by

\[
1-q=\frac{d}{N-1}.
\]

The exact loss is therefore

\[
\boxed{
\frac{d}{1-q}=N-1.
}
\tag{4.2}
\]

The source theorem

```lean
paidDegree_over_geometricGap
```

proves (4.2) algebraically.

Equation (4.2) is independent of \(d\). Making the paid gap set smaller
reduces its energy cost and the contraction gap in exactly the same
proportion. Making it larger increases both in exactly the same proportion.
The resulting estimate remains of order

\[
N\,\mathcal D(T)\asymp e^T\,\mathrm{poly}(T),
\]

which has physical-time exponent one.

## 5. Exact dense-core count

On \(V\) vertices, delete every ordered pair with additive distance at most
\(H\). The remaining ordered pair count is

\[
\boxed{
(V-H-1)(V-H)
}
\qquad(0\le H<V).
\tag{5.1}
\]

Indeed, a positive distance \(h\) contributes \(2(V-h)\) orientations, and

\[
2\sum_{h=H+1}^{V-1}(V-h)
=
(V-H-1)(V-H).
\]

The complete count is \(V(V-1)\), and

\[
V(V-1)-(V-H-1)(V-H)
=
2VH-H^2-H.
\tag{5.2}
\]

At the published parameters

\[
V_T=
\lfloor e^T\rfloor-\lfloor e^{2T/3}\rfloor,
\qquad
H_{\varepsilon,T}=
\lfloor e^{\varepsilon T/2}\rfloor,
\]

with \(0<\varepsilon<2\),

\[
\frac{H_{\varepsilon,T}}{V_T}\to0,
\qquad
\frac{(V_T-H_{\varepsilon,T}-1)
      (V_T-H_{\varepsilon,T})}
     {V_T(V_T-1)}
\to1.
\tag{5.3}
\]

Thus the remaining relation is asymptotically complete. There is no fixed
geometric contraction \(q<1\).

The Lean source records the exact finite count as `CorePairCountFormula` and
the floor/exponential limit as `TunedCoreDensityTendsToOne`; both remain named
formalization targets pending their Finset and asymptotic proofs.

## 6. Precise failed inequality

The attempted bootstrap was

\[
\mathcal H(T)
\le
q_T\mathcal H(T)
+
\text{paid geometric energy}
+
e^{o(T)},
\tag{6.1}
\]

where \(q_T<1\) comes only from deleting the counted relations.

For the actual parameters,

\[
1-q_T\asymp
\frac{H_{\varepsilon,T}+M_T}{e^T}.
\]

The geometric packet is bounded by the same numerator times a polynomial
diagonal allowance. Dividing (6.1) by \(1-q_T\) restores an \(e^T\) factor.
The scalar identity (4.2) shows that this is not a loose estimate: a constant
positive Gram saturates it.

This fixture is not a Möbius counterexample. It eliminates a method class:
no proof using only incidence counts, Gram positivity, endpoint Young
inequalities, and positive absorption can complete (1.1).

## 7. Remaining noncircular arithmetic requirement

A successful continuation must introduce a signed gain absent from (4.1).
Equivalent forms include:

1. a source-specific core inequality
   \[
   \mathcal C_\varepsilon(T)
   \le C_\varepsilon e^{\varepsilon T};
   \]

2. a contraction
   \[
   \mathcal C_\varepsilon(T)
   \le (1-\gamma_T)\mathcal H(T)+E_\varepsilon(T)
   \]
   where both \(\gamma_T^{-1}\) and \(E_\varepsilon(T)\) have
   every-positive-rate growth;

3. a negative compensation from the least-prime mixed/Type-II packets before
   absolute values;

4. a direct proof of the explicit dyadic endpoint birth sum.

The geometric gap gives
\(\gamma_T^{-1}\asymp e^T/(H_{\varepsilon,T}+M_T)\), which is not
all-positive-rate. Any acceptable \(\gamma_T\) must therefore be arithmetic,
not merely combinatorial.

## 8. Verification boundary

The new source is a `SOURCE_PROOF_CANDIDATE`.

- Source inspection: `DONE`.
- Mathematical derivation: `WRITTEN`.
- Compilation: `NOT_RUN`.
- Expected types: `NOT_RUN`.
- Fresh-kernel replay: `NOT_RUN`.
- Transitive axiom audit: `NOT_RUN`.
- Native execution: `NOT_RUN`.
- Complete endpoint estimate: `UNPROVED`.
- Uniform causal energy: `UNPROVED`.
- Riemann Hypothesis: `UNPROVED`.

Publication of this obstruction does not upgrade any predecessor source to
accepted Lean evidence.
