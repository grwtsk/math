# Verification target: Certificate Integration

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "335e39587dbaa85521f4e8fc941808c68eeeb679",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CertificateIntegration.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CertificateIntegration.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `335e39587dbaa85521f4e8fc941808c68eeeb679`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Validity.Integration` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PartitionEntry](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/partitionentry.md) | 50 | `declaration-track:3d586103cbdacd39eeb07a813434de4a063f02909d1e0d188c30ddbd4873641f` |
| 2 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/instance.md) | 57 | `declaration-track:6f590a5f0d7b4c4ea8a89ad8bc2da194ec04c5cea05f9b050080c06a404ae9c9` |
| 3 | `structure` | [IntegralCertificate](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/integralcertificate.md) | 62 | `declaration-track:16a6d7a690d9b2bbb762dd858a30ca552435c5ecf664cb725221a9801abed9a3` |
| 4 | `def` | [checkCoverage](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/checkcoverage.md) | 79 | `declaration-track:b28fdaf4c3b6d303a0b39253d24e66d77963452846fb1b6d48fe3b4cfad65bb8` |
| 5 | `def` | [checkPartitionBound](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/checkpartitionbound.md) | 95 | `declaration-track:37c98ef653f9a3c02bafe0681b1997595ded34f720fe768c090243f9f5dde668` |
| 6 | `def` | [checkAllBounds](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/checkallbounds.md) | 107 | `declaration-track:63bbf0bb3bc21d535d66353fd6a68f73239515b57eacc1f9926e88df96945ce4` |
| 7 | `def` | [sumBounds](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/sumbounds.md) | 111 | `declaration-track:2c5e264de6b4be33928fe6a8cfa24b41d0f43570179350b3f7baefc4fdd939e8` |
| 8 | `def` | [checkSumInTarget](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/checksumintarget.md) | 116 | `declaration-track:dba0d50b3d7409ec6ab773cf7fd3c8a56d12d22588cc1da864d7685187d8598b` |
| 9 | `def` | [verifyCertificate](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/verifycertificate.md) | 125 | `declaration-track:e5a00e3555f32ee15dbba1a79660e06ce8a20553005ca1deda81f955deb1677d` |
| 10 | `theorem` | [coverage_implies_partition](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/coverage-implies-partition.md) | 137 | `result-track:e23494403a669dc5a12449eb4ce1688ef37e537459c88ed28906c20b128b52de` |
| 11 | `theorem` | [singleton_mul_lo_eq_min](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/singleton-mul-lo-eq-min.md) | 152 | `result-track:ab1324e55f660cd3cf3a7ee8e1940555910d7e029baef3b74cf7efa8aecbb626` |
| 12 | `theorem` | [singleton_mul_hi_eq_max](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/singleton-mul-hi-eq-max.md) | 166 | `result-track:934147caf43015a155c8e6e6ebc6abde0a904cf6134c2b6490a5773f099fc0c9` |
| 13 | `theorem` | [singleton_mul_lo_nonneg](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/singleton-mul-lo-nonneg.md) | 174 | `result-track:58216db512eeb28f0c8c76e053c0bf99b2c9c0f02e770cd72ac7a59d3934fb11` |
| 14 | `theorem` | [singleton_mul_hi_nonneg](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/singleton-mul-hi-nonneg.md) | 183 | `result-track:6adb0090bbac17e869f7dee432685f6b6b3a08fa450907d870ade0000df667a0` |
| 15 | `theorem` | [partition_bound_correct](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/partition-bound-correct.md) | 197 | `result-track:d5e5818ecfdb51703b4c84dcdd43560e4432b95d61e8df3a14b2282bdd65f3db` |
| 16 | `theorem` | [foldl_add_mem](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/foldl-add-mem.md) | 265 | `result-track:b3d1a6155a70ca71a25ea70ba7408ae2a5c3a71247bbcb2a6dafb818b3d905e3` |
| 17 | `theorem` | [sum_mem_sum_intervals](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/sum-mem-sum-intervals.md) | 298 | `result-track:b5035fef3b71e21ca6b534bf5c3c623b81edf7f0fa0e35fbe17dceb31dcc8428` |
| 18 | `theorem` | [coverage_first_starts](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/coverage-first-starts.md) | 308 | `result-track:dc5d34cbbd0414995a8b12e1dde889158b579e5189a71a782dca63805089c348` |
| 19 | `theorem` | [checkContiguous_last_ends_aux](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/checkcontiguous-last-ends-aux.md) | 324 | `result-track:aaac05ef08faf6a6f9fdd6b43e6f99bd20097f28272a2ab05e791c582d779c6a` |
| 20 | `theorem` | [coverage_last_ends](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/coverage-last-ends.md) | 346 | `result-track:18cdb8e42b614c193d6055e755509993e54f497179810e10821110926f98f193` |
| 21 | `theorem` | [checkContiguous_adjacent_aux](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/checkcontiguous-adjacent-aux.md) | 366 | `result-track:2a58eed8548f8bc102ebabc30be6104ae7830d99173a51b903957173fbd14e30` |
| 22 | `theorem` | [coverage_adjacent](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/coverage-adjacent.md) | 395 | `result-track:2f730adadb43198c7a86fade6761f867b9a67b0cc925e92f6a04508401531456` |
| 23 | `theorem` | [integrable_subinterval](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/integrable-subinterval.md) | 419 | `result-track:9f95d5ce549fadada10f55e2574b3e0169f6575b2614d84c0a47ae30be800c7f` |
| 24 | `theorem` | [coverage_nonempty](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/coverage-nonempty.md) | 429 | `result-track:93dfd52c938aee35d9a1bb57a03401853d825ae647ffdf392ef38660604da92a` |
| 25 | `theorem` | [coverage_tail_contiguous](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/coverage-tail-contiguous.md) | 435 | `result-track:aba60ad75ba85f2750a7d5a2cd4fca04f0eaff0f447b52c9056a72b645ff1e58` |
| 26 | `theorem` | [contiguous_all_hi_le_domain_hi](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/contiguous-all-hi-le-domain-hi.md) | 445 | `result-track:4a6fd069c33e8fe380e946ac8e2232d86da7ed2e3d066cc5c64189599fff233d` |
| 27 | `theorem` | [contiguous_entry_le_domain_hi](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/contiguous-entry-le-domain-hi.md) | 479 | `result-track:acc405b43bd82b0dbfc80a5c9cbc8dbc5860b39e2b09ed41e33cdd88d6a7445b` |
| 28 | `theorem` | [coverage_first_hi_le](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/coverage-first-hi-le.md) | 488 | `result-track:0eb3a4d101600e116d4ca44da6b8cafbb40b778915a0a80f908c868ca326831a` |
| 29 | `theorem` | [coverage_entry_hi_le_domain_hi](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/coverage-entry-hi-le-domain-hi.md) | 509 | `result-track:956a7c495d203b41930340991ecc1390d40a4c0ab2b8fdfc79dedf8a2fbb628b` |
| 30 | `theorem` | [coverage_entry_lo_ge_domain_lo](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/coverage-entry-lo-ge-domain-lo.md) | 526 | `result-track:c9e1a9b04e1e918ed25a79ac7ad155ea40b83239cfb0786a546a9a60da69d220` |
| 31 | `theorem` | [checkContiguous_depends_only_on_hi](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/checkcontiguous-depends-only-on-hi.md) | 577 | `result-track:ae1fff1a96430f191b72cef5e3fb54d48890c75469db32df1cab4f6fd7fec1f4` |
| 32 | `theorem` | [contiguous_to_coverage_tail](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/contiguous-to-coverage-tail.md) | 591 | `result-track:ab27f28a1384e07e17bfc583596b7d2c4c754da7392d777a33b4604107b80d16` |
| 33 | `theorem` | [coverage_integral_sum](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/coverage-integral-sum.md) | 607 | `result-track:09cf0be503e8197b928cfcf1cfdc042a394bd053c47c936a41f8b4e359c9d38f` |
| 34 | `theorem` | [verify_certificate_correct](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/verify-certificate-correct.md) | 685 | `result-track:4dbc664555745f5d141dae7cadb3086b8955bb38eeb2c0bb2fb3f2db4abe4f41` |
| 35 | `def` | [mkPartitionEntry](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/mkpartitionentry.md) | 753 | `declaration-track:10990ef5e0f59bb87bdff36ffe06c22fc55121ee5685d957ec8fd2f72377bebc` |
| 36 | `theorem` | [midpoint_le_hi](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/midpoint-le-hi.md) | 767 | `result-track:95db88a6dd1c12203cdfeb20465cf41108599f4315fa6aa7633dbd2d202604b3` |
| 37 | `theorem` | [lo_le_midpoint](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/lo-le-midpoint.md) | 770 | `result-track:f4668cf13cf7ee0d50c683d0eb2b10e6b440961a1f250af81b952e36430b66cc` |
| 38 | `def` | [buildCertificateAux](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/buildcertificateaux.md) | 774 | `declaration-track:ee291814ce680facc0703137217c8e4d74080051f50297362f8571ba0bbe9946` |
| 39 | `def` | [buildCertificate](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/buildcertificate.md) | 800 | `declaration-track:b8ef61684c19a4fa9d4705527f78b0618bc5572ad8e9d10c46bccb81d908bfae` |
| 40 | `def` | [checkIntegralCertLowerBound](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/checkintegralcertlowerbound.md) | 813 | `declaration-track:4a5e5f267933625af7e9549197bbd5ea33bf9cf2c1f6860997a5958b2a8d73f7` |
| 41 | `def` | [checkIntegralCertUpperBound](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/checkintegralcertupperbound.md) | 819 | `declaration-track:d68ca8559f0438cb3282b3deef246d69a1070d38956ebb2459577df1ea6efbfd` |
| 42 | `theorem` | [verify_integral_cert_lower_bound](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/verify-integral-cert-lower-bound.md) | 825 | `result-track:1571eb0f6bd10a5b285823a75f9e3e4c73048a2ac9befee52ca44ec1fb6b0b2e` |
| 43 | `theorem` | [verify_integral_cert_upper_bound](../../../../MeasureAndIntegration/CertificateIntegration.lean/declarations/verify-integral-cert-upper-bound.md) | 849 | `result-track:d19a9e7dbe34874d520bb5ff649158c2439e114303bb879a6e5be3f0aaeddf7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c0620c8b69ce9f1ad46f88b62bc9f9778a1f2670418bc2da4cb77bfb8e0a3a35 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
