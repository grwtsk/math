# Verification target: GRWTSK.Topology.GeneralTopology.Squarefree.Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dd595da1f9aa32b3c0f45401cc94aec0944d48f",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dd595da1f9aa32b3c0f45401cc94aec0944d48f`.

Source path: `GRWTSK/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Squarefree.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.PrimePow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Nat` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [squarefree_iff_nodup_primeFactorsList](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/squarefree-iff-nodup-primefactorslist--081e26d54d2c4bddcde8efa1.md) | 27 | `result-track:081e26d54d2c4bddcde8efa17940cd48d12698ddcc1c37ec80225c8c6b3fed61` |
| 2 | `theorem` | [Squarefree.nodup_primeFactorsList](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/squarefree-nodup-primefactorslist--7701e58d6a92c6712307e6ba.md) | 34 | `result-track:7701e58d6a92c6712307e6bab3d5c03e4abb917f2940da49e8a6f90fee24a8b2` |
| 3 | `theorem` | [squarefree_iff_prime_squarefree](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/squarefree-iff-prime-squarefree--844e9acdb1ee45aacc98316e.md) | 40 | `result-track:844e9acdb1ee45aacc98316e6c1acdec73290df9fe3c891f030500af025392e4` |
| 4 | `theorem` | [_root_.Squarefree.natFactorization_le_one](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/root-squarefree-natfactorization-le-one--2bf13dbab212f7aa85ea3d31.md) | 43 | `result-track:2bf13dbab212f7aa85ea3d3110f6144c157ae76ab01b76e04d24e99435006053` |
| 5 | `lemma` | [factorization_eq_one_of_squarefree](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/factorization-eq-one-of-squarefree--ae186b59a081f7a214f9b101.md) | 56 | `result-track:ae186b59a081f7a214f9b1015be17f2c41af9ca6b73eac39fba9cadd7a348b33` |
| 6 | `theorem` | [squarefree_of_factorization_le_one](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/squarefree-of-factorization-le-one--d8ffca693e88a958382bee73.md) | 60 | `result-track:d8ffca693e88a958382bee737760d12646e5b6be2837643b432266694a5177aa` |
| 7 | `theorem` | [squarefree_iff_factorization_le_one](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/squarefree-iff-factorization-le-one--ae75c4b51f79651c5617c132.md) | 67 | `result-track:ae75c4b51f79651c5617c1326d4a51ffe7464247f195b719a0172d574c86d7af` |
| 8 | `theorem` | [Squarefree.ext_iff](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/squarefree-ext-iff--a9dd830f052caf04cd0088c7.md) | 71 | `result-track:a9dd830f052caf04cd0088c7ed3832631d2f3e02322e466633d9effe9a56ad54` |
| 9 | `theorem` | [squarefree_pow_iff](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/squarefree-pow-iff--55fee502493288a508593a02.md) | 83 | `result-track:55fee502493288a508593a02edeaac62b49ed4d2b5673836427693465606ed3e` |
| 10 | `theorem` | [squarefree_and_prime_pow_iff_prime](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/squarefree-and-prime-pow-iff-prime--ead268422cfa85982cc5735e.md) | 94 | `result-track:ead268422cfa85982cc5735eedb7622ade7a6bcaa1b8b27c02980bdad572239d` |
| 11 | `def` | [minSqFacAux](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/minsqfacaux--976fbf649a86fe064f9355bd.md) | 103 | `declaration-track:976fbf649a86fe064f9355bd0e8fbb81fb5913cfa4ceb50b9748bbbae5ba1ee9` |
| 12 | `def` | [minSqFac](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/minsqfac--3bfd039cafd81fa143859410.md) | 119 | `declaration-track:3bfd039cafd81fa1438594101ef064df6520f43d1aa1f7dd39bf80c11b7f02f4` |
| 13 | `def` | [MinSqFacProp](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/minsqfacprop--62321b6e2c236689062361ec.md) | 128 | `declaration-track:62321b6e2c236689062361ec29caa90ca4bee534c523cffe7903506ba7ca3a88` |
| 14 | `theorem` | [minSqFacProp_div](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/minsqfacprop-div--0836945935c80c8b0c91cb64.md) | 132 | `result-track:0836945935c80c8b0c91cb644d09294d4139fcc130d4b9ebca2c3ef0d69c8b0b` |
| 15 | `theorem` | [minSqFacAux_has_prop](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/minsqfacaux-has-prop--8e52ffa1a693b6c560c1ffe6.md) | 147 | `result-track:8e52ffa1a693b6c560c1ffe67daa55606a5e505ddd2b4060e416c4e672b41234` |
| 16 | `theorem` | [minSqFac_has_prop](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/minsqfac-has-prop--9c2185b65150909df786a056.md) | 185 | `result-track:9c2185b65150909df786a056441cacd6bed583d08b4b9f60754d6edf80f42fa7` |
| 17 | `theorem` | [minSqFac_prime](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/minsqfac-prime--504747c2849a087c07a159f2.md) | 204 | `result-track:504747c2849a087c07a159f24743f79198e6570ae8f016d67a91225dffc23793` |
| 18 | `theorem` | [minSqFac_dvd](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/minsqfac-dvd--22b5c5084b8ec782886c102c.md) | 209 | `result-track:22b5c5084b8ec782886c102c6400a663f633a845a4d628560f7348a867acd9b9` |
| 19 | `theorem` | [minSqFac_le_of_dvd](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/minsqfac-le-of-dvd--c044cea5ff4dcf7106e17e94.md) | 214 | `result-track:c044cea5ff4dcf7106e17e949d89c77b90894a7d93bab7030aae7f89331b0b34` |
| 20 | `theorem` | [squarefree_iff_minSqFac](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/squarefree-iff-minsqfac--70be81a55beea189ba65977f.md) | 222 | `result-track:70be81a55beea189ba65977ffaa07184682fd500c598c35743ad462636261a7a` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/instance--d2958b960ae5479f9ef5f05d.md) | 231 | `declaration-track:d2958b960ae5479f9ef5f05dbcbc1d97bf73d24c4a4c22442a71ae1eb1d71ece` |
| 22 | `theorem` | [squarefree_two](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/squarefree-two--67a975e875c4e03aa1a6cf51.md) | 234 | `result-track:67a975e875c4e03aa1a6cf5140dfa72b193478cef3712ac6caa77837cd9aeb12` |
| 23 | `theorem` | [divisors_filter_squarefree_of_squarefree](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/divisors-filter-squarefree-of-squarefree--dad5b25ccfbd4117f4f510d5.md) | 237 | `result-track:dad5b25ccfbd4117f4f510d50de44375c9782944c91e389e85df1ad167c6f8a6` |
| 24 | `theorem` | [divisors_filter_squarefree](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/divisors-filter-squarefree--32cbb0d97316515da99ba681.md) | 244 | `result-track:32cbb0d97316515da99ba681feb6ef53526225249fb853c4fd2096750a84974c` |
| 25 | `theorem` | [sum_divisors_filter_squarefree](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/sum-divisors-filter-squarefree--1bbdfa3a292d7ee4242c8b6e.md) | 294 | `result-track:1bbdfa3a292d7ee4242c8b6e27820d1fe14e4996d57cd1c4acba8a3ad30ba880` |
| 26 | `theorem` | [sq_mul_squarefree_of_pos](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/sq-mul-squarefree-of-pos--0ea51b7a1e7c591352e99505.md) | 302 | `result-track:0ea51b7a1e7c591352e99505363e87713df58a4652149118c248399a4cf7cd10` |
| 27 | `theorem` | [sq_mul_squarefree_of_pos'](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/sq-mul-squarefree-of-pos--d2884e5ea74f01ab0a571425.md) | 329 | `result-track:d2884e5ea74f01ab0a5714259c84550fc4894c23c20d09f19e92999716ab1ef8` |
| 28 | `theorem` | [sq_mul_squarefree](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/sq-mul-squarefree--91e58bf8d5868a5977655716.md) | 334 | `result-track:91e58bf8d5868a597765571682d28c7f2bb1d101cd32fe0615bfc10dd16f41b1` |
| 29 | `theorem` | [squarefree_mul](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/squarefree-mul--907b8c436f43d7ea50fc1619.md) | 343 | `result-track:907b8c436f43d7ea50fc161984a5a42b987628e573879eb5b1aeceafbaf2e947` |
| 30 | `theorem` | [coprime_of_squarefree_mul](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/coprime-of-squarefree-mul--c8be481c3cf97a17994283de.md) | 349 | `result-track:c8be481c3cf97a17994283def58842cb237939e037e677dce5ef1167e936e920` |
| 31 | `theorem` | [squarefree_mul_iff](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/squarefree-mul-iff--f6bb8611a13f9246bf7b10e2.md) | 352 | `result-track:f6bb8611a13f9246bf7b10e2083d6d63af67e49b14398fcb3d560c011606ae9a` |
| 32 | `lemma` | [coprime_div_gcd_of_squarefree](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/coprime-div-gcd-of-squarefree--3a37aa8bbc8b7d81aa13c05a.md) | 357 | `result-track:3a37aa8bbc8b7d81aa13c05ad4f7c2ff34931e8f5a2fdbd941fb29bc0c92008b` |
| 33 | `lemma` | [prod_primeFactors_of_squarefree](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/prod-primefactors-of-squarefree--1122ceaecd6622cd19b2a144.md) | 363 | `result-track:1122ceaecd6622cd19b2a144731e98df83390d055f2d26e3803114d74d3d3cbe` |
| 34 | `lemma` | [primeFactors_prod](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/primefactors-prod--fe66a0d7871fb300a392ded3.md) | 367 | `result-track:fe66a0d7871fb300a392ded3a6caf386260498fdb2e479e1dc437d4f9c3f1caf` |
| 35 | `lemma` | [primeFactors_div_gcd](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/primefactors-div-gcd--824ab445bee2804b26866a33.md) | 375 | `result-track:824ab445bee2804b26866a333222eed53ea6b4b3b7c3b5d387beb36bd321cd09` |
| 36 | `lemma` | [prod_primeFactors_invOn_squarefree](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/prod-primefactors-invon-squarefree--20c03889d9f655f4519925cb.md) | 387 | `result-track:20c03889d9f655f4519925cb8b3f99d7b2339bbfc3a67e4693bcb4344411515f` |
| 37 | `theorem` | [prod_primeFactors_sdiff_of_squarefree](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.lean/declarations/prod-primefactors-sdiff-of-squarefree--a8d2d38db233a089982a6874.md) | 392 | `result-track:a8d2d38db233a089982a6874a82f436e8f5c9b76e667d3526275a059a3ec255e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
