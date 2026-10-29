# Verification target: Heyt Alg Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e38c44f34d667585fca0497c92468ab7bcdb8614",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlg/Variant23db5a1bed7599346a520109840867a2659349813b058cf6f702aba6df892546.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e38c44f34d667585fca0497c92468ab7bcdb8614`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlg/Variant23db5a1bed7599346a520109840867a2659349813b058cf6f702aba6df892546.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlg/Variant23db5a1bed7599346a520109840867a2659349813b058cf6f702aba6df892546.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.BddDistLat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Heyting.Hom` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HeytAlg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/heytalg.md) | 29 | `declaration-track:ed8824f8c2882ca8920b46d1815a36338a69790ef67de6bc154556aa3082e7b7` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/instance-source-edition-4.md) | 40 | `declaration-track:b086873b74f5a13fbf19e9b11742a0b5055cef563c6adbc5c0950e3d5540eb87` |
| 3 | `abbrev` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/of.md) | 46 | `declaration-track:631fd3574fd892122a5b2f2168b503b9a8a505523ed443545bbf9a1dc37cfcb4` |
| 4 | `structure` | [Hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/hom.md) | 50 | `declaration-track:b5908a7dba775863a0ca39fe0a3d93c7a91e0661b4d7ed6b79f10c0981ad06b5` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/instance-source-edition-3.md) | 55 | `declaration-track:782b138425ebb385c56a6e0aacd1baf5fe3d660788fd188875d3c12830eb9501` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/instance-source-edition-2.md) | 60 | `declaration-track:33a16a80cfcefe3d135e10cffd034cfbbdd86c567fa6e9fd2bb8c4d765193663` |
| 7 | `abbrev` | [Hom.hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/hom-hom.md) | 65 | `declaration-track:f2aeddfa83e7a660d4135fff85704c069d8a2dd0dfff8106017d3512acd105b0` |
| 8 | `abbrev` | [ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/ofhom.md) | 69 | `declaration-track:aa535d89904d7f261d1a5c1c9dd4dac326c00e1650c8c02a3f8d558e3616a45a` |
| 9 | `def` | [Hom.Simps.hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/hom-simps-hom.md) | 75 | `declaration-track:9e04556dfc90d3746097ed192afbfce74daefdb14a0f4a5bc6f1f8d42d6dc767` |
| 10 | `lemma` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/coe-id.md) | 85 | `result-track:1d0b1db5a30cd06121a60aa1e57165027d276970ae9474011bc6a299dcb2d296` |
| 11 | `lemma` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/coe-comp.md) | 88 | `result-track:e1300c9f6ec99c371f0129153ce997ca86c3314bb06d6da7a523a97b4c509457` |
| 12 | `lemma` | [forget_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/forget-map.md) | 91 | `result-track:ae3fbdc77e25f290b4b996de6a84cdf6da791161197bca4226bcdcf1cbe8cd83` |
| 13 | `lemma` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/ext.md) | 95 | `result-track:a1805438e5eec6c80f6d4f7e2456e2e52856bc55b2068bad520112385de66c66` |
| 14 | `theorem` | [coe_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/coe-of.md) | 99 | `result-track:4e6d03c3474a61395fe85e4a07498a784427e2b60573939b67526c6b2b25338d` |
| 15 | `lemma` | [hom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/hom-id.md) | 102 | `result-track:d60a61a974aed137ace47ca9133a796bd5b9179a154a4ae0493d1618da53b22b` |
| 16 | `lemma` | [id_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/id-apply.md) | 105 | `result-track:4b330a842e1f516bf7a502115ab1a8571922912fde56ef1872f1ab6396368c21` |
| 17 | `lemma` | [hom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/hom-comp.md) | 109 | `result-track:9ec329debfd47ce1cdb0d9f5da54b1f8bebc392027f17ac48e9adcc67603a6b2` |
| 18 | `lemma` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/comp-apply.md) | 113 | `result-track:82e6b22aad595c07ea14fd66f5f023d2a47dfb8a9afb06e750b5516ba441d337` |
| 19 | `lemma` | [hom_ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/hom-ext.md) | 117 | `result-track:05da321e9d7a0b99b68a6a45c4e0f5fec146d8138a941b1cbd970bb31679c4cc` |
| 20 | `lemma` | [hom_ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/hom-ofhom.md) | 121 | `result-track:70e17d75de8be433be6142ba68eefeb536e1917b6decb6c7b1a74b34cc722791` |
| 21 | `lemma` | [ofHom_hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/ofhom-hom.md) | 125 | `result-track:9d723bc7ca421f7d85e61996f2fb515917d2ec856975c8d1e8325f1cfc9ce8d5` |
| 22 | `lemma` | [ofHom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/ofhom-id.md) | 129 | `result-track:5878565b57dedb3c3dbc6c5f2ea220c15ca5e6e3816aa543134007a5f83b3ce4` |
| 23 | `lemma` | [ofHom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/ofhom-comp.md) | 132 | `result-track:acbac59f7ac0ef4a0ec256680f7fc8dbfb86e0b54ff15e6b2d39d05adebb7b7f` |
| 24 | `lemma` | [ofHom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/ofhom-apply.md) | 137 | `result-track:ec4f9eff46142e0fe23469bbce14123bafee7aaa9f75bd44d43b3b69b891bd8c` |
| 25 | `lemma` | [inv_hom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/inv-hom-apply.md) | 141 | `result-track:c8c5bbe2a3e0c3c106de50cefa9e56774d4e5d6af3a23d66b44b7f68b9e87b3f` |
| 26 | `lemma` | [hom_inv_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/hom-inv-apply.md) | 144 | `result-track:756f7739c567d5e7ef357becb8d976bfd2b8da79a191cf8f9a4028269da9100b` |
| 27 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/instance.md) | 147 | `declaration-track:2fd8ef7c8dae2931b05edb6460e4b5f2521f1687bf72936b2911f6fb21f8812d` |
| 28 | `instance` | [hasForgetToLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/hasforgettolat.md) | 151 | `declaration-track:ac00134b513c18d6db9fb571d63c62c1e1b24750a21f85dd97c1aa586bbe5e5d` |
| 29 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgNamespaced.lean/declarations/iso-mk.md) | 157 | `declaration-track:7e3583f9fe61156a77e6bcc970b217492b0a4d6515db276ea4e427a6de626228` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=62ce758e49b1dbbaa3deda43bdeeb46f0a949539a6da3d27d7c92aa3c49280fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlg/Variant23db5a1bed7599346a520109840867a2659349813b058cf6f702aba6df892546.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlg/Variant23db5a1bed7599346a520109840867a2659349813b058cf6f702aba6df892546.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
