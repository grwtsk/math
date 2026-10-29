# Verification target: Ends Nu Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63016c230313d48ce8fede3551c3ee7496c7b37b",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63016c230313d48ce8fede3551c3ee7496c7b37b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PrimeSideA.EndsWeighted` — import line 27; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CN2](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/cn2.md) | 44 | `declaration-track:b283b62e861d471551fee023abf82710a429c7d93e9e46d27afbd605537766b1` |
| 2 | `lemma` | [CN2_nonneg](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/cn2-nonneg.md) | 46 | `result-track:148009fdd54fd6bb19970c17a63acb7ec8348f0954e51322b704f23a08a30747` |
| 3 | `lemma` | [CN2_def](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/cn2-def.md) | 52 | `result-track:ad8a22301d128b109cad6bfc95ad08c671a73a5ff14ca36f197a4e35e84df953` |
| 4 | `theorem` | [integral_psiA_mul_sqrt_le](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/integral-psia-mul-sqrt-le.md) | 55 | `result-track:753c1ebb9988da102a8213983dbdd98cb1e6b9061d13610cb4242d0efdb8a412` |
| 5 | `theorem` | [nu_weight_bound_of_L_le_two_B](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/nu-weight-bound-of-l-le-two-b.md) | 110 | `result-track:c1ab0eb8880b232f04c90753983b68325a4e4f9dbe7e76efd802f89a655b9df9` |
| 6 | `theorem` | [nu_weight_bound](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/nu-weight-bound.md) | 196 | `result-track:7821f7b331bc6c6139b674bcc792daa674e840ac1eb8e67286fb9432694e3756` |
| 7 | `theorem` | [nu_weight_bound_L](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/nu-weight-bound-l.md) | 205 | `result-track:a1a1417846eaebafca358290693ee92bb3fc6ac83655195045790e394877a475` |
| 8 | `lemma` | [setIntegral_Iio_comp_sub_left](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/setintegral-iio-comp-sub-left.md) | 216 | `result-track:d8a41b0661e9c53cdf0f33119775a1b0deaa4d95e70b03eabccb627823bd96b3` |
| 9 | `lemma` | [setIntegral_Ioi_comp_sub_right](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/setintegral-ioi-comp-sub-right.md) | 231 | `result-track:3d135840d035f119c1fe32c2913c874be2ee4d6484e605c6b9db04a5a9831663` |
| 10 | `def` | [Sgrid](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/sgrid.md) | 246 | `declaration-track:18557c33f809a784a12dafd367e72b36657067ac3b2f3b38c26e38890eb87d4c` |
| 11 | `lemma` | [Setting.h_pos](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/setting-h-pos.md) | 249 | `result-track:9f18e6d0ac6284d40c3d5c63a1a941925def55246294bb318abd188dd66f89de` |
| 12 | `lemma` | [Setting.h_inv](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/setting-h-inv.md) | 252 | `result-track:fe734105bea9f2124ddd2442193228daa164f2816a7de842466a8b8ce518eb27` |
| 13 | `lemma` | [Sgrid_le_near](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/sgrid-le-near.md) | 256 | `result-track:910b331964117dfba491eea3be7f4b544d2882d70bd5da880769ea8b98baab87` |
| 14 | `lemma` | [Sgrid_le_far](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/sgrid-le-far.md) | 263 | `result-track:9e7f2def24a8e0b7b023d735a9fd54b9b71dead3cb9524a49f602634406dc074` |
| 15 | `lemma` | [Sgrid_nonneg](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/sgrid-nonneg.md) | 277 | `result-track:4a3b7258d90add547b1120a3600105653272e19c54b87b85c769889897329aca` |
| 16 | `lemma` | [sigma_eq_left](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/sigma-eq-left.md) | 281 | `result-track:20c03071671acff516014259a2f036f4073925d73246820f86281d0503e9a056` |
| 17 | `lemma` | [sigma_le_right](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/sigma-le-right.md) | 287 | `result-track:dd3308035a90952c0fe7bdf1ecdb02b98822f80df7048747c78f9a3ceae5b1df` |
| 18 | `def` | [Mnear](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/mnear.md) | 301 | `declaration-track:bc102183e44ba02a8238cbc6fe297852e8f329e8f884a685e2da058c75dccc86` |
| 19 | `def` | [Mfar](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/mfar.md) | 304 | `declaration-track:b9ccb324c6fce8c9d4209b47afba8ad8cd891df81aa78090c162fe20bc0eb9b5` |
| 20 | `def` | [Mtot](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/mtot.md) | 307 | `declaration-track:a776f4c739840f75da6c62d3b3bee9538b7e919cbfb1b72ca075f8a696010cd3` |
| 21 | `lemma` | [Mnear_nonneg](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/mnear-nonneg.md) | 310 | `result-track:2ef999ebecc73005ea2fe342cde48eb3a3d0820840faa8b9b113c622cc63a250` |
| 22 | `lemma` | [Mfar_nonneg](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/mfar-nonneg.md) | 322 | `result-track:42ff303055bb8a1275f20d6238dfde77a85a3deda27bea1c92345fb24fff85aa` |
| 23 | `lemma` | [Sgrid_mul_le_Mnear](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/sgrid-mul-le-mnear.md) | 330 | `result-track:f4c80cbdd44147cd6100b642b803485f50032837c99c763f5d79360ecb808db9` |
| 24 | `lemma` | [Sgrid_mul_le_Mfar](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/sgrid-mul-le-mfar.md) | 345 | `result-track:4d08ff99c4dde22486ece15a5b047a40ac863fd9dd97076519ea1184bfbab2c4` |
| 25 | `lemma` | [dom_left](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/dom-left.md) | 355 | `result-track:2233bbec06987fb7441e60ebf11e13a6a01d7fbd5f89359662d910282148c964` |
| 26 | `lemma` | [dom_right](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/dom-right.md) | 376 | `result-track:d9593545bfe5fddb8bb696dc09c59e78db0b27f8f50033a5fdc0c47e5ddd085a` |
| 27 | `lemma` | [Mnear_integrableOn](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/mnear-integrableon.md) | 405 | `result-track:7ded4f7eb86d79e93bb0b62bdfb4e8be77f763f3884d5f6f293ed9e8653385bd` |
| 28 | `lemma` | [Mfar_eq_rpow](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/mfar-eq-rpow.md) | 425 | `result-track:7e8ad75cf9c776c24a150bfb911761430cbbd14f90335ce2ad65ff829caf9854` |
| 29 | `lemma` | [Mfar_integrableOn](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/mfar-integrableon.md) | 437 | `result-track:1907f1401f5d53219bb0738ec3b1b7a3041e9af79bb9e742edb630ec1ca4a774` |
| 30 | `lemma` | [Mtot_integrable](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/mtot-integrable.md) | 447 | `result-track:16c8f18ac51f01782df19223e2038f7b5eaf250a4e5b10ee6f6da80a71aa70ae` |
| 31 | `lemma` | [integral_Mtot_eq](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/integral-mtot-eq.md) | 452 | `result-track:c957472760a3150ebc864d8aa286dc6fbcc1c75e817c2d1e841e3e866053aeb4` |
| 32 | `lemma` | [integral_Mnear_le](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/integral-mnear-le.md) | 467 | `result-track:9deda244e16d72a8081648e0243aaeb63ec541245fc0a2d4cadfdb7110aac642` |
| 33 | `lemma` | [integral_Mfar_le](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/integral-mfar-le.md) | 533 | `result-track:c88d884fb214674dcd206b6ff8f1f9768ba11a05447d89c7af27af30f872fb48` |
| 34 | `theorem` | [integrableOn_sigma_mul_abs_nuX](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/integrableon-sigma-mul-abs-nux.md) | 580 | `result-track:29c013b0205b26314c8f4c886cbd55c59988f73367078d07537b7f26072d233e` |
| 35 | `lemma` | [log_two_mul_T_le](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/log-two-mul-t-le.md) | 612 | `result-track:6d641e7bada292ef2b24e84c2c9b802be7e7dd461263ccf86dac682661fbd43e` |
| 36 | `theorem` | [nu_grid_bound_raw](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/nu-grid-bound-raw.md) | 626 | `result-track:d2b8b47c0c1efec2cd10cc4d037b1173638ae80cf6aaa0c41b8631794a16a7bb` |
| 37 | `theorem` | [nu_grid_bound](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/nu-grid-bound.md) | 720 | `result-track:20e4e3ed059243b5282f438d2299ab8c6b04f7bf0ddd9177afa3ec59fd929b62` |
| 38 | `theorem` | [nu_grid_bound_L](../../../../MeasureAndIntegration/EndsNuNamespaced.lean/declarations/nu-grid-bound-l.md) | 778 | `result-track:9539ef597751e7f7fa466facff4e48036a1fb446db6d51d9a73950e0232356da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=259d9ce41a8d0f1a370782458ec6e4d755ab14192226fa3f3a1caa703d319f46 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
