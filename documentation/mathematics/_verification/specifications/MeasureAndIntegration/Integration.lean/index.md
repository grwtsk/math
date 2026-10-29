# Verification target: Integration

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "311dd7c19f7fb27658208c4be11e77820aa7f316",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Integration.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Integration.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `311dd7c19f7fb27658208c4be11e77820aa7f316`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.IntervalEval` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Integrate` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ProveContinuous` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uniformPartitionCore](../../../../MeasureAndIntegration/Integration.lean/declarations/uniformpartitioncore.md) | 58 | `declaration-track:756ce5a8548a6af42f3c4cc4f558d6f26604599e772fe672be654c3e1c0df3e9` |
| 2 | `def` | [sumIntervalBoundsCore](../../../../MeasureAndIntegration/Integration.lean/declarations/sumintervalboundscore.md) | 74 | `declaration-track:0991896d907741d7ffdbb605cb943b5d034075e23f3236804166d101c5a1ab99` |
| 3 | `def` | [integrateIntervalCore](../../../../MeasureAndIntegration/Integration.lean/declarations/integrateintervalcore.md) | 85 | `declaration-track:a519f1b381e12dc32432cd303ddb3cf3c753285612c4e9983481370ba4f5f5bf` |
| 4 | `def` | [integrateInterval1Core](../../../../MeasureAndIntegration/Integration.lean/declarations/integrateinterval1core.md) | 90 | `declaration-track:01457bf02826dc6d6a3997f99917438a0b845d0053eee5daa4b1512e809b6dde` |
| 5 | `theorem` | [exprSupportedCore_intervalIntegrable](../../../../MeasureAndIntegration/Integration.lean/declarations/exprsupportedcore-intervalintegrable.md) | 104 | `result-track:40e09005c9a01f1b03b7f6f81b8742a2c59a6ab9d71d500c0f2b3bc34e7081a5` |
| 6 | `theorem` | [integrateInterval1Core_correct](../../../../MeasureAndIntegration/Integration.lean/declarations/integrateinterval1core-correct.md) | 122 | `result-track:d0a236df5fab76d16365323a4beb727136466b797ba919e9cf609326367871b7` |
| 7 | `def` | [checkIntegralBoundsCore](../../../../MeasureAndIntegration/Integration.lean/declarations/checkintegralboundscore.md) | 177 | `declaration-track:edbc40f253f744e66705d803d1ad40a8e4b854719e2d0d5280c8dac6488f6c6d` |
| 8 | `theorem` | [verify_integral_bound](../../../../MeasureAndIntegration/Integration.lean/declarations/verify-integral-bound.md) | 195 | `result-track:e6c1ba5d442e6927140990980264c3be054b589f50e4fa8d6830aaf8651c8d13` |
| 9 | `def` | [getIntegralBound](../../../../MeasureAndIntegration/Integration.lean/declarations/getintegralbound.md) | 205 | `declaration-track:004606a14cf698678a7968a5250ded08482b94c98682b71fdd6e0535b965b23f` |
| 10 | `theorem` | [integral_in_bound](../../../../MeasureAndIntegration/Integration.lean/declarations/integral-in-bound.md) | 211 | `result-track:08a7a8a9d8c3c78a5b85103b86850a83f6d8fe7d3b62f129dfa8cb4b25a16ca5` |
| 11 | `def` | [integrateInterval1WithInv](../../../../MeasureAndIntegration/Integration.lean/declarations/integrateinterval1withinv.md) | 224 | `declaration-track:da301d7de3386652fdb460f3d6277a565405252adcc7f2eb0bee2122bf7edf7d` |
| 12 | `theorem` | [integrateInterval1WithInv_correct](../../../../MeasureAndIntegration/Integration.lean/declarations/integrateinterval1withinv-correct.md) | 231 | `result-track:9e8a96505cd17eb1bf5e36c08d6cf0207758a5899cd9d55bccf7b64096be0eb6` |
| 13 | `def` | [checkIntegralBoundsWithInv](../../../../MeasureAndIntegration/Integration.lean/declarations/checkintegralboundswithinv.md) | 291 | `declaration-track:2183aedaec70b86ac2f71cd14e784174124b53b9fc83825733c11584bb81c31a` |
| 14 | `theorem` | [verify_integral_bound_withInv](../../../../MeasureAndIntegration/Integration.lean/declarations/verify-integral-bound-withinv.md) | 302 | `result-track:7ac9ca4e03301018d2a1ac62a8f608661a7fbfeac5fdfea3ab6a08a60d567d1f` |
| 15 | `def` | [collectBoundsWithInv](../../../../MeasureAndIntegration/Integration.lean/declarations/collectboundswithinv.md) | 325 | `declaration-track:de6353b8025c1cef3745c273afc78d77ada017cc809fbf70c1183046539502d6` |
| 16 | `def` | [integratePartitionWithInv](../../../../MeasureAndIntegration/Integration.lean/declarations/integratepartitionwithinv.md) | 334 | `declaration-track:de441522fc7dee39b1267dc8154c43e57e194ad8bb7b80f9a9e6ae8bc5cf1f4f` |
| 17 | `theorem` | [collectBoundsWithInv_length](../../../../MeasureAndIntegration/Integration.lean/declarations/collectboundswithinv-length.md) | 342 | `result-track:857320064edf7c3e2cdeeabbf1a642c85d855a15c112642ad06316361c9f8d0f` |
| 18 | `theorem` | [collectBoundsWithInv_getElem](../../../../MeasureAndIntegration/Integration.lean/declarations/collectboundswithinv-getelem.md) | 363 | `result-track:b85c4d3f4d3ee0c669f98b292e5d285bcc75056095b268d577d75ab97292adc3` |
| 19 | `theorem` | [integral_subinterval_bounded_withInv](../../../../MeasureAndIntegration/Integration.lean/declarations/integral-subinterval-bounded-withinv.md) | 393 | `result-track:6b5d0100723d1d17808eac8db5856dddc0727bb7833fe85e9259cff5acc94360` |
| 20 | `theorem` | [integratePartitionWithInv_correct](../../../../MeasureAndIntegration/Integration.lean/declarations/integratepartitionwithinv-correct.md) | 404 | `result-track:9a38e1c3027dc0b5205f9236a26a186f076adac232866d4d124206b6cc00af31` |
| 21 | `structure` | [AdaptiveResultWithInv](../../../../MeasureAndIntegration/Integration.lean/declarations/adaptiveresultwithinv.md) | 475 | `declaration-track:d354e8916a25dfc7255beeabb7347d79c5ae1bf00f90f7dcb657565108c88a0f` |
| 22 | `def` | [adaptiveErrorEstimate](../../../../MeasureAndIntegration/Integration.lean/declarations/adaptiveerrorestimate.md) | 483 | `declaration-track:643d60d55904f6dde415410dd880a752d7481cf034f26f064205a32c83655f87` |
| 23 | `def` | [integrateRefinedWithInv](../../../../MeasureAndIntegration/Integration.lean/declarations/integraterefinedwithinv.md) | 487 | `declaration-track:9999b285c20cd927fd1ac05d789b3d4039ec90d2f7ab6e079c3c5f15cf4c3070` |
| 24 | `def` | [integrateAdaptiveAuxWithInv](../../../../MeasureAndIntegration/Integration.lean/declarations/integrateadaptiveauxwithinv.md) | 494 | `declaration-track:90845f4e19b8c12bf2b351666f9185834df43e84f10ee5e2436d9c72759bd3b3` |
| 25 | `def` | [integrateAdaptiveWithInv](../../../../MeasureAndIntegration/Integration.lean/declarations/integrateadaptivewithinv.md) | 524 | `declaration-track:46be64637ac96611fd731d8e396e31ba8a2bf5a79195d9f4b92f63824a2a7b04` |
| 26 | `theorem` | [integrateRefinedWithInv_correct](../../../../MeasureAndIntegration/Integration.lean/declarations/integraterefinedwithinv-correct.md) | 531 | `result-track:401f972d3b32be1d5291491bd66a06062461d004569a18a738ee7e31c64ae94b` |
| 27 | `theorem` | [intervalIntegrable_splitMid_left_withInv](../../../../MeasureAndIntegration/Integration.lean/declarations/intervalintegrable-splitmid-left-withinv.md) | 539 | `result-track:fcd40e49624eaa42f8af09dc8d83eb066bfca4daf1d7f135c1d2c1a5d796810c` |
| 28 | `theorem` | [intervalIntegrable_splitMid_right_withInv](../../../../MeasureAndIntegration/Integration.lean/declarations/intervalintegrable-splitmid-right-withinv.md) | 547 | `result-track:2d89285f9f92e698d3fb8edbcb9249af6b6be428503372e0a2a8bd172a7676fa` |
| 29 | `theorem` | [integral_split_mid_withInv](../../../../MeasureAndIntegration/Integration.lean/declarations/integral-split-mid-withinv.md) | 555 | `result-track:b7d4bb4bbbf584606abfa4c3878ffdc2ead66e9328da0583c718f7dac774b10e` |
| 30 | `theorem` | [integrateAdaptiveAuxWithInv_correct](../../../../MeasureAndIntegration/Integration.lean/declarations/integrateadaptiveauxwithinv-correct.md) | 568 | `result-track:f0f259095af00d4886650a4e4f5c228a044e43b05a3b527a2efa6b6acd52fa09` |
| 31 | `theorem` | [integrateAdaptiveWithInv_correct](../../../../MeasureAndIntegration/Integration.lean/declarations/integrateadaptivewithinv-correct.md) | 617 | `result-track:5adbc9411aeb384a066e2f2c1006fe686c4f6a38e6d99eb5e039aedbbe45c53d` |
| 32 | `def` | [checkIntegralAdaptiveLowerBound](../../../../MeasureAndIntegration/Integration.lean/declarations/checkintegraladaptivelowerbound.md) | 628 | `declaration-track:aed57e6488a6db0bc3618dd6b7fdcd90c999a2aef1a475c910e4322346d7f412` |
| 33 | `def` | [checkIntegralAdaptiveUpperBound](../../../../MeasureAndIntegration/Integration.lean/declarations/checkintegraladaptiveupperbound.md) | 636 | `declaration-track:25fc6473349c6d6f10b7e49b3579f30e5d8a3ea03faec9b1ec3fbde68137720a` |
| 34 | `theorem` | [integral_adaptive_lower_of_check](../../../../MeasureAndIntegration/Integration.lean/declarations/integral-adaptive-lower-of-check.md) | 643 | `result-track:9e6683bf053d296b577459905cafc2f2f764677a20a7a0505b76fd47fc1fe965` |
| 35 | `theorem` | [integral_adaptive_upper_of_check](../../../../MeasureAndIntegration/Integration.lean/declarations/integral-adaptive-upper-of-check.md) | 659 | `result-track:593e143c1d91aba2542f6f7d2c077b1fec3cc2ccd953f3e0898c317a916dfc42` |
| 36 | `def` | [searchPartitionLowerAux](../../../../MeasureAndIntegration/Integration.lean/declarations/searchpartitionloweraux.md) | 690 | `declaration-track:d5c8431ed20cb9893a9ea2aeabd64184b59ff1523417352ce0d7f975d3d8a03a` |
| 37 | `def` | [searchPartitionLower](../../../../MeasureAndIntegration/Integration.lean/declarations/searchpartitionlower.md) | 705 | `declaration-track:cd193d39ad633ffda2bc9388cb366a19a35bc73f378b9de09ba5f70368a60f1d` |
| 38 | `def` | [searchPartitionUpperAux](../../../../MeasureAndIntegration/Integration.lean/declarations/searchpartitionupperaux.md) | 710 | `declaration-track:77aa3cbb3735da005397aed3b48081e427db69f7a82357f3e28836a300b2f1ba` |
| 39 | `def` | [searchPartitionUpper](../../../../MeasureAndIntegration/Integration.lean/declarations/searchpartitionupper.md) | 725 | `declaration-track:06f7457690458c591d4a919136e32f566fc4ef0cd49128591f915b037ccd7793` |
| 40 | `def` | [checkIntegralSearchLowerBound](../../../../MeasureAndIntegration/Integration.lean/declarations/checkintegralsearchlowerbound.md) | 733 | `declaration-track:454a944059d0eb9762a1d4c2cfea0d9e4f55ef80c0553073e365bb02be044280` |
| 41 | `def` | [checkIntegralSearchUpperBound](../../../../MeasureAndIntegration/Integration.lean/declarations/checkintegralsearchupperbound.md) | 738 | `declaration-track:7758c6bd9f2bb4574fd1f3e80ff545f206d6b89dc52cfd629ed624fd3c68d07a` |
| 42 | `theorem` | [searchPartitionLowerAux_spec](../../../../MeasureAndIntegration/Integration.lean/declarations/searchpartitionloweraux-spec.md) | 743 | `result-track:ccb43ac0955ca5a049c755fc8deb6b8755786dc6084c4e506b6a8512e1c96618` |
| 43 | `theorem` | [searchPartitionUpperAux_spec](../../../../MeasureAndIntegration/Integration.lean/declarations/searchpartitionupperaux-spec.md) | 765 | `result-track:66b613a6b50344979500c60662164e9d592f874e6c7a8ea38b6721eb95804fd0` |
| 44 | `theorem` | [searchPartitionLowerAux_valid](../../../../MeasureAndIntegration/Integration.lean/declarations/searchpartitionloweraux-valid.md) | 787 | `result-track:a14205d9857e87f883c94a425cb84f493c3ceddc2975f3e084e33a248b53cb34` |
| 45 | `theorem` | [searchPartitionUpperAux_valid](../../../../MeasureAndIntegration/Integration.lean/declarations/searchpartitionupperaux-valid.md) | 815 | `result-track:5d3f53f322ab80e43d5c201e11129fb6aaf6c28e2232fe2d01e85834177abc15` |
| 46 | `theorem` | [integral_search_lower_of_check](../../../../MeasureAndIntegration/Integration.lean/declarations/integral-search-lower-of-check.md) | 843 | `result-track:3b45908783a0a6f56d312aa9972ca891d019cf23ce6e779ae32b03d2df4ee26f` |
| 47 | `theorem` | [integral_search_upper_of_check](../../../../MeasureAndIntegration/Integration.lean/declarations/integral-search-upper-of-check.md) | 858 | `result-track:7679ab39dfec3e04343986a87551fd72935d25c1b0a0abbaf172e15694605cfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dbd4d58e7d965dbe2abbc70bc6e41d12e2ac359e6742b5d4218675990d4d3ed2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
