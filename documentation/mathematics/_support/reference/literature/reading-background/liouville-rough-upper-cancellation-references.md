# Literature ledger shard: tuned rough Liouville upper cancellation

## RH-LIOUVILLE-ROUGH-UPPER-CANCELLATION-01 (2026-10-31)

- **Local title/byline:** *A tuned upper cancellation estimate for rough
  Liouville sums*, grwtsk contributors.
- **Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.
- **Analytical base:** `grwtsk/math@ddcba3d61c70e576b72e0945c42c21caed44663d`,
  tree `81c78c85b06a79aee9b6a006a88ddcbb1d118ca4`.
- **New source candidate:**
  `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleRoughUpperCancellation.lean`.
  It defines the strict rough source, tuned Dickman depth and cutoff, prefix and
  causal-energy allowances, an exact Selberg--Dickman input interface, the
  positive-inverse obstruction, and a payable zero-free-region comparator.
- **Primary external source:** Hugh L. Montgomery and Robert C. Vaughan,
  *Multiplicative Number Theory II: Primes and Sieves*, Chapter 21, Theorem
  21.11 and equation (21.77), circulating book draft at
  `personal.science.psu.edu/rcv4/571s25/montgomery-vaughanII.pdf`.
  Exact use: for the Selberg extremal sequences
  `T_±(X,z)=sum_{n<=X,(n,P(z))=1}(1∓lambda(n))`, the theorem gives the linear
  sieve main term, while (21.77) gives the sharper error
  `O(X*k^3*log log X/(log X)^2)` when `k-1<log X/log z<=k`.
- **Dickman profile source:** Kevin Ford and James Maynard,
  *On the theory of prime-producing sieves* (2024), arXiv `2407.14368`, Lemma
  9.4. Exact use: the complete alternating ordered almost-prime simplex equals
  a negative Dickman value. This identifies
  `f_+(u)-f_-(u)=2*exp(gamma)*rho(u-1)/u` and shows that fixed-factor rough
  profiles have no hidden sign change.
- **Classical auxiliary inputs:** Mertens' product theorem and the standard
  Dickman bound `rho(u)<=1/Gamma(u+1)`. These are used only with their stated
  ranges; no random model is introduced.
- **General signed estimate:** uniformly in the Selberg range,
  `|Xi(X,z)+X*rho(u-1)/log X| << X*(u+1)^3*log log X/(log X)^2`, where
  `u=log X/log z`.
- **Tuned upper cancellation:** with
  `u_X=8*log log X/log log log X` and `z_X=X^(1/u_X)`,
  `|Xi(X,z_X)| << X*(log log X)^4/((log X)^2*(log log log X)^3)`.
  This is `o(Phi(X,z_X))` and is genuine cancellation on the actual rough
  Liouville support.
- **Causal transport:** for
  `Y_T=floor(exp(T*log log T/(8*log T)))`, the unchanged causal Abel response
  gives
  `E_{Y_T}(T) << exp(T)*(log T)^8/(T^4*(log log T)^6)`, including the early
  interval and cutoff-collar costs.
- **Quantitative blocker:** every cutoff in the Montgomery--Vaughan theorem's
  available range has inverse cost
  `log kappa(z) >> sqrt(z)/log z`, hence faster than every linear function of
  physical time. The positive finite-prime inverse cannot consume the new
  upper estimate.
- **Comparator, not new cancellation:** the exact squarefree-divisor expansion
  plus the classical Vinogradov--Korobov Liouville-prefix saving gives a
  payable polynomial-cutoff rough-energy upper bound for `Y=T^A`, `A<6/5`.
  This is retained as a hostile consistency check and is not counted as the
  new contribution.
- **Novelty boundary:** the Selberg extremal theorem, Dickman identity,
  reciprocal-Gamma bound, Mertens theorem, and Vinogradov--Korobov saving are
  prior mathematics. The local contribution is the tuned signed corollary,
  its exact causal-energy transport, and the quantified inverse-cost gap. No
  broad originality claim is made.
- **Verification:** `SOURCE_PROOF_CANDIDATE /
  COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
  TRANSITIVE_AXIOM_AUDIT_NOT_RUN / NATIVE_EXECUTION_NOT_RUN /
  EXTERNAL_THEOREM_REPLAY_NOT_RUN`.
- **Open arithmetic:** find a signed prime-delay, subset-delay, Type-II, or
  endpoint consumer that uses the rough cancellation before positive inverse
  multiplication; alternatively derive a comparable growing-depth estimate at
  a subexponentially conditioned cutoff.
- **Canonical ledger:** this exact shard is stored in the canonical
  reading-background directory. The monolithic
  `paper-to-formalization-references.md` is not replaced from a truncated
  connector response; merge requires a source-complete append-capable path.
