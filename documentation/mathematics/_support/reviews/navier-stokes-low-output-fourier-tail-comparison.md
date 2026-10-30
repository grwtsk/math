# Source-exact Navier–Stokes low-output Fourier tail comparison

Local attribution: grwtsk contributors.

**Analytical status:** PROVED at the explicitly stated periodic/Fourier-\(\ell^1\) coefficient scope by two mathematical derivations below. This is not a result on arbitrary Leray solutions, arbitrary \(\mathbb R^3\) data, or full 3D Navier–Stokes regularity. **Formal status:** newly authored Lean algebraic supplier is SOURCE_CANDIDATE / NOT_RUN for compilation, fresh kernel replay and transitive axiom audit.

**Source inspected:** \`GRWTSK/FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/NavierStokesMomentGap.lean\`, blob \`ec0d4d9718596da4d303fd92456871ad770cb44e\` at the inspection baseline \`cd4f870327c44f00db7ac9d2fc0b16c7b99ff150\`. Its Fourier convention is \(\hat f(\xi)=\int e^{-2\pi i x\cdot\xi}f(x)\,dx\), its source-labelled convective factor is \((2\pi i)(\zeta\cdot a)b\), and its Leray projector is the longitudinal subtraction at nonzero output with a separate zero-frequency identity branch. Its finite \`TriadSource\` retains both input frequency identities and the complete SS/ST/TS/TT split. None of those source declarations alone supplies the \(\ell^1\) summability assumption below.

## 1. Precise coefficient-space theorem

Work on the unit torus \(\mathbb T^3\), with Fourier frequencies \(\mathbb Z^3\), equipped with Euclidean \(|\xi|\). Let \(u,v:\mathbb Z^3\to\mathbb C^3\) obey
\[
 A_u=\sum_{\eta\in\mathbb Z^3}|u_\eta|<\infty,\quad
 A_v=\sum_{\zeta\in\mathbb Z^3}|v_\zeta|<\infty,\quad
 \eta\cdot u_\eta=0\quad(\forall\eta).
\]
All vector norms are the ordinary Euclidean Hermitian norm. The **dot in the Fourier incompressibility condition is complex-bilinear** (real frequency, complex coefficient), not a conjugate in the wrong argument.

Define the actual source-labelled projected coefficient
\[
 \mathcal B_\xi(u,v)
 =2\pi i\,\mathsf P_\xi
  \sum_{\eta+\zeta=\xi}(\zeta\cdot u_\eta)\,v_\zeta ,
 \qquad
 \mathsf P_\xi =
 \begin{cases}I-\xi\xi^\top/|\xi|^2,&\xi\ne0,\\I,&\xi=0.\end{cases}
\]
Each distinct ordered pair \((\eta,\zeta)\) is counted exactly once; distinct high-high pairs yielding the same low output are **not** quotient-identified. The zero-frequency convention matches the repository's explicit identity branch. It is harmless here because \(\mathcal B_0(u,v)=0\) under divergence freedom of \(u\).

For \(K\ge0\), let \(\Pi_K\) restrict **output** coefficients to \(|\xi|\le K\) (all remaining output coefficients are set to zero). For \(R\ge0\), define the source shell and retained tail by
\[
s_Ru_\eta={\bf1}_{|\eta|\le R}u_\eta,\qquad
t_Ru_\eta={\bf1}_{|\eta|>R}u_\eta,\qquad
a_R(u)=\sum_{|\eta|>R}|u_\eta|.
\]

**Theorem 1 (finite-output bilinear control, no erased backscatter).** The output coefficients are well-defined by absolutely convergent sums for every fixed \(\xi\). Their low-output part satisfies
\[
 \|\Pi_K\mathcal B(u,v)\|_{\ell^1_\xi}
 \le 2\pi K A_u A_v.
 \tag{1}
\]
Moreover the exact four-sector comparison is
\[
 \mathcal B(u,v)=
 \mathcal B(s_Ru,s_Rv)+\mathcal B(s_Ru,t_Rv)
 +\mathcal B(t_Ru,s_Rv)+\mathcal B(t_Ru,t_Rv)
 \tag{2}
\]
at every output frequency, with **all** ordered source pairs retained. Thus
\[
 \|\Pi_K(\mathcal B(u,v)-\mathcal B(s_Ru,s_Rv))\|_1
 \le 2\pi K \big(A_u a_R(v)+a_R(u)A_v-a_R(u)a_R(v)\big).
 \tag{3}
\]
For \(u=v\), the allowance is \(2\pi K(2A_ua_R(u)-a_R(u)^2)\). In particular, low output does not imply the TT contribution is zero.

**Theorem 2 (an actual linear-operator norm defect).** Define bounded linear maps from \(\ell^1(\mathbb Z^3;\mathbb C^3)\) to the \(\ell^1\) low-output coefficient space:
\[
 A_{u,K}v:=\Pi_K\mathcal B(u,v),\qquad
 A_{s_Ru,K}v:=\Pi_K\mathcal B(s_Ru,v).
\]
Then
\[
 \boxed{\ \|A_{u,K}-A_{s_Ru,K}\|_{\ell^1\to\ell^1}
     \le 2\pi K\,a_R(u).\ }
 \tag{4}
\]
Since \(u\in\ell^1\), \(a_R(u)\to0\) as \(R\to\infty\). This proves a **genuine uniform-in-\(v\)** operator approximation for every fixed output window \(K\), without assuming the desired inequality as an independent certificate field.

**Theorem 3 (continuous, source-preserving tail interpolation).** For \(\theta\in[0,1]\), set
\[
 u_{R,\theta}=s_Ru+\theta\,t_Ru,\qquad
 \rho_{R,\theta}=(1-\theta)t_Ru.
\]
Then \(u=u_{R,\theta}+\rho_{R,\theta}\) identically for every \(\theta\); both parts remain divergence-free. The operators \(A_{u_{R,\theta},K}\) depend Lipschitz-continuously on \(\theta\), and
\[
 \boxed{\sup_{\theta\in[0,1]}
 \|A_{u,K}-A_{u_{R,\theta},K}\|_{\ell^1\to\ell^1}
 \le 2\pi K\,a_R(u).}
 \tag{5}
\]
More precisely their pairwise distance is bounded by
\(2\pi K|\theta-\phi|a_R(u)\). Here \(\theta=0\) is the pure shell and \(\theta=1\) is the complete original source. This **does not** identify these operators with the separate finite moment matrix \(J=I+BC\) or establish that matrix's gap.

If additionally \(M_\alpha(u)=\sum_{\eta}|\eta|^\alpha|u_\eta|<\infty\) for some \(\alpha>0\), then
\[
 a_R(u)\le R^{-\alpha}M_\alpha(u)\quad(R>0),
 \qquad
 \sup_\theta\|A_{u,K(R)}-A_{u_{R,\theta},K(R)}\|
 \le2\pi K(R)R^{-\alpha}M_\alpha(u).
 \tag{6}
\]
Taking \(K(R)=R^\beta\) for \(0<\beta<\alpha\) gives an explicit \(O(R^{\beta-\alpha})\) approximation with **growing output window**. The weighted-\(\ell^1\) hypothesis is substantive and is not inferred from incompressibility alone.

## 2. Analytic route A — input-output frequency transfer and absolute convolution

For every labelled triad \(\eta+\zeta=\xi\), incompressibility gives the exact source identity
\[
 \zeta\cdot u_\eta
 =(\xi-\eta)\cdot u_\eta
 =\xi\cdot u_\eta,
 \tag{7}
\]
including \(\xi=0\), where the factor is zero. The right-hand side depends on the **output** frequency, not the potentially unbounded \(\zeta\). The real orthogonal Leray projection (complexified on \(\mathbb C^3\)) has operator norm at most \(1\). By Cauchy–Schwarz,
\[
 |\mathsf P_\xi((\zeta\cdot u_\eta)v_\zeta)|
 \le|\xi|\,|u_\eta|\,|v_\zeta|.
\]
The double sum over \(|\xi|\le K,\ \eta+\zeta=\xi\) is absolutely bounded by
\(K\sum_\eta|u_\eta|\sum_\zeta|v_\zeta|=KA_uA_v\);
this pays **all** multiplicities but none twice. This proves (1), absolute convergence and the zero-output cancellation.

The exact split \(u=s_Ru+t_Ru\), \(v=s_Rv+t_Rv\) gives (2) from bilinearity. Applying the preceding bound to ST, TS and TT gives (3). For (4) write
\(A_{u,K}-A_{s_Ru,K}=A_{t_Ru,K}\) exactly, and take a supremum over \(\|v\|_1\le1\). Since \(u_{R,\theta}-u_{R,\phi}=(\theta-\phi)t_Ru\), the same operator estimate proves (5). Finally \(|\eta|>R\Rightarrow1\le R^{-\alpha}|\eta|^\alpha\), yielding (6).

All steps are in the actual coefficient space; no representation error, invented quadratic norm or hidden hypothesis that the tail already tends to zero is introduced.

## 3. Analytic route B — independent physical-space divergence form

Because \(\operatorname{div}u=0\), the convective nonlinearity has the distributional conservative form
\[
 (u\cdot\nabla)v=\nabla\cdot(u\otimes v).
\]
Here the Fourier \(\ell^1\) hypotheses make \(u,v\) continuous periodic functions with an absolutely convergent product Fourier series. The divergence is taken in the **distributional** sense; it does not require assuming a classical derivative of \(v\). The \(j\)-th Fourier coefficient of the divergence is
\(2\pi i\sum_k\xi_k\sum_{\eta+\zeta=\xi}u_{\eta,k}v_{\zeta,j}\).
The Leray operator then gives exactly \(\mathcal B_\xi(u,v)\) and immediately exposes its \(|\xi|\) output derivative factor. The \(\ell^1\) convolution inequality and the contractive projector yield (1)–(5) without relying on the triad-by-triad substitution (7).

**Independence disposition:** Both routes share the same supplied Fourier transform, the same \(\operatorname{div}u=0\) assumption, and absolute summability. Route A works algebraically with each ordered labelled triad and then sums; route B uses the conservative distributional divergence and product Fourier coefficients before projecting. Route B independently checks the placement of the derivative/output frequency; it does **not** prove an independent PDE regularity theorem or bypass summability.

## 4. Hostile checks, zero mode and non-claims

1. **High-high-to-low survives.** For integer \(N\ge2\), take
\(\eta=(N,N,0)\), \(\zeta=(1-N,-N,0)\), \(\xi=(1,0,0)\),
\(a=(1,-1,0)\), \(b=(N,1-N,0)\). Then
\(\eta\cdot a=\zeta\cdot b=0\), \(\zeta\cdot a=\xi\cdot a=1\),
and \(\mathsf P_\xi b=(0,1-N,0)\ne0\). The bound controls but does not erase this TT interaction. The fixture alone does not have a normalized, \(N\)-uniform \(\ell^1\) input mass; its growth does not contradict (3).
2. **Zero output is zero for divergence-free first input.** For \(\xi=0\), \(\zeta=-\eta\) and \(\zeta\cdot u_\eta=0\). The repository's \(\mathsf P_0=I\) convention is preserved rather than changed to mask this source cancellation.
3. **Finite-window necessity.** The present estimate has factor \(K\). It does **not** control the full untruncated \(\ell^1\) output of one derivative on the mere hypothesis \(u,v\in\ell^1\). A growing \(K(R)\) requires rate information, such as \(M_\alpha(u)<\infty\).
4. **Wrong first-input hypothesis.** If \(\eta\cdot u_\eta\ne0\), the identity (7) fails, so the low-output derivative cannot be freely substituted into the triad.
5. **No moment-matrix identification.** The new actual operator \(A_{u,K}\) is a linearized periodic Fourier convective map, not the previously imported stationary finite moment operator \(J=I+BC\). Its norm defect (4)–(6) is **not** automatically \(\|P_\theta-J\|<\gamma\). A separate energy-preserving coordinate identification, exact operator comparison and gap supplier are needed. The bound does not prove global regularity, existence of solutions in the required spaces at all times, or a Yang–Mills/QCD statement.
6. **Continuous rope splitting must preserve a common core.** The naive family \((1-\theta)u+\theta u\) cannot make either individual branch uniformly approximate \(u\) across both endpoints. The family \(u_{R,\theta}=s_Ru+\theta t_Ru\) fixes the exact low-frequency core and retains its complementary tail, which is why the uniform bound (5) is valid.

## 5. Next consumer and formal verification

**Mathematical next target:** for one explicitly chosen finite moment observation/energy space, construct a source-bound map from the low-output Fourier operator \(A_{u,K(R)}\) to the actual moment operator used by the coercivity theorem, with the *entire* discrepancy, coefficient normalization, zero modes and tail sectors retained. Only after that comparison is proved can the estimate here contribute to the threshold \(\|P_\theta-J\|<\gamma\). If the operator has no justified common domain/codomain, report the bridge as blocked rather than comparing norms that belong to different spaces.

**Formal status:** the adjacent \`fourierDivergencePairing_output_transfer\` supplier is a local Lean source candidate. The infinite \(\ell^1\) summability, projector operator norm, convolution norm and continuous family results in this document are **complete analytical arguments at their stated hypotheses**, not Lean declarations claimed kernel accepted. An eventual Lean formalization must use a genuine \(\ell^1\) mode space and vector norm, not confuse the current \`Fin 3 → ℂ\` function norm with the Euclidean \(\mathbb C^3\) norm without an isometric bridge. Compilation, fresh kernel replay, transitive axiom audit and full PDE transfer remain \`NOT_RUN\`.
