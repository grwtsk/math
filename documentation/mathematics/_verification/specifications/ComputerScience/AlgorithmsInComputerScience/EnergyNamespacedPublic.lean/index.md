# Verification target: Energy Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e19e4554c97d43de30c6df2feb39add0e648164",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variant69b00a065fc67a87f79bc1bba94bac5a6dc6c7a0dbedd76d5be8005c05819d56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e19e4554c97d43de30c6df2feb39add0e648164`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variant69b00a065fc67a87f79bc1bba94bac5a6dc6c7a0dbedd76d5be8005c05819d56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variant69b00a065fc67a87f79bc1bba94bac5a6dc6c7a0dbedd76d5be8005c05819d56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [openingCount](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/openingcount.md) | 29 | `declaration-track:d86734a60e3e94564a9dd931a9827b1f0932557b54f0435a506b769e5fc5f827` |
| 2 | `def` | [closingCount](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/closingcount.md) | 30 | `declaration-track:60ae7fe2a058b831c8eb0776a39b174c7f0ded0006fcdbeec391a4bab5b7ceec` |
| 3 | `theorem` | [openingCount_append](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/openingcount-append.md) | 32 | `result-track:9862ebf5512877b4a81c9900258e4049a7082e4c27890a0dc158bf4b42cc16e7` |
| 4 | `theorem` | [closingCount_append](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/closingcount-append.md) | 37 | `result-track:8846b19b9be0e27b7a11f2ccef01eb8e486c16b27a4fb819d8e9bf42226a34bc` |
| 5 | `theorem` | [count_close_replicate_open](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/count-close-replicate-open.md) | 42 | `result-track:8da72c187704fd8ed98165a9251c596671fbe2d5db0fc69a4b1bc00c8bbea1fd` |
| 6 | `theorem` | [count_open_replicate_open](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/count-open-replicate-open.md) | 47 | `result-track:b83ab58e68ddc9a5ef00eb2b1f17bc59b7512cfe7af4f6deb19841e33f935213` |
| 7 | `theorem` | [count_open_replicate_close](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/count-open-replicate-close.md) | 51 | `result-track:41df3729e52a5d1fd01d10f2881a6927980f5353fd11e0897078a48987e6371b` |
| 8 | `theorem` | [count_close_replicate_close](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/count-close-replicate-close.md) | 56 | `result-track:cee531334a58f1b7ff8a27ed7468fd2236f506999a1095be7e64e814538ad0cf` |
| 9 | `def` | [PrefixSafeWith](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/prefixsafewith.md) | 61 | `declaration-track:c7be2a3890c3b5ebd680ce17edadf4fa57f850ce1267fe57b804cff84c889a64` |
| 10 | `theorem` | [prefixAllowance_exists](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/prefixallowance-exists.md) | 66 | `result-track:df9774bbc3c2ee10e384fddf485e5549c11e6b0d7ac491b3a63ae199a5a8965c` |
| 11 | `def` | [prefixDeficit](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/prefixdeficit.md) | 78 | `declaration-track:3956da6f24a1de86eee3d1a89d0113e3ae2b4d2d42aeb920ab9e894f34a47048` |
| 12 | `theorem` | [prefixDeficit_is_prefixSafe](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/prefixdeficit-is-prefixsafe.md) | 84 | `result-track:4a50da0e3fda52f6a255d56484b618d02fc68840c495058609f6791d3aa394c7` |
| 13 | `theorem` | [prefixDeficit_is_minimal](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/prefixdeficit-is-minimal.md) | 91 | `result-track:d9191dff691025d338263c9cee8b6451d778a17b1e7d55e318cc38a30b242d6c` |
| 14 | `def` | [minimumPrefix](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/minimumprefix.md) | 99 | `declaration-track:d27c6631e194f2fd0039490807893c251d89dcd1cc82f6ac69c7b1fdbe87b7e8` |
| 15 | `theorem` | [prefixDeficit_eq_max_zero_neg_minimumPrefix](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/prefixdeficit-eq-max-zero-neg-minimumprefix.md) | 103 | `result-track:4eb3f4c075669eaef3579a43fa93ba4bdf17abf283609bcb9a797d166cd3766f` |
| 16 | `def` | [terminalSurplus](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/terminalsurplus.md) | 108 | `declaration-track:742a204546d2511c78a35456af74b0958cc1ad5522dd230d84c25a5d3a35a965` |
| 17 | `theorem` | [terminalSurplus_eq_finalBalance_add_prefixDeficit](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/terminalsurplus-eq-finalbalance-add-prefixdeficit.md) | 112 | `result-track:4d2c6f7106c56038942bddb92376f048e4116c85821ace81b81413a730dcc019` |
| 18 | `def` | [canonicalEndpointCompletion](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/canonicalendpointcompletion.md) | 121 | `declaration-track:11adf2e15bdd6a865dbff9026e3dc5f64610775d7db1a6c306b493717b2a2cc8` |
| 19 | `theorem` | [prepended_prefix_safe](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/prepended-prefix-safe.md) | 126 | `result-track:362c735f9214748041979800426eb07de864bc0148a27a6564824b8d14901c1e` |
| 20 | `theorem` | [append_closes_preserves_prefix_safe](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/append-closes-preserves-prefix-safe.md) | 137 | `result-track:0ace7c48f7236987bf3bfdb8b3a2b20580f21000301b5b23d433a327a27eb897` |
| 21 | `theorem` | [completed_counts_equal](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/completed-counts-equal.md) | 156 | `result-track:521737bee1d99831b5987f6fbf47c22b258b8374782388849282b35d62ebab4d` |
| 22 | `theorem` | [canonicalEndpointCompletion_is_balanced](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/canonicalendpointcompletion-is-balanced.md) | 171 | `result-track:2429778ce06d9e0bd5f5c5b97ca2b29677011127210de13cbe050c1bbc483cf4` |
| 23 | `structure` | [StructuralEnergy](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/structuralenergy.md) | 202 | `declaration-track:356fe3e3b50c58786878842ec16c520b4afeb2e58c7890d199f8bf9b80ad2802` |
| 24 | `def` | [StructuralEnergy.hardVector](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/structuralenergy-hardvector.md) | 223 | `declaration-track:3633650ae3ff882273b7c4e88a2538d17f687535881f0b2819f60b96a6c7b966` |
| 25 | `def` | [StructuralEnergy.vector](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/structuralenergy-vector.md) | 231 | `declaration-track:0536deb3484bd6f4a04567139d238308077842439de1f789d4edcfc3bf3df364` |
| 26 | `def` | [StructuralEnergy.HardAdmissible](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/structuralenergy-hardadmissible.md) | 236 | `declaration-track:9692a7051f9d4e407bb6c0b24e153b7cc88350892f732306cacd0cec13fa60bc` |
| 27 | `def` | [StructuralEnergy.Less](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/structuralenergy-less.md) | 239 | `declaration-track:c9c533afae3c4e31efb7eb765ecd7b9e756eabee875c00b62c594c32f4e91116` |
| 28 | `inductive` | [AnnealDecision](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/annealdecision.md) | 243 | `declaration-track:aac3e61b8e240c0e42319ec89ef065b95fe5a747bc10a9ba5ddbcb9048a134ef` |
| 29 | `structure` | [AnnealStep](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/annealstep.md) | 251 | `declaration-track:7c56f8281c846fded56d35b6c804a4a4c3affe06f69d8e662d986823de834b8b` |
| 30 | `def` | [AnnealStep.measureBefore](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/annealstep-measurebefore.md) | 263 | `declaration-track:f710b7fac298cbf508cbd3cb7586defc19a19ca77c690eed8c6d806c57ecc71d` |
| 31 | `def` | [AnnealStep.measureAfter](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/annealstep-measureafter.md) | 266 | `declaration-track:19e75277d6f3ce0458d84d9c3542580ff81bffb5530df3e9b552704d044638cd` |
| 32 | `def` | [AnnealStep.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/annealstep-valid.md) | 269 | `declaration-track:550da8415708731ec903ada9d7a898a934e0c8fc284d287a14fa968becc3f8bd` |
| 33 | `theorem` | [acceptedAnnealStep_decreases_measure](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/acceptedannealstep-decreases-measure.md) | 279 | `result-track:ab70670031ae5ab2ceef134d6e5540e7f15d9888569b0c9351c817c934979528` |
| 34 | `def` | [annealTrace](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/annealtrace.md) | 285 | `declaration-track:32357d422c0a554b6b5008d74d46de091a67b2dab8cb3193ffb6bba110adf7f0` |
| 35 | `theorem` | [annealTrace_length_le_fuel](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/annealtrace-length-le-fuel.md) | 294 | `result-track:103cfcbf9b7ed871e43545dcf3da3f375050900e723030e5c5b410a2c7d14602` |
| 36 | `theorem` | [annealTrace_terminates](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/annealtrace-terminates.md) | 304 | `result-track:dc731f85833a0b5ad7a3049de82f9dd11018d746488b0739faa51558dafa1723` |
| 37 | `structure` | [EnumeratedAnnealMinimum](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/enumeratedannealminimum.md) | 311 | `declaration-track:1af03cbc68edafa6d4394c1046c6d1558918c92482598aefef03dd5bc69fdbba` |
| 38 | `def` | [exhaustiveAnnealResult](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/exhaustiveannealresult.md) | 318 | `declaration-track:d344f42d2fcc49c74d2279a68c368992be08aabb7f007dd4e42ba6e23aaf55cb` |
| 39 | `theorem` | [exhaustiveAnnealResult_minimal_on_enumerated_candidates](../../../../../ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/declarations/exhaustiveannealresult-minimal-on-enumerated-candidates.md) | 336 | `result-track:9b3b1506e4c7dfc9f5a08f408d783be339fdc66f6b458568a4998f6292f64684` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b6732761cd3e88cfba2ffddc34e24653df95b58823f63cf809d4301093f26a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variant69b00a065fc67a87f79bc1bba94bac5a6dc6c7a0dbedd76d5be8005c05819d56.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variant69b00a065fc67a87f79bc1bba94bac5a6dc6c7a0dbedd76d5be8005c05819d56.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
