# Original-Möbius Gaussian heat: independent no-go audit and surviving signed-residual criterion

Date: 2026-11-02. Repository: `grwtsk/math`. Mathematical direction and local attribution: `grwtsk contributors`. Formal source drafting and finite diagnostic assistance: OpenAI ChatGPT. No claim of external endorsement, first discovery, independent Lean proof or kernel verification.

## Source boundary and verdict

The pinned starting point is `5d053eeb463036390b7bb11d216b89107864ac6d` (issue #1633), particularly:

- `MoebiusElementarySquarefreeSieveSource.lean` (blob `aac5b8dae1e98c5f1101b6eec79c356ca18b15a8`);
- `MoebiusGaussianStrongHeatSquarefreeShell.lean` (blob `aff41beda52bd996c91dcda73df6fdc940af989d`);
- `MoebiusGaussianStrongHeatSquarefreeNoGo.lean` (blob `92fa557892b95cbc540d033a99e4fc1f5f1df687`);
- `MoebiusGaussianStrongHeatUnconditionalNoGo.lean` (blob `cf76838c87886e0a737b943f8abccac8e2dc2843`);
- pre-existing `MoebiusGaussianHeatSignedEvolution.lean` (blob `ee8bf6ec9238386882c79cde1dc7c2c3f685c285`) and `MoebiusGaussianLogHeatSource.lean`.

Source-level analytical audit: the finite squarefree bound, interval/floor adapter, response lower bound and exponential positive-radius obstruction are consistent as *ordinary mathematics*. The existing Lean proof syntax, lemma lookup, elaborated types, dependency chain and kernel acceptance remain unchecked. In particular the audit is not a claim that `Nat.cast_div_le` or the other pinned APIs elaborate as written.

## Independent elementary no-go derivation

The original integer inventory is `endpointIndex T = Icc 1 floor(exp T)`. Coefficients are the genuine Mathlib Möbius function `mu(n)` (including `mu(1)=1` and `mu(n)=0` for squareful n), and the causal response is precisely

`r_n(u) = 2*(n^(-1/2)-exp(-u/2))` if `log n <= u`, otherwise `0`.

1. Every positive nonsquarefree integer has some actual prime-square divisor. For a fixed integer `N>=0`, covering the nonsquarefree subset of `[1,N]` by the *overlapping* sets `{n<=N:d^2|n}`, `2<=d<=N`, gives `N-Q(N) <= sum_{d=2}^N floor(N/d^2)`. The exact count `floor(N/d^2)` needs no PNT, probability or density asymptotic.
2. Since `1/d^2 <= (d-1)^(-1)-d^(-1)` for `d>=3`, the finite cost is `sum_{d=2}^N 1/d^2 <= 1/4+1/2 = 3/4`, including trivial `N=0,1`. Therefore `Q(N)>=N/4`.
3. For real `T`, let `A=floor(exp(T-6))`, `B=floor(exp(T-4))`. Every original squarefree `A<n<=B` lies in the closed shell `T-6 <= log n <= T-4` (indeed the low inequality is strict) and in the original endpoint inventory. Consequently `K(T)>=Q(B)-Q(A)>=B/4-A`. The asymmetric floor estimates `B>exp(T-4)-1`, `A<=exp(T-6)` yield
   `K(T) >= beta*exp(T)-1/4`, `beta=exp(-4)/4-exp(-6)>0`.
4. `beta>0` follows from `exp(2)>4`. Set `c=beta/2` and `T0=max(7,log(1+1/(4*c)))`. For *all* `T>=T0`, `K(T)>=c*exp(T)` (no scale-set selection). Numerically, `beta≈0.00210015754551718665`, `c≈0.00105007877275859333`, `T0=7`, but these are explanatory decimal approximations, not certified bounds.
5. Fix `s>=1`, `T>=7`, `u in [T-2,T]`, and a shell index `n`. Then `log n>=1`, `abs(mu(n))=1`, and `1-exp(-s(log n)^2)>=1/2`. Also `log n<=T-4` implies `r_n(u)>=2*(exp(2)-exp(1))*exp(-T/2)>=4*exp(-T/2)`. All terms of the *positive* radius wave are nonnegative; hence it is `>=2*K(T)*exp(-T/2)` throughout the last two units. Squaring **after** summing and integrating gives `sourceHeatRadiusEnergy(s,T)>=8*K(T)^2*exp(-T)`.
6. Therefore for each fixed `s>=1`, all `T>=T0`, `sourceHeatRadiusEnergy(s,T)>=8*c^2*exp T`. Every affine-frequent `G` is cofinal. A claimed `SubexponentialOn` upper rate `eps=1/2` on that **same** `G` contradicts this lower bound. No signed wave lower bound follows.

Boundary controls: `N=0,1`; exact equality at `n=B`, excluded `n=A`; T=7 low shell `A=2,B=20`, 11 original squarefree indices; `n=1` has zero *heat-error* coefficient but remains in original source. Squareful `n=4,8,9,12,...` are still original zeros. Multiples of two distinct squares (e.g. 36) make the covering sets overlap; the union bound does not assume disjointness.

## Precise surviving signed supplier (not proved)

Fix one real `s>=1` and **choose** one set `G subset R` before varying the positive rate. Define on the literal source support and physical interval `0<=u<=T`:

- `a_s(n)=mu(n)*exp(-s*(log n)^2)`;
- `d_s(n)=mu(n)*(1-exp(-s*(log n)^2))`;
- `W_s(T,u)=sum_{1<=n<=floor(exp T)} a_s(n)*r_n(u)`;
- `D_s(T,u)=sum_{1<=n<=floor(exp T)} d_s(n)*r_n(u)`;
- `E_s(T)=integral_0^T D_s(T,u)^2 du`.

The **unproved arithmetic cancellation estimate**, exactly quantified in `SignedResidualCancellationOn s G`, is:

> For every `eps>0`, there exist `C>=0`, `T1>=0`, such that for every `T in G` with `T>=T1`, `E_s(T) <= C*exp(eps*T)`.

No rate-dependent `G` is permitted. No independent positive-radius estimate is included. Both `n=1` and squareful zeros are retained. The signed summation occurs before squaring.

The already-published `sourceHeatEnergy_le_linear_strong` supplies `H_s(T)=integral_0^T W_s(T,u)^2 du <=16*exp(2)*T` for `T>=0`. The exact reconstruction is `W_0=W_s+D_s` on `[0,T]`. Thus the elementary pointwise Young inequalities provide, for every `T>=0`,

`H_0(T) <= 2*H_s(T)+2*E_s(T)` and `E_s(T) <=2*H_0(T)+2*H_s(T)`.

It follows **without** an additional no-cancellation assumption that, on any fixed `G` and for any fixed `s>=1`,

`SubexponentialOn(E_s,G) <-> SubexponentialOn(pickupEnergy,G)`.

This equivalence is an exact *reduction of the missing estimate*, not a proof of either condition. The existing canonical RH conditional consumer may use the left side only after a genuine arithmetic proof, and only with the original `AffineFrequent G` hypothesis.

## Mixed terms, full signed Gram and explicit active moments

The original `sourceHeatEnergy_exact_signed_balance` at `(0,s,T)` gives, for nonnegative `T`, the **complete signed** equality

`H_0(T)=H_s(T)+<W_s,D_s>+<D_s,W_s>+E_s(T)`.

Both mixed terms are actual integrals in physical time and equal by scalar commutativity, but may be negative. There is no coefficient-space monotonicity or positivity shortcut. Further, with `G_T(m,n)=integral_0^T r_m(u)r_n(u)du`,

`E_s(T)=sum_{m,n in endpointIndex(T)} d_s(m)*d_s(n)*G_T(m,n)`

`=sum_n d_s(n)^2*G_T(n,n) + sum_{m<n} d_s(m)d_s(n)*G_T(m,n) + sum_{n<m} d_s(m)d_s(n)*G_T(m,n)`.

Thus the missing estimate is a *signed diagonal-plus-both-oriented-off-diagonals cancellation bound*. Nonnegative Gram entries do not make the source-weighted off-diagonals nonnegative.

An equivalent two-moment time-domain form follows from the existing `responseSum_eq_two_active_moments`. For physical `0<=u<=T`, set

`A_s(u)=sum_{1<=n<=floor(exp u)} d_s(n)/sqrt(n)` and `B_s(u)=sum_{1<=n<=floor(exp u)} d_s(n)`.

Then `D_s(T,u)=2*(A_s(u)-exp(-u/2)*B_s(u))` and

`E_s(T)=4*integral_0^T (A_s(u)-exp(-u/2)*B_s(u))^2 du`.

This is a precise reusable arithmetic target. Merely controlling one moment separately by positive terms reinstates the failed radius estimate. An alternative direct signed estimate must pay the *whole combined moment*, including cancellations between `A_s` and `exp(-u/2)*B_s`.

For clarity, the **minimal signed balance** `J_s(T)=<W_s,D_s>+<D_s,W_s>+E_s(T)` satisfies `H_0=H_s+J_s` exactly. Since `H_s>=0` and subexponential, an all-rate *upper* budget on `J_s` is also necessary and sufficient for one on `H_0`. However the nonnegative `E_s` condition has the cleaner L² residual interpretation and, by Young's inequalities, is **equivalent** here. Neither is supplied by the no-go.

## Reproducible finite hostile diagnostics

A standalone Python 3 + `mpmath` diagnostic was executed at 60 decimal digit working precision. It computed genuine Möbius parity/square divisibility, the original integer cutoff, actual shell counts, all four waves (`W_0,W_s,D_s,R_s^+`) and piecewise *closed-form* integrals between consecutive original birth times `log n`. For `s=1`, independently computed `int W_s D_s` and `int D_s W_s`. At `T=3,5`, it additionally recomputed `E_s` as a complete double-ordered original-index Gram, rather than relying only on its two-moment representation. It also checked the finite sieve for `N in {0,1,2,3,4,10,100,512,1024,4096}`.

For each birth cell `[a,b]`, let `A_f=sum f(n)/sqrt n`, `B_f=sum f(n)` over active original n. The exact cross-integral used is

`int_a^b W_f W_g = 4*(A_f*A_g*(b-a) - 2*(A_f*B_g+B_f*A_g)*(exp(-a/2)-exp(-b/2)) + B_f*B_g*(exp(-a)-exp(-b)))`.

The values below are **diagnostic approximations**, not asymptotic proof or certified real-interval bounds.

| T | floor(exp T) | K(T) | H0 | Hs | E_s | positive radius energy | forward mixed term | E_s diagonal | E_s offdiagonal (both orientations) |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 3 | 20 | 0 | 0.422135 | 1.204422 | 1.055902 | 2.951855 | -0.919095 | 0.538476 | 0.517426 |
| 5 | 148 | 2 | 1.775893 | 2.247669 | 5.785364 | 96.406286 | -3.128570 | 4.843808 | 0.941556 |
| 7 | 1096 | 11 | 4.479631 | 3.304700 | 12.922869 | 1189.028210 | -5.873969 | 16.243743 | -3.320874 |
| 8 | 2980 | 27 | 6.105459 | 3.835400 | 16.937049 | 3641.201640 | -7.333495 | 25.152539 | -8.215490 |
| 9 | 8103 | 78 | 7.830166 | 4.366827 | 21.107826 | 10653.281601 | -8.822244 | 36.344452 | -15.236626 |

All tested cases satisfied `H0=Hs+M_forward+M_reverse+E`, `M_forward=M_reverse`, `0<=E<=positive radius energy`, the finite squarefree bound, and for `T>=7` the shell exponential and radius-energy lower bounds. The negative signed off-diagonal values for `T=7,8,9` are real finite cancellation effects; finite examples do not imply all-rate control.

Local standalone diagnostic artifacts (not committed to mathematical source; not proof-workflow runners):

- `moebius_signed_heat_residual_preflight_20261102.py`, SHA-256 `af72cfbc9d7c0cb344373bcd36b8b7b4df38ca3ca952887b6335cd54b952e7c4`;
- `moebius_signed_heat_residual_preflight_20261102.json`, SHA-256 `a53c9c19f4007b72984acd2fd94f108f02a6c3e8fedfe0fcc78eafd13e40d307`.

## Comparison and verification separation

This source candidate is **not** a new unconditional arithmetic upper bound. The reduction is algebraic/elementary Hilbert-space geometry on the actual Möbius source. The new engineering value is a precise error-energy supplier that survives the mathematically impossible positive-radius supplier, together with its quantified original-energy return and signed Gram interpretation. Conceptual novelty relative to the wider RH literature has not been independently established.

- Analyzed original response and source definitions, complete pinned source proof candidates, and original signed evolution: **inspected**.
- Mathematical no-go constants and necessity/sufficiency of a signed residual budget: **independently reasoned**.
- Finite diagnostic: **executed**, not independently certified.
- Newly authored Lean module: **SOURCE_PROOF_CANDIDATE** only.
- Lean syntax/elaboration, expected type checking, pinned build, fresh kernel replay, full transitive axiom/opaque/sorryAx/private/generated audit: **NOT_RUN**.
- No root import, arithmetic source replacement, dependency pin change, verification dispatch, controller state or proof-acceptance mutation.

Required independent acceptance: compile the existing four issue #1633 modules and the new signed residual leaf at their exact reachable source revision using pinned Lean/Mathlib; inspect inferred theorem statements and all transitive assumptions; independently check the finite Gram source `radiusEnergy_eq_fullGram` is algebraic for signed coefficient input, and separately validate the actual arithmetic cancellation premise if ever claimed. Canonical RH remains open.
