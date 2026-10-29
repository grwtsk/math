# Verification target: Group Action Quotient Namespaced Equiv Subgroup Orbits Setoid Comap

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6392262fb9f727f48726cba67bde4e46dcbc3248",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Quotient/Variant940858214871a6a016133296265c120d2a732378e1972d7c0e2ed529f67ad9df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6392262fb9f727f48726cba67bde4e46dcbc3248`.

Source path: `GRWTSK/Algebra/GroupTheory/Quotient/Variant940858214871a6a016133296265c120d2a732378e1972d7c0e2ed529f67ad9df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Quotient/Variant940858214871a6a016133296265c120d2a732378e1972d7c0e2ed529f67ad9df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Actions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.ZPowers.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.PeriodicPts.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Commutator.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coset.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.ConjAct` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Hom` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [QuotientAction](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/quotientaction.md) | 52 | `declaration-track:6326dfcf86b450e8da3d7f5e6721fb840b03b34760250db5868846848aef7b78` |
| 2 | `class` | [Group Action Quotient Namespaced Equiv Subgroup Orbits Setoid Comap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/quotientaction-source-line-58-occurrence-2.md) | 58 | `declaration-track:d5054107a685dd147e595cc31be5c444499b6fa1149a00928387ed2b37eb3785` |
| 3 | `instance` | [left_quotientAction](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/left-quotientaction.md) | 67 | `declaration-track:0a2727288d1b5accaf3981e17283638983c0051b9adea213f520caaa1ad863ec` |
| 4 | `instance` | [right_quotientAction](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/right-quotientaction-source-edition-2.md) | 71 | `declaration-track:cdc50bc28cc1d9d11805efdd76dba892c958268079bcb6b6273f19caf5d09e03` |
| 5 | `instance` | [right_quotientAction'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/right-quotientaction.md) | 77 | `declaration-track:7392e5c3c953f7099abddcc6116c88d8ccede0bd705a643e7bc52044e393aaf6` |
| 6 | `instance` | [quotient](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/quotient.md) | 83 | `declaration-track:f78a59de7cf4f01a6ded9678c1c2e2f97e963e6ff7d51d69b157e09abcec7b90` |
| 7 | `theorem` | [Quotient.smul_mk](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/quotient-smul-mk.md) | 93 | `result-track:f0577cda63d6efb38deca5515bf20951068b80b7a9cdd8dc333a0e934c9c147a` |
| 8 | `theorem` | [Quotient.smul_coe](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/quotient-smul-coe.md) | 98 | `result-track:01f2cc13e23d44e083fb51c30d6b739b1b1be4fd17217031c986b58aa62e9903` |
| 9 | `theorem` | [Quotient.mk_smul_out](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/quotient-mk-smul-out.md) | 103 | `result-track:4e03884ef3b4a51de7b58b04c495003a8201a52febb68735b942865ad95711e8` |
| 10 | `theorem` | [Quotient.coe_smul_out](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/quotient-coe-smul-out.md) | 107 | `result-track:a53842333c48e12e18182e4f67de977c37b0267c5ef9a8ee6b19011a9ac8db7e` |
| 11 | `theorem` | [Group Action Quotient Namespaced Equiv Subgroup Orbits Setoid Comap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/out-conj-pow-minimalperiod-mem.md) | 110 | `result-track:25ec207e5d081e82bf01f663d26658861b442887af67dacdc39e2cc3efb7e890` |
| 12 | `def` | [Group Action Quotient Namespaced Equiv Subgroup Orbits Setoid Comap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/toquotient.md) | 120 | `declaration-track:565de1e8e8554030ba9faee928b3a516a7ad75ddef44c1ba15712d678cc8f095` |
| 13 | `theorem` | [Group Action Quotient Namespaced Equiv Subgroup Orbits Setoid Comap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/toquotient-apply.md) | 124 | `result-track:6738e63e993c5ec480811b0c6bf1a5ceca11d6357011d9595c08f7e56dedddf8` |
| 14 | `instance` | [mulLeftCosetsCompSubtypeVal](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/mulleftcosetscompsubtypeval.md) | 129 | `declaration-track:57827382bfa2da7d0aa70017fe78e6dd86e178fc97884562b257dcd9acd6c8ef` |
| 15 | `def` | [ofQuotientStabilizer](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/ofquotientstabilizer.md) | 137 | `declaration-track:2812825609e7e8b065f3859c0de50f5e726254ecd043da7391e88809e43e52ed` |
| 16 | `theorem` | [ofQuotientStabilizer_mk](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/ofquotientstabilizer-mk.md) | 144 | `result-track:7d3e2aab47c2ba7b1015d2a310858d20ec3beb822bfd9cc5e6fac61c31bf1edc` |
| 17 | `theorem` | [ofQuotientStabilizer_mem_orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/ofquotientstabilizer-mem-orbit.md) | 148 | `result-track:145fdf9f8216f913d4a0357453e74e884aedf825da87a14e1b8ba96ad35efa4f` |
| 18 | `theorem` | [ofQuotientStabilizer_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/ofquotientstabilizer-smul.md) | 152 | `result-track:6dcc1574b42455813407b15dc5e4e46745558166e65a1ee5f01eef5d4d2ad7a5` |
| 19 | `theorem` | [injective_ofQuotientStabilizer](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/injective-ofquotientstabilizer.md) | 157 | `result-track:a66829eda770393bd53d99f69f04fa04d37639237afce5a7383c77135a79cbc3` |
| 20 | `def` | [orbitEquivQuotientStabilizer](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/orbitequivquotientstabilizer.md) | 167 | `declaration-track:ece9f8ea32cf82430d0e5eba20389f9c8870d146488e7eef38a5a8ff12867e15` |
| 21 | `def` | [orbitProdStabilizerEquivGroup](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/orbitprodstabilizerequivgroup.md) | 175 | `declaration-track:4f4c0e245c8ecdab1315b2f59bc3d18b31e97d25511d8ae714f2eac605645c6c` |
| 22 | `theorem` | [card_orbit_mul_card_stabilizer_eq_card_group](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/card-orbit-mul-card-stabilizer-eq-card-group.md) | 181 | `result-track:89f7a1843940b028da120e9da446cb42ee4ca242dbda52b26a34e0b76e107c82` |
| 23 | `theorem` | [orbitEquivQuotientStabilizer_symm_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/orbitequivquotientstabilizer-symm-apply.md) | 187 | `result-track:ddb442791450dc3456cfab42cb63aa23dadf5900f7605281f11e838a85f46b7a` |
| 24 | `theorem` | [stabilizer_quotient](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/stabilizer-quotient.md) | 192 | `result-track:c463d008aff27d2cf180d19de925461c36a21114f7ddfc935906775e488fc346` |
| 25 | `def` | [selfEquivSigmaOrbitsQuotientStabilizer'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/selfequivsigmaorbitsquotientstabilizer-source-edition-2.md) | 213 | `declaration-track:6d743e2c5793cb34fc337ac6952382c916ae4aaebac13c16310b2ebab598817f` |
| 26 | `theorem` | [card_eq_sum_card_group_div_card_stabilizer'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/card-eq-sum-card-group-div-card-stabilizer.md) | 229 | `result-track:3d5acfa6b1adb55c46e0649c2776a8abb9a2e958af16e491d4447a781e5ce7ab` |
| 27 | `def` | [selfEquivSigmaOrbitsQuotientStabilizer](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/selfequivsigmaorbitsquotientstabilizer.md) | 247 | `declaration-track:185398f2e67bdc54eb55898cc5f8eea8ad8dc21fcbd99c9e3017df8879802e77` |
| 28 | `theorem` | [card_eq_sum_card_group_div_card_stabilizer](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/card-eq-sum-card-group-div-card-stabilizer-source-edition-2.md) | 252 | `result-track:463dcae3ebe5260c17bf5aa9614260214a6df68e39781873035c31ff2aa45530` |
| 29 | `def` | [sigmaFixedByEquivOrbitsProdGroup](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/sigmafixedbyequivorbitsprodgroup.md) | 264 | `declaration-track:cc7c9ace92b7915cbcb6b126bf96cebba0b7ac07ab95a9412f4c155536a330ff` |
| 30 | `theorem` | [sum_card_fixedBy_eq_card_orbits_mul_card_group](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/sum-card-fixedby-eq-card-orbits-mul-card-group.md) | 288 | `result-track:63a0bc642031d3551ca2e011243ffb1c0058f702f11ebbc5bca2d6134cf436ff` |
| 31 | `instance` | [isPretransitive_quotient](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/ispretransitive-quotient.md) | 294 | `declaration-track:f1cfcd8f356e78c2b3ad05ca03f8e71b2aadfc141ba74df4f5765504717bc738` |
| 32 | `instance` | [finite_quotient_of_pretransitive_of_finite_quotient](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/finite-quotient-of-pretransitive-of-finite-quotient.md) | 303 | `declaration-track:25bc02984302146a3a1ceb58dd53e8e25dc3bc37ea0b41ea4109f26ab9dbd5fa` |
| 33 | `def` | [equivSubgroupOrbitsSetoidComap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/equivsubgrouporbitssetoidcomap.md) | 323 | `declaration-track:e817c367983c11fbc03e2af7bb344a770b75671c2ff978e7f9555d9e504436f9` |
| 34 | `def` | [equivSubgroupOrbits](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/equivsubgrouporbits.md) | 355 | `declaration-track:e6a35bd66b21c7067b9d56eca67ca95623a08e062c281d394167f164f3221540` |
| 35 | `instance` | [finite_quotient_of_finite_quotient_of_finite_quotient](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/finite-quotient-of-finite-quotient-of-finite-quotient.md) | 363 | `declaration-track:cb0142026823078ef0ac23d0f6f2d2bdc0bab34b31ccb89ce508b467dc72e8de` |
| 36 | `def` | [equivSubgroupOrbitsQuotientGroup](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/equivsubgrouporbitsquotientgroup.md) | 373 | `declaration-track:f14ebc37fc37dafdf4ac5571306ba9c7d03d18a3578f1137a46a7398d9b03600` |
| 37 | `def` | [selfEquivOrbitsQuotientProd'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/selfequivorbitsquotientprod-source-edition-2.md) | 417 | `declaration-track:dc250b8b263bd22ac55151cc97c96285f81263b7a9b7a18f9834c6a8299e613e` |
| 38 | `def` | [selfEquivOrbitsQuotientProd](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/selfequivorbitsquotientprod.md) | 434 | `declaration-track:22beab1ba24e3e4c5c8fc53df74af3c5df54de0c39c165584b1744618b84078c` |
| 39 | `theorem` | [ConjClasses.card_carrier](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/conjclasses-card-carrier.md) | 443 | `result-track:308a83784c751e84edf2856992d633be62f882babb586078f61ddde01be55c6b` |
| 40 | `theorem` | [normalCore_eq_ker](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/normalcore-eq-ker.md) | 457 | `result-track:d37c016fc423f0720f10bf62f4a105f52ef5dc462319eef76528ddc96c2e213f` |
| 41 | `def` | [quotientCentralizerEmbedding](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/quotientcentralizerembedding.md) | 472 | `declaration-track:4fdc04c347c6e3b82eaf6d3f8c430488f89f8f156d60562e83030b92ae13cad3` |
| 42 | `theorem` | [quotientCentralizerEmbedding_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/quotientcentralizerembedding-apply.md) | 482 | `result-track:79929fb696f08ce76d12b47978668eb81b9f9b40e3acd995b7abeb6dec5fc346` |
| 43 | `def` | [quotientCenterEmbedding](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/quotientcenterembedding.md) | 488 | `declaration-track:2a783b28af432d648ab6ef7cc62e81bc2e84e24bbded37e2adef4409c741b75a` |
| 44 | `theorem` | [quotientCenterEmbedding_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientNamespacedEquivSubgroupOrbitsSetoidComap.lean/declarations/quotientcenterembedding-apply.md) | 494 | `result-track:aaba8f68624867c5cd60f9b4aa44c7c21a8cd3416082b0f6b2630aba70ad9f2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=362b7bd7f0bea7c951e7be57154f53f9ee498209c474cc4620768104a9af1ef5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Quotient/Variant940858214871a6a016133296265c120d2a732378e1972d7c0e2ed529f67ad9df.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Quotient/Variant940858214871a6a016133296265c120d2a732378e1972d7c0e2ed529f67ad9df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
