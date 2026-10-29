# Verification target: Monomial Tree Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12f3aae19d4ee36c7c4befd3198946d06baac38f",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialTree/Variantb70e88c2b340f1426632ba97fe11d8651dab1e54c3a00227c4840783f91acc44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12f3aae19d4ee36c7c4befd3198946d06baac38f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialTree/Variantb70e88c2b340f1426632ba97fe11d8651dab1e54c3a00227c4840783f91acc44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialTree/Variantb70e88c2b340f1426632ba97fe11d8651dab1e54c3a00227c4840783f91acc44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Kernel.Checked` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Move](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/move.md) | 21 | `declaration-track:c6bdfda9e29cccd1ce26ae36122bdb122f553feff4bad911f8888cccc9b9dfa2` |
| 2 | `structure` | [Exponent](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/exponent.md) | 31 | `declaration-track:77adec8d61893454d6ba6b66e104b06c93086d89f0740fb3aee2cb30163602da` |
| 3 | `def` | [zero](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/zero.md) | 43 | `declaration-track:558845cc5e4697a3755e1f5b33a553f87b0f37f430c8415be80bd084410f5c73` |
| 4 | `def` | [weight](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/weight.md) | 46 | `declaration-track:b9589523b923bef06365df85de2cda4703fd8a488c784aef7d7fdc805a8357c4` |
| 5 | `def` | [step](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/step.md) | 49 | `declaration-track:ba89ffe00b08006f6dc665cec39368c593a76e666691579b7dbf3018c63d5f4d` |
| 6 | `theorem` | [step_q_weight](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/step-q-weight.md) | 58 | `result-track:5555cf8039a4048d485553195ee45300c06e915b6a6263a611dfa4e4e54c0db7` |
| 7 | `inductive` | [ClusterClass](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/clusterclass.md) | 64 | `declaration-track:58c9ce6c49cb35d58ea58456d1fa015ac266ad1fe4f7d0f14af9eadf30759041` |
| 8 | `structure` | [RegionData](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/regiondata.md) | 75 | `declaration-track:816f0355ec03d5987d59fc6d2c47f73c9ee6f21e0da233c0f64646621c074c00` |
| 9 | `def` | [clusteredCondition](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/clusteredcondition.md) | 87 | `declaration-track:b813d56db2e288725fa53c91324f1b63496b3f4f5994bf0f830effa0b9229ebc` |
| 10 | `def` | [quotientBridgeBlockedCondition](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/quotientbridgeblockedcondition.md) | 93 | `declaration-track:c6e213947f29ff17f38879a9a41817ed29f6bc3d02175931ffa26c629c0a3ee4` |
| 11 | `def` | [residueRequiredCondition](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/residuerequiredcondition.md) | 96 | `declaration-track:91ab903e4d03fd933bb7b6ff30067ff5ac4d0a594263b20fccc873d0228cf398` |
| 12 | `structure` | [Context](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/context.md) | 99 | `declaration-track:c290605a0f899cd4d3af8fac68c0b15029623db7e87f4926336c850d1b10f657` |
| 13 | `def` | [deterministicClusterClaim](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/deterministicclusterclaim.md) | 109 | `declaration-track:9af76db63de996a704416e59b4074a8be298d8b6368da368d4c46bd5cd4a0b25` |
| 14 | `def` | [deterministicClusterWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/deterministicclusterwitness.md) | 112 | `declaration-track:e8fd861560d1681b067dfa3848e450892e6a44408397cb393dd0ce053e09a72f` |
| 15 | `theorem` | [deterministicClusterWitness_isProved](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/deterministicclusterwitness-isproved.md) | 116 | `result-track:225310afff890e2ef10c31116029772d27e0a20e21270a84e0758aad908a944d` |
| 16 | `inductive` | [Atom](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/atom.md) | 120 | `declaration-track:dd76f9804ebe6ef9d95e6e588752adcc38fbe9e99b095c4901d7642c0d9589b6` |
| 17 | `def` | [Atom.id](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/atom-id.md) | 133 | `declaration-track:844035d7f1edd2e40945fbd6f3bb8fbce5ec6d104d28324b1d2b52fa1b18b9cb` |
| 18 | `def` | [Atom.claim](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/atom-claim.md) | 145 | `declaration-track:ac6691d74d5e3ffd9472ed3f5ec0208ab202bb9a53b54050302c58863fce8f6f` |
| 19 | `def` | [atomResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/atomresidue.md) | 161 | `declaration-track:276b673fec113930282b7caa08b9be1a1d5e3381da70f776ef374398acb49c3c` |
| 20 | `def` | [allAtoms](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/allatoms.md) | 179 | `declaration-track:2b8b7257097505085a58637e3bad0b34a82eba658564565a6c721a58a58efba7` |
| 21 | `def` | [clusterResidues](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/clusterresidues.md) | 192 | `declaration-track:5468c10e6873a1aa6e8ab7a211b2357a7e49dcd822b10ea490d842d1af5a3521` |
| 22 | `def` | [primeCountingOverclaim](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/primecountingoverclaim.md) | 195 | `declaration-track:09be0e44f1d667586933f881731f196c2ef5df33b59ec3fdd35424995d53eccf` |
| 23 | `def` | [primeCountingOverclaimWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/primecountingoverclaimwitness.md) | 198 | `declaration-track:3402d1746017b031284d4c23788e83a13f69b44887184998e522d257c1626d3b` |
| 24 | `theorem` | [primeCountingOverclaimWitness_hasResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/primecountingoverclaimwitness-hasresidue.md) | 202 | `result-track:f047cf58b98b2e84c7d682af747e0e9b433e40341cb5220d60e8d479c9239ca0` |
| 25 | `theorem` | [clusterResidue_count](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/clusterresidue-count.md) | 206 | `result-track:b125738cdb19e5a122e0b9d3af8eefe557d0044e18e401e67844fd18095993ed` |
| 26 | `theorem` | [clusterResidues_targets_correct](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/clusterresidues-targets-correct.md) | 210 | `result-track:058eff5471ec49da678c443df8abf64b5d7d65b908eb43d16a77679f5ddc0d95` |
| 27 | `theorem` | [allAtoms_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/allatoms-nodup.md) | 218 | `result-track:d98af5a5e8f2a0c9c215dc4fe7957c330a82faf80c60708b3a1e51d0418737f7` |
| 28 | `theorem` | [atomId_injective](../../../../../ComputerScience/AlgorithmsInComputerScience/MonomialTreeNamespaced.lean/declarations/atomid-injective.md) | 222 | `result-track:14621dd74313a1b86a04fcf47520c73a3150b55faa779b6eeee339b4e4129398` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e7a60b470fa9d2ef4083430acf95109e2301acc079452146724eb55f700ef64 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialTree/Variantb70e88c2b340f1426632ba97fe11d8651dab1e54c3a00227c4840783f91acc44.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialTree/Variantb70e88c2b340f1426632ba97fe11d8651dab1e54c3a00227c4840783f91acc44.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
