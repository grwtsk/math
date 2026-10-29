# Verification target: Squarefree Squarefree Iff Nodup Factors

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56bc98e5e10a0538253bdd06defddebadf2b7d28",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Squarefree/Variant0167dc6e1db2c53fa5abb73211b0e594937e673fd6b8bcdd12bbfd5d9733fe2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56bc98e5e10a0538253bdd06defddebadf2b7d28`.

Source path: `GRWTSK/Topology/GeneralTopology/Squarefree/Variant0167dc6e1db2c53fa5abb73211b0e594937e673fd6b8bcdd12bbfd5d9733fe2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Squarefree/Variant0167dc6e1db2c53fa5abb73211b0e594937e673fd6b8bcdd12bbfd5d9733fe2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Squarefree` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.PrimePow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PrimeNormNum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Int.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [squarefree_iff_nodup_factors](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/squarefree-iff-nodup-factors.md) | 29 | `result-track:af241d613feef6814f136e2415b90b1b487f7b7c637bc63f9575cb2a9002801c` |
| 2 | `theorem` | [Squarefree.nodup_factors](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/squarefree-nodup-factors.md) | 36 | `result-track:06033217ec652e580d2a78336e7b1ffe843c7f87a86a4e94ad12f625c6bb6255` |
| 3 | `theorem` | [squarefree_iff_prime_squarefree](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/squarefree-iff-prime-squarefree.md) | 41 | `result-track:67aa89ef1a089a71a0d82db43239d88639bfc959d5b911cd8bc5a1d816804091` |
| 4 | `theorem` | [Squarefree.factorization_le_one](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/squarefree-factorization-le-one.md) | 45 | `result-track:5b58a54bbb51bde58944d3f4cab5d732b87da9154b958483eaa698d3b136fa31` |
| 5 | `theorem` | [squarefree_of_factorization_le_one](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/squarefree-of-factorization-le-one.md) | 59 | `result-track:b062c65820f9869d634c4c6819619f083459e08347ce4a4ba6740f2c51dd3f10` |
| 6 | `theorem` | [squarefree_iff_factorization_le_one](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/squarefree-iff-factorization-le-one.md) | 67 | `result-track:8d02857d6b1283626ddd2aee7d48636d0957c0133ede80e0daf634e240c61a72` |
| 7 | `theorem` | [Squarefree.ext_iff](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/squarefree-ext-iff.md) | 72 | `result-track:07d1813e62ca31c114aa408ac72e23fe24b4fd1a70ab211fcc4d3af4a0bccd40` |
| 8 | `theorem` | [squarefree_pow_iff](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/squarefree-pow-iff.md) | 90 | `result-track:24344de15a1791eb30d634a2e9481df427f97d9861adaa019bea24e6e0a705c7` |
| 9 | `theorem` | [squarefree_and_prime_pow_iff_prime](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/squarefree-and-prime-pow-iff-prime.md) | 102 | `result-track:38c9c5b18f81093fb5e6501a896df912ec2e1634707f21612bdbb23d5b531356` |
| 10 | `def` | [minSqFacAux](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/minsqfacaux.md) | 112 | `declaration-track:751d00218c2dc9b2063e62aefaab8277327f62cf3716318f25d476d36d70b5d5` |
| 11 | `def` | [minSqFac](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/minsqfac.md) | 129 | `declaration-track:45673959dd1767bf013afb9b9fe74363f1e01b8052b12692e7ae7cc32968af6b` |
| 12 | `def` | [MinSqFacProp](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/minsqfacprop.md) | 139 | `declaration-track:f360289c0d32b5fce6b7a69fb1d453036c1759b38643a79883d60c8ef8518310` |
| 13 | `theorem` | [minSqFacProp_div](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/minsqfacprop-div.md) | 144 | `result-track:de3d7c7090d4a0146b6cb7150e3cf3406cae5e64c0dcd642a1644c35f64e2de6` |
| 14 | `theorem` | [minSqFacAux_has_prop](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/minsqfacaux-has-prop.md) | 161 | `result-track:82e3871b384cded4fd5a98d3d55e3133e49b1fa89bd433cc0424eff17789b820` |
| 15 | `theorem` | [minSqFac_has_prop](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/minsqfac-has-prop.md) | 202 | `result-track:201a6a0c0cc467b7137a5c4160721c92f181a77455815d5b32c79e22b34d50c9` |
| 16 | `theorem` | [minSqFac_prime](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/minsqfac-prime.md) | 222 | `result-track:a1af17ec3590107757c734a07aa938217d6ec77bc7e0920dd356274978822720` |
| 17 | `theorem` | [minSqFac_dvd](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/minsqfac-dvd.md) | 228 | `result-track:21f85ab8b9b554fc04f7bd1475be4559583bf338118beb9b40a2b3e7488a49c3` |
| 18 | `theorem` | [minSqFac_le_of_dvd](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/minsqfac-le-of-dvd.md) | 234 | `result-track:079591def52c859e6cbd42ddadb603a850ca516250ffdec102fb8da23ad93c75` |
| 19 | `theorem` | [squarefree_iff_minSqFac](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/squarefree-iff-minsqfac.md) | 243 | `result-track:1048068d8954197fcd10bf5472710f9268483cf9d6ed6a0162a63343d89f6066` |
| 20 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/instance.md) | 253 | `declaration-track:121b9102e0f1120ce81526d351adc2f956785e06b68e34d94e4d85b5ef75a264` |
| 21 | `theorem` | [squarefree_two](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/squarefree-two.md) | 256 | `result-track:9ba70f7a538e0d7fa9eed3d3ff8b4bb3e714d405836fbcb303d2b61a49c58e5b` |
| 22 | `theorem` | [divisors_filter_squarefree_of_squarefree](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/divisors-filter-squarefree-of-squarefree.md) | 260 | `result-track:8458fba5230dcad3405cfc19f46bdd891ddba4bba8ab410498e5086f08ff5652` |
| 23 | `theorem` | [divisors_filter_squarefree](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/divisors-filter-squarefree.md) | 267 | `result-track:e9c33775409e0cfe42af5e1e9d9d68dbc71942f4a0d8a25d69fb6c9728e53fcd` |
| 24 | `theorem` | [sum_divisors_filter_squarefree](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/sum-divisors-filter-squarefree.md) | 320 | `result-track:bb4768546a57660999c4a40a27c1d09390761592bd50f1338b505ac27dba9cb3` |
| 25 | `theorem` | [sq_mul_squarefree_of_pos](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/sq-mul-squarefree-of-pos-source-edition-2.md) | 329 | `result-track:d6f1d9fa092bb471b5fede60988fdc740530b132e97eaa9156ec6c8fe01572bc` |
| 26 | `theorem` | [sq_mul_squarefree_of_pos'](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/sq-mul-squarefree-of-pos.md) | 358 | `result-track:3c00fb716efd1fde8356280bfca653a9bd18f6a68a40ce7a9e0a4dbe9d94bd84` |
| 27 | `theorem` | [sq_mul_squarefree](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/sq-mul-squarefree.md) | 364 | `result-track:35d89a8b6dd4d3521b23bad5d93cd39d327a1be025a2dc7c2b1dcc1379294f8d` |
| 28 | `theorem` | [squarefree_mul](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/squarefree-mul.md) | 374 | `result-track:957695b3d57a0b93aa2cd71de14364db747d4598c424bdd629abf2b72bc9399a` |
| 29 | `theorem` | [coprime_of_squarefree_mul](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/coprime-of-squarefree-mul.md) | 381 | `result-track:bbfe3746811dbf7e189154905d27080f96316bf2a404d31947719dc2c76c8099` |
| 30 | `theorem` | [squarefree_mul_iff](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/squarefree-mul-iff.md) | 384 | `result-track:111497008725a82056c5b388bb7cc59b97cc2eeb5b6f7f3032ae12fdd1066ba4` |
| 31 | `theorem` | [prod_factors_toFinset_of_squarefree](../../../../../NumberTheory/ElementaryNumberTheory/SquarefreeSquarefreeIffNodupFactors.lean/declarations/prod-factors-tofinset-of-squarefree.md) | 389 | `result-track:3b076cf06f93e2249e3f2c7fc047e7e43b6f7d503e5282d601b78908209301b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7647fe81361b393544c73c11981bce4be74a1d965187cc9f2292bec2d003258f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Squarefree/Variant0167dc6e1db2c53fa5abb73211b0e594937e673fd6b8bcdd12bbfd5d9733fe2e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Squarefree/Variant0167dc6e1db2c53fa5abb73211b0e594937e673fd6b8bcdd12bbfd5d9733fe2e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
