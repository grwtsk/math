# Verification target: Analytic Order Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34b6babc6a02d0034cebd8dc8385390a56067f7d",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Order/Varianted8a61713ad1576a77cd32a725c896618e234ddcb50ab577b3ea47b68e7e1b26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34b6babc6a02d0034cebd8dc8385390a56067f7d`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Order/Varianted8a61713ad1576a77cd32a725c896618e234ddcb50ab577b3ea47b68e7e1b26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Order/Varianted8a61713ad1576a77cd32a725c896618e234ddcb50ab577b3ea47b68e7e1b26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.IsolatedZeros` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [analyticOrderAt](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticorderat.md) | 49 | `declaration-track:e834ea69303ea7c1e2f85d4122b54bc19c6141b479c893e015dafd050352802a` |
| 2 | `def` | [analyticOrderNatAt](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticordernatat.md) | 65 | `declaration-track:789c462f650e95027d9f391184c7c5ddd3812186f2efc922e034fe1cd1d251d5` |
| 3 | `lemma` | [analyticOrderAt_of_not_analyticAt](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticorderat-of-not-analyticat.md) | 68 | `result-track:86d359e6a5e868fc1914cd6dd1b64f723d3340c08bf06c9fc950f34a7bc8e4e0` |
| 4 | `lemma` | [analyticOrderNatAt_of_not_analyticAt](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticordernatat-of-not-analyticat.md) | 72 | `result-track:bdbb6e90b8628e87d06e0722b5cd0268c7a36780724e250e75dc181ec1180ae4` |
| 5 | `lemma` | [Nat.cast_analyticOrderNatAt](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/nat-cast-analyticordernatat.md) | 75 | `result-track:7d74caf3630859bd935a3d38bc2ff2fa3c4e0fa11ae3a79e66f79e075e39caef` |
| 6 | `lemma` | [analyticOrderAt_eq_top](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticorderat-eq-top.md) | 79 | `result-track:da8f7b8d408e5dd81eedb8522db5519ec2283e6a1d17e60dddd49d325774238a` |
| 7 | `lemma` | [AnalyticAt.analyticOrderAt_eq_natCast](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticat-analyticorderat-eq-natcast.md) | 87 | `result-track:c14f396342db79afe5b8d41bdf09ec801dd9f4043d00159b485dec631ccd3a99` |
| 8 | `lemma` | [AnalyticAt.analyticOrderNatAt_eq_iff](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticat-analyticordernatat-eq-iff.md) | 105 | `result-track:2f4357e82c8acee79f38e08fa01c02344c5b583d1e6d9b8c14d7dbaf8b138091` |
| 9 | `lemma` | [AnalyticAt.analyticOrderAt_ne_top](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticat-analyticorderat-ne-top.md) | 117 | `result-track:268e35efa5a2816c4e7e2c05881beecef12db0510d9ae99f856c854173007542` |
| 10 | `lemma` | [analyticOrderAt_eq_zero](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticorderat-eq-zero.md) | 130 | `result-track:fd1604153ccb84d47ffe105305b27596f6b456510865cdfdbb081fef9e2af822` |
| 11 | `lemma` | [analyticOrderAt_ne_zero](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticorderat-ne-zero.md) | 139 | `result-track:7f67259b954be7c70179b3077731802b1f77b8cdb783e74147c484ff4e75f5bf` |
| 12 | `lemma` | [AnalyticAt.analyticOrderAt_eq_zero](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticat-analyticorderat-eq-zero.md) | 143 | `result-track:e614b2ff58b5dfe9d01143674e24ffc43edf9bc03fe8e35881ce78a1eb54536a` |
| 13 | `lemma` | [AnalyticAt.analyticOrderAt_ne_zero](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticat-analyticorderat-ne-zero.md) | 150 | `result-track:4a52024180319f1ed63530fbd474be453e825554d9a9b79ad78b097d480b5eeb` |
| 14 | `lemma` | [apply_eq_zero_of_analyticOrderAt_ne_zero](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/apply-eq-zero-of-analyticorderat-ne-zero.md) | 154 | `result-track:190a75eb5a045843833a6c2258e921aa49476059c642096a9496936b4e425c31` |
| 15 | `lemma` | [apply_eq_zero_of_analyticOrderNatAt_ne_zero](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/apply-eq-zero-of-analyticordernatat-ne-zero.md) | 159 | `result-track:2cfb2d78ea663f4a7c9b6d7341a8f35edb8e2cbaa2afc13c3f58edb189ef58f1` |
| 16 | `lemma` | [natCast_le_analyticOrderAt](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/natcast-le-analyticorderat.md) | 168 | `result-track:610fe52ee3c0f71c97b9676110296091114be3b4f45b81bddfa4b813ec9d13a3` |
| 17 | `lemma` | [analyticOrderAt_congr](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticorderat-congr.md) | 193 | `result-track:871fe21006bdd4e46f4e3b432ef2498c323b65a3452cb1a3baccb0dde020461d` |
| 18 | `lemma` | [analyticOrderAt_neg](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticorderat-neg.md) | 205 | `result-track:e60f1d2cf9e91eb3df7e457f2e3005e59a294b9c32d5711aac9d19398a39f902` |
| 19 | `theorem` | [le_analyticOrderAt_add](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/le-analyticorderat-add.md) | 214 | `result-track:80766c0dffa062ecf4f11ca1a9d665fa801dd3aa9317be8dac7f01a54d1f0d21` |
| 20 | `lemma` | [le_analyticOrderAt_sub](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/le-analyticorderat-sub.md) | 227 | `result-track:afc947c68dcac987982f1635f8f4721233fb1b0f8fb65488884464ec940e67e1` |
| 21 | `lemma` | [analyticOrderAt_add_eq_left_of_lt](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticorderat-add-eq-left-of-lt.md) | 231 | `result-track:a196603813482255dd2ae08241f56d53611b8c42133ea4afc7d91052ba04a8d8` |
| 22 | `lemma` | [analyticOrderAt_add_eq_right_of_lt](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticorderat-add-eq-right-of-lt.md) | 236 | `result-track:3658231bad4acf0f562580207ed704b4518fc98e274e7f0134c4b5b2da51a9df` |
| 23 | `lemma` | [analyticOrderAt_add_of_ne](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticorderat-add-of-ne.md) | 244 | `result-track:6fd20dd6775d3e6d542ed806c7efc76ad044eb2b558fec8449bb1d9247643b44` |
| 24 | `lemma` | [analyticOrderAt_smul_eq_top_of_left](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticorderat-smul-eq-top-of-left.md) | 253 | `result-track:d1c743307d1a743e20a219f7b6b3e0bd36ef17638cc5a90737d3b5c4e1881c3d` |
| 25 | `lemma` | [analyticOrderAt_smul_eq_top_of_right](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticorderat-smul-eq-top-of-right.md) | 259 | `result-track:aad7b9a351129397141ab44eb9909cf452cce3b6dc510734e33502389ebea2c4` |
| 26 | `lemma` | [analyticOrderAt_smul](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticorderat-smul.md) | 266 | `result-track:b831c4a590961bc3284c8f95deacbbbf0557c54e92f644034ab17f085673fa3a` |
| 27 | `lemma` | [analyticOrderAt_centeredMonomial](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticorderat-centeredmonomial.md) | 294 | `result-track:3e6f0ac8238d9b22fe9c29beb994cd8dbb76ea9fce82906f6a68219cd39cd73b` |
| 28 | `lemma` | [analyticOrderAt_mul_eq_top_of_left](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticorderat-mul-eq-top-of-left.md) | 305 | `result-track:e2520db7e1e3a78aaf1788a773e6e66fdc3515c413d735425c9c6d7999ba67eb` |
| 29 | `lemma` | [analyticOrderAt_mul_eq_top_of_right](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticorderat-mul-eq-top-of-right.md) | 311 | `result-track:7e8aa127dc1bbb85105047eaed972f14c1b7dedf36f0ef3c5a669bb08c813172` |
| 30 | `theorem` | [analyticOrderAt_mul](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticorderat-mul.md) | 315 | `result-track:f1568fc65541a754383e9e22d7f2945285b129b5fccb72b4b298f3089a680218` |
| 31 | `theorem` | [analyticOrderNatAt_mul](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticordernatat-mul.md) | 322 | `result-track:e048a46728271ec5c804fddcd4240dc299d2423e095cafc1a024aa027a6e63f0` |
| 32 | `theorem` | [analyticOrderAt_pow](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticorderat-pow.md) | 328 | `result-track:01c9a6bba9e743ae40635c631d424019c4ac55d781c20647bb3c64733b42f482` |
| 33 | `theorem` | [analyticOrderNatAt_pow](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticordernatat-pow.md) | 336 | `result-track:a46862f060cd20748ef441b2baaba5946ac771d493b3f3492f3307628502cf8d` |
| 34 | `theorem` | [isClopen_setOf_analyticOrderAt_eq_top](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/isclopen-setof-analyticorderat-eq-top.md) | 352 | `result-track:e1095677842d88203eda0c58d14fffec6ef12df634806679c6819b92035701cf` |
| 35 | `theorem` | [exists_analyticOrderAt_ne_top_iff_forall](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/exists-analyticorderat-ne-top-iff-forall.md) | 395 | `result-track:9eb21a93e7f99c7a18ce87a3af5047963e625a9c8744c2c121e569f9103def74` |
| 36 | `theorem` | [analyticOrderAt_ne_top_of_isPreconnected](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/analyticorderat-ne-top-of-ispreconnected.md) | 405 | `result-track:2fc7e19057fa58407e887bd4b6604a857d4dafa96a2f97fa6818280d155c5d38` |
| 37 | `theorem` | [codiscrete_setOf_analyticOrderAt_eq_zero_or_top](../../../../FunctionalAnalysis/AnalyticOrderNamespaced.lean/declarations/codiscrete-setof-analyticorderat-eq-zero-or-top.md) | 412 | `result-track:1f8fd9d66c7285ba19193996f505f5a469311f68f2335e57fac77693239a38ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=99517f2cc8fa40c1572acc8ed2a5ba87f6fbbf3ffa306d6040abe2bb511ce25f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Order/Varianted8a61713ad1576a77cd32a725c896618e234ddcb50ab577b3ea47b68e7e1b26.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Order/Varianted8a61713ad1576a77cd32a725c896618e234ddcb50ab577b3ea47b68e7e1b26.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
