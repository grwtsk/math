# Literature ledger shard: rough Liouville causal Buchstab obstruction

## RH-LIOUVILLE-ROUGH-CAUSAL-BUCHSTAB-01 (2026-10-31)

- **Local title/byline:** *Rough Liouville causal Buchstab identity and a
  proportional-cutoff obstruction*, grwtsk contributors.
- **Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.
- **Source base:** `grwtsk/math@e95e06ef59ce42b58e1b4a43a4b54325e68a9aa1`,
  tree `1368b236438bea531ae7a21ec3dda169a634754d`;
  `LiouvilleFinitePrimeSieveOperator.lean`, blob
  `46a61238b137d9265c2f81c6e6b5a964ca4910e7`.
- **New source candidate:**
  `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleRoughCausalBuchstab.lean`.
  It records actual rough Liouville prefixes and waveforms, closed
  least-prime descendants, the exact signed causal Buchstab identity, the
  complete signed Buchstab covariance, a paid one-sided covariance supplier,
  and the horizon-dependent cutoff `floor(exp(2T/5))`.
- **Exact source identity:** for `Y <= Z`,
  \[
  F_Y(u)=F_Z(u)-\sum_{Y<p\le Z}p^{-1/2}F_{\ge p}(u-\log p).
  \]
  The closed descendant retains repeated powers of the extracted prime.
  Taking `Z >= exp u` leaves the unit response.  After integration,
  \[
  E_Y(T)=\langle F_Y,r_1\rangle-\mathcal C_Y(T).
  \]
- **Exact transfer:** with
  \(R_Y(T)=\max(-\mathcal C_Y(T),0)\),
  \[
  E_Y(T)\le E_1(T)+2R_Y(T)\le4T+2R_Y(T).
  \]
  Combined with the published inverse sieve cost, this gives a source-exact
  sufficient supplier retaining the complete negative covariance and every
  conditioning factor.
- **Unconditional arithmetic obstruction:** for
  \(Y_T=\lfloor e^{2T/5}\rfloor\), the actual rough Liouville prefix on
  \(e^{9T/10}\le x\le e^T\) consists only of the unit, prime and semiprime
  strata.  Uniform prime-number-theorem partial summation gives the signed
  coefficient
  \[
  -1+\log((1-\alpha)/\alpha),\qquad
  2/5\le\alpha\le4/9,
  \]
  bounded above by `-1 + log(3/2) < 0`.  The original causal Abel identity
  then yields
  \[
  E_{Y_T}(T)\ge
  \frac{(1-\log(3/2))^2}{4}(1-e^{-1})\,e^T/T^2
  \]
  for all sufficiently large `T`.
- **Primary literature and use boundaries:** N. G. de Bruijn's classical
  rough-number work and Buchstab's identity supply the unsigned historical
  context; Steve Fan, *Numerically explicit estimates for the distribution
  of rough numbers*, Journal of Number Theory 260 (2024), 120--150,
  DOI `10.1016/j.jnt.2024.01.008`, arXiv `2306.03347`, treats explicit
  unsigned rough-number estimates; Kevin Ford and James Maynard,
  *On the theory of prime producing sieves* (2024), arXiv `2407.14368`,
  develops modified Liouville functions on rough support and Type I/II parity
  limitations; Terence Tao and Joni Teräväinen,
  *The Hardy--Littlewood--Chowla conjecture in the presence of a Siegel zero*,
  Journal of the London Mathematical Society 106 (2022), 3317--3378,
  DOI `10.1112/jlms.12663`, uses a conditional smooth/rough Liouville
  factorization.  None is promoted to the missing unconditional GRWTSK
  physical-time covariance estimate.
- **Novelty boundary:** no new claim is made for Buchstab decomposition, the
  prime number theorem, the semiprime density integral, or sieve parity.
  The local contribution is their exact embedding into the unchanged causal
  waveform, the one-sided complete-covariance transfer, and the explicit
  causal-energy lower bound for the actual proportional rough cutoff.
- **Verification:** `SOURCE_PROOF_CANDIDATE /
  COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
  TRANSITIVE_AXIOM_AUDIT_NOT_RUN / NATIVE_EXECUTION_NOT_RUN`.
- **Open arithmetic:** choose a subexponentially conditioned cutoff, such as
  `Y(T)=T^A` with `0<A<2`, and control the negative part of the complete
  signed least-prime covariance without termwise absolute values.  Preserve
  closed descendants, repeated-prime terms, rough survivors, birth collars,
  and the exact inverse-conditioning cost.
- **Canonical ledger:** this source-bound shard is published in the canonical
  reading-background directory.  The monolithic
  `paper-to-formalization-references.md` remains byte-preserved unless a
  source-complete append/patch path is available.
