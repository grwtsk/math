# Verification target: Lcm Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5cb9afb3bbcc8b6114129c1b549a9f2ad5d98440",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/LcmNamespaced.lean/index.md) · [Full source](../../../../NumberTheory/LcmNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5cb9afb3bbcc8b6114129c1b549a9f2ad5d98440`.

Source path: `GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 7; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.SecondarySummary` — import line 8; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Mathlib.NumberTheory.Chebyshev` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [σ](../../../../NumberTheory/LcmNamespaced.lean/declarations/anonymous.md) | 30 | `declaration-track:2e440a960a35dbbd59f0506884ed32cf0960c2fb5deba188a2e69046a9324871` |
| 2 | `abbrev` | [σnorm](../../../../NumberTheory/LcmNamespaced.lean/declarations/norm.md) | 32 | `declaration-track:3da18a46656c5e0b121174c7c004c00c6d4cff6247e0389fe5df29f80ed27ee1` |
| 3 | `def` | [HighlyAbundant](../../../../NumberTheory/LcmNamespaced.lean/declarations/highlyabundant.md) | 44 | `declaration-track:c820bebaa1ad7bbffd4a84a9959b336566f721bdadc5cce127cc89d393f96e47` |
| 4 | `def` | [L](../../../../NumberTheory/LcmNamespaced.lean/declarations/l.md) | 60 | `declaration-track:0296c58a9ed0b5570fdad0bb6c2eccdd4391a9e85ef63053ca7aee1792eeaf78` |
| 5 | `structure` | [Criterion](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion.md) | 118 | `declaration-track:11a082a1c834adfa8bec8d3de988195e632a0a5b84a50415999a923983cd91ab` |
| 6 | `theorem` | [Criterion.prod_p_le_prod_q](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-prod-p-le-prod-q.md) | 139 | `result-track:27d1cc6f129774059cb9805154516b565a490a8107216e26ac9d69c8daeb07aa` |
| 7 | `lemma` | [Criterion.p_gt_two](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-p-gt-two.md) | 149 | `result-track:d9413dd4c79abaa80bdf492c9f837ba3f9f1adac1646aa7deaa84b558ae0df98` |
| 8 | `lemma` | [Criterion.q_gt_two](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-q-gt-two.md) | 163 | `result-track:c84f42e23b926f4965336b27db4fbaba8720e7eab03adf9c28216df3e4cfce2a` |
| 9 | `def` | [Criterion.L'](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-l.md) | 176 | `declaration-track:67d2357ab176351baee898ca2409a11d5b89422b898e66520dcdd76930e4540b` |
| 10 | `lemma` | [Criterion.prod_q_dvd_L](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-prod-q-dvd-l.md) | 178 | `result-track:986f21f875889b780fc56e102de6d35941c2fbe058b3a30bd785d90cfbafe085` |
| 11 | `lemma` | [Criterion.L_pos](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-l-pos-source-edition-2.md) | 183 | `result-track:aa1a1731bdcb674f5d2ca255ce8f0283216e4b576ebd0b4ee4783f0f51690f1d` |
| 12 | `lemma` | [Criterion.L'_pos](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-l-pos.md) | 186 | `result-track:8a984bbe46656081ecadd00dfe84351597fad1d6ec5f8610e9c3f42c9c12ee05` |
| 13 | `lemma` | [Criterion.L_eq_prod_q_mul_L'](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-l-eq-prod-q-mul-l.md) | 189 | `result-track:434804fb51184fb563a6640b3a2f3c63aa8e45212bf10e65d074ca4405878ffe` |
| 14 | `lemma` | [Criterion.val_two_L'](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-val-two-l.md) | 192 | `result-track:751e778e7bbf5c1f223415959c433bdf430ffc1ba986faf0f23dd9cbb4f1a23a` |
| 15 | `lemma` | [Criterion.val_p_L'](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-val-p-l.md) | 224 | `result-track:33ad94224dd7c30eac32a1d8ad988462d3feb6fcbfe58adf65a791730c6f9e1c` |
| 16 | `theorem` | [Criterion.ln_eq](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-ln-eq.md) | 293 | `result-track:fa72cc2ed551f929d63fa6b76db47fb6dd890cd29866952716b7bd5658a6c209` |
| 17 | `theorem` | [Criterion.q_not_dvd_L'](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-q-not-dvd-l.md) | 317 | `result-track:8716753ac02196687cb63b3963a15e47793954aaf61f3669d044356582935740` |
| 18 | `theorem` | [Criterion.σnorm_ln_eq](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-norm-ln-eq.md) | 387 | `result-track:b117cc1327dd8609cf3731be3a25fec923ad7fd1b73c0c4e55edb92858ca2a04` |
| 19 | `def` | [Criterion.m](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-m.md) | 409 | `declaration-track:3540d944b8ca2d9d627abf3d5793aa214684b80118c47f872233ec5c6b3fc715` |
| 20 | `def` | [Criterion.r](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-r.md) | 411 | `declaration-track:888bc06b38851b7883bc628ae33a2ebcf3ed43b28aa5213f742d4396bf2cd4be` |
| 21 | `theorem` | [Criterion.r_ge](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-r-ge.md) | 421 | `result-track:21c1a1cf56e04e0fc319e66f4c9c4fde5fdddd0aeffae7df10ccd6477931d94b` |
| 22 | `theorem` | [Criterion.r_le](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-r-le.md) | 441 | `result-track:1c5799d3e96d56a25e16c643249bfee7a5651c1135174d55665d2e7bb797fae5` |
| 23 | `theorem` | [Criterion.prod_q_eq](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-prod-q-eq.md) | 454 | `result-track:32bfda514a623994f9d21e319fd4298e34cdddd7fbf1f947bb42b2417faf9790` |
| 24 | `def` | [Criterion.M](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-m-source-edition-2.md) | 465 | `declaration-track:3f5190bb38afcc514e15a90753cd696eccdf922ffce525127a6918a75fecf69c` |
| 25 | `lemma` | [Criterion.m_pos](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-m-pos-source-edition-2.md) | 467 | `result-track:4c62de2e8ed7f537335b13b28432cdc569017b30976abe6fcf55932e97291b97` |
| 26 | `lemma` | [Criterion.M_pos](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-m-pos.md) | 470 | `result-track:45664cd11de133a7673909daa740636bb77d2fdc0f878257b2eb701992c12eb9` |
| 27 | `lemma` | [Criterion.val_two_M_ge_L'](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-val-two-m-ge-l.md) | 473 | `result-track:b3d3786fd50a62e07c89fcfe5b49590dbdcf3a12bf9df467866fd3dddab42629` |
| 28 | `lemma` | [Criterion.val_p_M_ge_two](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-val-p-m-ge-two.md) | 486 | `result-track:fedc788cacfd6b313470f94f41a9d0ea61d4897b82d70a39ea33b790a25a6d2e` |
| 29 | `theorem` | [Criterion.M_lt](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-m-lt.md) | 550 | `result-track:0f273631f1fd484026b39ac7bc7a402842e7bcfcab412dc6a6854b43879f0a18` |
| 30 | `theorem` | [Criterion.Ln_div_M_gt](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-ln-div-m-gt.md) | 594 | `result-track:b13eeae7104b0583fcf5f677a72b49cff49e8211a51eef1cf04fda47a5cec97c` |
| 31 | `theorem` | [Criterion.Ln_div_M_lt](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-ln-div-m-lt.md) | 636 | `result-track:74e15358c2fdb2bcff653ecf6bbdf85171d4e30a7c444d503cedb789467e0c43` |
| 32 | `theorem` | [Criterion.not_highlyAbundant_1](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-not-highlyabundant-1.md) | 707 | `result-track:1185ce9380713c35329ec1290d9b6fd564509821c929001b9ca86e21688d834b` |
| 33 | `theorem` | [Criterion.not_highlyAbundant_2](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-not-highlyabundant-2.md) | 758 | `result-track:d60bc8e54fd8ccd97137e9453941b49d32f9dc6f13773dd596db125bba684b3c` |
| 34 | `lemma` | [σnorm_ratio_ge_aux](../../../../NumberTheory/LcmNamespaced.lean/declarations/norm-ratio-ge-aux.md) | 785 | `result-track:dfe3ca7429a438779d5bec1052e783d2e95a284ac77b9f0fee85ee93be239493` |
| 35 | `theorem` | [Criterion.σnorm_M_ge_σnorm_L'_mul](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-norm-m-ge-norm-l-mul.md) | 843 | `result-track:def856d8bb89df80c8c87e380c1cc471611bbbd0f37d0436534563b119212439` |
| 36 | `theorem` | [Criterion.not_highlyAbundant](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-not-highlyabundant.md) | 981 | `result-track:30cf5f3307e053dde36585254e97d02d016daa916a4fedd5e3bddbaa1c9eca44` |
| 37 | `abbrev` | [X₀](../../../../NumberTheory/LcmNamespaced.lean/declarations/x.md) | 992 | `declaration-track:72f789de210a3649d6957b570a08fe66dbf2c46dcfec4eed28aa52952a845425` |
| 38 | `lemma` | [hsqrt_ge](../../../../NumberTheory/LcmNamespaced.lean/declarations/hsqrt-ge.md) | 994 | `result-track:18e081810fcdbd4afb0660737c443d5417acba3d6d6cf036e6458377391ab074` |
| 39 | `lemma` | [log_X₀_gt](../../../../NumberTheory/LcmNamespaced.lean/declarations/log-x-gt.md) | 997 | `result-track:028b8ac8e8fbc307090677a883c3b3a730df2c5eb590e0e8a5a74ebab9c0ff73` |
| 40 | `lemma` | [hlog](../../../../NumberTheory/LcmNamespaced.lean/declarations/hlog.md) | 1003 | `result-track:2d1799cb64cd375bf29577184bbcbfb87b1171cd37b97ed8814f7409a04fbbd3` |
| 41 | `lemma` | [hε_pos](../../../../NumberTheory/LcmNamespaced.lean/declarations/h-pos.md) | 1008 | `result-track:2e3c255efe9497fc1cb4407e3dbeb590cb08734239b52ab00f5222dee696cb91` |
| 42 | `lemma` | [log_X₀_pos](../../../../NumberTheory/LcmNamespaced.lean/declarations/log-x-pos.md) | 1011 | `result-track:5832fc3b4d5bd54b2e6f41f6ebb6b5261e85afb7a67b70e674e771c6dda046f3` |
| 43 | `theorem` | [exists_p_primes](../../../../NumberTheory/LcmNamespaced.lean/declarations/exists-p-primes.md) | 1038 | `result-track:1b83c8bd94715e400555d3ad217052dd80a4bea09080529e9877821051b79a59` |
| 44 | `theorem` | [exists_q_primes](../../../../NumberTheory/LcmNamespaced.lean/declarations/exists-q-primes.md) | 1094 | `result-track:a4eafababe0541f5a014bc06d4d032bda203dbfdecceb32154d7d69904ba7d00` |
| 45 | `theorem` | [prod_q_ge](../../../../NumberTheory/LcmNamespaced.lean/declarations/prod-q-ge.md) | 1256 | `result-track:912ac1b072e56b4a616adc375abefb72ef04539178a14e54085983fcaef2cbb4` |
| 46 | `theorem` | [prod_p_ge](../../../../NumberTheory/LcmNamespaced.lean/declarations/prod-p-ge.md) | 1310 | `result-track:681fd8fdfd381ef0b9afd6d3e10cf01d0b55cd04c5db3d48bfa72a01053613af` |
| 47 | `theorem` | [pq_ratio_ge](../../../../NumberTheory/LcmNamespaced.lean/declarations/pq-ratio-ge.md) | 1371 | `result-track:e436b786f7288f5472565266b109e7b5d602def57f32908a25477db3d0418fe2` |
| 48 | `theorem` | [inv_cube_log_sqrt_le](../../../../NumberTheory/LcmNamespaced.lean/declarations/inv-cube-log-sqrt-le.md) | 1425 | `result-track:e223c09ed76d3a0e5ab97d838504ac55903165bffb7ba707dbd989545945e28a` |
| 49 | `theorem` | [inv_n_pow_3_div_2_le](../../../../NumberTheory/LcmNamespaced.lean/declarations/inv-n-pow-3-div-2-le.md) | 1453 | `result-track:ff0a643cadecee7605bef608fc5ebbe28c22be906e46c3653ae41239d2f04e13` |
| 50 | `theorem` | [inv_n_add_sqrt_ge](../../../../NumberTheory/LcmNamespaced.lean/declarations/inv-n-add-sqrt-ge.md) | 1482 | `result-track:de2ff445777dc8142b5328ed79feb09a6a5c0c4ff741f783d53d049a76fdb5f4` |
| 51 | `theorem` | [prod_epsilon_le](../../../../NumberTheory/LcmNamespaced.lean/declarations/prod-epsilon-le.md) | 1518 | `result-track:5a57eddfc22897fe40a1be418c37e4505fdda2fe40968cbc144a2c5df04e6d3a` |
| 52 | `theorem` | [prod_epsilon_ge](../../../../NumberTheory/LcmNamespaced.lean/declarations/prod-epsilon-ge.md) | 1553 | `result-track:9c21c17a4165feaf79707269795e4b38d684b2e6e174b6fe5e3ae49e635adfee` |
| 53 | `theorem` | [final_comparison](../../../../NumberTheory/LcmNamespaced.lean/declarations/final-comparison.md) | 1586 | `result-track:84de8094582e838705d53986f025608facf6ca0744cf709b19c163d7bbaa2788` |
| 54 | `def` | [Criterion.mk'](../../../../NumberTheory/LcmNamespaced.lean/declarations/criterion-mk.md) | 1604 | `declaration-track:a0d264cf466e83d59c434fdd37c374333954d76b9d907c3075c9bfeae871c2b7` |
| 55 | `theorem` | [L_not_HA_of_ge](../../../../NumberTheory/LcmNamespaced.lean/declarations/l-not-ha-of-ge.md) | 1676 | `result-track:24402d4d794e09ea809b27e0c2de0819ce134d1eca40eb87ae597da458059e6c` |
| 56 | `theorem` | [L_eq_prod](../../../../NumberTheory/LcmNamespaced.lean/declarations/l-eq-prod.md) | 1691 | `result-track:898d48c12bb353e51e825aa64fd7c67292c33a0534d206f8886f1ff5ef62113e` |
| 57 | `theorem` | [psi_eq_prod](../../../../NumberTheory/LcmNamespaced.lean/declarations/psi-eq-prod.md) | 1701 | `result-track:da21b427bbc86ba44ac5dcace0b9f05f66acb71bcf010ec73a5b59c84bec9153` |
| 58 | `theorem` | [log_L_eq_psi](../../../../NumberTheory/LcmNamespaced.lean/declarations/log-l-eq-psi.md) | 1713 | `result-track:2ed01116f2203cb45adfc839cac0ea4e10c814ec78d88eaedc1a8a3a90714f5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d5efe86f3a2468fc447adf55c9eb082b034e6f78b96324583bc0729d3e6d22d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean","GRWTSK/_verification/specifications/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
