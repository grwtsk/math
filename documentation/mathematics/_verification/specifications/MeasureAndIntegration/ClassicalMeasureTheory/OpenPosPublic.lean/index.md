# Verification target: Open Pos Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64b8663d129b8d5d7613fb2bf7583eabf3a4d1d3",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OpenPos/Variante58615b60bff5e995e3133b6e5bf35d22e5f7fded53f23ccd99301926cef5676.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64b8663d129b8d5d7613fb2bf7583eabf3a4d1d3`.

Source path: `GRWTSK/Topology/GeneralTopology/OpenPos/Variante58615b60bff5e995e3133b6e5bf35d22e5f7fded53f23ccd99301926cef5676.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OpenPos/Variante58615b60bff5e995e3133b6e5bf35d22e5f7fded53f23ccd99301926cef5676.lean.json)

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
| 1 | `class` | [IsOpenPosMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/isopenposmeasure.md) | 39 | `declaration-track:64c7d50abcd43850c7e485c7e1a234396a543ecc19a845cc3f3f20e08133332a` |
| 2 | `theorem` | [_root_.IsOpen.measure_ne_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/root-isopen-measure-ne-zero.md) | 44 | `result-track:f502d7b7863a0242e7a6931c3694ea3a12f17cf5787ebdcb9df823bcec6301b1` |
| 3 | `theorem` | [_root_.IsOpen.measure_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/root-isopen-measure-pos.md) | 47 | `result-track:45ecd096b8cae54fc831a517eed6d7a9555c8c7e1162c3d27ffbf252dab45ad7` |
| 4 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/instance.md) | 50 | `declaration-track:a9c10e346ec9fe3d140bf4596dcd81645f4372ca382d64279a60101f2ee57563` |
| 5 | `theorem` | [_root_.IsOpen.measure_pos_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/root-isopen-measure-pos-iff.md) | 53 | `result-track:21eb4d6e545d8da222439babf9b3e18937dbe32e84a056e2234f9c533a077ef9` |
| 6 | `theorem` | [_root_.IsOpen.measure_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/root-isopen-measure-eq-zero-iff.md) | 56 | `result-track:f24438d9861d133dea8aac27ab738d279fabc59a9d6006d3b9df350143cf5579` |
| 7 | `theorem` | [measure_pos_of_nonempty_interior](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/measure-pos-of-nonempty-interior.md) | 60 | `result-track:3fc4ec1025fc60ca4b1bb9333b2f5a51f6b981d0b6ac32bd5b4b9efaeb38e5c1` |
| 8 | `theorem` | [measure_pos_of_mem_nhds](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/measure-pos-of-mem-nhds.md) | 63 | `result-track:4a8ef9ee7885545cdb273d977b5602d062abae8946baad63bfd8e728aef2825b` |
| 9 | `theorem` | [isOpenPosMeasure_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/isopenposmeasure-smul.md) | 66 | `result-track:8086caabb4e0add14c17be0e7cbd0ea06b2438a28d0a6d06393942339c9d18cc` |
| 10 | `theorem` | [AbsolutelyContinuous.isOpenPosMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/absolutelycontinuous-isopenposmeasure.md) | 71 | `result-track:c64ec8e60c5de4b3fa4070a6dce902751f50c3200f276c4271b540a0a8390fbd` |
| 11 | `theorem` | [_root_.LE.le.isOpenPosMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/root-le-le-isopenposmeasure.md) | 74 | `result-track:e1aa830ad3dc2c278cea491952072a9c81562f4a8daa7755a56416ee1c7d08fa` |
| 12 | `theorem` | [_root_.IsOpen.measure_zero_iff_eq_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/root-isopen-measure-zero-iff-eq-empty.md) | 77 | `result-track:af4667fb9de60b08504b99054355b4e034cb4a41d543fa83b52a4cdd1c5b8251` |
| 13 | `theorem` | [_root_.IsOpen.ae_eq_empty_iff_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/root-isopen-ae-eq-empty-iff-eq.md) | 81 | `result-track:495ccf98800cbdeab94e98dbbb696f0283f39cb5f40e2ac514a7ac1e2069ffa4` |
| 14 | `theorem` | [_root_.IsOpen.eq_empty_of_measure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/root-isopen-eq-empty-of-measure-zero.md) | 86 | `result-track:3b5aeb5f372262ef4996d5ea1bccd6b474d171e87305a52c72f172178c6cc081` |
| 15 | `theorem` | [_root_.IsClosed.ae_eq_univ_iff_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/root-isclosed-ae-eq-univ-iff-eq.md) | 89 | `result-track:5439f6e5c8bd0dd367acdfcaf37155d4b6f496324bcd5b61b4c89a563d2fbc27` |
| 16 | `theorem` | [_root_.IsClosed.measure_eq_univ_iff_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/root-isclosed-measure-eq-univ-iff-eq.md) | 94 | `result-track:0107d26262cdbb7b6d627dde15d2ce19118284ed6037c1152be127c02820f987` |
| 17 | `theorem` | [_root_.IsClosed.measure_eq_one_iff_eq_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/root-isclosed-measure-eq-one-iff-eq-univ.md) | 99 | `result-track:6228e88dc529c6c57809e42a875b4b158f361abead906a5f21a73327f56d1755` |
| 18 | `theorem` | [interior_eq_empty_of_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/interior-eq-empty-of-null.md) | 105 | `result-track:6014269acb26b74c5ae7018e80a8176ccd49f5d18153641b5662a64a9f36664b` |
| 19 | `theorem` | [dense_of_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/dense-of-ae.md) | 109 | `result-track:135d0e36f7171cdb9e8aa668485ac50f2029c4e4db065ff269cc398e172286d2` |
| 20 | `theorem` | [eqOn_open_of_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/eqon-open-of-ae-eq.md) | 115 | `result-track:9f39e9a87499c392cd8e9fcfb7f8d973f23d3168af41b9e7b480094e3b64bf1d` |
| 21 | `theorem` | [eq_of_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/eq-of-ae-eq.md) | 129 | `result-track:18cf53703bcde359bb365386cb781e2d4fad0d3ddaac7424f3f21a756949351c` |
| 22 | `theorem` | [eqOn_of_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/eqon-of-ae-eq.md) | 133 | `result-track:0ade3f643add5f9b2c7c0bc6c0dac11c4b22a6b7464895a5ab32f8a5a3856251` |
| 23 | `theorem` | [_root_.Continuous.ae_eq_iff_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/root-continuous-ae-eq-iff-eq.md) | 141 | `result-track:bce0ccfef0ebfa0738ed93bfe460669e1e288ea32e2279e51d48d560156c6139` |
| 24 | `theorem` | [_root_.Continuous.isOpenPosMeasure_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/root-continuous-isopenposmeasure-map.md) | 145 | `result-track:7c85ae812a5c3c8b341eb3674ce72b6165a90e6c660586c8d8e13ba36c7f1514` |
| 25 | `theorem` | [IsOpenPosMeasure.comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/isopenposmeasure-comap.md) | 153 | `result-track:f9a02cbda3f87989ea18ba3ebcca99438cba2541faaf6a2f22c8ba2937bb8e37` |
| 26 | `theorem` | [measure_Ioi_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/measure-ioi-pos.md) | 168 | `result-track:41891f578c9bcbedc6197e328a4b3bcf6047c37db0c74e6746b8a70d1029bac9` |
| 27 | `theorem` | [measure_Iio_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/measure-iio-pos.md) | 171 | `result-track:0d23e2b2c165a5967e65887ae90731923a31c48dd7e91d53ec51bd80ce582542` |
| 28 | `theorem` | [measure_Ioo_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/measure-ioo-pos.md) | 174 | `result-track:2f2d03ee4f499116b0e854a1e06a42cff35ef374d319e0dfe6705795be73206b` |
| 29 | `theorem` | [measure_Ioo_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/measure-ioo-eq-zero.md) | 177 | `result-track:60cb6cc877d6ce9a22d56734a69eb44ffa4d9000d99a79466ca7701646141a8e` |
| 30 | `theorem` | [eqOn_Ioo_of_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/eqon-ioo-of-ae-eq.md) | 180 | `result-track:63382275e13aa2d62197a50150c7fb28afc96cf949316296a40d19956337df0c` |
| 31 | `theorem` | [eqOn_Ioc_of_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/eqon-ioc-of-ae-eq.md) | 184 | `result-track:7f2193c5bd73d641ec6d29dc0d1bd4a494a65dc3d8712fb63636b26c90c98c0d` |
| 32 | `theorem` | [eqOn_Ico_of_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/eqon-ico-of-ae-eq.md) | 189 | `result-track:c755895a7d61bc813f7330fc5986aeea08f070c49f267cca46174ff8ffebf06d` |
| 33 | `theorem` | [eqOn_Icc_of_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/eqon-icc-of-ae-eq.md) | 194 | `result-track:7c84e99ddb74d4b29ff90152e021d3a8dcfc6149fa12d17d9560322a873c79af` |
| 34 | `theorem` | [measure_ball_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/measure-ball-pos.md) | 212 | `result-track:64f11dacba524d571c56ffbddc0995e36c3eae7802864a0d70bfcefa66318c95` |
| 35 | `theorem` | [measure_closedBall_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/measure-closedball-pos.md) | 216 | `result-track:dce3c3f2af92be5eb4fa712c7473c032d97e35fb641bd1c2cc24f8bb885b86d9` |
| 36 | `lemma` | [measure_closedBall_pos_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/measure-closedball-pos-iff.md) | 219 | `result-track:2d2f4e89003848ef2bdcac5539cfb9d8cc40d2f7096347f5aa5b2df23ec9e9bd` |
| 37 | `theorem` | [measure_eball_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/measure-eball-pos.md) | 233 | `result-track:510c31b890ea1c515a1cb157a6c525f03730e93ac9cc5861c3b7a1fd7d966350` |
| 38 | `theorem` | [measure_closedEBall_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/measure-closedeball-pos.md) | 236 | `result-track:8cbb340b66dca83b0f221a7f1d541bb853ab2ac69862130e7b23e46659f84937` |
| 39 | `lemma` | [IsNowhereDense.of_isClosed_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/isnowheredense-of-isclosed-null.md) | 262 | `result-track:7ece32b1783a2b90d4a00d8d33fc7504a17dc4ae020d6502df6e7e5525029201` |
| 40 | `lemma` | [IsMeagre.of_isSigmaCompact_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OpenPosPublic.lean/declarations/ismeagre-of-issigmacompact-null.md) | 267 | `result-track:e2eaedcc934fc74ef62cb24b77ceb2b9d1b0e97ff760ae0b45dfbbab51cfba05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18ef2e30a4b55393ef096142b41e8726623ea03873512307f90b763137bf57d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/OpenPos/Variante58615b60bff5e995e3133b6e5bf35d22e5f7fded53f23ccd99301926cef5676.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/OpenPos/Variante58615b60bff5e995e3133b6e5bf35d22e5f7fded53f23ccd99301926cef5676.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
