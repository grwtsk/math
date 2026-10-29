# Exact ordered-prime incidence expansion of the signed Abel bulk

Contribution: grwtsk.

Status: **SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED**.
This is finite arithmetic and a source-preserving reformulation, not a signed
cancellation estimate, arithmetic-operator bound, or unconditional RH result.

## Immutable source

- Reviewed baseline: `969405404aceced0fa4c96b84c521d52296b7c59`.
- Introduction: `ccf58b00ee61257691552650711876f3b64c49b3`.
- Revised mathematical source: `6687ec083a24437d8c509d4b28e90cc00b0b9d8e`.
- Module: `GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeIncidences`.
- Path: `GRWTSK/NumberTheory/Moebius/MertensSignedAbelPrimeIncidences.lean`.
- Revised Git blob: `2670576f687f42f8332c3e1b5cff46c12709d9bc`.
- Revised source SHA-256: `c88ffc81e84e150613fa4a07bcd2fa6c72f3a9600d1c57cb17a0dd9ab3ac5f42`.

The small revision scopes the ordered-pair count rewrite explicitly and
simplifies both conditional branches before rewriting the divisor count.
This repairs a static source-review risk; it is not an executed compiler fix.
The introduced blob `9f729e638473d812bc7feceee9df577a897acc5d` is historical
and does not transfer acceptance to the revised source.

Direct import: `MertensSignedAbelBandMultiplicity.lean`, blob
`ba28ac5d6a03d831c34cf7cd7a90d4066a3dd2a3`. The complete imported proof closure,
including the older RH consumer, remains to be enumerated and audited.

## Unchanged source and prime band

Let X=2^j, Y=2^(j+1), Q=2^floor((j+1)/3), and
P={p prime : Q<p<=2Q}. Natural division is used in Q. Write k(m) for the
number of DISTINCT primes of P dividing m. The previous source established
k(n)<=3 for 0<n<Y and k(m)<=2 when p in P, p does not divide m, and 0<pm<Y.
No prime-counting or nonemptiness premise is added.

The previous signed quotient moment is

```
F_s(h,N) = sum_(p in P) sum_(1<=m<=floor((N+h)/p), h<pm, p does not divide m)
             mu(pm-h) mu(m) k(m)^s.
```

N remains the varying ordinary prefix length t+1 in the actual Abel kernel.
The unsifted prefix U is imported unchanged. The coprime quotient is the
previous raw prime prefix minus its repeated-prime correction, exactly.

## Generic incidence identities

For any finite set P of primes, any natural Z, and any real weight f, define

```
J_1(P,Z,f) = sum_(q in P) sum_(1<=v<=floor(Z/q), q does not divide v)
               f(qv) mu(v).
J_2(P,Z,f) = sum_(q,r in P) sum_(1<=v<=floor(floor(Z/q)/r),
                                q does not divide rv, r does not divide v)
               f(qrv) mu(v).
```

The new source proves

```
sum_(1<=m<=Z) f(m) mu(m) k(m) = -J_1(P,Z,f),
sum_(1<=m<=Z) f(m) mu(m) [k(m)^2-k(m)] = J_2(P,Z,f).
```

These generic identities do NOT require bounded multiplicity. They follow
from finite reindexing and the actual Mobius prime-multiplication theorem.
The diagonal subtraction is explicit:

```
k(m)^2-k(m) = sum_(q,r selected divisors of m, q != r) 1.
```

The pairs are ORDERED. Replacing this by an unordered pair count without
changing its coefficient loses a factor two. The second extraction introduces
two negative Mobius signs, which cancel. Cases where a repeated prime occurs
are retained in the guards and vanish through the actual coefficient identity.

## Actual two- and three-prime prefixes

Specialize f(m) to the original right-argument weight, including h<pm and
p not dividing m. The new objects G_2 and G_3 are

```
G_2(h,N) = sum_(p,q in P) sum_(1<=v<=floor(floor((N+h)/p)/q),
                              h<pqv, p does not divide qv, q does not divide v)
              mu(pqv-h) mu(v),
G_3(h,N) = sum_(p,q,r in P) sum_(1<=v<=floor(floor(floor((N+h)/p)/q)/r),
                                h<pqrv, p does not divide qrv,
                                q does not divide rv, r does not divide v)
              mu(pqrv-h) mu(v).
```

`twoPrimePrefix_eq_quotient_sum` and `threePrimePrefix_eq_quotient_sum` retain
these literal nested natural floors. No rounded real approximation is used.
The guards imply that the extracted primes are pairwise distinct and all are
coprime to the remaining cofactor. `triple_guard_iff` states this equivalence.

The new source identities are

```
F_1 = -G_2,
F_2-F_1 = G_3.
```

Thus on N+h<Y the old corrected quotient becomes

```
A_cop = F_0 + (1/2)G_2 + (1/6)G_3.
```

The coefficient 1/2 results from separating the diagonal of F_2 and then
using the negative sign of the first incidence extraction. The 1/6 is the
coefficient of the ORDERED three-prime sum. These are not positive energies.

## Quantitative support reduction

Two band primes imply the exact bound

```
pqv<Y ==> v<=floor((Y-1)/(Q+1)^2).
```

Three band primes imply

```
pqrv<Y ==> v<=3.
```

Indeed Q^3<=pqr and Y<=4Q^3. A cofactor v>=4 would force pqrv>=Y.
The quotient sum begins at one, so its cofactor has only the values 1,2,3.
`threePrimePrefix_eq_short_sum` proves exact equality with the sum over
v in {1,2,3}, retaining BOTH h<pqrv and pqrv<=N+h as guards. This is not a
truncation, and no endpoint remainder is introduced. The condition N+h<Y
is still required and is paid by the old triangular kernel support.

All three cofactor cases occur in the actual band/window arithmetic:

- j=12, Y=8192: 17*19*23=7429, cofactor 1.
- j=13, Y=16384: 2*17*19*23=14858, cofactor 2.
- j=19, Y=1048576: 3*67*71*73=1041783, cofactor 3.

These examples are finite arithmetic fixtures, not Lean-computed certificates.
Having only three cofactor values does NOT make the whole G_3 term small:
the prime tuples, shifts, depths, and shifted Mobius arguments still grow.

## Transport through the original kernel

Let T denote the existing bulkPrefixFunctional with its exact kernel,
retained depth range, ordinary prefix N=t+1 and outer factor 2/Y. Then

```
actual bulk = T(U) - T(F_0) - (1/2)T(G_2) - (1/6)T(G_3).
```

For the prior square-root boundary width,

```
|original full packet - [T(U)-T(F_0)-(1/2)T(G_2)-(1/6)T(G_3)]| <= 2.
```

This reuses the original two-unit boundary allowance. No additional arithmetic
boundary premise, count denominator, norm replacement or analytic error appears.
The unsifted term remains signed and explicit. The new RH wrapper requires the
ENTIRE signed expression <=C_delta*(2^j)^delta for every delta>0 and every j.
It supplies no witness of that estimate and no independent bounds for the
four channels. Triangle inequalities are not silently inserted.

## Verification, provenance, and next obligation

There are five definitions and nineteen theorem scripts. Lexical counts and
finite rational diagnostics are not elaborated declaration counts, compiler
acceptance or kernel checking. Compilation, fresh kernel replay and transitive
axiom audit are all NOT_RUN. The mirrored passive verification specification
pins the revised source and all public names. Actual commands, outcomes and
operational receipts belong outside math in grwtsk/noeaaeue.

This increment is elementary local finite arithmetic using imported project
and Mathlib results, not an imported analytic-paper theorem. Upstream
attribution/licenses are preserved. No historical influence is inferred.

The next analytic comparison must control the same signed combination of
unsifted, one-prime, two-prime and three-prime source sums. G_2 has a cofactor
of length at most floor((Y-1)/(Q+1)^2); G_3 has only the three literal cofactor
values. These are precise inputs for comparison, not claims that a known
multilinear estimate already supplies the RH-strength cancellation.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93705ef8bbaf610f69a68fe4b5244566fb19304741c96378b78081cae35312be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/MertensSignedAbelPrimeIncidences.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
