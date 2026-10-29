# Verification target: Complete Lattice Finset Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc244b4f6ce32dba547591fe2fc4d229cdc7d75d",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant430e73628e0db7417ce3ac2cffa35d63ab3a3d3db63d178e2d4103ef42b28b15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc244b4f6ce32dba547591fe2fc4d229cdc7d75d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant430e73628e0db7417ce3ac2cffa35d63ab3a3d3db63d178e2d4103ef42b28b15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant430e73628e0db7417ce3ac2cffa35d63ab3a3d3db63d178e2d4103ef42b28b15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Option` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice.Image` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iSup_eq_iSup_finset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/isup-eq-isup-finset-source-edition-2.md) | 39 | `result-track:1dc166d4ab7fbf8110e2d4aaaaad29c8cc962fa658ea2468bf8fb1737af7f474` |
| 2 | `theorem` | [iSup_eq_iSup_finset'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/isup-eq-isup-finset.md) | 48 | `result-track:1ce302fae752770110b01e8b7096b338e43e885b6ba4dfedd70beaabe782664d` |
| 3 | `theorem` | [iInf_eq_iInf_finset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/iinf-eq-iinf-finset.md) | 55 | `result-track:9ea521490cdf3741e673daa3336102b7c9751c4dea212961436f9432fb645e42` |
| 4 | `theorem` | [iInf_eq_iInf_finset'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/iinf-eq-iinf-finset-source-edition-2.md) | 61 | `result-track:a60eeceb5cc3eb9c5553abf021f4b91999ee8d722a246ff15e06a7fa81ced601` |
| 5 | `theorem` | [iUnion_eq_iUnion_finset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/iunion-eq-iunion-finset-source-edition-2.md) | 74 | `result-track:b54ecfaa7e33fed85647925280d35f8fc4a9cd100a09fae80395a5de1c22c9e5` |
| 6 | `theorem` | [iUnion_eq_iUnion_finset'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/iunion-eq-iunion-finset.md) | 80 | `result-track:9cac194adf86bd339693f9f0a0f7809cf1d4fe3215ced5081294008a97901723` |
| 7 | `theorem` | [iInter_eq_iInter_finset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/iinter-eq-iinter-finset-source-edition-2.md) | 87 | `result-track:cd248a3a481593e21558e4f291d4fddf5f9000fcf07aafa8d5de3b95733d304b` |
| 8 | `theorem` | [iInter_eq_iInter_finset'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/iinter-eq-iinter-finset.md) | 94 | `result-track:c1433c3cd920e9231acc17768ead00722e082ada4a11d23c58fe984511cce6fe` |
| 9 | `theorem` | [maximal_iff_forall_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/maximal-iff-forall-insert.md) | 106 | `result-track:0a8954d44f7a4e83c4ce14960452f0f57af690da29b27602f7d4b6317d3338de` |
| 10 | `theorem` | [minimal_iff_forall_diff_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/minimal-iff-forall-diff-singleton.md) | 112 | `result-track:1274ff2f98813ac0184f0e16f73cff117e26dc2a26e47e765cb6899b353254d0` |
| 11 | `theorem` | [iSup_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/isup-coe.md) | 124 | `result-track:0df03f22f98a8755c093bdc1d0719283c7e33f91f2453bd91c7e7edcb2949651` |
| 12 | `theorem` | [iInf_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/iinf-coe.md) | 127 | `result-track:98f103fec9e0739603acc1f9912843093b1591bf3613fccb23b4efe5011b33b8` |
| 13 | `theorem` | [iSup_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/isup-singleton.md) | 132 | `result-track:081fb6f97cb7ea1cd9250a1a3342e62036e590841280ad3a04a1a8c0b5dc36f6` |
| 14 | `theorem` | [iInf_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/iinf-singleton.md) | 134 | `result-track:231e17d144e1e5a8d99fcdb04ff9b2e970a1776213bba1d283751beb75c85b4d` |
| 15 | `theorem` | [iSup_option_toFinset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/isup-option-tofinset.md) | 136 | `result-track:f2e4c9a533c2833edc07dc12235ecbb3756b18f486369a5f015efb0119f617e5` |
| 16 | `theorem` | [iInf_option_toFinset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/iinf-option-tofinset.md) | 139 | `result-track:03bce21ecf64abf70c3338ea58b9c4c0f97d05c76d5ed219ba516012b53c9ce7` |
| 17 | `theorem` | [iSup_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/isup-union.md) | 144 | `result-track:eee56f097a9b41e0b6e84f2ff98c946854e0200e63122b3faca997616ce64855` |
| 18 | `theorem` | [iInf_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/iinf-union.md) | 147 | `result-track:0d0f1b327c5bd0fa4b7506f57ee8c6f8285c3f2ba21584e492d6e857967001d9` |
| 19 | `theorem` | [iSup_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/isup-insert.md) | 151 | `result-track:a863c373994e8f463ddc55d424050b47163b30130b36072cabd30819a41ae56f` |
| 20 | `theorem` | [iInf_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/iinf-insert.md) | 156 | `result-track:1dbae6a4dd5b1e3d272c018c4725c466dabd83b4e20d2c6f24ffd87a520b0838` |
| 21 | `theorem` | [iSup_finset_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/isup-finset-image.md) | 160 | `result-track:84deaba73bc8fc0b8b259907c6d475ff97e5d54d771abd9d298eb66d6c5497c2` |
| 22 | `theorem` | [iInf_finset_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/iinf-finset-image.md) | 163 | `result-track:7e5025f3e5fb2bf2a0d845bc33efc03efcb4e231111c001a40d082608575d639` |
| 23 | `theorem` | [iSup_insert_update](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/isup-insert-update.md) | 166 | `result-track:2a64f2708bd40b683d97ef00b12cbf37e07e3d4ba0037e9866e65d6a8b56d208` |
| 24 | `theorem` | [iInf_insert_update](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/iinf-insert-update.md) | 171 | `result-track:776be8e285f65d1be36afb582a6543925453e5956d48c0a96228035016a0e38a` |
| 25 | `theorem` | [iSup_biUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/isup-biunion.md) | 175 | `result-track:e025314f658f5afbce32294e8c4331cae5d730bba78f76dc5bac8084bf64c3f3` |
| 26 | `theorem` | [iInf_biUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/iinf-biunion.md) | 178 | `result-track:2d3619d2dfbbb296bb38d4515840feeb92817359dc5541ac48fcfad25ec2a441` |
| 27 | `theorem` | [set_biUnion_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/set-biunion-coe.md) | 184 | `result-track:7e46b1806991b5120417e209beba1aac0e28fc1bd3982ec82f19d655a5ac2621` |
| 28 | `theorem` | [set_biInter_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/set-biinter-coe.md) | 187 | `result-track:0c8aa80d98562dfdf2b8f36a01c5d7792f6f742b273b57ca335925843fc52203` |
| 29 | `theorem` | [set_biUnion_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/set-biunion-singleton.md) | 190 | `result-track:69a30ce61f428fbda980acbf42f6537f22f9d796f836f213149fc4fde9da35fb` |
| 30 | `theorem` | [set_biInter_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/set-biinter-singleton.md) | 193 | `result-track:9a388bcab37d4c0c8b992a04eb0c4976a5e0b5bbf9230310058d9909f2a6f927` |
| 31 | `theorem` | [set_biUnion_preimage_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/set-biunion-preimage-singleton.md) | 197 | `result-track:2bbd923ac169a87ec8219d08588764aa1c14acdc169783f047af6719d1fa882c` |
| 32 | `theorem` | [set_biUnion_option_toFinset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/set-biunion-option-tofinset.md) | 201 | `result-track:53cd89342d98afa2f0b683dba7285858da2d8bd4307cf872b17d4563ce5ca875` |
| 33 | `theorem` | [set_biInter_option_toFinset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/set-biinter-option-tofinset.md) | 205 | `result-track:987a513c0e202fc5b35e4b6768080d23297d45c7600814482fa877970dbadd22` |
| 34 | `theorem` | [subset_set_biUnion_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/subset-set-biunion-of-mem.md) | 209 | `result-track:a5ff5b6f96085cc7836e087bcc26b04394f16b5e30013c3461721790be549ea1` |
| 35 | `theorem` | [set_biUnion_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/set-biunion-union.md) | 215 | `result-track:ec1a0d2052dec0f6164227d2c6da7126fef88f5c6e7e5267acfeea2fc99c76fd` |
| 36 | `theorem` | [set_biInter_inter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/set-biinter-inter.md) | 219 | `result-track:4815855a26c82c850ef6afc7e791076a3727e95c78493679d70c85ea2598f1da` |
| 37 | `theorem` | [set_biUnion_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/set-biunion-insert.md) | 223 | `result-track:0dea8fe960dac960f9ce46c283c8e36af740e3fba92e91015fbe5be8a70fa678` |
| 38 | `theorem` | [set_biInter_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/set-biinter-insert.md) | 227 | `result-track:8b0150bba01e07cfd9678719e946058277b435ffc4bd60e0f76e632daa321d4e` |
| 39 | `theorem` | [set_biUnion_finset_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/set-biunion-finset-image.md) | 231 | `result-track:0d95617d6c684c1e3678976a672a0b2880d2bb75dced787f0391be6bcfe7d49d` |
| 40 | `theorem` | [set_biInter_finset_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/set-biinter-finset-image.md) | 235 | `result-track:0b1edd229f89d729a51217f91a46f4afd640f8120c0e1fe50cee43003007e57d` |
| 41 | `theorem` | [set_biUnion_insert_update](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/set-biunion-insert-update.md) | 239 | `result-track:677a088fcf9f1b22ec62551bc156e6b2b7af54b7cd54184caf93bb65e863889b` |
| 42 | `theorem` | [set_biInter_insert_update](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/set-biinter-insert-update.md) | 243 | `result-track:dc9a071d72eae7cb3c1944fdd048b37547949e67d32a9113f846eabfbd3e252f` |
| 43 | `theorem` | [set_biUnion_biUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/set-biunion-biunion.md) | 247 | `result-track:84b24e201ff94fa07dd68dd7105f55a27b597843187aa822f4600aaf1c0d4ab9` |
| 44 | `theorem` | [set_biInter_biUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeFinsetNamespaced.lean/declarations/set-biinter-biunion.md) | 251 | `result-track:2e9a76d8e39a52bf47f37a12642a5763ea5b9a08792bdbbf1e635db5f205ed87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ed92e10fa533ed3ba2ca65208b3a4308e05aa28ca0be66cb3fd295889553aa6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant430e73628e0db7417ce3ac2cffa35d63ab3a3d3db63d178e2d4103ef42b28b15.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Finset/Variant430e73628e0db7417ce3ac2cffa35d63ab3a3d3db63d178e2d4103ef42b28b15.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
