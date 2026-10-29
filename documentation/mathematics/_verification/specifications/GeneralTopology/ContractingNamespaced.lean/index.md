# Verification target: Contracting Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15e3dcdc8772e2b8a309e897b0c7c56a1d3ebd07",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Contracting/Variant99a20829da4d361f590c40c3ad8f2cc17cf7e020df4cf8087bf8f534a5110086.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ContractingNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/ContractingNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15e3dcdc8772e2b8a309e897b0c7c56a1d3ebd07`.

Source path: `GRWTSK/Topology/MetricTopology/Contracting/Variant99a20829da4d361f590c40c3ad8f2cc17cf7e020df4cf8087bf8f534a5110086.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Contracting/Variant99a20829da4d361f590c40c3ad8f2cc17cf7e020df4cf8087bf8f534a5110086.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.FixedPoints.Topology` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ContractingWith](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/contractingwith.md) | 44 | `declaration-track:186dc17058a82bdb04b999f6a6c55f2da686448dd12107c77f8c1632cf520bf7` |
| 2 | `theorem` | [toLipschitzWith](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/tolipschitzwith.md) | 53 | `result-track:522f9246dc12b7770856baaf62c686ee8b97747505ef4812b875a8dc132a8a19` |
| 3 | `theorem` | [one_sub_K_pos'](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/one-sub-k-pos.md) | 55 | `result-track:0debebe5a239801f967984d420b8d66bbfcb9ef562cc419047c9518779c823af` |
| 4 | `theorem` | [one_sub_K_ne_zero](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/one-sub-k-ne-zero.md) | 57 | `result-track:44e65b2bfe78d604155eba701790ddf01b1999e2054858886524cbd1efe2d924` |
| 5 | `theorem` | [one_sub_K_ne_top](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/one-sub-k-ne-top.md) | 60 | `result-track:8baf35715de8f5cf0fd5735c44c6607085106e03a5cfd34d251ca4c9578f109e` |
| 6 | `theorem` | [edist_inequality](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/edist-inequality.md) | 64 | `result-track:a5eb5de89de0d5b2e8e1d7af94a998e412e56ce3118ab67720ee7d88ea9fbce8` |
| 7 | `theorem` | [edist_le_of_fixedPoint](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/edist-le-of-fixedpoint.md) | 74 | `result-track:eb7a9cd4d8e90abb5b03039c92e2263900d36ae2f08412ebdc8197fa78d0acbe` |
| 8 | `theorem` | [eq_or_edist_eq_top_of_fixedPoints](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/eq-or-edist-eq-top-of-fixedpoints.md) | 78 | `result-track:b45e5b23bbb7aba5dd8be7b2c0a5b7f54a16cb6a9a930609e4be380fa6e7088a` |
| 9 | `theorem` | [restrict](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/restrict.md) | 85 | `result-track:774471750a35db5361167ffdd7c723555c929fac5618717c65ef62524df8fdaa` |
| 10 | `theorem` | [exists_fixedPoint](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/exists-fixedpoint-source-edition-2.md) | 98 | `result-track:b9f429a2e660bb475bc644d43f39e9f0e3abb06508ce457092aa4fcdb774b116` |
| 11 | `def` | [efixedPoint](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/efixedpoint.md) | 114 | `declaration-track:6a12aa8ba419d73c50a8083b7d55ed0b9c6eefb27d46c41aecc33ebb3d3bcbbe` |
| 12 | `theorem` | [efixedPoint_isFixedPt](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/efixedpoint-isfixedpt-source-edition-2.md) | 117 | `result-track:8272475988cfe80b3eeb4e51873112690121c51f444325d6fd233fcb6da27daa` |
| 13 | `theorem` | [tendsto_iterate_efixedPoint](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/tendsto-iterate-efixedpoint.md) | 121 | `result-track:1c4060b5306a5ed0b37272dcec77390f42e77a9e7ed5c024d1d281d2a9510baf` |
| 14 | `theorem` | [apriori_edist_iterate_efixedPoint_le](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/apriori-edist-iterate-efixedpoint-le-source-edition-2.md) | 125 | `result-track:63775332e0556bf235fab8cb1f137e63469c9faef527e97d11c76f5a2288d80a` |
| 15 | `theorem` | [edist_efixedPoint_le](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/edist-efixedpoint-le-source-edition-2.md) | 130 | `result-track:c4798da8f22876554cd47142fac1dfc8bb5be2d5c01b7115d4c7ffbe8d8a25dc` |
| 16 | `theorem` | [edist_efixedPoint_lt_top](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/edist-efixedpoint-lt-top.md) | 135 | `result-track:3c1474fb3d6ef076f780dbfc142c68cb664432e33754735364b70364be528080` |
| 17 | `theorem` | [efixedPoint_eq_of_edist_lt_top](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/efixedpoint-eq-of-edist-lt-top-source-edition-2.md) | 140 | `result-track:5afac8ffb50a8766f4258e8f924f480173c1f849dbcf28142c7c86ad27c93e86` |
| 18 | `theorem` | [exists_fixedPoint'](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/exists-fixedpoint.md) | 155 | `result-track:04d8f7256ebe4c76abcab04cb968419f3779b107fa51ba188d46300b681ab776` |
| 19 | `def` | [efixedPoint'](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/efixedpoint-source-edition-2.md) | 173 | `declaration-track:ba7e9b7a91fe88495a4f0e2ee2777129aa8b951ccbdb4bf3716c981bd1b62705` |
| 20 | `theorem` | [efixedPoint_mem'](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/efixedpoint-mem.md) | 178 | `result-track:91d454fbd67f2b3a8adc577a7beb715fd380e583190672f03943c34ba00e217c` |
| 21 | `theorem` | [efixedPoint_isFixedPt'](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/efixedpoint-isfixedpt.md) | 183 | `result-track:0bf35f51d8239508b1cc7aafe1f242398f3e78923b9cebd46d4c8da8e732b595` |
| 22 | `theorem` | [tendsto_iterate_efixedPoint'](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/tendsto-iterate-efixedpoint-source-edition-2.md) | 188 | `result-track:820e362a2bea14b3ece015e21878d66ff0597e2bc658bf3ef8b6cd6c9e111404` |
| 23 | `theorem` | [apriori_edist_iterate_efixedPoint_le'](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/apriori-edist-iterate-efixedpoint-le.md) | 193 | `result-track:461b9f4c4ff715f02a056bdb58149ae11bdcb7ba6fa8a5ca641ce87217c94116` |
| 24 | `theorem` | [edist_efixedPoint_le'](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/edist-efixedpoint-le.md) | 200 | `result-track:2ad9653508e31782ca64f2015ea587b144661acb451d05249f19f03734633a14` |
| 25 | `theorem` | [edist_efixedPoint_lt_top'](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/edist-efixedpoint-lt-top-source-edition-2.md) | 206 | `result-track:e427508b735ac6f1b73504f278f54934cc0e8d92ce1938fb47c52a30755e2d27` |
| 26 | `theorem` | [efixedPoint_eq_of_edist_lt_top'](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/efixedpoint-eq-of-edist-lt-top.md) | 218 | `result-track:011c3c42882e86679172e00f3607575a5a7c860e66dad1c8e42dc72b67390b30` |
| 27 | `theorem` | [one_sub_K_pos](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/one-sub-k-pos-source-edition-2.md) | 240 | `result-track:c5527d8f1e7c2c271be056b85cfc02b300ca44b98fc46759d20e2fdefffcc7ba` |
| 28 | `theorem` | [dist_le_mul](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/dist-le-mul.md) | 247 | `result-track:1cfdc47c72481029a05afd36062471a32f3d86e79fe2dc5ea3635b652e2b68e1` |
| 29 | `theorem` | [dist_inequality](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/dist-inequality.md) | 250 | `result-track:97633e591c112cf839869fb3a9bc1234387c9d4eaf19c6903ba0cd918415cc9c` |
| 30 | `theorem` | [dist_le_of_fixedPoint](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/dist-le-of-fixedpoint.md) | 257 | `result-track:11ec45727f25a8ade3c4bb5f1e4f0c1cf57ba54c51db26c43fd4bc1b817ddc80` |
| 31 | `theorem` | [fixedPoint_unique'](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/fixedpoint-unique-source-edition-2.md) | 260 | `result-track:f3496ea7417d514a8177da7433ea932c45c897e020e278c0a8766961a5728b4f` |
| 32 | `theorem` | [dist_fixedPoint_fixedPoint_of_dist_le'](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/dist-fixedpoint-fixedpoint-of-dist-le.md) | 265 | `result-track:fe2c0b0b5ed0102067db8693805f9a2ff4d09cfe9785d775a601b1cfb068a622` |
| 33 | `def` | [fixedPoint](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/fixedpoint.md) | 277 | `declaration-track:a48fd86c154060ada74f0ea206606517ef2ee5ed8753515d7d59dba89fa86ee7` |
| 34 | `theorem` | [fixedPoint_isFixedPt](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/fixedpoint-isfixedpt.md) | 281 | `result-track:7a1bd0c416cc60e040840eaa20d59c0e475f3a5ac258ec27adc15332bc296484` |
| 35 | `theorem` | [fixedPoint_unique](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/fixedpoint-unique.md) | 284 | `result-track:7a169069ce3e0dac0adb794e6ac2db28fe0fd083740f9aa126530bfb41a6a66f` |
| 36 | `theorem` | [dist_fixedPoint_le](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/dist-fixedpoint-le.md) | 287 | `result-track:2c28365d3997900107ff4950d0516973945e041201767197c69f2850b11dcd13` |
| 37 | `theorem` | [aposteriori_dist_iterate_fixedPoint_le](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/aposteriori-dist-iterate-fixedpoint-le.md) | 291 | `result-track:bebb394b0fd0c23dbecdd1dd0d7ac057c7cb4af922fc3936701766a229a0ad68` |
| 38 | `theorem` | [apriori_dist_iterate_fixedPoint_le](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/apriori-dist-iterate-fixedpoint-le.md) | 296 | `result-track:d304367067c7a7bfe03a5c58cec2ffae2ce857e628a04e1094107dd573765b4d` |
| 39 | `theorem` | [tendsto_iterate_fixedPoint](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/tendsto-iterate-fixedpoint.md) | 303 | `result-track:e3567b9f7bbea70dbbc341cfa2821cb2d6abcdf1cfdd942c1224427fef8c5738` |
| 40 | `theorem` | [fixedPoint_lipschitz_in_map](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/fixedpoint-lipschitz-in-map.md) | 309 | `result-track:485d47183b0e1c799768f9b56d90d94874b86ce9032608a77924d2e150eb92bd` |
| 41 | `theorem` | [isFixedPt_fixedPoint_iterate](../../../../GeneralTopology/ContractingNamespaced.lean/declarations/isfixedpt-fixedpoint-iterate.md) | 319 | `result-track:6429ebcb360bfa524d58a8a807789b1f28336a8d712d719e31327c1e16114efb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9cf05ce229706eef8e9bfca83fa086e3efedf330243112e73871389dcfbb2c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Contracting/Variant99a20829da4d361f590c40c3ad8f2cc17cf7e020df4cf8087bf8f534a5110086.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Contracting/Variant99a20829da4d361f590c40c3ad8f2cc17cf7e020df4cf8087bf8f534a5110086.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
