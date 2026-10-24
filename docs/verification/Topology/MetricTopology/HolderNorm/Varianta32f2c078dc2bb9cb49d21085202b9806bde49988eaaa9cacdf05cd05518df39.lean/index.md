# Verification target: GRWTSK.Topology.MetricTopology.HolderNorm.Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bccd7b34ab8ad5c635391a39e37be13e98ec42fe",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bccd7b34ab8ad5c635391a39e37be13e98ec42fe`.

Source path: `GRWTSK/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eHolderNorm](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/eholdernorm--09fea689534c5c0c66f1f043.md) | 59 | `declaration-track:09fea689534c5c0c66f1f04352ef40cdc83f82730fcc9b754b2dad8b074a6aca` |
| 2 | `def` | [nnHolderNorm](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/nnholdernorm--30c4db627b4386306e6a1d1f.md) | 63 | `declaration-track:30c4db627b4386306e6a1d1f0ef1ea282a425e541e39a9ba0cc62b21a98eaf14` |
| 3 | `def` | [MemHolder](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/memholder--719d638b1b3d86d21e776f39.md) | 68 | `declaration-track:719d638b1b3d86d21e776f39fb8813ebd12db3d27f0390eae3b8ae2152aa33d8` |
| 4 | `lemma` | [HolderWith.memHolder](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/holderwith-memholder--5fba46b812f151bebaf9ad66.md) | 70 | `result-track:5fba46b812f151bebaf9ad66a2ef1934cc13845439556ef49485b30bcb1defea` |
| 5 | `lemma` | [eHolderNorm_lt_top](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/eholdernorm-lt-top--b52af2c6a2509d0110e1a2ea.md) | 72 | `result-track:b52af2c6a2509d0110e1a2ea387fca0637dc5b6e2a08fd3451beaa91de04711e` |
| 6 | `lemma` | [eHolderNorm_ne_top](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/eholdernorm-ne-top--4daa21ce6d9a01af0f159916.md) | 79 | `result-track:4daa21ce6d9a01af0f159916e58b3dd498452c3fba8d57187cd9a72b23414442` |
| 7 | `lemma` | [eHolderNorm_eq_top](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/eholdernorm-eq-top--d3818ed99dc8d69593eb6778.md) | 82 | `result-track:d3818ed99dc8d69593eb677851a2565b9affc1aa440b4da979a626eb22faac4f` |
| 8 | `lemma` | [coe_nnHolderNorm_le_eHolderNorm](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/coe-nnholdernorm-le-eholdernorm--efff43256edc4405cd21b7f2.md) | 88 | `result-track:efff43256edc4405cd21b7f2bddd5e65a9122172d0ba063f435abeb47c191075` |
| 9 | `lemma` | [eHolderNorm_const](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/eholdernorm-const--55c8380aedefacff9a002b76.md) | 94 | `result-track:55c8380aedefacff9a002b76073c590f1389b3f3f2c4916e0940ebcf8dce6911` |
| 10 | `lemma` | [eHolderNorm_zero](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/eholdernorm-zero--32cb89789968e6d4eb567a1f.md) | 100 | `result-track:32cb89789968e6d4eb567a1f79b0f9fc03eff1c02c753274bcb10d5563053199` |
| 11 | `lemma` | [nnHolderNorm_const](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/nnholdernorm-const--43cd49e4558f9657984ac464.md) | 105 | `result-track:43cd49e4558f9657984ac464b4ab0e51b3a4a123b55d7aaed68f92c97213598e` |
| 12 | `lemma` | [nnHolderNorm_zero](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/nnholdernorm-zero--120f4b945c085412d75ffb4b.md) | 111 | `result-track:120f4b945c085412d75ffb4b427781cbcf40f5025604880d358190b4b17908f2` |
| 13 | `lemma` | [eHolderNorm_of_isEmpty](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/eholdernorm-of-isempty--b7275ca41f99dc5b03b9057a.md) | 116 | `result-track:b7275ca41f99dc5b03b9057aa0a5beaf7af8e637f44c08f47403b5906e380c69` |
| 14 | `lemma` | [HolderWith.eHolderNorm_le](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/holderwith-eholdernorm-le--163359fb39f6423094e1e3e1.md) | 121 | `result-track:163359fb39f6423094e1e3e144f1c3514c2c34e6824ec938527215c83b531174` |
| 15 | `lemma` | [memHolder_const](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/memholder-const--a6edf9f5f10e36120214a545.md) | 127 | `result-track:a6edf9f5f10e36120214a545598f6d46e0cc87f18e50cf0c27315590e4283227` |
| 16 | `lemma` | [memHolder_const'](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/memholder-const--e5f07def91a1904b122156a5.md) | 132 | `result-track:e5f07def91a1904b122156a584b5847022f205f9612ea14fa954ad97efaa5d6d` |
| 17 | `lemma` | [memHolder_zero](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/memholder-zero--4dba677a55aca39e0224fbd8.md) | 136 | `result-track:4dba677a55aca39e0224fbd8c485279a34c0cd1d064eb0a607c71aa14477c04c` |
| 18 | `lemma` | [MemHolder.of_le](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/memholder-of-le--aeb9699fda6c9207401e0d4a.md) | 145 | `result-track:aeb9699fda6c9207401e0d4ad20704bb5d5834214172c03309d30a7de5ab773e` |
| 19 | `lemma` | [MemHolder.of_le'](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/memholder-of-le--5132fde58932e9aa317de2f6.md) | 155 | `result-track:5132fde58932e9aa317de2f6cbfec2d2162ff36b877d97f3c5e83d8f5fab1187` |
| 20 | `lemma` | [HolderOnWith.exists_holderOnWith_of_le](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/holderonwith-exists-holderonwith-of-le--c3acb978e47eb7828acdddf2.md) | 167 | `result-track:c3acb978e47eb7828acdddf2f9d10c6b03d7bc8ff925d942a9762b85f05bebd0` |
| 21 | `lemma` | [HolderOnWith.exists_holderOnWith_of_le'](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/holderonwith-exists-holderonwith-of-le--43d29669a98db47e480fd26d.md) | 177 | `result-track:43d29669a98db47e480fd26de9977c32eae263e02616d1990d7094f5e48b81f5` |
| 22 | `lemma` | [HolderOnWith.exists_holderOnWith_of_le_of_le](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/holderonwith-exists-holderonwith-of-le-of-le--cc946169dc0856ebbfd37983.md) | 189 | `result-track:cc946169dc0856ebbfd3798347ae48ff8233488bb0372ad42a7923a123f3bc9d` |
| 23 | `lemma` | [MemHolder.memHolder_of_le_of_le](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/memholder-memholder-of-le-of-le--0851ef8731687d49c3398ce1.md) | 197 | `result-track:0851ef8731687d49c3398ce15c433374043a62588dfb9f792f28567a6f9a715f` |
| 24 | `lemma` | [eHolderNorm_eq_zero](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/eholdernorm-eq-zero--24ba1bb18e9a51e1fbc789dd.md) | 210 | `result-track:24ba1bb18e9a51e1fbc789dd7c4773fa18098da60d489c6ce787707add372408` |
| 25 | `lemma` | [MemHolder.holderWith](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/memholder-holderwith--43df685e9b067cb4c784564a.md) | 230 | `result-track:43df685e9b067cb4c784564af9a60e4aa3fbdfb60bd03648ae4fcb77eea55398` |
| 26 | `lemma` | [memHolder_iff_holderWith](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/memholder-iff-holderwith--178e540b0438665f58b9fcb8.md) | 246 | `result-track:178e540b0438665f58b9fcb867048cb94502997676aaaac155ea0de512abfbe6` |
| 27 | `lemma` | [MemHolder.coe_nnHolderNorm_eq_eHolderNorm](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/memholder-coe-nnholdernorm-eq-eholdernorm--a8384f951ad44deebf85e559.md) | 250 | `result-track:a8384f951ad44deebf85e55965b2aec0eec55fdb196140e630f9d7f56c786650` |
| 28 | `lemma` | [HolderWith.nnholderNorm_le](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/holderwith-nnholdernorm-le--d390d96e49cf5987145e30ad.md) | 256 | `result-track:d390d96e49cf5987145e30ad4fbe37c3942a669e72e7136b057ecca16d9288a1` |
| 29 | `lemma` | [MemHolder.comp](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/memholder-comp--b526ce37603f0f8d213b0adf.md) | 261 | `result-track:b526ce37603f0f8d213b0adf8ad900c977d4834e084064dfecb2a0d5c46da058` |
| 30 | `lemma` | [MemHolder.nnHolderNorm_eq_zero](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/memholder-nnholdernorm-eq-zero--b799e457cc806dea928bb77d.md) | 265 | `result-track:b799e457cc806dea928bb77d0b071025b3068bbe56b72738b34bd32ebbdfdadf` |
| 31 | `lemma` | [MemHolder.add](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/memholder-add--6c619a7c707c01c745fefb4d.md) | 276 | `result-track:6c619a7c707c01c745fefb4d19f793f5a0cc087e3992dcac23f78be60958e85a` |
| 32 | `lemma` | [MemHolder.smul](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/memholder-smul--3dbc3fe19c8fc0583d37a2d0.md) | 279 | `result-track:3dbc3fe19c8fc0583d37a2d022665018c39872a1b51ba44767b2b16dc50f3422` |
| 33 | `lemma` | [MemHolder.smul_iff](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/memholder-smul-iff--d94b07ec8a237abdcd7227b9.md) | 283 | `result-track:d94b07ec8a237abdcd7227b9cef1c4d19ee5af43d5d1464c562d64726a43fa98` |
| 34 | `lemma` | [MemHolder.nsmul](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/memholder-nsmul--2b79d1cef810d96cbccb7f1d.md) | 289 | `result-track:2b79d1cef810d96cbccb7f1d670e2c8236f8201f616cc45c0e1e39bffbdf1927` |
| 35 | `lemma` | [MemHolder.nnHolderNorm_add_le](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/memholder-nnholdernorm-add-le--59b641e15973ee051011315b.md) | 293 | `result-track:59b641e15973ee051011315bd56cc8557a44fe909637e4a324ae48e4692d6b9a` |
| 36 | `lemma` | [eHolderNorm_add_le](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/eholdernorm-add-le--da43deaea77ef64cf21e30d8.md) | 297 | `result-track:da43deaea77ef64cf21e30d816fe09c313cb928b0305aece4b3336108eaa843b` |
| 37 | `lemma` | [eHolderNorm_smul](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/eholdernorm-smul--2b021db9c4a2ff10494b6aec.md) | 308 | `result-track:2b021db9c4a2ff10494b6aec718f338a29d1af81f864e95efff29140ea1de2c1` |
| 38 | `lemma` | [MemHolder.nnHolderNorm_smul](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/memholder-nnholdernorm-smul--745d43e82b4e31c1bc73fed1.md) | 329 | `result-track:745d43e82b4e31c1bc73fed16b06c21fc2cadc6c502f5a1773f4329c8f52b07c` |
| 39 | `lemma` | [eHolderNorm_nsmul](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/eholdernorm-nsmul--3ee1c13c453b598e4fc08bde.md) | 335 | `result-track:3ee1c13c453b598e4fc08bdebd1c35a596274d1b67858524cff8a4b2fba088e1` |
| 40 | `lemma` | [MemHolder.nnHolderNorm_nsmul](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/declarations/memholder-nnholdernorm-nsmul--5d86b27932a63d6b9e3bc05a.md) | 339 | `result-track:5d86b27932a63d6b9e3bc05afe8f375276ff37c22bab0d504912a8d1a3e3a084` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
