# Verification target: Pole Certificate Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ab27680bded49f54d9fba2b94939d442257a19e",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant99f4066f33bc9a993b17af58c08dd0695cd611492943d1a23006051ce5b1cb79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/index.md) · [Full source](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ab27680bded49f54d9fba2b94939d442257a19e`.

Source path: `GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant99f4066f33bc9a993b17af58c08dd0695cd611492943d1a23006051ce5b1cb79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PoleCertificate/Variant99f4066f33bc9a993b17af58c08dd0695cd611492943d1a23006051ce5b1cb79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Continuation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.AbsMax` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Meromorphic.Order` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [J_lower_cleared_tendsto](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/j-lower-cleared-tendsto.md) | 51 | `result-track:043033347532c6b999cb92b728b93873f9954c5672e2b9113ebc0868b6a0f132` |
| 2 | `lemma` | [polynomialKernel_cleared_tendsto](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/polynomialkernel-cleared-tendsto.md) | 76 | `result-track:aaeab36a0f17238ace42cd831825829534e03a91f6292c813d5f1f4b12dee00b` |
| 3 | `lemma` | [positivePolynomial_coeff_eight](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/positivepolynomial-coeff-eight.md) | 107 | `result-track:70b98698a005c28f62070024a812ca1c5b9fc60954e327cd6bae8e3a62dd8653` |
| 4 | `lemma` | [mixedPolynomial_neg](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/mixedpolynomial-neg.md) | 112 | `result-track:d3d7456cb16c0fd0f636a0702b8e1a1e1d5748cf64a63b15e5429adb03e4101c` |
| 5 | `theorem` | [sourceKernel_neg](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/sourcekernel-neg.md) | 119 | `result-track:129387fb27b2fb6f6ac24518132e9122f6b5dc664e5da1e3a47fdd0d9b071664` |
| 6 | `theorem` | [sourceKernel_local](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/sourcekernel-local.md) | 127 | `result-track:b028b831345101eb22d8e5a5323424bb326428823d251f1a611285e05dbffbfd` |
| 7 | `theorem` | [sourceKernel_local_remainder_analytic](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/sourcekernel-local-remainder-analytic.md) | 140 | `result-track:a5b9317ac1826d36774736ea438151868532581f82190c672c237e377f0d4d42` |
| 8 | `theorem` | [ninth_order_limit_add_continuous](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/ninth-order-limit-add-continuous.md) | 173 | `result-track:569c0dc2e217f58ff3d9ebb5f75c150bec23426c9c2a9c9b0c49b0c3878e0c59` |
| 9 | `theorem` | [sourceKernel_local_cleared_tendsto](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/sourcekernel-local-cleared-tendsto.md) | 197 | `result-track:7ed03fc4406258bb160a03cdafa9898b6490a6d700abf0a7d82bbc67825a603c` |
| 10 | `theorem` | [reflected_pair_cleared_tendsto](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/reflected-pair-cleared-tendsto.md) | 228 | `result-track:b53305cc6963842b41f6780799ce3551f04ccf92179516d15e1f8f2c6d518759` |
| 11 | `def` | [pointPairPrincipalCoefficient](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/pointpairprincipalcoefficient.md) | 249 | `declaration-track:7a3d97c3ab39b5f0d86ab603c45aa6a6a17f049f20008a6e3ecc2b33a1516c78` |
| 12 | `def` | [pointPairKernel](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/pointpairkernel.md) | 254 | `declaration-track:83228f329f72e00550df3b96064348a6b3330af724d6574584c35aa10541aa34` |
| 13 | `theorem` | [point_pair_cleared_tendsto](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/point-pair-cleared-tendsto.md) | 261 | `result-track:1f135b6ccca06139e2dd747c0dffe65420216d5cb0170f906d3968df92d1122d` |
| 14 | `theorem` | [point_pair_principal_coefficient_ne_zero](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/point-pair-principal-coefficient-ne-zero.md) | 277 | `result-track:46e323d52678ac14729916df25c490eb3142fe7be330ff37f298c93ffc60ded6` |
| 15 | `theorem` | [not_continuousAt_of_ninth_order_limit](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/not-continuousat-of-ninth-order-limit.md) | 294 | `result-track:63b871c8ec62970eb970a4a111c1b03147a20167b6bc847f0e954d029910e77f` |
| 16 | `theorem` | [eventually_scaled_candidate_eq](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/eventually-scaled-candidate-eq.md) | 321 | `result-track:244885b5f46881e4195bb4f584dfa86fb59da688d791a4d16eea0180e75247d1` |
| 17 | `theorem` | [eventually_candidate_eq](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/eventually-candidate-eq.md) | 338 | `result-track:a6b0e0920a29b7b503ef787ec9cc49ab01a1858d23cb241e6f971b3c3a81f1ac` |
| 18 | `theorem` | [exists_isolating_radius](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/exists-isolating-radius.md) | 365 | `result-track:1cb0524c55b7ffa2a13fcfb05654deaea3675e4e031f350b92812f78d8554352` |
| 19 | `theorem` | [punctured_closedBall_subset_domain](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/punctured-closedball-subset-domain.md) | 389 | `result-track:1b261ab18e69ccef498a459eeba1d2bfadc8663c6c56c89cf39484c2f4908428` |
| 20 | `theorem` | [sphere_subset_domain](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/sphere-subset-domain.md) | 400 | `result-track:7c21d44ffc6807f0d1aa9c451f72c002dcbff29d466ac70a70b16b0300bc20ff` |
| 21 | `theorem` | [noncolliding_kernel_analytic](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/noncolliding-kernel-analytic.md) | 421 | `result-track:2b791b74e7185ef9548e1aef9cf622fbe0d6250b35f1dc3409714097dc869be7` |
| 22 | `def` | [collisionSet](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/collisionset.md) | 453 | `declaration-track:15cfefbe852f1dc43d17a4d038a4f200ae9a720b0b2f2650bb4d1f37fc8e42d1` |
| 23 | `theorem` | [shiftedValue_eq_iff](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/shiftedvalue-eq-iff.md) | 458 | `result-track:ae6f5583a7e2ff6f8e5d089135a40d428b9365a737fa69716068622a70ef83a5` |
| 24 | `theorem` | [shiftedValue_eq_neg_iff](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/shiftedvalue-eq-neg-iff.md) | 469 | `result-track:673490ff5075a9f77a66ce69a53d17fe0fd6375fa02bf81837a59415c95997d1` |
| 25 | `theorem` | [collisionSet_eq_point_fibers](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/collisionset-eq-point-fibers.md) | 483 | `result-track:a2b8184759b29ac7e7fe5ab0f3f5d99e9430777fda59dc2eee38d4fdf0b37126` |
| 26 | `theorem` | [collisionSet_finite](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/collisionset-finite.md) | 493 | `result-track:c3e6f7ece822bf94e19cf31f2876ba6871aa932fc01e1414531922efb4f1bb9d` |
| 27 | `instance` | [collisionSetFintype](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/collisionsetfintype.md) | 503 | `declaration-track:d48c1cfaac7e267c924aff24f4787cfdfb2fce1b556de9b7a8f49cf11a52d0ca` |
| 28 | `theorem` | [point_ne_reflect](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/point-ne-reflect.md) | 508 | `result-track:aa0a32be5bffbf5ae12e4fd756b1577c27ae3bde4e0f167bd9143723b1abf865` |
| 29 | `theorem` | [point_fibers_disjoint](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/point-fibers-disjoint.md) | 518 | `result-track:54992790d998ea7bd7e0674752ef52342a500dc7008d283fc8b934e670f3a7b9` |
| 30 | `theorem` | [point_fiber_tsum](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/point-fiber-tsum.md) | 530 | `result-track:1c0b9e6a63f37ccc8a10410a53ef0b4eac51eedb5e71fe4cfd1915ba0a28e3e4` |
| 31 | `theorem` | [collision_tsum_eq](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/collision-tsum-eq.md) | 556 | `result-track:aa33a6d87d5ca534038a85b953144cd9ba3d3e7482092f6646c7ace2776e74af` |
| 32 | `theorem` | [collision_sum_eq_pointPairKernel](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/collision-sum-eq-pointpairkernel.md) | 609 | `result-track:7b674e7d20b89548ddf1399df0c9f9af6fe3772f428fd6474c69aadd0b99a964` |
| 33 | `theorem` | [tsum_eq_pointPairKernel_add_remainder](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/tsum-eq-pointpairkernel-add-remainder.md) | 630 | `result-track:c4336316ac5c9693a8707c39d2b801716fdf748f8227524068a34a07e50e6b0e` |
| 34 | `abbrev` | [RemainingOccurrence](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/remainingoccurrence.md) | 676 | `declaration-track:31ed8631eceb76b5da5fd685a38559d52105f4cfa487ef07ab25fc087252ca7d` |
| 35 | `def` | [remainder](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/remainder.md) | 680 | `declaration-track:0373d4afb3bf7a651c2a76390484b55618ccfa69303444d0bdc2de9da5e483c9` |
| 36 | `lemma` | [boundary_norms_summable](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/boundary-norms-summable.md) | 684 | `result-track:a854d85185b05fe90db4298e50d603b5a3f7623f50dd90af89173f2c9c674280` |
| 37 | `lemma` | [closedDisk_norm_le_boundary](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/closeddisk-norm-le-boundary.md) | 697 | `result-track:4e72ed346eca835d2be6e3cc3e388bc86af5ad8b65a113d6376ed814e0d65acc` |
| 38 | `lemma` | [closedDisk_norms_summable](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/closeddisk-norms-summable.md) | 730 | `result-track:12e61ce22a5f0f108317c5e3337febec1c37b10ce5aa48f300ded9ea784ce3aa` |
| 39 | `lemma` | [remainder_hasSumUniformlyOn_closedDisk](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/remainder-hassumuniformlyon-closeddisk.md) | 754 | `result-track:ca96538fea6582766c321b3954c613e6f013784bca12f214cc59af6ef24510d7` |
| 40 | `lemma` | [remainder_analyticOn_ball](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/remainder-analyticon-ball.md) | 775 | `result-track:81cabafe578193312d39323903f576de1a5708280fa4bb9935246af5e827624c` |
| 41 | `lemma` | [remaining_kernel_analytic_on_isolating_disk](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/remaining-kernel-analytic-on-isolating-disk.md) | 801 | `result-track:db7b3066483e00c89520e1d1c1b0b4ea74765c8971b162f09e2ff4d947679288` |
| 42 | `lemma` | [exists_remainder_disk](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/exists-remainder-disk.md) | 837 | `result-track:2a937acd5db6906527e982f4c17db27908d5d1a3a3832200fe13b1f1e6a435bc` |
| 43 | `lemma` | [remainder_analytic_at](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/remainder-analytic-at.md) | 874 | `result-track:81fc36a625abf1761d9cc3687e9efc3db493edf12195950d49ae56d5ed6c25d0` |
| 44 | `theorem` | [eventually_center_add_mem_domain](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/eventually-center-add-mem-domain.md) | 885 | `result-track:623819384a8330a1823048413fc59b24a426d000efe0938bd869672b5517e943` |
| 45 | `theorem` | [continuedTransform_summable](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/continuedtransform-summable.md) | 912 | `result-track:0e342c5fbf5b5ab58103105c5575f9063ac508a11014a9adabd8e296bc569852` |
| 46 | `theorem` | [continuedTransform_punctured_differentiable](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/continuedtransform-punctured-differentiable.md) | 919 | `result-track:f0678e357d0836d0e6f9512fa2ef2c8b4329126a0b0c6522f652b72916914a77` |
| 47 | `theorem` | [continuedTransform_eventually_split](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/continuedtransform-eventually-split.md) | 930 | `result-track:62d80b828443e0904a77dfe57387b4134463a5f626e3e6515f60cca907dcf03a` |
| 48 | `theorem` | [continuedTransform_cleared_tendsto](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/continuedtransform-cleared-tendsto.md) | 959 | `result-track:74139908f8d7d959e6acfb3fb1bda7129fd98ad1f57b660465de50fdf810ecb5` |
| 49 | `def` | [patchedNumerator](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/patchednumerator.md) | 996 | `declaration-track:e78dab7d7b0ecf772da0336d7db46b91dd24237bef0649a46403e08a26875e27` |
| 50 | `theorem` | [patchedNumerator_zero](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/patchednumerator-zero.md) | 1000 | `result-track:5b02e3123ee7efbb1ccb60e3a8aafffdfb7989f4fa77cb6638d572cbcc3ece29` |
| 51 | `theorem` | [patchedNumerator_of_ne](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/patchednumerator-of-ne.md) | 1005 | `result-track:9ef6be895eed347357ae6fc26c75c092f09fc9a121b3ea75ecf401fba0f76a8a` |
| 52 | `theorem` | [patchedNumerator_analytic](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/patchednumerator-analytic.md) | 1012 | `result-track:9bd2b5be3ca6c3d8ee0d88a488b14fcde0cc650fe80a096119781232a24e5a26` |
| 53 | `theorem` | [meromorphicAt_of_patched_numerator](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/meromorphicat-of-patched-numerator.md) | 1036 | `result-track:6e5ad32cb07c6de2e42b7fe276b26eb564efec42392461fff163933c401287ff` |
| 54 | `theorem` | [meromorphicOrderAt_of_patched_numerator](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/meromorphicorderat-of-patched-numerator.md) | 1051 | `result-track:585fb0a06deed8f82d5b53d26c4c974c441f37f115b5421aea9fe4a503650d3a` |
| 55 | `theorem` | [exact_pole_certificate](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/exact-pole-certificate.md) | 1068 | `result-track:5ad732bb0ba5bbc051e9466d2165f545fbc366e84730043c7e03cc3582a7a0df` |
| 56 | `def` | [sourcePatchedNumerator](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/sourcepatchednumerator.md) | 1110 | `declaration-track:f1514cb8f5cd14d2c1d8e2f2df123f863bb61f61f0a2314df0d3c56087c510b8` |
| 57 | `theorem` | [source_exact_ninth_order_pole](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/source-exact-ninth-order-pole.md) | 1120 | `result-track:9d93e89879b89e2e0cda1da523728bc8f3dcc16003ded4b3b5cbaf74ee67a300` |
| 58 | `def` | [PoleCertificateCheckpoint](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/polecertificatecheckpoint.md) | 1176 | `declaration-track:823a144421a1ef1d7f6111769ee07052affc9de3c5c93abc0abd0812349395a1` |
| 59 | `theorem` | [pole_certificate_checkpoint](../../../../GeneralTopology/PoleCertificateNamespacedEdition1.lean/declarations/pole-certificate-checkpoint.md) | 1188 | `result-track:5ad65507f0f9e88777cd7b51e8beacc82b232ec159390db8fb222ba7d08d991a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5726de066bc23bcc7557ca53cc82d7c1a38ab01937cc0dbe9580691337091888 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant99f4066f33bc9a993b17af58c08dd0695cd611492943d1a23006051ce5b1cb79.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/PoleCertificate/Variant99f4066f33bc9a993b17af58c08dd0695cd611492943d1a23006051ce5b1cb79.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
