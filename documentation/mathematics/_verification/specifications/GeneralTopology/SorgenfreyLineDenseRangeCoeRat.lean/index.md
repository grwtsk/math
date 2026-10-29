# Verification target: Sorgenfrey Line Dense Range Coe Rat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ad548677fe9a9d4428e01abb4cc497473da230f",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SorgenfreyLine/Variant2f45839ffa87df43833f989fcc3ebe089a6e82b886b891d04e386d6714c8e09e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/index.md) · [Full source](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ad548677fe9a9d4428e01abb4cc497473da230f`.

Source path: `GRWTSK/Topology/GeneralTopology/SorgenfreyLine/Variant2f45839ffa87df43833f989fcc3ebe089a6e82b886b891d04e386d6714c8e09e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SorgenfreyLine/Variant2f45839ffa87df43833f989fcc3ebe089a6e82b886b891d04e386d6714c8e09e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.Irrational` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Archimedean` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Paracompact` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Metrizable` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Paracompact` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.Monotone` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.NotNormal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SorgenfreyLine](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/sorgenfreyline.md) | 47 | `declaration-track:39788764f723add9330ab7087381eb487955273a7c849e4fefedc69b72a569da` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/instance-source-edition-6.md) | 54 | `declaration-track:a6c5322987a8bc65586154303bac28a801e4095969c95a9ce9d11f96c1192913` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/instance-source-edition-8.md) | 57 | `declaration-track:e6acb01db8ba7503e7afc31b4326b4eaeaaa980579804ccec31ba71f6c669c10` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/instance-source-edition-5.md) | 59 | `declaration-track:95c93e118b9761f00f304dd90e0c50479efa6011fb88644ec409f1b7547235ca` |
| 5 | `def` | [toReal](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/toreal.md) | 64 | `declaration-track:a3a8d96b3d613e70be98c38703bdacff312c2df6717a274c71935467235fc697` |
| 6 | `instance` | [(anonymous)](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/instance-source-edition-3.md) | 68 | `declaration-track:825dfe1c9f59c6045d3d68435d9a57ad8793314b9d3dca97c2bfd0d7884d3fa8` |
| 7 | `theorem` | [isOpen_Ico](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/isopen-ico.md) | 71 | `result-track:f95148f50e98343c5bcf9fd738ebcbf70238a352392a3bd771daf1ea37c0805d` |
| 8 | `theorem` | [isOpen_Ici](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/isopen-ici.md) | 75 | `result-track:7110b09b0db50ad1ef406898af70c172ce209afdda8589edcdc273baab65edf7` |
| 9 | `theorem` | [nhds_basis_Ico](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/nhds-basis-ico.md) | 79 | `result-track:5e71f47887dda26630c2574833147190854a073f9963a19afdfe37c5fc5beb13` |
| 10 | `theorem` | [nhds_basis_Ico_rat](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/nhds-basis-ico-rat.md) | 94 | `result-track:9a7ef83e242e0899ee464bf8b320850ac13cb6346a705f2e8471655101a2f246` |
| 11 | `theorem` | [nhds_basis_Ico_inv_pnat](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/nhds-basis-ico-inv-pnat.md) | 102 | `result-track:e5afe2b94c499468bd6f922006e5f7d48da97217dec8b0ecce88139cea0d7634` |
| 12 | `theorem` | [nhds_countable_basis_Ico_inv_pnat](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/nhds-countable-basis-ico-inv-pnat.md) | 112 | `result-track:33af9728e544c8ba180826ddb3c00708785571d80fc1f22581019c2e9037eece` |
| 13 | `theorem` | [nhds_antitone_basis_Ico_inv_pnat](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/nhds-antitone-basis-ico-inv-pnat.md) | 117 | `result-track:9f5b57509193be338be1600476abc62267fabdca9d3bf1e40a821a35d1af6a69` |
| 14 | `theorem` | [isOpen_iff](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/isopen-iff.md) | 124 | `result-track:9b12f49183fa7add38cc90669aa65ba4b065a87e3dc2f1c04cf2d4b6bba7e76a` |
| 15 | `theorem` | [isClosed_iff](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/isclosed-iff.md) | 128 | `result-track:d1158f8322dcdadf59592270e44d172ec86e8bfdf23e858b939336c6883829bd` |
| 16 | `theorem` | [exists_Ico_disjoint_closed](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/exists-ico-disjoint-closed.md) | 132 | `result-track:733afcdca4a2f5835990dee0b45eeecfb41a78744a4a11dec713301f7d558ada` |
| 17 | `theorem` | [map_toReal_nhds](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/map-toreal-nhds.md) | 138 | `result-track:142435dd05a007d07a9f650db4b669d23bc37e6941390e6e8b6fa5450afba6fe` |
| 18 | `theorem` | [nhds_eq_map](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/nhds-eq-map.md) | 143 | `result-track:101ca533aabc678ae106bdb17695f47e76818e3ba98b6fe55f43d8cbc00cd62b` |
| 19 | `theorem` | [nhds_eq_comap](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/nhds-eq-comap.md) | 147 | `result-track:02d44a19b464e8984344c23432271173a97bb17999a16c8d8341870b53743298` |
| 20 | `theorem` | [continuous_toReal](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/continuous-toreal.md) | 152 | `result-track:4821370bcd2923c54dc62601b0b3b1db61adf56d5099032d0fc33ff7ac1873fd` |
| 21 | `instance` | [(anonymous)](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/instance-source-edition-11.md) | 158 | `declaration-track:f260b7410d985b4b112cafcbfdb9d29dbfdcd1c37a9eb732330c515c18417a69` |
| 22 | `instance` | [(anonymous)](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/instance-source-edition-4.md) | 161 | `declaration-track:885a8b4e336ad48a5e958d2e9a7ea0165763d089bfe8ea85ba293fbb35907f00` |
| 23 | `theorem` | [isClopen_Ici](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/isclopen-ici.md) | 168 | `result-track:ba0bceb712dd0b3e48464e3114c87ceedd92018fe093bd67250d10e369b3ef39` |
| 24 | `theorem` | [isClopen_Iio](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/isclopen-iio.md) | 172 | `result-track:ca024bd4d569a0e7e93da425ba0397d651bd1bb3d61a66c43083237f2a94e184` |
| 25 | `theorem` | [isClopen_Ico](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/isclopen-ico.md) | 176 | `result-track:cf727b9bca68993a5a918549ba3beba81d782fe8925b2b27d6b7c38bfa7f390e` |
| 26 | `instance` | [(anonymous)](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/instance.md) | 180 | `declaration-track:2541bf22b9e9971f6744e4f8b2a91ebd4a3bb0fdfab1a3a9835177f162cf2c8b` |
| 27 | `instance` | [(anonymous)](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/instance-source-edition-9.md) | 185 | `declaration-track:e8fb5ab554013741770d6ab362d7efe74d61a71955839dcfe7a201d403449bb2` |
| 28 | `instance` | [(anonymous)](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/instance-source-edition-7.md) | 189 | `declaration-track:beae574273081e340cffd38bbb5237f3fd946c197b92834953c0d94d0938d7e4` |
| 29 | `theorem` | [denseRange_coe_rat](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/denserange-coe-rat.md) | 217 | `result-track:673f2c32d10cee1df3c2a4b26ada9e8693218af08eb54261ad843845c7d115bf` |
| 30 | `instance` | [(anonymous)](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/instance-source-edition-2.md) | 225 | `declaration-track:2623b77a0998c7a92146cccb38a02a6015b49159429b94866eb946bd9859a49e` |
| 31 | `theorem` | [isClosed_antidiagonal](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/isclosed-antidiagonal.md) | 228 | `result-track:9bd6a84703e7605ac178916ef88f579c7ba9cf30aa17d213ddee8c60708bcada` |
| 32 | `theorem` | [isClopen_Ici_prod](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/isclopen-ici-prod.md) | 232 | `result-track:539bb2e0f78d8892b2f7a3c5accad9c075132774c6650c0ffc39b6ef9ffce8e2` |
| 33 | `theorem` | [cardinal_antidiagonal](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/cardinal-antidiagonal.md) | 236 | `result-track:2cea948fabaecae249f1210d1f1ca1dd3f1ea040d9a9a5114b6a0f7b8484a3c2` |
| 34 | `theorem` | [isClosed_of_subset_antidiagonal](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/isclosed-of-subset-antidiagonal.md) | 243 | `result-track:7926182d086c423cc17395b00b12ae6ed69107c9a2473779f8748b0649da80dc` |
| 35 | `instance` | [(anonymous)](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/instance-source-edition-10.md) | 260 | `declaration-track:f1fef5f2c57fb78534a5176485b38e2ef8eedf131bf1ada427e054fb3950282f` |
| 36 | `theorem` | [not_normalSpace_prod](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/not-normalspace-prod.md) | 266 | `result-track:69ca11ce008b99572c17914e179ae5b4880a909ef8db60b0936bae772cac3452` |
| 37 | `theorem` | [isSeparable_antidiagonal](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/isseparable-antidiagonal.md) | 271 | `result-track:4ce037700bdfabfc6bd38abf25a99a154e936cd33470bfe6cef1011f6977752b` |
| 38 | `theorem` | [not_separableSpace_antidiagonal](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/not-separablespace-antidiagonal.md) | 275 | `result-track:beea86cd8856c140770fd84faba864b0fd118087e6e36d44fa2c4a890df8bab2` |
| 39 | `theorem` | [nhds_prod_antitone_basis_inv_pnat](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/nhds-prod-antitone-basis-inv-pnat.md) | 280 | `result-track:00f4b58e9693ae5a5a847db82d7068e8a2621be9decfc495880d615f33342100` |
| 40 | `theorem` | [not_separatedNhds_rat_irrational_antidiag](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/not-separatednhds-rat-irrational-antidiag.md) | 288 | `result-track:c9260801a8108d4084056ed69e793e6a7370dfbf38bf2375af9a35d5ef37c288` |
| 41 | `theorem` | [not_metrizableSpace](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/not-metrizablespace.md) | 342 | `result-track:f00d3e205fc16999f1287fc65e73bcdcf1d26ffbb89abb83d97efba332e0cf75` |
| 42 | `theorem` | [not_secondCountableTopology](../../../../GeneralTopology/SorgenfreyLineDenseRangeCoeRat.lean/declarations/not-secondcountabletopology.md) | 349 | `result-track:32092800a43b1d8b3cb5969775ebbdbd5eae75beedf576c14a76f9d100e95ea1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=20253c9514a0bf5f23d002e65bd19d1ba86f3a5d3ddf153b6d75b4e0be7ebb25 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SorgenfreyLine/Variant2f45839ffa87df43833f989fcc3ebe089a6e82b886b891d04e386d6714c8e09e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/SorgenfreyLine/Variant2f45839ffa87df43833f989fcc3ebe089a6e82b886b891d04e386d6714c8e09e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
