# Prime-dilation star compensation source ledger

Local mathematical attribution: grwtsk contributors.

## Inspected `grwtsk/math` source pin

Initial inspected parent:

`243870dbf54b13d3efac596079afcda89585afe9`.

Final current-main reconciliation:

`72ce6b0412abbadbabc61aff39f99f603654d481`.

All five dependency blobs listed below were unchanged at the final current
head.  The source package is therefore byte-reconciled to that head, but is not
claimed published because the active GitHub connection was read-only.

Dependencies:

- `MoebiusDenseReducedPrimeDilationCancellation.lean`, blob
  `50f9ee06b3deea0321982c7e8cb8ba41bf9fc7e9`: actual relation
  `q ↔ p*q`, exact coefficient identity `μ(q)μ(pq)=-μ(q)^2`, and the
  source-defined negative prime-dilation packet.
- `MoebiusPrimeDilationOutsideRateObstruction.lean`, blob
  `dc3d52a4b2633ee17e79dc19ab193f79b3d11c65`: exact forced compensation,
  the corrected balanced supplier, and the ordinary PNT lower bound for the
  terminal prime-star credit.
- `FiniteResponseSum.lean`, blob
  `15402baec3be3c090a23f9ac1943124e16357dd0`: finite response Fubini,
  continuity/integrability of the literal causal responses, and the original
  energy/full-Gram identity.
- `MoebiusEndpointLeastPrimeTypeII.lean`, blob
  `fb77710105395da0394c930ef702b893f2f2f87f`: exact rough/mixed/Type-II
  source partition and actual prime extraction identities.
- `MoebiusPrimeDilationPointSpectrumInterval.lean`, blob
  `23b1fde44de5c8a9a81422207c253b0993edc30c`: nonseparable counting-ℓ²
  point-spectrum interval and logarithmic width of one prime dilation.

## Mathematical correspondence

For a finite prime star with parent `q`, the local source is

\[
 F_{P,q}(u)=\mu(q)r_q(u)+\sum_{p\in P}\mu(pq)r_{pq}(u).
\]

Its complete Gram square is

\[
 \int F_{P,q}^2=D_{P,q}-B_{P,q}+C_{P,q}\ge0.
\]

Here `B` is the positive magnitude of the negative parent-child packet and `C`
is the positive ordered child-child Type-II packet. Therefore

\[
 C_{P,q}\ge B_{P,q}-D_{P,q},
\]

and, for an active endpoint star,

\[
 C_{P,q}\ge B_{P,q}-2T^2.
\]

## Nonclaims

- No separate all-rate bound for the child Type-II packet is claimed; the
  terminal prime star proves such a bound is false for rates below `1/2`.
- The nonseparable point-spectrum interval is not a source-preserving
  orthogonalization of the causal response Gram.
- No complete least-prime compensation certificate is supplied.
- No endpoint arithmetic supplier, uniform energy theorem, or RH proof is
  supplied.
- Source-candidate bytes are not Lean compilation or kernel acceptance.
