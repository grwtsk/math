# Verification target: Covering Vitali Family Vitali Family Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b94a49cf20650d141ed91f9269580ff24d20340",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/VitaliFamily/Variant4b17408e6fb0619c1b1ad421f8394095a47cd125be598876bd21a4f3c6d799a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b94a49cf20650d141ed91f9269580ff24d20340`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/VitaliFamily/Variant4b17408e6fb0619c1b1ad421f8394095a47cd125be598876bd21a4f3c6d799a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/VitaliFamily/Variant4b17408e6fb0619c1b1ad421f8394095a47cd125be598876bd21a4f3c6d799a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.MeasureSpace` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [VitaliFamily](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/vitalifamily.md) | 68 | `declaration-track:181c7fe9f00ebf73aa661ea45ee8d78382e5f6c4fc8ecd619e020fc3a5044a0a` |
| 2 | `def` | [mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/mono.md) | 86 | `declaration-track:00dda94fde42cab8d6edf361644bda8fabebff9c55ad124de35e264e62811d22` |
| 3 | `def` | [FineSubfamilyOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/finesubfamilyon.md) | 100 | `declaration-track:1d289dfc2ca2e038fb9bbf065a3a8163fca9f0912ea29fbddcd8587ca2d850d9` |
| 4 | `theorem` | [exists_disjoint_covering_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/exists-disjoint-covering-ae.md) | 108 | `result-track:5b313151b7e0a21f7d14a1fbc19ffec43d51c12f6d3d2945020601f0e4dac353` |
| 5 | `def` | [index](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/index.md) | 119 | `declaration-track:2d75871fb0142d26b3dc3d05a7c60beb7c997360ec5a6a9f17e1589ee1d82dc1` |
| 6 | `def` | [covering](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/covering.md) | 127 | `declaration-track:052efc9cd34051985c4cfc2e3d4fa688d79fa9b63b01a7f6f18d5bc8b75f291b` |
| 7 | `theorem` | [index_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/index-subset.md) | 131 | `result-track:d0db96841351b4acbe2f13a7755ee130b8b7c078d3887ade92c28499686bd47e` |
| 8 | `theorem` | [covering_disjoint](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/covering-disjoint.md) | 135 | `result-track:8e0e653e402f264b0e9faa62746bbbce71e31ebc2c65d7b0d6ab385132d9a918` |
| 9 | `theorem` | [covering_disjoint_subtype](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/covering-disjoint-subtype.md) | 139 | `result-track:8122a36b3329f34ce5a7a56cf00542b87c5b7b7cde63208c655d4cded543bab3` |
| 10 | `theorem` | [covering_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/covering-mem.md) | 143 | `result-track:da3533e96bad9905003789aa483c2bb72047eeaa90f0a9c3de8e562894409194` |
| 11 | `theorem` | [covering_mem_family](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/covering-mem-family.md) | 147 | `result-track:5c45c9bdbfcb281f199715f395f7ae7d2affd5d2e14d66cbee3a0036d6bee68a` |
| 12 | `theorem` | [measure_diff_biUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/measure-diff-biunion.md) | 151 | `result-track:f889261fd64232feef24b8339810372513bed24bd09412f4b6add0c92cff47b2` |
| 13 | `theorem` | [index_countable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/index-countable.md) | 155 | `result-track:151eb5eedfd999aff9c02bf1c3205e6b63aaed63d8da256e1a4e19eeb302aced` |
| 14 | `theorem` | [measurableSet_u](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/measurableset-u.md) | 160 | `result-track:41582782ce6e788db3cadae54b1663f42d5f221719eedfbc97c150a5ae8237ae` |
| 15 | `theorem` | [measure_le_tsum_of_absolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/measure-le-tsum-of-absolutelycontinuous.md) | 165 | `result-track:29b5751d21dd8669faf3886c7690c25b4e9b321650dcaf68f8d2c5dbf58e5a70` |
| 16 | `theorem` | [measure_le_tsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/measure-le-tsum.md) | 177 | `result-track:a6e7833b4b62c90adb75e0db37d09eac1878c5b8814d5907345960ee2e6cac33` |
| 17 | `def` | [enlarge](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/enlarge.md) | 186 | `declaration-track:cbbc44a19d5c86e56f0e470bf5a8aa3aa69aadaffe1337c76a1957e272a3e205` |
| 18 | `def` | [filterAt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/filterat.md) | 218 | `declaration-track:b186d4dcb318269b1d37addb93e9e438cd5d72035b98c3b689f509d37019ce86` |
| 19 | `theorem` | [mem_filterAt_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/mem-filterat-iff.md) | 222 | `result-track:879544a7a9344540ea6f44adfc6e4ae86a0796a459e752500a78a4501f002d7e` |
| 20 | `instance` | [filterAt_neBot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/filterat-nebot.md) | 236 | `declaration-track:69e676357b15b34945b0057a96c83a236aabc40a5e82349e63a71ed47634e3b8` |
| 21 | `theorem` | [eventually_filterAt_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/eventually-filterat-iff.md) | 244 | `result-track:a4aefa0490edba542eb46028810bd9fe0a34930fec45a87c1eaa6287340526e1` |
| 22 | `theorem` | [eventually_filterAt_mem_sets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/eventually-filterat-mem-sets.md) | 249 | `result-track:2d944d2a8919500de1b20c3e5d1186e605efcdad6fc1ac8f57644212073da8f9` |
| 23 | `theorem` | [eventually_filterAt_subset_closedBall](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/eventually-filterat-subset-closedball.md) | 255 | `result-track:fccc0583c0d0eb09723d8f1719281b30603eaf9c167c24f93925c2cbf31c8b33` |
| 24 | `theorem` | [tendsto_filterAt_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/tendsto-filterat-iff.md) | 261 | `result-track:05282e252072505950373dd33b8bb091012b6ec7d2dc0794e819ec77edbad31b` |
| 25 | `theorem` | [eventually_filterAt_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/eventually-filterat-measurableset.md) | 271 | `result-track:36ea3706059378f75da0841114d0d2e7a0385bcb47c3b1ec679b3581bf7957c3` |
| 26 | `theorem` | [frequently_filterAt_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/frequently-filterat-iff.md) | 275 | `result-track:6657ba9e315d337865db2e6a640639b7e52a44ca0ffb3b764f69ed83f33f9fe1` |
| 27 | `theorem` | [eventually_filterAt_subset_of_nhds](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/eventually-filterat-subset-of-nhds.md) | 281 | `result-track:741e4979e7406e4964d941b8c01e2b43038b40eddb370e780bdd4d7a12f3673b` |
| 28 | `theorem` | [fineSubfamilyOn_of_frequently](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliFamilyVitaliFamilySourceEdition1.lean/declarations/finesubfamilyon-of-frequently.md) | 289 | `result-track:a7463ecfc014b2f55aeccf3dceba0e1fd4ae5272fd8da38b39cc3f77240ad749` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b9c97840ec61080e933b846abda91e49c70048383b278351c05182da50ce259 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/VitaliFamily/Variant4b17408e6fb0619c1b1ad421f8394095a47cd125be598876bd21a4f3c6d799a2.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/VitaliFamily/Variant4b17408e6fb0619c1b1ad421f8394095a47cd125be598876bd21a4f3c6d799a2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
