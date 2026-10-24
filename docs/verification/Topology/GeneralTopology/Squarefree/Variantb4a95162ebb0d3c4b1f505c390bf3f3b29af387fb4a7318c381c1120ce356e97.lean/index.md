# Verification target: GRWTSK.Topology.GeneralTopology.Squarefree.Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82768a42121429627bca02a10ce73934f81d1e6e",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82768a42121429627bca02a10ce73934f81d1e6e`.

Source path: `GRWTSK/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Squarefree.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.PrimePow` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Nat` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [squarefree_iff_nodup_primeFactorsList](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/squarefree-iff-nodup-primefactorslist--72daed304f89d8af8c5e6436.md) | 35 | `result-track:72daed304f89d8af8c5e6436fef0881702024b887f150762477b4f402316bbcf` |
| 2 | `theorem` | [Squarefree.nodup_primeFactorsList](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/squarefree-nodup-primefactorslist--3c883b47325ca3d740ab71c8.md) | 42 | `result-track:3c883b47325ca3d740ab71c8bb566006a1fc7eac95ab40279d47493d2a281881` |
| 3 | `theorem` | [squarefree_iff_prime_squarefree](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/squarefree-iff-prime-squarefree--5620547ea52473c0b327a403.md) | 48 | `result-track:5620547ea52473c0b327a403d09817b187324797cc929ab3cacb63f1294f7821` |
| 4 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.SquarefreeIffNodupPrimeFactorsList.Variant7f5cc2cbf0dd89c48b1b5d70193faaf8833bce0fdeb661649487d92e6009b30c.Squarefree.natFactorization_le_one](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/root-grwtsk-topology-generaltopology-squarefreeiffnodupprimefactorslist--35400866ad58c212a1b2a688.md) | 51 | `result-track:35400866ad58c212a1b2a6889eda6700cb235001e719213b5e9f6311fe91eb5d` |
| 5 | `lemma` | [factorization_eq_one_of_squarefree](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/factorization-eq-one-of-squarefree--80c7cf67adddae1c5691b555.md) | 64 | `result-track:80c7cf67adddae1c5691b555be5dcf446387ff50b9cab8525475b5012c17c1c2` |
| 6 | `theorem` | [squarefree_of_factorization_le_one](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/squarefree-of-factorization-le-one--43873b5cdd9657a5f7f80c32.md) | 68 | `result-track:43873b5cdd9657a5f7f80c326405f9fd32b640e01769723bdd29de272993c088` |
| 7 | `theorem` | [squarefree_iff_factorization_le_one](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/squarefree-iff-factorization-le-one--c6fc0a9fae799e7743dcbc79.md) | 75 | `result-track:c6fc0a9fae799e7743dcbc79b8ba4800f931c8259ddc0f79eeabf07133c32b34` |
| 8 | `theorem` | [Squarefree.ext_iff](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/squarefree-ext-iff--af4b481adb3aeb7a37c3df92.md) | 79 | `result-track:af4b481adb3aeb7a37c3df92e6da7529c147a23d05807fa81b92b02e867af58c` |
| 9 | `theorem` | [squarefree_pow_iff](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/squarefree-pow-iff--11d11cc4342f581ed7da2a8f.md) | 91 | `result-track:11d11cc4342f581ed7da2a8fdb1bda865128352474d153bcf3b39a11531d0533` |
| 10 | `theorem` | [squarefree_and_prime_pow_iff_prime](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/squarefree-and-prime-pow-iff-prime--fb1cae5a1f22df8f28f4f768.md) | 102 | `result-track:fb1cae5a1f22df8f28f4f768e63dabb3d5abeab1d5c1decbf8fd31ea0226c23c` |
| 11 | `def` | [minSqFacAux](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/minsqfacaux--473f5a57866912c1fd9f9486.md) | 111 | `declaration-track:473f5a57866912c1fd9f9486cbe0c71a3eac952e3e081ff1e0d14a219f2a88da` |
| 12 | `def` | [minSqFac](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/minsqfac--f07b3a6a531e66e3cb69ff9b.md) | 127 | `declaration-track:f07b3a6a531e66e3cb69ff9b7e7420737b284bc431c1264575d74abe4b97734c` |
| 13 | `def` | [MinSqFacProp](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/minsqfacprop--ed49f7b71b5d8f7feda74106.md) | 136 | `declaration-track:ed49f7b71b5d8f7feda74106797ab74f4be7fca4e80d6ac73c436970aeb1a2c9` |
| 14 | `theorem` | [minSqFacProp_div](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/minsqfacprop-div--87078485983ca17662f3b988.md) | 140 | `result-track:87078485983ca17662f3b988270c466a41103d958cbdc370e9fbedd23eec581f` |
| 15 | `theorem` | [minSqFacAux_has_prop](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/minsqfacaux-has-prop--2c01d0b5acc883597f06cfd2.md) | 155 | `result-track:2c01d0b5acc883597f06cfd281acaae53ffff5d1b8f6ccf120f468848e645a3e` |
| 16 | `theorem` | [minSqFac_has_prop](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/minsqfac-has-prop--1ba0ddb8fedb0cbcd937fcbd.md) | 193 | `result-track:1ba0ddb8fedb0cbcd937fcbd2309cc643c27b31f84579b5eb0c2d206f9c7319d` |
| 17 | `theorem` | [minSqFac_prime](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/minsqfac-prime--df4c23c728dfd447ff436d2c.md) | 212 | `result-track:df4c23c728dfd447ff436d2c92885b668ce478b2f8f2e57672a985e103467ada` |
| 18 | `theorem` | [minSqFac_dvd](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/minsqfac-dvd--5e55b8c88ec1111bc7f0dc9f.md) | 217 | `result-track:5e55b8c88ec1111bc7f0dc9f0ac0ca43fb04fcf948a893a2d4bd563afdfbe2b0` |
| 19 | `theorem` | [minSqFac_le_of_dvd](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/minsqfac-le-of-dvd--82b6bd5c60f1514adae30437.md) | 222 | `result-track:82b6bd5c60f1514adae304375f6a71a1b7e8a15cec8fab39d5f009fb2a986da0` |
| 20 | `theorem` | [squarefree_iff_minSqFac](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/squarefree-iff-minsqfac--31ccd06fdb669c2a556924e7.md) | 230 | `result-track:31ccd06fdb669c2a556924e77e7bb0a141b1d96c87ec33bba0c6879e05bfbb8d` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/instance--7b805049342bb5a41cdeddb3.md) | 239 | `declaration-track:7b805049342bb5a41cdeddb3fe827cc23ffa5ec58ffb637254dd0f669f7f19d7` |
| 22 | `theorem` | [squarefree_two](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/squarefree-two--16f309ab0632c326d927e83b.md) | 242 | `result-track:16f309ab0632c326d927e83b80f4c9b5f892f22cab403010c37c91475129dd26` |
| 23 | `theorem` | [divisors_filter_squarefree_of_squarefree](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/divisors-filter-squarefree-of-squarefree--419e96ad3a95a03d06e8842a.md) | 245 | `result-track:419e96ad3a95a03d06e8842a2d3a0e528f9a748985725bc0bab9f107628e6198` |
| 24 | `theorem` | [divisors_filter_squarefree](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/divisors-filter-squarefree--085cc6741d5016d5973a4ac3.md) | 252 | `result-track:085cc6741d5016d5973a4ac35c1fdfa36002ab0516fdd2817a24d25fcc0d5b14` |
| 25 | `theorem` | [sum_divisors_filter_squarefree](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/sum-divisors-filter-squarefree--e92600e13ee07b2fdfba8d41.md) | 302 | `result-track:e92600e13ee07b2fdfba8d4170d1e613ba2efb146c95d3b9b6c623e0bf6a7209` |
| 26 | `theorem` | [sq_mul_squarefree_of_pos](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/sq-mul-squarefree-of-pos--22a1e96e0efb13a2636ef365.md) | 310 | `result-track:22a1e96e0efb13a2636ef3652e161f44d24aec1fd8eaf53832daf7279676d3b8` |
| 27 | `theorem` | [sq_mul_squarefree_of_pos'](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/sq-mul-squarefree-of-pos--dc23b68ea460ff0a87be7765.md) | 337 | `result-track:dc23b68ea460ff0a87be776560475a5e9db0230a9e602c69c77460344286b785` |
| 28 | `theorem` | [sq_mul_squarefree](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/sq-mul-squarefree--fb45dfb2f74ae6ae615b910c.md) | 342 | `result-track:fb45dfb2f74ae6ae615b910c17ef5444a8ede3ef848d7fab684cf25712e2bfbf` |
| 29 | `theorem` | [squarefree_mul](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/squarefree-mul--a0e6895ced4ece9fa82cb990.md) | 351 | `result-track:a0e6895ced4ece9fa82cb990b122c93511d21a5c3802546bfc25ceea0d32081a` |
| 30 | `theorem` | [coprime_of_squarefree_mul](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/coprime-of-squarefree-mul--4f95b79dde9b094d54e02eea.md) | 357 | `result-track:4f95b79dde9b094d54e02eeaa35b08a74c863dc18f7bd214aef3515929f6f798` |
| 31 | `theorem` | [squarefree_mul_iff](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/squarefree-mul-iff--be65a1aad1947a14a9383dbd.md) | 360 | `result-track:be65a1aad1947a14a9383dbd043d46de2bfd8ff1a5784ab86f1f231ae8bfeaae` |
| 32 | `lemma` | [coprime_div_gcd_of_squarefree](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/coprime-div-gcd-of-squarefree--6852c38b248dd1145750306e.md) | 365 | `result-track:6852c38b248dd1145750306edd2a991efc5dc5dfd7362292583959b4ce929268` |
| 33 | `lemma` | [prod_primeFactors_of_squarefree](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/prod-primefactors-of-squarefree--c4676c81d851c78321238f5c.md) | 371 | `result-track:c4676c81d851c78321238f5c0e8197e72cef842a34808d46aa31d4d828f11ab3` |
| 34 | `lemma` | [primeFactors_prod](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/primefactors-prod--a19cdc308abd37235725ad66.md) | 375 | `result-track:a19cdc308abd37235725ad6675b13292febd2a93851b933bbb6df77537e7a50e` |
| 35 | `lemma` | [primeFactors_div_gcd](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/primefactors-div-gcd--77afb1d130cb9a7ddc6af8f0.md) | 383 | `result-track:77afb1d130cb9a7ddc6af8f01d685d477aef62f16040a3be2544b6bec75ceccf` |
| 36 | `lemma` | [prod_primeFactors_invOn_squarefree](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/prod-primefactors-invon-squarefree--472fd39f30a1fbaedd7ad38b.md) | 395 | `result-track:472fd39f30a1fbaedd7ad38b099abcdf6c3ed3ab8fbc5b17413673e95ec69b9e` |
| 37 | `theorem` | [prod_primeFactors_sdiff_of_squarefree](../../../../../mathematics/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/declarations/prod-primefactors-sdiff-of-squarefree--adc497e4f180d7f35b40afa2.md) | 400 | `result-track:adc497e4f180d7f35b40afa2a58e6e4d56071adca148f141fc5487daf8499470` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
