# Verification target: Stereographic Banach Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f38ac3fd07a23717ac5140ef2155b238e3eb9dbb",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/StereographicBanach/Variant2e7c54a827aeb6136bfabfa2e875bd0b8dfa28ac84cb769cb2f34b2c09badcde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f38ac3fd07a23717ac5140ef2155b238e3eb9dbb`.

Source path: `GRWTSK/Topology/MetricTopology/StereographicBanach/Variant2e7c54a827aeb6136bfabfa2e875bd0b8dfa28ac84cb769cb2f34b2c09badcde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/StereographicBanach/Variant2e7c54a827aeb6136bfabfa2e875bd0b8dfa28ac84cb769cb2f34b2c09badcde.lean.json)

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
| 1 | `structure` | [FiniteOnePointChart](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/finiteonepointchart.md) | 37 | `declaration-track:e66d012a90869e70933671d943636e068681febbd53b48398d06a0f22686d60c` |
| 2 | `def` | [ofValue](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/ofvalue.md) | 46 | `declaration-track:c2abda6ec3de48e16263065c75b4e60d213e82deaefffb9c98e5c6d87d4d87a7` |
| 3 | `def` | [value](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/value.md) | 50 | `declaration-track:01fe926ece2c1d1b32662011e80be2e8a59069271b2b9a1f3f31d09e927d6a22` |
| 4 | `theorem` | [coe_value](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/coe-value.md) | 54 | `result-track:80aa7d21c8a295ce7e251c5086cfdfabbf3f8550f57c50ae614d140e5afce279` |
| 5 | `theorem` | [value_ofValue](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/value-ofvalue.md) | 59 | `result-track:6bc56f4ecbc577cf9bb89b47ea30a542c93d2a638b135075671b604509cc17d0` |
| 6 | `theorem` | [point_ofValue](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/point-ofvalue.md) | 66 | `result-track:3aba7191b6d53da99588486d2e62a3a3a61ec3246dd1de7439e62d3d90a87f42` |
| 7 | `theorem` | [ext](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/ext.md) | 70 | `result-track:a53d948d7456eaa9872b89d483b962d2fdf684b11930a1473b6af6254b8c9b32` |
| 8 | `theorem` | [ofValue_value](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/ofvalue-value.md) | 77 | `result-track:bcc69ef87ac868aead30586eb35f20d40c84a8f9daff10d9de2d2d56a30ca9be` |
| 9 | `def` | [chartEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/chartequiv.md) | 83 | `declaration-track:a6b2b3ba5a4f22b5d1d0460c3d3e2d9e27e3c7e9a733c8c3ac7b768d87535019` |
| 10 | `theorem` | [chartEquiv_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/chartequiv-apply.md) | 90 | `result-track:152b4a749e9e829f70ef9f486b3e486e235ebc2364a43811fc6a9b70d55990ba` |
| 11 | `theorem` | [chartEquiv_symm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/chartequiv-symm-apply.md) | 94 | `result-track:619a68dc5772bafcb47c828d5c9a6085f5ac8354c3fdbfbf00941e86e2838316` |
| 12 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/instance-source-edition-4.md) | 100 | `declaration-track:9dd5d93e5ea2d87737b6e73bdc9c93a41c0d222927e3272c63974f66f2fd2f7c` |
| 13 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/instance-source-edition-2.md) | 103 | `declaration-track:95a86c4af901af3e55810a98f009cdc1231bbb0f8e26f3f49820ba730c031ab5` |
| 14 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/instance-source-edition-3.md) | 106 | `declaration-track:997789682955b44d0ca42c97721bdfd09a115432f54e760779d7f9acede5e8f2` |
| 15 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/instance.md) | 109 | `declaration-track:6dca1ca85f58d60101adab7fec7c5dc078279c7ef139596bfdff7026aafc6833` |
| 16 | `def` | [chartLinearIsometryEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/chartlinearisometryequiv.md) | 115 | `declaration-track:8296b8452b8c41d81876e6862aca47d8e2633c54a561aef69dc80c5e4b5af43a` |
| 17 | `theorem` | [chartLinearIsometryEquiv_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/chartlinearisometryequiv-apply.md) | 121 | `result-track:f2590243eb694bd044f15fd73e24612616647a14d28f8511eb552a44fe14425a` |
| 18 | `theorem` | [chartLinearIsometryEquiv_symm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/chartlinearisometryequiv-symm-apply.md) | 126 | `result-track:3ba88f5bc4fd72f07b23fd0f4debc5661092e43bb7f00fa429d3a05179c0e56c` |
| 19 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/instance-source-edition-5.md) | 131 | `declaration-track:ec3837fb2e41a8d4e1c1b4d5b3216cc2ba76ddde81ebbc70e562eb4417df3517` |
| 20 | `theorem` | [completeSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/completespace.md) | 137 | `result-track:46b53eae193cfa4ad9e9b326468af66e290ed5ae59675d5e357caa06fbc9c7f9` |
| 21 | `theorem` | [finiteOnePointChart_isComplete_univ](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/finiteonepointchart-iscomplete-univ.md) | 145 | `result-track:a8c82a00ca1e1504c9da42d5309dbf74696bd643f11f3606a41a18a42e440616` |
| 22 | `theorem` | [value_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/value-zero.md) | 151 | `result-track:c08fc6594385c77b24ff2ac7f2f0f3cdf074ca741c72f0752188e056ed29a48d` |
| 23 | `theorem` | [zero_point](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/zero-point.md) | 156 | `result-track:b36d46f7c7c5cc394f551c6134bae36e6268246b40143b29a09c3fb59def83e2` |
| 24 | `theorem` | [value_add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/value-add.md) | 165 | `result-track:b0e35ca1bcd441dffc12cac90b9722be135051e60a3879df8ada9f34a722e8e0` |
| 25 | `theorem` | [value_neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/value-neg.md) | 170 | `result-track:9e6f728a1901d9b5b7dbfaf3a8fb98ac12fb75c83a5902f5afc87e430e4a7ae9` |
| 26 | `theorem` | [value_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/value-sub.md) | 175 | `result-track:5897b001d13414679836906b563effe7e664cecfcd5abcae26f7893f477a338f` |
| 27 | `theorem` | [value_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/value-smul.md) | 180 | `result-track:9cbaf4370a2a8bee474934513987744497e94e97a0df5025816918c81231553c` |
| 28 | `theorem` | [norm_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/norm-eq.md) | 185 | `result-track:14952ee9ec2fb876c87758d6fbd2176bcd73aa45132ac0180cfe3146be553343` |
| 29 | `theorem` | [dist_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/dist-eq.md) | 191 | `result-track:ffbcaee0439ec04f9aceb3eb912f03c77544acd22b1a5a2e6912598731b18aa6` |
| 30 | `abbrev` | [FiniteRiemannChart](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/finiteriemannchart.md) | 203 | `declaration-track:2c4a0ceab6b7acd9c2e68378deaf4e1745d1364f5acbc8807d0a25e156f42ea3` |
| 31 | `def` | [riemannChartLinearIsometryEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/riemannchartlinearisometryequiv.md) | 206 | `declaration-track:050b3e0f08d4dabead9c0093ceb3cd102499dd0969fd1dc1363ac3c3b02fc4db` |
| 32 | `theorem` | [riemannFiniteChart_isComplete_univ](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/riemannfinitechart-iscomplete-univ.md) | 211 | `result-track:d10f79319d8bfdd523779d077d593cd60663844c18039fb3da594e222c2b5612` |
| 33 | `theorem` | [riemannChart_zero_point](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/riemannchart-zero-point.md) | 216 | `result-track:cf54334fdb0adf897bb0c72f8781c4911ee7e2ff6bbc69217fc7ddfeb7f84c4a` |
| 34 | `theorem` | [riemannChart_zero_maps_to_south](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/StereographicBanachPublic.lean/declarations/riemannchart-zero-maps-to-south.md) | 223 | `result-track:5546d8feed9f08dee67543d2245e67678f4736b776f7d2b552e0e1e47acf196c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b1948681a6c7ce64e0802f9861fe5ca43362d4f81dba870ab6d8b36ff744981 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/StereographicBanach/Variant2e7c54a827aeb6136bfabfa2e875bd0b8dfa28ac84cb769cb2f34b2c09badcde.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/StereographicBanach/Variant2e7c54a827aeb6136bfabfa2e875bd0b8dfa28ac84cb769cb2f34b2c09badcde.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
