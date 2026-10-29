# Verification target: Source Gram Audit Results

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88e593f9f044955b8330864805b5c1380ff2face",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramAudit/Variant3639b577d96e235b13255273b27c235dc06e6434601ab80f51793e5b98e4d475.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88e593f9f044955b8330864805b5c1380ff2face`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramAudit/Variant3639b577d96e235b13255273b27c235dc06e6434601ab80f51793e5b98e4d475.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramAudit/Variant3639b577d96e235b13255273b27c235dc06e6434601ab80f51793e5b98e4d475.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.FullQuadraticAudit` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ArithmeticDirichletGramAudit` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.GramMatrix` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PhysicalHilbert](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/physicalhilbert.md) | 30 | `declaration-track:ebefc2b3486b2c78e49c7ca7eff896933479b1e53a7d8c09c0da96ee9bd43e91` |
| 2 | `def` | [translatedTest](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/translatedtest.md) | 33 | `declaration-track:4cf65fd7f125f6774df86a54561633d394926a1899a42aaeb062a7ee83c07be7` |
| 3 | `theorem` | [translated_test_mem_lp](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/translated-test-mem-lp.md) | 35 | `result-track:37a65c0b0c6d248dca8e457dd82011090d5322f90b29e74062473e084c8722a0` |
| 4 | `def` | [translatedVector](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/translatedvector.md) | 42 | `declaration-track:88e51fc544275b8bf84cc731870f716ad913b84bc8812a12a8015da880c7b9e7` |
| 5 | `theorem` | [translated_vector_ae_eq](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/translated-vector-ae-eq.md) | 45 | `result-track:130f5431b65d10144e9743a9bd63bdbfa44938ef92b4d13df933031be5748743` |
| 6 | `theorem` | [translated_vector_inner](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/translated-vector-inner.md) | 48 | `result-track:dd381f7eea63f438625de17e96c5f9a85c57d8b117b7f881b259785548f4b899` |
| 7 | `def` | [sourceGram](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/sourcegram.md) | 68 | `declaration-track:edce48997364d4c9f95b8953ffe50a95662f81b98394df72c94a771d2e42c3da` |
| 8 | `theorem` | [source_gram_eq](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/source-gram-eq.md) | 71 | `result-track:2456cbd99e1ec4f8b1545adaa10e3f29f05d3e2e22eb6d16308cfdefd88b0804` |
| 9 | `theorem` | [source_gram_pos_semidefinite](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/source-gram-pos-semidefinite.md) | 76 | `result-track:73daf855dd93cac6c8e17a43a58522353866952e17a9a18cf9ced124547dd952` |
| 10 | `theorem` | [strict_prime_gram_pos_semidefinite](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/strict-prime-gram-pos-semidefinite.md) | 82 | `result-track:b7f41299545f8a445f934f9e1809796a602daa5f5a6f3c477f56008e6d54ecae` |
| 11 | `def` | [primePacket](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/primepacket.md) | 87 | `declaration-track:631db6495b0c46056865f0acf8265dbb9721c8404b939276376f39414a18e87f` |
| 12 | `theorem` | [translated_vector_inner_zero](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/translated-vector-inner-zero.md) | 91 | `result-track:e7dc9e866311db200d1e1ab8e037664445427957e68394ecf341cb9cf833d93d` |
| 13 | `theorem` | [source_prime_packet_inner](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/source-prime-packet-inner.md) | 96 | `result-track:803f53681d16ef7b879ec58e365fce876952eb26088ab88338f8c4aa19444106` |
| 14 | `theorem` | [prime_packet_norm_sq](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/prime-packet-norm-sq.md) | 103 | `result-track:9990625d69f181a8f330d663e962f8bbeae4be1264647d7b20e9b492a822f80a` |
| 15 | `theorem` | [rescaled_second_moment_le_decay](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/rescaled-second-moment-le-decay.md) | 122 | `result-track:04730abaf558e809bac3974d0b06da852320c1c69c5a04e578174cc3edb9e629` |
| 16 | `theorem` | [actual_second_moment_le_decay](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/actual-second-moment-le-decay.md) | 147 | `result-track:5088ed4a02b9dafe340376d300a7695cc2830548dec8066d802b4eb53d149091` |
| 17 | `theorem` | [actual_archimedean_upper_decay](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/actual-archimedean-upper-decay.md) | 155 | `result-track:0db6c0732e3d9f30231c026496730fee0fb3c231decca45334181c454732d546` |
| 18 | `def` | [gammaNegativityRadius](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/gammanegativityradius.md) | 178 | `declaration-track:525b7ba8d362268e9ba8c045ae2b8ef808452f53c6232c8d01c4d53809a4655f` |
| 19 | `theorem` | [gamma_negativity_radius_ge_one](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/gamma-negativity-radius-ge-one.md) | 181 | `result-track:006eff44c4a9a1cbd4a895f238dc36a205103ee8b8c22950f619c869bbb3da6a` |
| 20 | `theorem` | [actual_archimedean_negative](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/actual-archimedean-negative.md) | 184 | `result-track:bd93adde4d35e28edb8f01b8f3dbc22053a2fff4da2bb86a9c41fc7ec477ddaa` |
| 21 | `theorem` | [no_psd_gamma_diagonal](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/no-psd-gamma-diagonal.md) | 203 | `result-track:6a0a26e534921f46428caac6d942b9ecabc69f33ad19786fdc58c06b021c96b3` |
| 22 | `theorem` | [no_all_scale_psd_gamma_diagonal](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/no-all-scale-psd-gamma-diagonal.md) | 213 | `result-track:a99c972dec8d61134df9ae67dfa811e94bec37d256d7a3c2487265b46faf69ee` |
| 23 | `theorem` | [source_quadratic_square_completion](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/source-quadratic-square-completion.md) | 221 | `result-track:be34fe29d6772f45835929561540c7186fc2c6f763ef321252910b25a5c6d490` |
| 24 | `def` | [sourceGammaDifferenceMass](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/sourcegammadifferencemass.md) | 231 | `declaration-track:f203cbe8bcb04b6e5f69b17c331e634ea849f3d95096f11a7c8cef56fe19fbce` |
| 25 | `theorem` | [source_gamma_difference_density_integrable](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/source-gamma-difference-density-integrable.md) | 234 | `result-track:7cf24a84ea65c948506ccb16777597071a9f700801e969e2f34ea52009aa6950` |
| 26 | `theorem` | [source_gamma_difference_mass_nonneg](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/source-gamma-difference-mass-nonneg.md) | 245 | `result-track:511643cbc6a776b309b013bcadc022eaf8b64002242172b1412fc401372d21a7` |
| 27 | `theorem` | [actual_gamma_eq_zero_add_difference_mass](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/actual-gamma-eq-zero-add-difference-mass.md) | 253 | `result-track:91a23ce7212532f872f16b3350889617b0da29c01a3897b6b6691f3d2a7fb198` |
| 28 | `theorem` | [actual_source_quadratic_eq_scalar_add_positive_masses](../../../../MeasureAndIntegration/SourceGramAuditResults.lean/declarations/actual-source-quadratic-eq-scalar-add-positive-masses.md) | 276 | `result-track:8d7a846c1355ff63903715f1e8f88eda69e0d79a455025dd07d8478964d38342` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=376053089d867251a0ee96a55e23c3c0b38e08dee78e9fc65a43890cc52c61b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramAudit/Variant3639b577d96e235b13255273b27c235dc06e6434601ab80f51793e5b98e4d475.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramAudit/Variant3639b577d96e235b13255273b27c235dc06e6434601ab80f51793e5b98e4d475.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
