# APAP affine-support consumer references

Local attribution: grwtsk contributors. Upstream APAP/Mathlib bylines and
Apache-2.0 notices remain in the exact pinned dependencies.

The [canonical paper ledger](../../mathematics/_support/reference/literature/reading-background/paper-to-formalization-references.md#apap-affine-support-20261029)
records the complete hypotheses, declarations, source identities and exclusions.
The pinned README links Bloom–Sisask's *The Kelley–Meka bounds for sets free of
three-term arithmetic progressions*, [arXiv:2302.07211v3](https://arxiv.org/abs/2302.07211v3),
finite-field Theorem2. The previous consumer map paired that identifier with the
title of the different2309.02353 paper; the correction retains its historical
wording, source pins and NOT_RUN outcomes. Literal constants come from `ff`.

`FiniteFieldAffineProgression.lean` at `9b4fbbeed7922618e887a646cc2b15d244fff2b8`,
blob `422b30e25d448e0ae000b1b2ab0ac23efafe8044`, constructs the actual nonzero-step injective `Fin 3`
configuration and its three-element support under the original odd-prime and
density/rank hypotheses. The old density witness `c8236fb9574a1e709760a555464c99d9acdeccc4`
is unchanged. This closes the first/third-separation and finite-support transport;
it does not strengthen the bound or supply the excluded integer theorem.

[Exact target](../../mathematics/_verification/targets/Combinatorics/apap-affine-support-20261029.json), adjacent profile and TOML require all3
compiler-owned roots and exact types. All native/interface/replay/axiom checks
remain NOT_RUN; no root version-port or dependency/import promotion is claimed.
Independent source/profile reviews are separate from mathematical acceptance.
