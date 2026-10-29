# Verification target: Pole Certificate Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22f6ee82aa1100af52a16283318b3d6a9f4ea382",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant6b35918a6af4961988eacb7ce5befa007b9104c5c3114cffdfb3483e528c9c6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PoleCertificateEdition2.lean/index.md) · [Full source](../../../../GeneralTopology/PoleCertificateEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22f6ee82aa1100af52a16283318b3d6a9f4ea382`.

Source path: `GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant6b35918a6af4961988eacb7ce5befa007b9104c5c3114cffdfb3483e528c9c6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PoleCertificate/Variant6b35918a6af4961988eacb7ce5befa007b9104c5c3114cffdfb3483e528c9c6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Continuation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.AbsMax` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Meromorphic.Order` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [J_lower_cleared_tendsto](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/j-lower-cleared-tendsto.md) | 42 | `result-track:af768505b2120651f6f61cdbde0e4f7d219b7e5f037182a3173608609bb08dba` |
| 2 | `lemma` | [polynomialKernel_cleared_tendsto](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/polynomialkernel-cleared-tendsto.md) | 67 | `result-track:c08515e0368f01a2fb3e7e4d6656d9978983d3c888a9f4214e5b338075db7f15` |
| 3 | `lemma` | [positivePolynomial_coeff_eight](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/positivepolynomial-coeff-eight.md) | 98 | `result-track:45f4ddd6a78b4b721ab00c019c9dd1bc74be1812ce2502836b8da05d6bd546a7` |
| 4 | `lemma` | [mixedPolynomial_neg](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/mixedpolynomial-neg.md) | 103 | `result-track:0da5e41dd93c51d0c3cb96c8ce1130757ff1814bd115ed731b166b200e1d6c73` |
| 5 | `theorem` | [sourceKernel_neg](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/sourcekernel-neg.md) | 110 | `result-track:3b034a0e945533133b6bdc8aa3c0d8931e209710810fc52887fcf5dcfce0b537` |
| 6 | `theorem` | [sourceKernel_local](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/sourcekernel-local.md) | 118 | `result-track:3f8a809ad1af0c2c84cddc2325c649187692a786e2b101da6e396444f58f190d` |
| 7 | `theorem` | [sourceKernel_local_remainder_analytic](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/sourcekernel-local-remainder-analytic.md) | 131 | `result-track:c00c81470b368685dd3be526aae49a3f06abf361148777d1666a0907e4b70a8e` |
| 8 | `theorem` | [ninth_order_limit_add_continuous](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/ninth-order-limit-add-continuous.md) | 164 | `result-track:962b98dedf78e75f43a8a8bbe7aa0a2a9150d38d13fcc79053f1c8417ce3c1d3` |
| 9 | `theorem` | [sourceKernel_local_cleared_tendsto](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/sourcekernel-local-cleared-tendsto.md) | 188 | `result-track:635438858758f1d6fbf61ca50efcc31461b6d6a079a928e37b1cfafc868ec432` |
| 10 | `theorem` | [reflected_pair_cleared_tendsto](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/reflected-pair-cleared-tendsto.md) | 217 | `result-track:ea417178e0969224b81e757d69dc300992291f1a6664c685d8c4feab3569ecce` |
| 11 | `def` | [pointPairPrincipalCoefficient](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/pointpairprincipalcoefficient.md) | 238 | `declaration-track:2539fb20495f5cc76d21db63bb10f90856d31ba1f09a65dca59af561f2a4a8c3` |
| 12 | `def` | [pointPairKernel](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/pointpairkernel.md) | 243 | `declaration-track:8b7619ff1e5f41c568bb86ae2cc17aacef71568f9febe1c68350768eb418b37f` |
| 13 | `theorem` | [point_pair_cleared_tendsto](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/point-pair-cleared-tendsto.md) | 250 | `result-track:60d11b8a3f91303402651c966d411ac11ae80ace3082b3c1ab1756c69808693a` |
| 14 | `theorem` | [point_pair_principal_coefficient_ne_zero](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/point-pair-principal-coefficient-ne-zero.md) | 266 | `result-track:b4674cf66c3c3a35bbb15d145b1ac08f5e1cd713daf27badbb81fb90a74e3c6e` |
| 15 | `theorem` | [not_continuousAt_of_ninth_order_limit](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/not-continuousat-of-ninth-order-limit.md) | 283 | `result-track:50ca5d8657ceba7ed95f65b1fb43da25d362d5c7f16d8dbf9c30bedd060c8a61` |
| 16 | `theorem` | [eventually_scaled_candidate_eq](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/eventually-scaled-candidate-eq.md) | 310 | `result-track:047fef616e056f3547542734d36dbf7d8e9a2ea76ea34a2df59e1ad13e77878b` |
| 17 | `theorem` | [eventually_candidate_eq](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/eventually-candidate-eq.md) | 327 | `result-track:b4b4db852a8b03f08693d0ce2d8078202fbd764876ea3f0cb831f56ee2f421b6` |
| 18 | `theorem` | [exists_isolating_radius](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/exists-isolating-radius.md) | 354 | `result-track:f526ad7a558a912bd750862ce9fe9afbecad3f41dd9080aa3c184d8b7f9df801` |
| 19 | `theorem` | [punctured_closedBall_subset_domain](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/punctured-closedball-subset-domain.md) | 378 | `result-track:2a3039066b7b3d0cf22c74dab828c7e56189971b6701bff4dcf37958f51a52c5` |
| 20 | `theorem` | [sphere_subset_domain](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/sphere-subset-domain.md) | 389 | `result-track:857378d1e4bd2a28f87359824f0993641f21e025efaa6421e29af2d9629d24d0` |
| 21 | `theorem` | [noncolliding_kernel_analytic](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/noncolliding-kernel-analytic.md) | 410 | `result-track:d092980e502c4702dc8fb26603f9661f2ab01e9d7fd323e44572aecb13cd1d81` |
| 22 | `def` | [collisionSet](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/collisionset.md) | 442 | `declaration-track:05d05646c3a3795ad354c9e6d3c0d0697161b3518e1d192a7846d04e9eb6aa54` |
| 23 | `theorem` | [shiftedValue_eq_iff](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/shiftedvalue-eq-iff.md) | 447 | `result-track:bb2511388654c411e1944b53dfb10b5de6ada0c85f006e02946261e5678f6b48` |
| 24 | `theorem` | [shiftedValue_eq_neg_iff](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/shiftedvalue-eq-neg-iff.md) | 458 | `result-track:215cbd35f8069cfa736f43541614544404e1b6e8dec8502710ae779dd279c73b` |
| 25 | `theorem` | [collisionSet_eq_point_fibers](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/collisionset-eq-point-fibers.md) | 472 | `result-track:e578761863b593fcdcf4df94e4122f41746159f6613ec30cd1c3fd19ff7ff8f3` |
| 26 | `theorem` | [collisionSet_finite](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/collisionset-finite.md) | 482 | `result-track:d1b068092c98fbaae55350e329caaf6f9e154f848bfa8c903099e7917a81db4d` |
| 27 | `instance` | [collisionSetFintype](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/collisionsetfintype.md) | 492 | `declaration-track:74dc7066994a6213f69f4cca20f9f9e445f8cd0706cd56939a3ae81625f693d5` |
| 28 | `theorem` | [point_ne_reflect](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/point-ne-reflect.md) | 497 | `result-track:9b45759230d3c7d440d0b27fd8af446d06ebd9396b45dfd6f3f50713ad8ef7b9` |
| 29 | `theorem` | [point_fibers_disjoint](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/point-fibers-disjoint.md) | 507 | `result-track:b9858d82cde055c7f857f7b0abcb8b7068bda9a7a5bac3854b7aaa7f48fe1a03` |
| 30 | `theorem` | [point_fiber_tsum](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/point-fiber-tsum.md) | 519 | `result-track:8b23855e05f6a8cbbf67108c6554219623874036c06de14b3d24fdd133ffe7e4` |
| 31 | `theorem` | [collision_tsum_eq](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/collision-tsum-eq.md) | 545 | `result-track:f30ef0268823cd119e163db1cb1996dfb8c1508e09eb293916d64cef96b64ca0` |
| 32 | `theorem` | [collision_sum_eq_pointPairKernel](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/collision-sum-eq-pointpairkernel.md) | 598 | `result-track:847c1d85b2a9e7836a1ef7faab8042f1cb78920717e89900833238b1f7d614e3` |
| 33 | `theorem` | [tsum_eq_pointPairKernel_add_remainder](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/tsum-eq-pointpairkernel-add-remainder.md) | 619 | `result-track:ccabee69117e0eb7bb35af6a76cedff03bcead4f52ae58e9b6e79468699af93d` |
| 34 | `abbrev` | [RemainingOccurrence](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/remainingoccurrence.md) | 664 | `declaration-track:8318f5e96bf0bc55a794a6c5dc47e9cbade75a8e19c5008512fb50ce3153e79d` |
| 35 | `def` | [remainder](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/remainder.md) | 667 | `declaration-track:ca50216af51b8459121d16f44c72063cc2857353dbfc4d7ceb8b63221d0cae0f` |
| 36 | `lemma` | [boundary_norms_summable](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/boundary-norms-summable.md) | 671 | `result-track:416796fe3760204e7ce48939043f5fd7f1df2badb72c13a0f74453b79f82dc7b` |
| 37 | `lemma` | [closedDisk_norm_le_boundary](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/closeddisk-norm-le-boundary.md) | 684 | `result-track:ba2e99b830c2fe0c494c56de1d0cdcba2e01745c15673dddf60f542ab6c28181` |
| 38 | `lemma` | [closedDisk_norms_summable](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/closeddisk-norms-summable.md) | 717 | `result-track:17a1859028084d23257075e13f6c44b2defe0bacac519f648baf7866c06235e8` |
| 39 | `lemma` | [remainder_hasSumUniformlyOn_closedDisk](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/remainder-hassumuniformlyon-closeddisk.md) | 741 | `result-track:163cbbaf0a16802f92084e137e4a2593bb8e181cf8b6931d76969fcfefff3744` |
| 40 | `lemma` | [remainder_analyticOn_ball](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/remainder-analyticon-ball.md) | 762 | `result-track:60c0e3903060d210c92a6f7a62601b0e35b3d551a197e3132064cca2d139b608` |
| 41 | `lemma` | [remaining_kernel_analytic_on_isolating_disk](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/remaining-kernel-analytic-on-isolating-disk.md) | 789 | `result-track:61112fddd5dc5c26d1ff97cebf9cd37d3f0c2e44fd9aa4e0ffbeecf5f0385472` |
| 42 | `lemma` | [exists_remainder_disk](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/exists-remainder-disk.md) | 825 | `result-track:d2b24fe8e7e6f7c89126d4ff2b9f870c1afdd097a2ed68a696cb13536f70a9ee` |
| 43 | `lemma` | [remainder_analytic_at](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/remainder-analytic-at.md) | 862 | `result-track:0b81cf30b458b542df20d9085e2e4d04e3881dae63eca34d6c5a15915b5c5012` |
| 44 | `theorem` | [eventually_center_add_mem_domain](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/eventually-center-add-mem-domain.md) | 873 | `result-track:0478d573355a31ec855c4d990756b498f168e13ce372392da23e575968fa4559` |
| 45 | `theorem` | [continuedTransform_summable](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/continuedtransform-summable.md) | 900 | `result-track:0fbb53a1a6d3c4e5304eddcee9eb8749c5f9aa074b3013e17e90dda7dc7b4350` |
| 46 | `theorem` | [continuedTransform_punctured_differentiable](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/continuedtransform-punctured-differentiable.md) | 907 | `result-track:7b1ef0e6254e8d50dcbcef825f249b6d3f7a0b917ddb2d20179add8671b53f5c` |
| 47 | `theorem` | [continuedTransform_eventually_split](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/continuedtransform-eventually-split.md) | 919 | `result-track:58ce860c595ef248921415761c4708b18d89565dd0a0e3aea48837088292f0f0` |
| 48 | `theorem` | [continuedTransform_cleared_tendsto](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/continuedtransform-cleared-tendsto.md) | 948 | `result-track:271f68fa50cd8121bbe1541786d074b4a14ddc8345a927daaefb39f09e162a1b` |
| 49 | `def` | [patchedNumerator](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/patchednumerator.md) | 985 | `declaration-track:d8ab11fd6883c24ab4fed32e432b23915265f1e09cacb72f5d128bd5e31b034c` |
| 50 | `theorem` | [patchedNumerator_zero](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/patchednumerator-zero.md) | 989 | `result-track:a774c21ce52212ec455d05c991f9866baae8b42f68fdfe01e4c0727e3e7dd96d` |
| 51 | `theorem` | [patchedNumerator_of_ne](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/patchednumerator-of-ne.md) | 994 | `result-track:93877168e5fbf83b9955afa5c10999f872d3ad7916b3f8b6349a127ed7fcec40` |
| 52 | `theorem` | [patchedNumerator_analytic](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/patchednumerator-analytic.md) | 1001 | `result-track:2daeb0ee1cd90fc3bc686e8853ab88928f6f105af6408be93ae6cf2169b153e3` |
| 53 | `theorem` | [meromorphicAt_of_patched_numerator](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/meromorphicat-of-patched-numerator.md) | 1026 | `result-track:fbd44e7965122fad5eb625f106cb9f7e7c4690a198ef3f6a815b78f5f924cd18` |
| 54 | `theorem` | [meromorphicOrderAt_of_patched_numerator](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/meromorphicorderat-of-patched-numerator.md) | 1041 | `result-track:f7f357bab713c587c83ee6fa6cfdc7207eed17b03f15bc673386365b99b298db` |
| 55 | `theorem` | [exact_pole_certificate](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/exact-pole-certificate.md) | 1058 | `result-track:69a5435216b212e70769149603dfad1cd5175801a9887ac464b5ec26de1d3b0d` |
| 56 | `def` | [sourcePatchedNumerator](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/sourcepatchednumerator.md) | 1098 | `declaration-track:b9fe0e756ffc071beab320846357da6134bb2e45e307012c4116c729cb37273b` |
| 57 | `theorem` | [source_exact_ninth_order_pole](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/source-exact-ninth-order-pole.md) | 1108 | `result-track:292533e110cee61cdf18bb3d9825634f6931abf035cb30d5c0eb17be20e95948` |
| 58 | `def` | [PoleCertificateCheckpoint](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/polecertificatecheckpoint.md) | 1164 | `declaration-track:5827df843ed5e774d4a510f00447a271df56d38506b0f4ee4908799e051ae645` |
| 59 | `theorem` | [pole_certificate_checkpoint](../../../../GeneralTopology/PoleCertificateEdition2.lean/declarations/pole-certificate-checkpoint.md) | 1176 | `result-track:3000a43d3c036d22f8652f0bc70e923713de2b6cf2de3a4982768c000d1de4bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b445d01d13cfe13f5c7524463cb27fb2536f79a064f165d82817ac34088e238c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant6b35918a6af4961988eacb7ce5befa007b9104c5c3114cffdfb3483e528c9c6d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/PoleCertificate/Variant6b35918a6af4961988eacb7ce5befa007b9104c5c3114cffdfb3483e528c9c6d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
