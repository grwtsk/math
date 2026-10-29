# Verification target: Borel Space Metric Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "636e5a64f9ad57c0ef173e2d962cb39b61aa8a58",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Metric/Variant92bef4acc76dbfb3953cb019c9eeb2e4d615f67e63ad74621f9b38480d7060f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `636e5a64f9ad57c0ef173e2d962cb39b61aa8a58`.

Source path: `GRWTSK/Topology/MetricTopology/Metric/Variant92bef4acc76dbfb3953cb019c9eeb2e4d615f67e63ad74621f9b38480d7060f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Metric/Variant92bef4acc76dbfb3953cb019c9eeb2e4d615f67e63ad74621f9b38480d7060f9.lean.json)

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
| 1 | `theorem` | [measurableSet_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/measurableset-ball.md) | 46 | `result-track:9a53568c47c9ac502181efb53709fa5bc9c74b839ed2890717cf2d68550f4224` |
| 2 | `theorem` | [measurableSet_closedBall](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/measurableset-closedball.md) | 50 | `result-track:8d856edd0f9963891a4895bf8d4ee424c190cf3d248d3264e98bbb21298f2eb7` |
| 3 | `theorem` | [measurable_infDist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/measurable-infdist-source-edition-2.md) | 53 | `result-track:4dff2093dcf830a3db3b906ddef8299b37b001c4f2529c6d12f68964ac3b2513` |
| 4 | `theorem` | [Measurable.infDist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/measurable-infdist.md) | 57 | `result-track:0bd1b1d44bec9551fb62f56948aa8afa9146da93779cfd988355a698172ed901` |
| 5 | `theorem` | [measurable_infNndist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/measurable-infnndist.md) | 61 | `result-track:0dd7c4da02a836c9175e258d7f7347c0551b8aaa89f8a511631dcac75b32d989` |
| 6 | `theorem` | [Measurable.infNndist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/measurable-infnndist-source-edition-2.md) | 65 | `result-track:7e4ed2890afe2c945238ac196ebc9b2bea681e3ed4148e61d07fc8e333684157` |
| 7 | `theorem` | [measurable_dist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/measurable-dist.md) | 73 | `result-track:8197c1e737567c46c883ef5000bd1e4980aa01ef5055bf6f2337af2d3da2441a` |
| 8 | `theorem` | [Measurable.dist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/measurable-dist-source-edition-2.md) | 77 | `result-track:de484e53e8e73916987027afe666d081602024e9e15f5b1d0d1a1ffb3bb202be` |
| 9 | `lemma` | [AEMeasurable.dist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/aemeasurable-dist.md) | 82 | `result-track:3436117143b3ffb661a818664b855b55df48a0b33eee60dc723d46c0b62b3e85` |
| 10 | `theorem` | [measurable_nndist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/measurable-nndist-source-edition-2.md) | 87 | `result-track:8828a9b7e11729702edfe83e497395fc326b13f240c1bdfb407963362de87011` |
| 11 | `theorem` | [Measurable.nndist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/measurable-nndist.md) | 91 | `result-track:3b9c0372500da72519cda305c7137429d8574b620a8eea2bc96cc9755c921f1c` |
| 12 | `theorem` | [measurableSet_eball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/measurableset-eball.md) | 107 | `result-track:de3d890a72340a1661ad21ef5027d0411d3404169669bda57cd9921cf1253279` |
| 13 | `theorem` | [measurable_edist_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/measurable-edist-right.md) | 111 | `result-track:d554132edd170ad9e3f6bbaeb2946b0b490a13e823b5c24e24471f8886a1ce8b` |
| 14 | `theorem` | [measurable_edist_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/measurable-edist-left.md) | 114 | `result-track:8ba7487556d500ea4e9476305d3caf88c2ad5203b6051af027c4ae6f5015236a` |
| 15 | `theorem` | [measurable_infEDist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/measurable-infedist.md) | 116 | `result-track:9b6a1a3a9ea056c2ad82fdcb0154e70bd85555e6929ac23b5e74c6b4e5393d8d` |
| 16 | `theorem` | [Measurable.infEDist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/measurable-infedist-source-edition-2.md) | 120 | `result-track:ed4fea90bbcc76968aab072f5da8bd47566d43c72b889cdf66b4e5a42388d901` |
| 17 | `theorem` | [tendsto_measure_cthickening](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/tendsto-measure-cthickening.md) | 126 | `result-track:355ac1507d48488c6b7df0b6150456603a6282c08183f0f57fbeecfa1db9f1af` |
| 18 | `theorem` | [tendsto_measure_cthickening_of_isClosed](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/tendsto-measure-cthickening-of-isclosed.md) | 143 | `result-track:db64318542ab99d0c757e262342b4cb20eefddd982d7b527bced8f0c567635f6` |
| 19 | `theorem` | [tendsto_measure_thickening](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/tendsto-measure-thickening.md) | 151 | `result-track:de18616b7445fec263962c14723f522cfcdfff9e51bf4126c73cb55cc5c0555f` |
| 20 | `theorem` | [tendsto_measure_thickening_of_isClosed](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/tendsto-measure-thickening-of-isclosed.md) | 160 | `result-track:052aeee800f1049621ad0b13c890267c634e334463987d87e28dcb9c760d6bc6` |
| 21 | `theorem` | [measurable_edist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/measurable-edist.md) | 168 | `result-track:217ba1e323efd9f18e45fd74f5f2f82fa984361834d2717165aab99045d3a17a` |
| 22 | `theorem` | [Measurable.edist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/measurable-edist-source-edition-2.md) | 172 | `result-track:446987809c56a538d1713f8cd25185bba313d98f023118fba5c7f944cc1dd0ff` |
| 23 | `theorem` | [AEMeasurable.edist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/aemeasurable-edist.md) | 177 | `result-track:6cefeb7c65e3cc0c37fde65202fc5902296d0e59f00a257a24f486158f313464` |
| 24 | `theorem` | [tendsto_measure_cthickening_of_isCompact](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/tendsto-measure-cthickening-of-iscompact.md) | 185 | `result-track:3b6028568e100a471cd9b884e59242082b57065975422fc231c62ff5a50ac95c` |
| 25 | `theorem` | [exists_borelSpace_of_countablyGenerated_of_separatesPoints](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/exists-borelspace-of-countablygenerated-of-separatespoints.md) | 194 | `result-track:d14f8494559936ce32b9dcbbf10a232fbf4210b027a45b97bb9bd82e0c5a75f9` |
| 26 | `theorem` | [exists_opensMeasurableSpace_of_countablySeparated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/exists-opensmeasurablespace-of-countablyseparated.md) | 206 | `result-track:b8e47053457024554a17b13c934260c5680f5c013fcbf161a8ce5a6c0547d9ed` |
| 27 | `lemma` | [measurable_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/measurable-enorm.md) | 220 | `result-track:75caf88ad40e933deece933dab60f177113bc7bf126bb54fb669838bc633c331` |
| 28 | `lemma` | [Measurable.enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/measurable-enorm-source-edition-2.md) | 223 | `result-track:7634f6ae483c7ced42eda6e321e6fb9792ad70767320dc0fdd9e21c5debb5335` |
| 29 | `lemma` | [AEMeasurable.enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/aemeasurable-enorm.md) | 227 | `result-track:d992aeb7a8663df7a341446fb15b517487234f776f5ca12e512eb43981b0768d` |
| 30 | `theorem` | [measurable_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/measurable-norm.md) | 238 | `result-track:409b14d28a4b03019a0a20e135c777d83cb74561d1674ca56956a7ea55049bce` |
| 31 | `theorem` | [Measurable.norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/measurable-norm-source-edition-2.md) | 242 | `result-track:ace4b39ccfc5b32b76680cd7cb98806c6d419edfb453aa355661bb8d6dc3098e` |
| 32 | `theorem` | [AEMeasurable.norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/aemeasurable-norm.md) | 246 | `result-track:77433a6fe2653a25a43622c9834657734ea2f08123f460bc7b7dd73fc2e02174` |
| 33 | `theorem` | [measurable_nnnorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/measurable-nnnorm-source-edition-2.md) | 250 | `result-track:7fb666d292bfecc07e32d5ad933b76150a845573fba1ecffb70f7e67094cfb35` |
| 34 | `theorem` | [Measurable.nnnorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/measurable-nnnorm.md) | 254 | `result-track:366ba14b16e954aff800db922dc3c45bdf701cdaae2c6e8f2c1ba239cba65830` |
| 35 | `lemma` | [AEMeasurable.nnnorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceMetricPublic.lean/declarations/aemeasurable-nnnorm.md) | 258 | `result-track:0e875518c01a0941d58e2f754615bb6b53f6a6564f7b3c9f87fd0336d5b22bc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a5f0b781e4fce7a01d5f098d53dd14e4171eb24dd08fb684fd95cfe7f1f7713e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Metric/Variant92bef4acc76dbfb3953cb019c9eeb2e4d615f67e63ad74621f9b38480d7060f9.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Metric/Variant92bef4acc76dbfb3953cb019c9eeb2e4d615f67e63ad74621f9b38480d7060f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
