# Verification target: Interchange Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b7697ce0750c0577f5cd3962abbd83d0c22931a",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Interchange/Variant3b86ecb65f51e337c107021c5f3a2ae00355e9f7a26bfbb3db1c21e13229e717.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/InterchangeNamespacedEdition2.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/InterchangeNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b7697ce0750c0577f5cd3962abbd83d0c22931a`.

Source path: `GRWTSK/Topology/MetricTopology/Interchange/Variant3b86ecb65f51e337c107021c5f3a2ae00355e9f7a26bfbb3db1c21e13229e717.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Interchange/Variant3b86ecb65f51e337c107021c5f3a2ae00355e9f7a26bfbb3db1c21e13229e717.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InterchangeSquare](../../../../AssociativeRingsAndAlgebras/InterchangeNamespacedEdition2.lean/declarations/interchangesquare.md) | 22 | `declaration-track:4c1b5397e74d10d3a0b8ec9fa9399cacd345788462fefd3d63149205f86158e6` |
| 2 | `def` | [leftPath](../../../../AssociativeRingsAndAlgebras/InterchangeNamespacedEdition2.lean/declarations/leftpath.md) | 40 | `declaration-track:3b5bca1a625f1a0d36d96d9721d93ecfccb494b0488dde568ed363dee1491c12` |
| 3 | `def` | [rightPath](../../../../AssociativeRingsAndAlgebras/InterchangeNamespacedEdition2.lean/declarations/rightpath.md) | 46 | `declaration-track:03a47dc3d36e625686a79f4880f90a6386e780a3e50727da23153cb4e5a445d3` |
| 4 | `def` | [metricDefect](../../../../AssociativeRingsAndAlgebras/InterchangeNamespacedEdition2.lean/declarations/metricdefect.md) | 52 | `declaration-track:7a600a8c28f5d4df9312c5d35bf15527da82e4d46795e3ae5b880e8bd3c84287` |
| 5 | `structure` | [ExactCertificate](../../../../AssociativeRingsAndAlgebras/InterchangeNamespacedEdition2.lean/declarations/exactcertificate.md) | 58 | `declaration-track:ca5390b5969be407b56d1b67870d8e50bb665e8c8cadb11635fbc14ffe0f8f62` |
| 6 | `structure` | [Certificate](../../../../AssociativeRingsAndAlgebras/InterchangeNamespacedEdition2.lean/declarations/certificate.md) | 63 | `declaration-track:1f9f4acd80d559d8f9042fcdf2b2a3abdff7d39ac6bbf367bbbeec6e4e6f88b6` |
| 7 | `structure` | [SnapshotCertificate](../../../../AssociativeRingsAndAlgebras/InterchangeNamespacedEdition2.lean/declarations/snapshotcertificate.md) | 69 | `declaration-track:2d1a415d6c0d7d04043a11443c04d3e58f09b551987b9992e1654cf770fcd5a6` |
| 8 | `def` | [ExactCertificate.toCertificate](../../../../AssociativeRingsAndAlgebras/InterchangeNamespacedEdition2.lean/declarations/exactcertificate-tocertificate.md) | 76 | `declaration-track:fd6b757be103f0a7775f5d04efe0c5042651de2433ae76b45472b688e954dda7` |
| 9 | `theorem` | [Certificate.exact_of_bound_eq_zero](../../../../AssociativeRingsAndAlgebras/InterchangeNamespacedEdition2.lean/declarations/certificate-exact-of-bound-eq-zero.md) | 84 | `result-track:a47dc8df15d9eeb96915d193ff8c0dc5e8c84a9efcc8109503f21b298e6bba3e` |
| 10 | `def` | [postcompose](../../../../AssociativeRingsAndAlgebras/InterchangeNamespacedEdition2.lean/declarations/postcompose.md) | 94 | `declaration-track:edef9abaaeff0b7e5366c6e5ff504b954a5b6a53e01ad85fc92a33f710d2c12d` |
| 11 | `theorem` | [metricDefect_postcompose_le](../../../../AssociativeRingsAndAlgebras/InterchangeNamespacedEdition2.lean/declarations/metricdefect-postcompose-le.md) | 105 | `result-track:046b4345a639a475ae4184aa1c509d72fcedcb374f283ad5469fc9ae941520f2` |
| 12 | `def` | [Certificate.postcompose](../../../../AssociativeRingsAndAlgebras/InterchangeNamespacedEdition2.lean/declarations/certificate-postcompose.md) | 118 | `declaration-track:77ca3f1171a10210a23042cfae69fced71cb04a5b6ee8b14b5d08faec58c98f1` |
| 13 | `def` | [algebraicDefect](../../../../AssociativeRingsAndAlgebras/InterchangeNamespacedEdition2.lean/declarations/algebraicdefect.md) | 140 | `declaration-track:c85f13877fb335767c7948a14dc25ee798ec421620f9a95999650e061cfa54fe` |
| 14 | `theorem` | [nnnorm_algebraicDefect](../../../../AssociativeRingsAndAlgebras/InterchangeNamespacedEdition2.lean/declarations/nnnorm-algebraicdefect.md) | 146 | `result-track:9661599987e014da54ce02e2b76a19e37b035fed028e746961d799c971a7cf80` |
| 15 | `structure` | [AttentionInterchangeReceipt](../../../../AssociativeRingsAndAlgebras/InterchangeNamespacedEdition2.lean/declarations/attentioninterchangereceipt.md) | 159 | `declaration-track:022360909609eb16a1aa7a16b2e35cb1cfb963a10c0e6b8ff3234b871e6010e0` |
| 16 | `def` | [interchangeDefect](../../../../AssociativeRingsAndAlgebras/InterchangeNamespacedEdition2.lean/declarations/interchangedefect.md) | 174 | `declaration-track:83da0382f29517a215f0756b758d5644f1305060c289072c83a31184614f4e7d` |
| 17 | `abbrev` | [AttentionInterchangeCertificate](../../../../AssociativeRingsAndAlgebras/InterchangeNamespacedEdition2.lean/declarations/attentioninterchangecertificate.md) | 184 | `declaration-track:6e69f7d86672653db256a5ef7ee2b1bfaf1f9155fa1d87d53146b8029438070a` |
| 18 | `structure` | [LinearInterchangeSquare](../../../../AssociativeRingsAndAlgebras/InterchangeNamespacedEdition2.lean/declarations/linearinterchangesquare.md) | 193 | `declaration-track:aa92011d05e30e2ed55ea11d1437f0b4828034417b6da60ac014899300099f52` |
| 19 | `def` | [toInterchangeSquare](../../../../AssociativeRingsAndAlgebras/InterchangeNamespacedEdition2.lean/declarations/tointerchangesquare.md) | 223 | `declaration-track:aac388e29df393c7bd4b973ba386e539df2ae0d1476e36f9aa7a937ece2c509e` |
| 20 | `def` | [defect](../../../../AssociativeRingsAndAlgebras/InterchangeNamespacedEdition2.lean/declarations/defect.md) | 232 | `declaration-track:34f74420a2b8dc5ea3b3bca1821810194df5ef812e29031ab6813f2536b72175` |
| 21 | `theorem` | [defect_apply](../../../../AssociativeRingsAndAlgebras/InterchangeNamespacedEdition2.lean/declarations/defect-apply.md) | 239 | `result-track:789a91299722665ad0b124500a9d07c159915b7527dac5257aa45c3be7d32f32` |
| 22 | `theorem` | [defect_eq_zero_iff](../../../../AssociativeRingsAndAlgebras/InterchangeNamespacedEdition2.lean/declarations/defect-eq-zero-iff.md) | 248 | `result-track:1d07bead1db6cda2ecd898a3da2c49e75b6eeff5ff052bc75c63d8894a46d23a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4a91d6a279e4df1411fd5c0a32c36142aa085bde66056b321509672f849bd862 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Interchange/Variant3b86ecb65f51e337c107021c5f3a2ae00355e9f7a26bfbb3db1c21e13229e717.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Interchange/Variant3b86ecb65f51e337c107021c5f3a2ae00355e9f7a26bfbb3db1c21e13229e717.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
