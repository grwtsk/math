# Verification target: Source Gram Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81135bb7b93b3ea6644ccac31582c9e84adb7f8a",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramAudit/Variant802c6cebae70ad428fb0a8a170fb98213824eea75f89d1e9624c8eedc9d4967b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81135bb7b93b3ea6644ccac31582c9e84adb7f8a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramAudit/Variant802c6cebae70ad428fb0a8a170fb98213824eea75f89d1e9624c8eedc9d4967b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramAudit/Variant802c6cebae70ad428fb0a8a170fb98213824eea75f89d1e9624c8eedc9d4967b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.FullQuadraticAudit` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ArithmeticDirichletGramAudit` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.GramMatrix` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PhysicalHilbert](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/physicalhilbert.md) | 38 | `declaration-track:959d287356b4b4ce235e14af0691b6771c9b3fe819821229b8cd7165f9dfbfa2` |
| 2 | `def` | [translatedTest](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/translatedtest.md) | 41 | `declaration-track:3064a5b5515946416c24cc7989bb219180b4ebcde74b006f88dfb22378c3bf22` |
| 3 | `theorem` | [translated_test_mem_lp](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/translated-test-mem-lp.md) | 43 | `result-track:0d2a465626274195c326f1921e4752691b88e1cab856eb781165df5e096b49c4` |
| 4 | `def` | [translatedVector](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/translatedvector.md) | 50 | `declaration-track:b54193cf2ba56312b59f657d1063a49087a7ddf08c56efcfc364be1b5ff6af0b` |
| 5 | `theorem` | [translated_vector_ae_eq](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/translated-vector-ae-eq.md) | 53 | `result-track:4b957e7d44537124034e6413ec005c71f1ce25f70296fe7977260daea20eacb4` |
| 6 | `theorem` | [translated_vector_inner](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/translated-vector-inner.md) | 56 | `result-track:ce0e03d74f4c6ef7a14dbdd20b123ad89d73f1225575ab470360ae4cfe8a804b` |
| 7 | `def` | [sourceGram](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/sourcegram.md) | 76 | `declaration-track:b4007d052257875a44d46d80eeb4a8f8baa9f2632a1cec66a0eb14b4a2c005e1` |
| 8 | `theorem` | [source_gram_eq](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/source-gram-eq.md) | 79 | `result-track:9190192f9e4aab8b7db58d6369a5b1bbbf773ba7b5f976fb2c4c1e2ddd7eeb6d` |
| 9 | `theorem` | [source_gram_pos_semidefinite](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/source-gram-pos-semidefinite.md) | 84 | `result-track:d808f4a48695123afc31932e50c182fee878c836d84f03dba9a333279a7ab433` |
| 10 | `theorem` | [strict_prime_gram_pos_semidefinite](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/strict-prime-gram-pos-semidefinite.md) | 90 | `result-track:b57b784b7713f3dacd36aeab489aff1fd3bb0fa4f2f70485a786fd3e121bf176` |
| 11 | `def` | [primePacket](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/primepacket.md) | 95 | `declaration-track:d17f6f4ddb1a8e5b55a73b980523ce7b2f62e9db96524a6cdf750a75d7a20d47` |
| 12 | `theorem` | [translated_vector_inner_zero](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/translated-vector-inner-zero.md) | 99 | `result-track:d199816ce9e2d99b83d7604bc794ebba2a0592b924850ad92f5fb57f9037565e` |
| 13 | `theorem` | [source_prime_packet_inner](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/source-prime-packet-inner.md) | 104 | `result-track:a450eb6849e4ed7dd197e6d62fecec5b939cf46b9787b9314bcc4d44a6c2f666` |
| 14 | `theorem` | [prime_packet_norm_sq](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/prime-packet-norm-sq.md) | 111 | `result-track:70b6a7fb11940b262a9df695d5b96a45423684bbbab0e1a2ccf0728d0a174285` |
| 15 | `theorem` | [rescaled_second_moment_le_decay](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/rescaled-second-moment-le-decay.md) | 130 | `result-track:7c0bb8853646e8f95daa190a99593a28a87372fe4dcb47a5bb2420a2560d16bc` |
| 16 | `theorem` | [actual_second_moment_le_decay](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/actual-second-moment-le-decay.md) | 155 | `result-track:10399cb51b03b0189c36cb89c3e1493e5217588b062caf1ab1150b16fe218143` |
| 17 | `theorem` | [actual_archimedean_upper_decay](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/actual-archimedean-upper-decay.md) | 163 | `result-track:a7de26fe81c2a3336583c4cbddad91153b604c5fbd2309be39f1585fbdd2ff59` |
| 18 | `def` | [gammaNegativityRadius](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/gammanegativityradius.md) | 186 | `declaration-track:ea5e5709f64cba0932dc62c35ec5a01dab7dd1a90195a99de2db5e8345caefa0` |
| 19 | `theorem` | [gamma_negativity_radius_ge_one](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/gamma-negativity-radius-ge-one.md) | 189 | `result-track:693f2c20e507b01b32288ce7599238825d42a52091b34077ecafaea232045a20` |
| 20 | `theorem` | [actual_archimedean_negative](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/actual-archimedean-negative.md) | 192 | `result-track:71b15deaa0f6770c493b6ddc6c272c48c73c17a03e1b6c932abde91e24a889f9` |
| 21 | `theorem` | [no_psd_gamma_diagonal](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/no-psd-gamma-diagonal.md) | 211 | `result-track:de2853906cb0a003248b6c7d2bde8177d36678a3dd8ef9463bb3699bf8d33499` |
| 22 | `theorem` | [no_all_scale_psd_gamma_diagonal](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/no-all-scale-psd-gamma-diagonal.md) | 221 | `result-track:7106e9de7667d355ecc4e9a9a03e18c1c468e1a7db7a096dd623e08489f9a381` |
| 23 | `theorem` | [source_quadratic_square_completion](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/source-quadratic-square-completion.md) | 229 | `result-track:b223ae53cf4536ef1f1c60578d4d123f7b76692f1acfa9c093a2da72629ef739` |
| 24 | `def` | [sourceGammaDifferenceMass](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/sourcegammadifferencemass.md) | 239 | `declaration-track:e2ec11a4ddc9f45043f75defe4fe72a8f68e0bcbb5c2b1ef66903ff226735a98` |
| 25 | `theorem` | [source_gamma_difference_density_integrable](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/source-gamma-difference-density-integrable.md) | 242 | `result-track:d796e12a9052817a16612b0a7a34a21aa83eb3e6437d7f46213f435e241b1a5d` |
| 26 | `theorem` | [source_gamma_difference_mass_nonneg](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/source-gamma-difference-mass-nonneg.md) | 253 | `result-track:9d6ca2ed06efcdbaaa0ab894de8ffe6eb8849d4ab82b0fe3e62e8d125961d857` |
| 27 | `theorem` | [actual_gamma_eq_zero_add_difference_mass](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/actual-gamma-eq-zero-add-difference-mass.md) | 261 | `result-track:63f42cd87ff96593b18262041e8b612db40c6160f55e3b06bac1a257b13cfbcd` |
| 28 | `theorem` | [actual_source_quadratic_eq_scalar_add_positive_masses](../../../../MeasureAndIntegration/SourceGramAuditNamespaced.lean/declarations/actual-source-quadratic-eq-scalar-add-positive-masses.md) | 284 | `result-track:214fe9ebe5beeef5eeec81ea2bba2cd5f379f281e77d36b3875707fa21545467` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c0edd4ab497e18f33465525a961e6c5c626a476b40237fd439a5bb75d37b8913 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramAudit/Variant802c6cebae70ad428fb0a8a170fb98213824eea75f89d1e9624c8eedc9d4967b.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramAudit/Variant802c6cebae70ad428fb0a8a170fb98213824eea75f89d1e9624c8eedc9d4967b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
