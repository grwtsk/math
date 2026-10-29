# Verification target: Certificate Integration Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "823024257f25d2ab06d8e4b433ae52ba395d781e",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `823024257f25d2ab06d8e4b433ae52ba395d781e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Validity.Integration` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PartitionEntry](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/partitionentry.md) | 58 | `declaration-track:522bfe5177d8cf116a4fd7ef22a5dc9ebc7104283af53ca34f89c6d0ac575439` |
| 2 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/instance.md) | 65 | `declaration-track:ac1f28d8c23e0a7a399b59a0df6df6468ea694fae7b784eb3b48ae77a892d336` |
| 3 | `structure` | [IntegralCertificate](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/integralcertificate.md) | 70 | `declaration-track:6cb6153fef8207a851d6724d2e881d010e08e0fe5720ac2000fc8cb8893b971b` |
| 4 | `def` | [checkCoverage](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/checkcoverage.md) | 87 | `declaration-track:6bc9777a05f95129c0c2492f7fc8e230d97c10339773655f83513353ea23782b` |
| 5 | `def` | [checkPartitionBound](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/checkpartitionbound.md) | 103 | `declaration-track:b7081c720cb586b3ac09c09c937ba8d9da6d607b8ec65c531803f6f03437771b` |
| 6 | `def` | [checkAllBounds](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/checkallbounds.md) | 115 | `declaration-track:294f483274e7404aed5bf249833fc0e7865e763305cdfc2913c616a0784ac329` |
| 7 | `def` | [sumBounds](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/sumbounds.md) | 119 | `declaration-track:2c8986fa9b69977aa58d95e2b1947d481a0187b9437a5e757d0a69c965a12a92` |
| 8 | `def` | [checkSumInTarget](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/checksumintarget.md) | 124 | `declaration-track:98efba5072a89c324442781af8be9554484aa042f334b6dffc808daeb9ed9cbd` |
| 9 | `def` | [verifyCertificate](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/verifycertificate.md) | 133 | `declaration-track:25798c1363c9e6b6ed2bc5de63da6709948b6423d13b84755acad0abc4235fdd` |
| 10 | `theorem` | [coverage_implies_partition](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/coverage-implies-partition.md) | 145 | `result-track:345c5dec427935410115055d337269aae35e1d4cc15463558a725151609ab79c` |
| 11 | `theorem` | [singleton_mul_lo_eq_min](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/singleton-mul-lo-eq-min.md) | 160 | `result-track:deaadf11c175545aaa963bcf69303bc2fc168e44037a458686ff7d7a7b4571c3` |
| 12 | `theorem` | [singleton_mul_hi_eq_max](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/singleton-mul-hi-eq-max.md) | 174 | `result-track:662875cab8f1ecfcc2690f9d4638798415496ef92f17506863fda8d71c4301d7` |
| 13 | `theorem` | [singleton_mul_lo_nonneg](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/singleton-mul-lo-nonneg.md) | 182 | `result-track:b10baf20b91c722b0afd5e8044cb184dca9d796581e0fe499f7fa0a6dad94976` |
| 14 | `theorem` | [singleton_mul_hi_nonneg](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/singleton-mul-hi-nonneg.md) | 191 | `result-track:654ae689053cbc1cb26bcf2e64935f978344125190c249735c14169f72a0c0dc` |
| 15 | `theorem` | [partition_bound_correct](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/partition-bound-correct.md) | 205 | `result-track:ac833504fde30e462f3a2bbe6d8bd78a8ef2e83849844d051b5a4374e040527d` |
| 16 | `theorem` | [foldl_add_mem](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/foldl-add-mem.md) | 273 | `result-track:2b31fc6d9cdd09a3287f48855499c9cb8c780cd28a6e0eca43a886043a78bfcd` |
| 17 | `theorem` | [sum_mem_sum_intervals](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/sum-mem-sum-intervals.md) | 306 | `result-track:498c695a152455583ca3cb734b6d6b19c06985e692b9e03168699a52783c8c04` |
| 18 | `theorem` | [coverage_first_starts](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/coverage-first-starts.md) | 316 | `result-track:ee8f966f620600916009e861d400dd6bc68997097554d7bbf40e1e38b01cfe53` |
| 19 | `theorem` | [checkContiguous_last_ends_aux](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/checkcontiguous-last-ends-aux.md) | 332 | `result-track:504692497d741222443a6820f7cce9f914a10cee4467a2121054229e46c75cae` |
| 20 | `theorem` | [coverage_last_ends](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/coverage-last-ends.md) | 354 | `result-track:96a8076bd598f994e5ca5a657f08c6c2abba2c49fb8dc0530058c5a2ebd32edf` |
| 21 | `theorem` | [checkContiguous_adjacent_aux](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/checkcontiguous-adjacent-aux.md) | 374 | `result-track:8c640c0a3c15962e1c28d09419cab1b55a4aa0f8037d38a8fc06cbc2ec6880f2` |
| 22 | `theorem` | [coverage_adjacent](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/coverage-adjacent.md) | 403 | `result-track:598c04cd168acd8f2000dc0f15858c44120cf33cc89d4168cf75d5ead37343a0` |
| 23 | `theorem` | [integrable_subinterval](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/integrable-subinterval.md) | 427 | `result-track:8aa148c2dd2d0721ca52a22d8a42f2bae4b7dcbc237e5b325de809bc2dccfc12` |
| 24 | `theorem` | [coverage_nonempty](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/coverage-nonempty.md) | 437 | `result-track:e39f1462e39813ecbbd56281fceab0eef5bad56bf21323a374bd08b9e2c63b90` |
| 25 | `theorem` | [coverage_tail_contiguous](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/coverage-tail-contiguous.md) | 443 | `result-track:bcd4a9384ae703afd2f57bbecc5f6dfc27672e670d5dedce2516273485e35839` |
| 26 | `theorem` | [contiguous_all_hi_le_domain_hi](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/contiguous-all-hi-le-domain-hi.md) | 453 | `result-track:6af5ddeda99bf5cf4b98a7e51542701e65fa7c66ab2213ff00595ba88ba543f3` |
| 27 | `theorem` | [contiguous_entry_le_domain_hi](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/contiguous-entry-le-domain-hi.md) | 487 | `result-track:60f2ce6745786629d76405302c92af5396313dad5581ef8069616a7b8473a41e` |
| 28 | `theorem` | [coverage_first_hi_le](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/coverage-first-hi-le.md) | 496 | `result-track:5db663e88308c74893ae03e70e9e363eef32e59880b620edbd2aaac7a1c1658b` |
| 29 | `theorem` | [coverage_entry_hi_le_domain_hi](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/coverage-entry-hi-le-domain-hi.md) | 517 | `result-track:83685b5e39709ddc90420950893929fbf9c2330e571a8cdcfd2d8d91badcc140` |
| 30 | `theorem` | [coverage_entry_lo_ge_domain_lo](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/coverage-entry-lo-ge-domain-lo.md) | 534 | `result-track:402024c49eb83465cb874ee49eb724b73a382f151c66dc43ec3c271ca6f3bc3c` |
| 31 | `theorem` | [checkContiguous_depends_only_on_hi](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/checkcontiguous-depends-only-on-hi.md) | 585 | `result-track:6976ccad1be177090f818c1038a3235340c8e1e960392c8688e1c5ae533e96db` |
| 32 | `theorem` | [contiguous_to_coverage_tail](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/contiguous-to-coverage-tail.md) | 599 | `result-track:f3d387f8cf5832f8cf66edf3fb3e215d21667ed280c7ffd2f38a060aad8dea9d` |
| 33 | `theorem` | [coverage_integral_sum](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/coverage-integral-sum.md) | 615 | `result-track:3edb14f51a847a952e2e2dc31ff10032e41a71967c0e6b99a7664ffd341d4430` |
| 34 | `theorem` | [verify_certificate_correct](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/verify-certificate-correct.md) | 693 | `result-track:a2a723b143c9fe042a5c7af7c740d682c67a3fea0a3a7e470bf5481a6f668be2` |
| 35 | `def` | [mkPartitionEntry](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/mkpartitionentry.md) | 761 | `declaration-track:93353b400a2098724d62f56a7395e2725802514910f7b5629c0a2f38ec4ecfe4` |
| 36 | `theorem` | [midpoint_le_hi](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/midpoint-le-hi.md) | 775 | `result-track:ef6095e66718aecb9816964364cfab94eadded1c9fac912c0a0d530d8aad4a0a` |
| 37 | `theorem` | [lo_le_midpoint](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/lo-le-midpoint.md) | 778 | `result-track:768c6afffe81bf265aa79ecbff5376b5964a9b9790cacb65e0a0b4fe993081fe` |
| 38 | `def` | [buildCertificateAux](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/buildcertificateaux.md) | 782 | `declaration-track:fa1f8c5af67516c90cbee9cd67554e31cec5b9803b312a1b684367852ead17b7` |
| 39 | `def` | [buildCertificate](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/buildcertificate.md) | 808 | `declaration-track:3cb3a38219c1222e245d520d01f3b7a9b3207eb77903b74d0ba8a16528e1417d` |
| 40 | `def` | [checkIntegralCertLowerBound](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/checkintegralcertlowerbound.md) | 821 | `declaration-track:0e6e22e28f8d25c2c7631f97cbaefa3d316638217334e4035a9aae591bb8d546` |
| 41 | `def` | [checkIntegralCertUpperBound](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/checkintegralcertupperbound.md) | 827 | `declaration-track:5a827a6439c3288299d3cb8a2f39455ca5b69c26979ff67035e94c36ccfe57cc` |
| 42 | `theorem` | [verify_integral_cert_lower_bound](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/verify-integral-cert-lower-bound.md) | 833 | `result-track:5f8062046baedeba3a5dc372454645ef525a2cc1fa758614d77010dd6940a2f5` |
| 43 | `theorem` | [verify_integral_cert_upper_bound](../../../../MeasureAndIntegration/CertificateIntegrationNamespaced.lean/declarations/verify-integral-cert-upper-bound.md) | 857 | `result-track:329f471b102affa42ac11cfd7fcd8da2c88095cee12d98877c340b9955df6e73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c3e6f6b032a92ca81efd06acfaad04fd3185642b97d2435f7228b9117d5ea3c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
