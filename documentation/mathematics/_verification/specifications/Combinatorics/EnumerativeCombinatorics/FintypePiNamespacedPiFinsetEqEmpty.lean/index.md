# Verification target: Fintype Pi Namespaced Pi Finset Eq Empty

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a8afcfbb191875bddaa2c438d262100f91ba1bc",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a8afcfbb191875bddaa2c438d262100f91ba1bc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/pifinset.md) | 36 | `declaration-track:7c3f10fe70813e2f94e796e3fe0fb0512c983cd71f086b850c6c71dce9341196` |
| 2 | `theorem` | [mem_piFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/mem-pifinset.md) | 41 | `result-track:b706fe8df83df7e9bdb7205213017d2dd0e7efc8ecc9877bec6550a97b60c612` |
| 3 | `theorem` | [coe_piFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/coe-pifinset.md) | 52 | `result-track:90be5d7ad5e074d3a81fa3c2e882d125f0a2b3ba1c9999de86d21b84534ce8c4` |
| 4 | `theorem` | [piFinset_subset](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/pifinset-subset.md) | 58 | `result-track:2c445a47a2c700eaed52c4cc61e0e669f89a43933a3b8e141ca64eb9e73f3660` |
| 5 | `theorem` | [piFinset_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/pifinset-eq-empty.md) | 62 | `result-track:a53e60a0a96b173bf1d387de54d33c84996acca00240a813c4cc6a34c5cc8199` |
| 6 | `theorem` | [piFinset_empty](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/pifinset-empty.md) | 65 | `result-track:dc152d5664720eb599faa8321c57f6189f91d9e864c480e99bca55ff7cd1371d` |
| 7 | `lemma` | [piFinset_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/pifinset-nonempty.md) | 68 | `result-track:eabce8992ebe1f2cec3adb92f9f0526997806811364bc12781e4af6573c4df73` |
| 8 | `lemma` | [Fintype Pi Namespaced Pi Finset Eq Empty](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/pifinset-const.md) | 73 | `result-track:9ad3aedee3419360a80dfdf62005e18b6bd2653c2f2aafe2d63a04241cf66fce` |
| 9 | `lemma` | [piFinset_of_isEmpty](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/pifinset-of-isempty.md) | 77 | `result-track:7be8fdc5ef2f07b08804b718a7fffed679159d02fb0b73f39e62986ccf6ad447` |
| 10 | `theorem` | [piFinset_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/pifinset-singleton.md) | 81 | `result-track:65593156bccae2053b9026ea29383c38a26b000f96ca44f408f5be0981aeb32d` |
| 11 | `theorem` | [piFinset_subsingleton](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/pifinset-subsingleton.md) | 84 | `result-track:3f66602e12cff02a7981d7d991039f29f68af671fb72ad81abaded0a34132c2d` |
| 12 | `theorem` | [piFinset_disjoint_of_disjoint](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/pifinset-disjoint-of-disjoint.md) | 88 | `result-track:2fc0d15c9a5cabea787943a9688590fd47c3d864c1abe66ea20958b331eaa231` |
| 13 | `lemma` | [piFinset_image](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/pifinset-image.md) | 94 | `result-track:65280923ccacf22fb995295b179909064a8d47cfadd3a31f2934b76d7b8f9a5c` |
| 14 | `lemma` | [eval_image_piFinset_subset](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/eval-image-pifinset-subset.md) | 98 | `result-track:171df065e2b6e0e015b67c5d9381ed59d1bc142b36a53b4954477b8f46f2be6a` |
| 15 | `lemma` | [eval_image_piFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/eval-image-pifinset.md) | 101 | `result-track:044a970489981cabaffd1ddc8c172e122397c281ed214909ed62b8a87a4ad955` |
| 16 | `lemma` | [eval_image_piFinset_const](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/eval-image-pifinset-const.md) | 107 | `result-track:129edb2a08308018b91e217af7466a7235f7587ea4a06f820a60a52704c4edf0` |
| 17 | `lemma` | [filter_piFinset_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/filter-pifinset-of-notmem.md) | 116 | `result-track:6a39ea46fd4594984935839c8c871960fcc6a1a1d4acaa30d4c99508596a716d` |
| 18 | `lemma` | [piFinset_update_eq_filter_piFinset_mem](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/pifinset-update-eq-filter-pifinset-mem.md) | 123 | `result-track:b3536cac5b4715a377cd269683d0f9684f25b93b04431524e084e25bf3ae284e` |
| 19 | `lemma` | [piFinset_update_singleton_eq_filter_piFinset_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/pifinset-update-singleton-eq-filter-pifinset-eq.md) | 137 | `result-track:d9cf6157c94a9fdb4779d123a4c7d73c86ec35dc89daa89dae4f4770286ee72c` |
| 20 | `instance` | [Pi.instFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/pi-instfintype.md) | 147 | `declaration-track:dc066e686d360ee7c2486215a19ce19cc1b098dc6c1d77834b5f48fa209c4a13` |
| 21 | `theorem` | [Fintype.piFinset_univ](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/fintype-pifinset-univ.md) | 152 | `result-track:34ff66bb6b627dc1752ad2b9632b2716e4346b005a3a4dd22e3521ce08f7d126` |
| 22 | `instance` | [Fintype Pi Namespaced Pi Finset Eq Empty](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/fintype.md) | 163 | `declaration-track:9697858f3a95c895844efb2c9ffc4a3689c162d5dd40fd63ca15c2ace5f2a443` |
| 23 | `instance` | [RelHom.instFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/relhom-instfintype.md) | 167 | `declaration-track:0f10296efcd1cb1e2b3a2e461c02cd1281a97585de477da1366e766c2b52b927` |
| 24 | `instance` | [RelEmbedding.instFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/relembedding-instfintype.md) | 172 | `declaration-track:ca123f0cd6aead867dab6ce2f13d8380fbed730ea6cb5c6521e6664b86876d7d` |
| 25 | `theorem` | [Finset.univ_pi_univ](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/finset-univ-pi-univ.md) | 177 | `result-track:6f367eef9cee5ec8b0829a29a7b42be11255b99f1a9be5e13eb5f54397826e2f` |
| 26 | `lemma` | [piFinset_filter_const](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/pifinset-filter-const.md) | 187 | `result-track:3dff7620a0be38056f191917594685c5e62e05285240d1ebc0197445361eda32` |
| 27 | `lemma` | [piDiag_subset_piFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/pidiag-subset-pifinset.md) | 190 | `result-track:4d04a28cfdf0728f31977ce77102efed579fbb5c6756e013d5d590c76e011316` |
| 28 | `theorem` | [Finite.pi](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/finite-pi-source-edition-2.md) | 213 | `result-track:edf27a5c78143b7ef0641edafa3abafd653809d20ad44b4fb36a2363ad1e208f` |
| 29 | `lemma` | [Finite.pi'](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/finite-pi.md) | 222 | `result-track:27898b165866d2db5e008dfefc44f5d229ce0627e2df7162ade6dbc09f4793b2` |
| 30 | `theorem` | [forall_finite_image_eval_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/declarations/forall-finite-image-eval-iff.md) | 229 | `result-track:7d55f8d40c85d42ed31b81742708b03c994c4fc9dabac291384616bd8c321199` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad2d0387ff8107eaa9f03c5184185476689de3608f801be9e1c7a4334692d6e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
