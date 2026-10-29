# Verification target: Order Has Prod Le Of Prod Le

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb6f7cd58433e2cf73a3ad4d7c4118d5a3e4e547",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Order/Variantd91e3da6a4e70fa3b818f9a4f558f09b5358c3917b4d1c7ed45485ef3ce232c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb6f7cd58433e2cf73a3ad4d7c4118d5a3e4e547`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Order/Variantd91e3da6a4e70fa3b818f9a4f558f09b5358c3917b4d1c7ed45485ef3ce232c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Order/Variantd91e3da6a4e70fa3b818f9a4f558f09b5358c3917b4d1c7ed45485ef3ce232c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.NatInt` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Field` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.MonotoneConvergence` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasProd_le_of_prod_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/hasprod-le-of-prod-le.md) | 27 | `result-track:81edbe4e41749c1b1c249eef65f88909fe257a16b9dc7954fafbe02a19738c70` |
| 2 | `theorem` | [le_hasProd_of_le_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/le-hasprod-of-le-prod.md) | 32 | `result-track:78e2b96fec7b31cb4ebaf7d2e3d9acd39beaa8e66443d87e4d3339d741ccc400` |
| 3 | `theorem` | [Multipliable.tprod_le_of_prod_range_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/multipliable-tprod-le-of-prod-range-le.md) | 37 | `result-track:5be02f5844e0960d234005980f6aee41654e33077b94f5028f338b3215f78f87` |
| 4 | `theorem` | [hasProd_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/hasprod-le.md) | 55 | `result-track:b5cd30578875795d14241a0747f7361608adccc99ccbe50275b67fcf5f5471bd` |
| 5 | `theorem` | [hasProd_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/hasprod-mono.md) | 59 | `result-track:5ad081e22908c1a9b21fd26dc6778938f22a0fb7a27971758d74dab1877d950d` |
| 6 | `theorem` | [hasProd_le_inj](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/hasprod-le-inj.md) | 63 | `result-track:a5ad6c56db7242a0602688617907d762a2e7855c22d52a38a0a5e41b86bbf41d` |
| 7 | `theorem` | [Multipliable.tprod_le_tprod_of_inj](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/multipliable-tprod-le-tprod-of-inj.md) | 75 | `result-track:f66e82ba718af9b596b429c72207bd419034651478cde3ec6ff451a02cf7ef85` |
| 8 | `lemma` | [Multipliable.tprod_subtype_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/multipliable-tprod-subtype-le.md) | 85 | `result-track:75902adad189dfc4f1cbbb7443d5a9811666250892cbf1ce7dd5af96cda6a30c` |
| 9 | `theorem` | [prod_le_hasProd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/prod-le-hasprod.md) | 101 | `result-track:96d86ff046f53428eecdb5e3fef6c68a1f6fe8683e101a3b4fe8a3d4dbbccf55` |
| 10 | `theorem` | [isLUB_hasProd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/islub-hasprod.md) | 107 | `result-track:9fe05222c580755ffd6b3bb912843f7c01b2d4e010678466e08a81860e9c0435` |
| 11 | `theorem` | [le_hasProd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/le-hasprod.md) | 113 | `result-track:0cc7790515b38e72d97ac268927453abf41503de8838582727289ed51d503c4b` |
| 12 | `theorem` | [lt_hasProd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/lt-hasprod.md) | 119 | `result-track:17bf5794e537f9f5758164c4422589040f97aeb1bda0ee5cfe1470a72d2c9395` |
| 13 | `theorem` | [Multipliable.prod_le_tprod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/multipliable-prod-le-tprod.md) | 129 | `result-track:6cd92f26a8371b208f6ce39301f167e2884bd4a9199356e1bc5298bf7d610a53` |
| 14 | `theorem` | [Multipliable.le_tprod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/multipliable-le-tprod.md) | 138 | `result-track:5446573fc51ab40baea6eefd0c7bc8ed0f890ad64eddfc256418f8d37106d92c` |
| 15 | `theorem` | [Multipliable.tprod_le_tprod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/multipliable-tprod-le-tprod.md) | 146 | `result-track:a398bb5e559c30f737a861d9fdde86a7ee376de6bc4af39894d21869b6c9184e` |
| 16 | `theorem` | [Multipliable.tprod_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/multipliable-tprod-mono.md) | 155 | `result-track:4aeb503feb68c7c38656ccea824089ab3c4a3e9c66ca24b960f6e66f12e917da` |
| 17 | `theorem` | [Multipliable.tprod_le_of_prod_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/multipliable-tprod-le-of-prod-le.md) | 165 | `result-track:35d5bec0129299aeedbc1d534edb2e785d66803396fa903c5ef5f39503f04823` |
| 18 | `theorem` | [tprod_le_of_prod_le'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/tprod-le-of-prod-le.md) | 175 | `result-track:bd48d8f7a9ec59769dbfe84be3d818cdb30606e3ff2e11edb5ddb35de3954d72` |
| 19 | `theorem` | [HasProd.one_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/hasprod-one-le.md) | 182 | `result-track:c945a0ce5cb5cb985b2089ff2f046cef5e4691863073166f5505ba13e5ef7c62` |
| 20 | `theorem` | [HasProd.le_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/hasprod-le-one.md) | 186 | `result-track:25c93d567bd274d320a89c0817b8d7df96698b1d51e3dd9eb800df79506f06ca` |
| 21 | `theorem` | [one_le_tprod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/one-le-tprod.md) | 190 | `result-track:f064fdd49476f3fa510819817503a7c23e7e2d00cb36abdd2389f6816486aabb` |
| 22 | `theorem` | [tprod_le_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/tprod-le-one.md) | 196 | `result-track:48915251ab7c282ffe7947619e4625020fc2308d7b57265db72443c308692629` |
| 23 | `theorem` | [hasProd_one_iff_of_one_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/hasprod-one-iff-of-one-le.md) | 202 | `result-track:83173cfe2053ed28d3c5f4a71dfa03f6318cb488c9b448675217b739c1666abf` |
| 24 | `theorem` | [hasProd_lt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/hasprod-lt.md) | 218 | `result-track:4e59676a9ac8c9550a01b451ef5a5604532a7a142282ace363e11a8634484d15` |
| 25 | `theorem` | [hasProd_strict_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/hasprod-strict-mono.md) | 226 | `result-track:55192c73ffafb6b06bed05144e4968ed9ae1746031f630fd8e52d64513a0e589` |
| 26 | `theorem` | [Multipliable.tprod_lt_tprod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/multipliable-tprod-lt-tprod.md) | 231 | `result-track:87381ad9451a4a553e94dbb16e87251a870b2672ef2d60bbd05f98b71a68716b` |
| 27 | `theorem` | [Multipliable.tprod_strict_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/multipliable-tprod-strict-mono.md) | 240 | `result-track:906efe781f2c45a41ed408f536d8c8223983559358084bd5a8ae1b3fd40ceb7d` |
| 28 | `theorem` | [Multipliable.one_lt_tprod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/multipliable-one-lt-tprod.md) | 250 | `result-track:4a569b0d3930abd3297b2b41957175a589f3251ba0cce7c29817e248fcc01c81` |
| 29 | `theorem` | [le_hasProd'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/le-hasprod-source-edition-2.md) | 268 | `result-track:ac4bdfad2406fa86f1e4d3493896763e08beaec026f297893157f5512fc257ea` |
| 30 | `theorem` | [Multipliable.le_tprod'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/multipliable-le-tprod-source-edition-2.md) | 272 | `result-track:e3d050b17b2258a998974ba27206119fd8fb35c54ded3541692ce75706936499` |
| 31 | `theorem` | [hasProd_one_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/hasprod-one-iff.md) | 280 | `result-track:fb84110381a176e24d06dba7366c4da7249d172737514e41bbc091bd0c36043f` |
| 32 | `theorem` | [Multipliable.tprod_eq_one_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/multipliable-tprod-eq-one-iff.md) | 284 | `result-track:04eb34c5be7956c922480aa2fd016bf29b991ee9ca841d080334a93e22a7a39a` |
| 33 | `theorem` | [Multipliable.tprod_ne_one_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/multipliable-tprod-ne-one-iff.md) | 293 | `result-track:507892b13fdc49ebc296c6ecbd70f9de2a907749ef9cde48d987fd945a947bd0` |
| 34 | `theorem` | [isLUB_hasProd'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/islub-hasprod-source-edition-2.md) | 302 | `result-track:d4ff1d2d4cd2261e96e5422af06642c930e72c6fb5f75d9a20fa088101f086ac` |
| 35 | `theorem` | [hasProd_of_isLUB_of_one_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/hasprod-of-islub-of-one-le.md) | 320 | `result-track:925b04c9d553622ba2a544125a5b6e6eab443aea2b60e3814bb907cc4d660d77` |
| 36 | `theorem` | [hasProd_of_isLUB](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/hasprod-of-islub.md) | 327 | `result-track:f36ed3fd0e3a30f06b412517be0a4bcc227d54c2d374fe9d7f5d8687c35478bf` |
| 37 | `theorem` | [multipliable_mabs_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/multipliable-mabs-iff.md) | 334 | `result-track:3847de1e032d5c6e2a0a4fce10f15a1a435bd0b86b51a1109c4fc295b8ab8ae8` |
| 38 | `theorem` | [Finite.of_summable_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/finite-of-summable-const.md) | 348 | `result-track:f7fee0ff14bfc9f9c6c322d2536c85941d735107414676a6c982f08bf8dc7b03` |
| 39 | `theorem` | [Set.Finite.of_summable_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/set-finite-of-summable-const.md) | 360 | `result-track:392575e024048b3097395b67a3786a008ba89559e48fd94ce617130643118ab4` |
| 40 | `theorem` | [HasProd.abs](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/hasprod-abs.md) | 373 | `result-track:409e44cdd8280657f6418090bfa553863f6dd37deb00f0aba121745af0b97536` |
| 41 | `theorem` | [Multipliable.abs](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/multipliable-abs.md) | 376 | `result-track:c6fb8b3c436d5ed5199d6864ae103afd1473dfc6d8f826cc68207527f3cbd7b4` |
| 42 | `theorem` | [Multipliable.abs_tprod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/multipliable-abs-tprod.md) | 379 | `result-track:22862854ae823ffdc0a27a0663cfbc7df04ad8583a16e1c15297316c6b8560d6` |
| 43 | `theorem` | [Summable.tendsto_atTop_of_pos](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/summable-tendsto-attop-of-pos.md) | 386 | `result-track:c67c29dda04f6a518af2e8767ba5bc21fa8897feefeef85407a75c32a73973be` |
| 44 | `def` | [evalTsum](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderHasProdLeOfProdLe.lean/declarations/evaltsum.md) | 403 | `declaration-track:18a7cc06b5c171a3fcf995bf6754899aed90892ceacb48444472a3b5b39d105c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4a636422e814ebe37d289e9fe002541c387bfe858a119a30d2eddea3bbb3d732 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Order/Variantd91e3da6a4e70fa3b818f9a4f558f09b5358c3917b4d1c7ed45485ef3ce232c0.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Order/Variantd91e3da6a4e70fa3b818f9a4f558f09b5358c3917b4d1c7ed45485ef3ce232c0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
