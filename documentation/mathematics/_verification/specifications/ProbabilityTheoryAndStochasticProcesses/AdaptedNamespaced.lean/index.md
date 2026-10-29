# Verification target: Adapted Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5742ca511fdf56398d41b15714e476b1e454d9e8",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Adapted/Variant91d7bbd56a618257bcc5ca28946ae46aedbb59bc787771dbdfa545dcdcdf44a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5742ca511fdf56398d41b15714e476b1e454d9e8`.

Source path: `GRWTSK/Topology/GeneralTopology/Adapted/Variant91d7bbd56a618257bcc5ca28946ae46aedbb59bc787771dbdfa545dcdcdf44a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Adapted/Variant91d7bbd56a618257bcc5ca28946ae46aedbb59bc787771dbdfa545dcdcdf44a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Process.Filtration` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Discrete` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Adapted](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/declarations/adapted.md) | 55 | `declaration-track:f536e6b6c80c178bae67186ce005849eeb36c686c41b816d63ab7038bdbd94a6` |
| 2 | `theorem` | [mul](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/declarations/mul.md) | 61 | `result-track:36f9d239a6952068c329f2e786740049d4993529f2dbc9877f2c2cb0dfcc9aee` |
| 3 | `theorem` | [div](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/declarations/div-source-edition-2.md) | 65 | `result-track:ee9a4852361fa13a88d53f6e6cb6b633c6502a7e0060667cd3e407038a50ee7f` |
| 4 | `theorem` | [inv](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/declarations/inv-source-edition-2.md) | 69 | `result-track:ed50605da9f29b2327e668614e4427bea50d293e5cf14c70dab04380d8f929b4` |
| 5 | `theorem` | [smul](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/declarations/smul.md) | 72 | `result-track:c6f37044d70eb021b7445226f0813886d0e2b312aba66d0b06ff70b04da24cfc` |
| 6 | `theorem` | [stronglyMeasurable](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/declarations/stronglymeasurable.md) | 75 | `result-track:0cde371f103cc39e68f07600535fc78b29aa37c51d27ea947434586143528529` |
| 7 | `theorem` | [stronglyMeasurable_le](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/declarations/stronglymeasurable-le.md) | 78 | `result-track:a409f7baf580648128a80bfaeb050bd525923474995fdacc95d28d9af3fa8381` |
| 8 | `theorem` | [adapted_const](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/declarations/adapted-const.md) | 83 | `result-track:ef25d4e912d357535fa3cc9403bf6f34cd0ebb0f871a14595a61fadba25c7b9a` |
| 9 | `theorem` | [adapted_zero](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/declarations/adapted-zero.md) | 87 | `result-track:5cce7a7bb80242ea22c3343a45f87fea4697475c7b786ab34b5286aa9f19e919` |
| 10 | `theorem` | [Filtration.adapted_natural](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/declarations/filtration-adapted-natural.md) | 90 | `result-track:043d174e19ca58527acb1c4d83a3abcb9174792fb865356ec346d4695117f87f` |
| 11 | `def` | [ProgMeasurable](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/declarations/progmeasurable.md) | 104 | `declaration-track:b0448510bf436304f3280af96c0af8fa44eb9f2f3014abd75924c3fee3f6b4ec` |
| 12 | `theorem` | [progMeasurable_const](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/declarations/progmeasurable-const.md) | 107 | `result-track:c06740226193e6e33979dc2c4221f91ef200adb446f7b4277a0a0a610b58907b` |
| 13 | `theorem` | [adapted](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/declarations/adapted-source-edition-2.md) | 115 | `result-track:f90bad6163e068423825aacad1832c7aa5811e77c29cb0abc8be99cc04097fcd` |
| 14 | `theorem` | [comp](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/declarations/comp.md) | 122 | `result-track:c1ec773bbb6afb254a87b10f692648f7ba44f26b26da45888cb271bfbdcad3a0` |
| 15 | `theorem` | [mul](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/declarations/mul-source-edition-2.md) | 135 | `result-track:98b7b537ca0f9675c0d7e8451b98c48dd9528b088f75f15cf40f1cba9c6796cc` |
| 16 | `theorem` | [finset_prod'](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/declarations/finset-prod-source-edition-2.md) | 140 | `result-track:e99844b06e7b6e902bf5f4b3fa10724dd166150d0054be22cc18d9daa486729e` |
| 17 | `theorem` | [finset_prod](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/declarations/finset-prod.md) | 146 | `result-track:8cd01ac0e43f7f906bbaf496c66a185b400349910e3ccd841267180f05688095` |
| 18 | `theorem` | [inv](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/declarations/inv.md) | 152 | `result-track:6c4b6b07ef1d29047fd7abef904d67697e1013a91d81ca966cd9c45ac7ca8812` |
| 19 | `theorem` | [div](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/declarations/div.md) | 156 | `result-track:cd63cae3d09d4e5304338c00c21c2ae247e4510329d8c545aa0f4321e7943570` |
| 20 | `theorem` | [progMeasurable_of_tendsto'](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/declarations/progmeasurable-of-tendsto-source-edition-2.md) | 164 | `result-track:b0c36c1be2ff9f4549b201a873f33f4598dde37cda2f6a83bafb2eb7036fc9c1` |
| 21 | `theorem` | [progMeasurable_of_tendsto](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/declarations/progmeasurable-of-tendsto.md) | 176 | `result-track:7659cb3f8553011a3768ab9fe569de1baa04a4804304b47c88050d7d8aa904e9` |
| 22 | `theorem` | [Adapted.progMeasurable_of_continuous](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/declarations/adapted-progmeasurable-of-continuous.md) | 181 | `result-track:18d0aab46cd96fab7616614d2e49729740116959cc3a4187caf161c58b2d7c48` |
| 23 | `theorem` | [Adapted.progMeasurable_of_discrete](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/declarations/adapted-progmeasurable-of-discrete.md) | 191 | `result-track:8479d8d1b69bbaf34321747c91698b3c263219c45e96a4360531ccea7e2d02d1` |
| 24 | `theorem` | [Predictable.adapted](../../../../ProbabilityTheoryAndStochasticProcesses/AdaptedNamespaced.lean/declarations/predictable-adapted.md) | 197 | `result-track:3db81182108d41edfca80833e1ad5c949d6c3be2d2b1ea1af3b2a78f4a6fad3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ed318a4bfbe1736c0737af622db49b88c5e593c28b45d3db818b320b4081a0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Adapted/Variant91d7bbd56a618257bcc5ca28946ae46aedbb59bc787771dbdfa545dcdcdf44a2.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Adapted/Variant91d7bbd56a618257bcc5ca28946ae46aedbb59bc787771dbdfa545dcdcdf44a2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
