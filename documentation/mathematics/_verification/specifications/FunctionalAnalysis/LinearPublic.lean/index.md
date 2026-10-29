# Verification target: Linear Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8332791865ca3b1d7414edbc3eb5c1b809c3bf8",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Linear/Variant995d73465fe898120c008f5e4080d9396841d786a18cecc1df45c6daf854e8f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/LinearPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/LinearPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8332791865ca3b1d7414edbc3eb5c1b809c3bf8`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Linear/Variant995d73465fe898120c008f5e4080d9396841d786a18cecc1df45c6daf854e8f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Linear/Variant995d73465fe898120c008f5e4080d9396841d786a18cecc1df45c6daf854e8f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fpowerSeries_radius](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/fpowerseries-radius.md) | 35 | `result-track:ee1640fd3648ea511700731628d05532fd0fff3eb09eaa691de9469413718fb3` |
| 2 | `theorem` | [hasFiniteFPowerSeriesOnBall](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/hasfinitefpowerseriesonball.md) | 38 | `result-track:3ab3fb360c0abaf2cffc7093ef6020a0a249bb1777213137f0a1711057ac884d` |
| 3 | `theorem` | [hasFPowerSeriesOnBall](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/hasfpowerseriesonball.md) | 50 | `result-track:863c02a958a647b8f3a47aa38a58558d1beb0794d571572e759dd17ea131c2ba` |
| 4 | `theorem` | [hasFPowerSeriesAt](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/hasfpowerseriesat.md) | 54 | `result-track:5e02fd38f97d8b5eb072a0a2e3128bb89adf0412edfbc1d5f4dcd2353983f705` |
| 5 | `theorem` | [cpolynomialAt](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/cpolynomialat.md) | 58 | `result-track:256963ffb6c2e2545a4b655e10a15874675f16ed5c3490bb627b8af7d3482163` |
| 6 | `theorem` | [analyticAt](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticat-source-edition-3.md) | 61 | `result-track:15acc39fa99c95c5b3a85be28bf23c352614c599f1f9aa29c3a8b7b728396c1e` |
| 7 | `theorem` | [cpolynomialOn](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/cpolynomialon.md) | 64 | `result-track:8b77bbd438ae37fb2d8310534779c296629d800fd1a4f8b9cd13896674d0c167` |
| 8 | `theorem` | [analyticOnNhd](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticonnhd-source-edition-3.md) | 67 | `result-track:a58a1b3f1bd4823a40ff80c3d97786cecd8e60ec280c810c63f886268a92ae2b` |
| 9 | `theorem` | [analyticWithinAt](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticwithinat-source-edition-2.md) | 70 | `result-track:dfac7ca2957bd673a36b13637e84fdf2d24a869838ca58a35e2d72d714d4a552` |
| 10 | `theorem` | [analyticOn](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticon.md) | 73 | `result-track:3494f422ed85c054299e4a245862773450ed25959206db0312cc19f976e15987` |
| 11 | `def` | [uncurryBilinear](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/uncurrybilinear.md) | 80 | `declaration-track:aaa946135920515553a316a2ad251aa436781a76a019f4761d458339f6e2f80a` |
| 12 | `theorem` | [uncurryBilinear_apply](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/uncurrybilinear-apply.md) | 86 | `result-track:0aeb2d2763e7ba12c7c685ba1e18aec51f79ebfeab0d1d69039f83d59240423b` |
| 13 | `def` | [fpowerSeriesBilinear](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/fpowerseriesbilinear.md) | 91 | `declaration-track:f9deae645306050c1284e21c18a17196d37578414b0538de72a4207a1e39f83a` |
| 14 | `theorem` | [fpowerSeriesBilinear_apply_zero](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/fpowerseriesbilinear-apply-zero.md) | 98 | `result-track:9aac51c7f0eccb02301e1e12fff6fe3ec216bbd89ef1bd4c5e37600193755d3f` |
| 15 | `theorem` | [fpowerSeriesBilinear_apply_one](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/fpowerseriesbilinear-apply-one.md) | 103 | `result-track:e22d161405ddc319241c87277a96429ce92db5efd402cae6a260e0439b208526` |
| 16 | `theorem` | [fpowerSeriesBilinear_apply_two](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/fpowerseriesbilinear-apply-two.md) | 108 | `result-track:b741b70883b7f5f691e5f78a4cb7364b8383c2b068eb427dcef27960b5abe759` |
| 17 | `theorem` | [fpowerSeriesBilinear_apply_add_three](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/fpowerseriesbilinear-apply-add-three.md) | 113 | `result-track:d1bea3b87d6a4be8dd4eb1cbdfa50af4f1b6c6a42ee544ad831f7bbf41ceea9a` |
| 18 | `theorem` | [fpowerSeriesBilinear_radius](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/fpowerseriesbilinear-radius.md) | 118 | `result-track:498c960f1b40e00cb48a71362b032feb66d0138711bb2b0af0c8e5673ae5c0c8` |
| 19 | `theorem` | [hasFPowerSeriesOnBall_bilinear](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/hasfpowerseriesonball-bilinear.md) | 122 | `result-track:f002b0521cf3da068b7b08cba7fb9e8440bc71b906494c7ebf38f2eafbfa13ed` |
| 20 | `theorem` | [hasFPowerSeriesAt_bilinear](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/hasfpowerseriesat-bilinear.md) | 131 | `result-track:5be18914a085fef107880a7ce67aa4a652f6abd2dfa1695deb8f18c0b1dd7086` |
| 21 | `theorem` | [analyticAt_bilinear](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticat-bilinear.md) | 135 | `result-track:155191c2c78899a9af3b60ef65159158e2188595f554d6070d953c409c3b2660` |
| 22 | `theorem` | [analyticWithinAt_bilinear](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticwithinat-bilinear.md) | 139 | `result-track:b20fb0346888bcff917ba24f577022d9d52c7945dc4fb3565e6fbd1d71c63d96` |
| 23 | `theorem` | [analyticOnNhd_bilinear](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticonnhd-bilinear.md) | 143 | `result-track:da2242a8f03e1b8d89cf9331235bdff61cc0978df90d233c92dbe13ebc3191d7` |
| 24 | `theorem` | [analyticOn_bilinear](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticon-bilinear.md) | 147 | `result-track:c25a30e8d3e8cb46ed3459ec1c02bbc687153de672889c08d81a843614015ac0` |
| 25 | `lemma` | [analyticAt_id](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticat-id.md) | 156 | `result-track:951625572df04b1cdc451a3ead6b18967fb6a51c971b72275452c6494c6824d4` |
| 26 | `lemma` | [analyticWithinAt_id](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticwithinat-id.md) | 159 | `result-track:081944fe94722cdb49e2b3412fb9179968c51e6dc8fb839d545b8cb1fe69b672` |
| 27 | `theorem` | [analyticOnNhd_id](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticonnhd-id.md) | 164 | `result-track:71aef6424424af36e9e918fbfcde3456371887535c5e9757ec1a3aa41dc79f70` |
| 28 | `theorem` | [analyticOn_id](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticon-id.md) | 167 | `result-track:f9ce603aac66e5d70aa3696ebc209bb59c6cbc9d41b734745487be791a9d95f4` |
| 29 | `theorem` | [analyticAt_fst](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticat-fst.md) | 171 | `result-track:19cceb0c0e134f1af105a8bb2f865da6b695183a0a374f1bc57ea2202e4d12ed` |
| 30 | `theorem` | [analyticWithinAt_fst](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticwithinat-fst.md) | 174 | `result-track:9ad4569b99cf53f336a91c1afef97d34aabdd9a95da3e1b4b80e24ac4635e264` |
| 31 | `theorem` | [analyticAt_snd](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticat-snd.md) | 178 | `result-track:6c4a399e541e744e21863787adfe7ba1d71ac9cab5fabbf85c46077d5bfc8eb0` |
| 32 | `theorem` | [analyticWithinAt_snd](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticwithinat-snd.md) | 181 | `result-track:06d366242e556a55057fd3308c72a9eb716c079b17a424d77ca271becf968b78` |
| 33 | `theorem` | [analyticOnNhd_fst](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticonnhd-fst.md) | 185 | `result-track:e61c2273964042b31c10414c231b2b59306c62cc2beb72d879632d1d7ea5e345` |
| 34 | `theorem` | [analyticOn_fst](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticon-fst.md) | 188 | `result-track:2815cbcd6524bbc8d19501db60d9b6c9b4d51f60203d7ee9253f698fffd8387b` |
| 35 | `theorem` | [analyticOnNhd_snd](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticonnhd-snd.md) | 192 | `result-track:a7c123eeea527eb840b8bd5a4dd2526e26d6fe5f85abd21021b786ca683b9e07` |
| 36 | `theorem` | [analyticOn_snd](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticon-snd.md) | 195 | `result-track:d6b53c1bd7f26a3c4ecf5dc0e01fb716c75099639399118c7b48e7c8f62da9a3` |
| 37 | `theorem` | [analyticAt](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticat-source-edition-2.md) | 202 | `result-track:0f3d00f888fb75df48e75878a991cf2377fc399c3ed89f49fff25b51a0cda33b` |
| 38 | `theorem` | [analyticOnNhd](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticonnhd-source-edition-2.md) | 205 | `result-track:731e445e0b5bd24ba666a8faa0dfb22db737e300b5845e5113b8f1ae826f4943` |
| 39 | `theorem` | [analyticWithinAt](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticwithinat-source-edition-3.md) | 208 | `result-track:ff3b027a304a160869cbf573145be1866ac70b1f2e98aef39f4b7484053d984a` |
| 40 | `theorem` | [analyticOn](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticon-source-edition-2.md) | 211 | `result-track:4e34e5815d930b36a605bac58248c32faf75763d0c81820c43e71972a3cee69b` |
| 41 | `theorem` | [analyticAt](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticat.md) | 220 | `result-track:067c82862e26fb9e284cd2462ab4204dce6ff4a017ebe84303e04385956ce34d` |
| 42 | `theorem` | [analyticOnNhd](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticonnhd.md) | 223 | `result-track:6e4b16487d1160518bccdfc3a9585aff7f7beb4dcd46367cbd295fac1039d792` |
| 43 | `theorem` | [analyticWithinAt](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticwithinat.md) | 226 | `result-track:146a188a1eee169eecff94f96b50c29a0c79f82fb0c198e9d5bc6de926b935e4` |
| 44 | `theorem` | [analyticOn](../../../../FunctionalAnalysis/LinearPublic.lean/declarations/analyticon-source-edition-3.md) | 229 | `result-track:d7bd9faada0ab4313f419a2b7fd873bc396688500520c1d860d991415022e195` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce5e5b8268bf0cb2a9160bbf0d3325f776a1b0dd85d973ca55a351a3c3c4cdb7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Linear/Variant995d73465fe898120c008f5e4080d9396841d786a18cecc1df45c6daf854e8f8.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Linear/Variant995d73465fe898120c008f5e4080d9396841d786a18cecc1df45c6daf854e8f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
