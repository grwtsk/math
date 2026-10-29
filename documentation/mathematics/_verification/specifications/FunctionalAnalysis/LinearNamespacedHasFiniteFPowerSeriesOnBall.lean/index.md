# Verification target: Linear Namespaced Has Finite FPower Series On Ball

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4e56fd078561e9ce4cde57d99a4208bcaadd54c",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Linear/Variant62f03891bfc56dcdb82f3058e86dff4921b80131614143731337c13220f46013.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/index.md) · [Full source](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4e56fd078561e9ce4cde57d99a4208bcaadd54c`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Linear/Variant62f03891bfc56dcdb82f3058e86dff4921b80131614143731337c13220f46013.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Linear/Variant62f03891bfc56dcdb82f3058e86dff4921b80131614143731337c13220f46013.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.CPolynomialDef` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fpowerSeries_radius](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/fpowerseries-radius.md) | 39 | `result-track:4a1531b78bd75d5b781d4003f8aba66826998089295629ed5aa5639d7ab4c4ec` |
| 2 | `theorem` | [hasFiniteFPowerSeriesOnBall](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/hasfinitefpowerseriesonball.md) | 42 | `result-track:af00b40abfbd351d010bb40ef398333908a493530d89fb3d07c2409eab87239c` |
| 3 | `theorem` | [hasFPowerSeriesOnBall](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/hasfpowerseriesonball.md) | 54 | `result-track:370c73342231e9b6ec14b1c53aa771ab0f980b254aa4616f9812fa6ca4ad6d97` |
| 4 | `theorem` | [hasFPowerSeriesAt](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/hasfpowerseriesat.md) | 58 | `result-track:659fca24712c348544a5b45ea0d7206bb041c6b2a4f7ca9ccceaea7293944c28` |
| 5 | `theorem` | [cpolynomialAt](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/cpolynomialat.md) | 62 | `result-track:308556d21a5d62bbe8dbdc1549e375301440c74ee7bc6444be2e23142105ed6c` |
| 6 | `theorem` | [analyticAt](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticat-source-edition-3.md) | 65 | `result-track:f599efd8e9f76db0a56fa54cd590c357aadfa33aebd707f885e75608f59d5147` |
| 7 | `theorem` | [cpolynomialOn](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/cpolynomialon.md) | 68 | `result-track:96291501c18c477d5cc0ea62aadc881e8975a8a1239053e1f28bb17924c99c5b` |
| 8 | `theorem` | [analyticOnNhd](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticonnhd-source-edition-2.md) | 74 | `result-track:85e2aa4e7d430a664f6d44f1c3000dcce290a726c20d5638d385d3a45fd5b97b` |
| 9 | `theorem` | [analyticWithinAt](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticwithinat.md) | 77 | `result-track:21880659ec0052e7387466ca4a1b3bd9886e751a5d8ea49f469897948f7ceb0b` |
| 10 | `theorem` | [analyticOn](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticon-source-edition-3.md) | 80 | `result-track:74d80363a2b4111486b49606e5a4029bf5786e7b08e9c2e73566d2727c43beff` |
| 11 | `def` | [uncurryBilinear](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/uncurrybilinear.md) | 87 | `declaration-track:d92b9a80754d0a274f3d89f7fea703a6c941cac43d9b47dca80b1a6e15887509` |
| 12 | `theorem` | [uncurryBilinear_apply](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/uncurrybilinear-apply.md) | 93 | `result-track:1cef8dfdfb9767a5948a0143d262e7b91a4405fdd1687e9bb422614664642ac9` |
| 13 | `def` | [fpowerSeriesBilinear](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/fpowerseriesbilinear.md) | 98 | `declaration-track:4ad27076dc91f40cc5df55af815590d18d5fbc300221a622e5764befdf205fce` |
| 14 | `theorem` | [fpowerSeriesBilinear_apply_zero](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/fpowerseriesbilinear-apply-zero.md) | 105 | `result-track:f92716e6e3f63dd4b768628d8ae53a6307ad7e1083fe311d5e11c54552fc5b7c` |
| 15 | `theorem` | [fpowerSeriesBilinear_apply_one](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/fpowerseriesbilinear-apply-one.md) | 110 | `result-track:c8f7e4868f1525fdd30763c7f02f2bd5e874c3f4adfe91c57dd043aa94595e01` |
| 16 | `theorem` | [fpowerSeriesBilinear_apply_two](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/fpowerseriesbilinear-apply-two.md) | 115 | `result-track:e762a77a60ef9f3641acaa44508e90c2beb20507ec475812e8ccdc09e1d0e8a5` |
| 17 | `theorem` | [fpowerSeriesBilinear_apply_add_three](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/fpowerseriesbilinear-apply-add-three.md) | 120 | `result-track:11d492f10cec382e3028428893781ec9f472dd8606a95140eee745cbe6a022da` |
| 18 | `theorem` | [fpowerSeriesBilinear_radius](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/fpowerseriesbilinear-radius.md) | 125 | `result-track:e62bcfe253c5fed0a1cf57d456406daca058f9cfc59d296772030dc381d05750` |
| 19 | `theorem` | [hasFPowerSeriesOnBall_bilinear](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/hasfpowerseriesonball-bilinear.md) | 129 | `result-track:59ed510ffa4da8716b5dc2468ea7e3823978f22a57f269cb69664db958e0de84` |
| 20 | `theorem` | [hasFPowerSeriesAt_bilinear](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/hasfpowerseriesat-bilinear.md) | 139 | `result-track:3add5b332965712133111ebe6765951d28f6c418d3a32a7339d483c35ea57acc` |
| 21 | `theorem` | [analyticAt_bilinear](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticat-bilinear.md) | 143 | `result-track:59e41272ec98a2cfc180e1a7ca16149728c47117aca64515f8f766605c8fcfb5` |
| 22 | `theorem` | [analyticWithinAt_bilinear](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticwithinat-bilinear.md) | 147 | `result-track:65d7f95588c3144d985c134644f43de51df85ad3b288139520fce1dc72fa20a3` |
| 23 | `theorem` | [analyticOnNhd_bilinear](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticonnhd-bilinear.md) | 151 | `result-track:81607cd65a278e5ae6fb2d2541d3f62b9428b5328c9648e31928350572968cbb` |
| 24 | `theorem` | [analyticOn_bilinear](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticon-bilinear.md) | 155 | `result-track:ec783a1bcbfda133c1b0f02d3a33b8ebe1937ad1e321c38a6c09ffb193583fe0` |
| 25 | `lemma` | [analyticAt_id](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticat-id.md) | 164 | `result-track:1c6ef92a75fcee7106b2acba31eb9201632fcdea20e7be8cdf6514988b90db7c` |
| 26 | `lemma` | [analyticWithinAt_id](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticwithinat-id.md) | 167 | `result-track:26543026ae0bc8b5ffcc559c4e0b2b942749d019535c9ad03162f00b254ea4b9` |
| 27 | `theorem` | [analyticOnNhd_id](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticonnhd-id.md) | 171 | `result-track:0b2bf592aecaa7e1282ad9152fd489bd8f21e35c652c0fdc7e4816af64072e09` |
| 28 | `theorem` | [analyticOn_id](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticon-id.md) | 174 | `result-track:135a4bd2e303bbb0f47f5e9d5b3cb2c21ec4e9f0018d1bb317670c0800f6ecd8` |
| 29 | `theorem` | [analyticAt_fst](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticat-fst.md) | 178 | `result-track:fd926a20929887dd825e8f8692b9347a77fb941cfb4b4408d2d151472d6997dc` |
| 30 | `theorem` | [analyticWithinAt_fst](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticwithinat-fst.md) | 181 | `result-track:dfafb7237cf12fb4cf4422c32ea99b53789c62bc48c1736eb3b8494465ab9e1a` |
| 31 | `theorem` | [analyticAt_snd](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticat-snd.md) | 185 | `result-track:94e4d9e340ba34fce6669ec5a9ac9000ce9fc0e5fd898df1afca7b78eefd2dff` |
| 32 | `theorem` | [analyticWithinAt_snd](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticwithinat-snd.md) | 188 | `result-track:6f2e1d8f4a52c0566252db779061112a0009fffb58721ca1b848cc2e389f6217` |
| 33 | `theorem` | [analyticOnNhd_fst](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticonnhd-fst.md) | 192 | `result-track:c9cdc01acabe5c1a3dde91c5963c36de9f275bca899303d50a4618b5e7160656` |
| 34 | `theorem` | [analyticOn_fst](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticon-fst.md) | 195 | `result-track:53cca8abd4aa6ef55a2a0e0cbfaa34f3b2173b18940c48049f9bb49710b0e14b` |
| 35 | `theorem` | [analyticOnNhd_snd](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticonnhd-snd.md) | 199 | `result-track:9831854f44816d2640585d0585b46e8a4f96918d04477d4f40bf93058913fe99` |
| 36 | `theorem` | [analyticOn_snd](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticon-snd.md) | 202 | `result-track:c80b1b3c285a978622cb733f9189f8ef240d6179940f2806c7fd41e5f9fc883e` |
| 37 | `theorem` | [analyticAt](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticat.md) | 209 | `result-track:051319f2506bb4e9d082d3fa2d50d57a200d654023c8a31253b2e38f608d258c` |
| 38 | `theorem` | [analyticOnNhd](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticonnhd.md) | 212 | `result-track:07bb68b228cefc362fb3e89def16bd266010fbb886b92cf460b94f7a19cb65e7` |
| 39 | `theorem` | [analyticWithinAt](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticwithinat-source-edition-2.md) | 215 | `result-track:3b860d7d6c5b878d86d7400229bd67532bea73cfe94fb2bcdda213cea0db8b84` |
| 40 | `theorem` | [analyticOn](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticon.md) | 218 | `result-track:0b48665c97a66c037570369d461a90b29ac83b1eb9de49239680a59d534dbc2f` |
| 41 | `theorem` | [analyticAt](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticat-source-edition-2.md) | 227 | `result-track:2b4510c6dfe97cf6978fe2cfd82d2c310dbe3eb5f878acf1275b77405a5aa72d` |
| 42 | `theorem` | [analyticOnNhd](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticonnhd-source-edition-3.md) | 230 | `result-track:bee274f380bee640470f325ff94cf35af5672431b2031f78e89dfe81c31ef5fd` |
| 43 | `theorem` | [analyticWithinAt](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticwithinat-source-edition-3.md) | 233 | `result-track:9a40c075861ca043fa1e204ff5e962a7ec9898d919efb470a1dc7db9b18ec389` |
| 44 | `theorem` | [analyticOn](../../../../FunctionalAnalysis/LinearNamespacedHasFiniteFPowerSeriesOnBall.lean/declarations/analyticon-source-edition-2.md) | 236 | `result-track:12e1c1a8fdb6ac1fb5e859dd974a6e5dfbd0f82919c1e51a6f76f48c30b74640` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5e279932e0aa7ce404ac5f4dba60715a6b9992114f81aff41913f5f1cffd137 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Linear/Variant62f03891bfc56dcdb82f3058e86dff4921b80131614143731337c13220f46013.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Linear/Variant62f03891bfc56dcdb82f3058e86dff4921b80131614143731337c13220f46013.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
