# Verification target: Gram Schmidt Ortho Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6bd2f8f6484172e2c8626e5947a08f659011d76b",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant704d995e01130543c48f9e21319a99c593b92ab190fde62135c181e77deff7fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6bd2f8f6484172e2c8626e5947a08f659011d76b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant704d995e01130543c48f9e21319a99c593b92ab190fde62135c181e77deff7fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant704d995e01130543c48f9e21319a99c593b92ab190fde62135c181e77deff7fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gramSchmidt](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidt.md) | 52 | `declaration-track:92ae4cad00eb603d0cc62b3bf406b4630ca1e168b5a91fd74114991e72c2ee84` |
| 2 | `theorem` | [gramSchmidt_def](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidt-def-source-edition-2.md) | 60 | `result-track:9302463a331acfff14644620a2b1b14b1058a0decf14c445c787aea320d357e0` |
| 3 | `theorem` | [gramSchmidt_def'](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidt-def.md) | 64 | `result-track:6fc7babbc7576ea6ab12aeaf9d717be15445a78d7a1ef40b7f0cafa4fbc0fc45` |
| 4 | `theorem` | [gramSchmidt_def''](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidt-def-source-edition-3.md) | 68 | `result-track:cc948f78ccb85e832b92acf159a7552a2bc302e9a0fb88fc90b18f2400ba6eb7` |
| 5 | `theorem` | [gramSchmidt_bot](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidt-bot.md) | 74 | `result-track:573564f7a173e042633f986ae15740b32a0b054f5ea45cf7be3d53d330c17797` |
| 6 | `theorem` | [gramSchmidt_zero](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidt-zero.md) | 79 | `result-track:13082013c76ed980f6a8c475293a64acf2e79443a4dc80d2a677ed45053705a2` |
| 7 | `theorem` | [gramSchmidt_orthogonal](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidt-orthogonal.md) | 83 | `result-track:2f77649d39e702b58e561dbe55c6de60464b0b36d18f384bf4aa2b7c7665ba67` |
| 8 | `theorem` | [gramSchmidt_pairwise_orthogonal](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidt-pairwise-orthogonal.md) | 111 | `result-track:b15853db7ccc6b8aad37f2404b17a0cfc3a6d25b8c9bbe227ed101731d43dba1` |
| 9 | `theorem` | [gramSchmidt_inv_triangular](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidt-inv-triangular.md) | 115 | `result-track:0efb312e88fbc4853c9e83500bc0514d7bd3ff2a33809e8a5a792a9af0ba4d30` |
| 10 | `theorem` | [mem_span_gramSchmidt](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/mem-span-gramschmidt.md) | 130 | `result-track:41b6bae8b72ae97617f75aa1d7cc6aab2a827ca562003b6478f387c803aa34a9` |
| 11 | `theorem` | [gramSchmidt_mem_span](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidt-mem-span.md) | 138 | `result-track:d8ef1d634682c27049a70dccd1d441034c7d62ed4c24fef4675a18b3d651ee33` |
| 12 | `theorem` | [span_gramSchmidt_Iic](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/span-gramschmidt-iic.md) | 150 | `result-track:610f64d23be0ffa56602377957c9fd29cf3796736fcf459f2a0e9a055ed84d55` |
| 13 | `theorem` | [span_gramSchmidt_Iio](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/span-gramschmidt-iio.md) | 155 | `result-track:0f895e8e1eea57f07c2e7e76e71f944c8de0551b60860260188268aa3576c866` |
| 14 | `theorem` | [span_gramSchmidt](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/span-gramschmidt.md) | 163 | `result-track:0fe9f888e9a284770437c8b6f3d36e2d08b0ad10a92cb1cd74fca22c6c329326` |
| 15 | `theorem` | [gramSchmidt_of_orthogonal](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidt-of-orthogonal.md) | 170 | `result-track:1d915e35a8ed6c992077e323e2a77f59f27b8fbf37bbb846b30fab0c8bb7a31a` |
| 16 | `theorem` | [gramSchmidt_ne_zero_coe](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidt-ne-zero-coe.md) | 191 | `result-track:727e1d8edfb739fa96a1f2d010300151a66c82f448cc81b49932cfc6e01939ce` |
| 17 | `theorem` | [gramSchmidt_ne_zero](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidt-ne-zero.md) | 211 | `result-track:1309e2cd6241a32903440d4fe7f1f15aa29917bc0bae7b2deae4a3a546ae3e99` |
| 18 | `theorem` | [gramSchmidt_triangular](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidt-triangular.md) | 216 | `result-track:07c713dd009726cf44f1cb2282f6c59438db3fe8b3c5a2dac1604ee7ebfe6141` |
| 19 | `theorem` | [gramSchmidt_linearIndependent](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidt-linearindependent.md) | 226 | `result-track:d59a0319450ebcc0759143f370b97aeb6005aa7b3fa6f20c01f14f811a591da7` |
| 20 | `def` | [gramSchmidtBasis](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidtbasis.md) | 232 | `declaration-track:9a90cab54079d193820e31be5739e229314b71c23477934d0c4c2ceeae16e7e9` |
| 21 | `theorem` | [coe_gramSchmidtBasis](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/coe-gramschmidtbasis.md) | 236 | `result-track:fbf7d0371dd20a2e0ff56e3083b4da87e13eccf77b7269967c9f55a9b3b14fcb` |
| 22 | `def` | [gramSchmidtNormed](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidtnormed.md) | 241 | `declaration-track:6a77d1812f86462aa874d026412ac4192f5873f9581fc3e2a6186580de90f284` |
| 23 | `theorem` | [gramSchmidtNormed_unit_length_coe](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidtnormed-unit-length-coe.md) | 244 | `result-track:c8681f5422b92764913d17aa4fd2fe5ff2151f5d5080d2ca8e32c79352e36847` |
| 24 | `theorem` | [gramSchmidtNormed_unit_length](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidtnormed-unit-length-source-edition-2.md) | 249 | `result-track:a9915ba1aa9de1b57f7fff6b1433dd3c2e23adb15affd210507ffd625ca10bd9` |
| 25 | `theorem` | [gramSchmidtNormed_unit_length'](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidtnormed-unit-length.md) | 253 | `result-track:08db1951eefbd34fb61f3cf0ef6ee7e51fee7d6c647c915ccff68cbe699e4ad1` |
| 26 | `theorem` | [gramSchmidtNormed_orthonormal](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidtnormed-orthonormal.md) | 262 | `result-track:b3848be71dd5ad27e2ad25b007d572978011be0fe85b0d3fe2e876f8f8fe57c9` |
| 27 | `theorem` | [gramSchmidtNormed_orthonormal'](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidtnormed-orthonormal-source-edition-2.md) | 276 | `result-track:c1cac14f30dc59165a3030cfbb6f752ebf1e3a42d1763c9831a58b87386c635f` |
| 28 | `theorem` | [span_gramSchmidtNormed](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/span-gramschmidtnormed.md) | 285 | `result-track:d4245cda51dfe5962b4b0d1f6d861a4be5c00dbf585c30ccf32278dd69b96e79` |
| 29 | `theorem` | [span_gramSchmidtNormed_range](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/span-gramschmidtnormed-range.md) | 297 | `result-track:f115f20f229ba2e4cb00838263f6d0ab2bfccdcf478e4075aaed168c252e7d3a` |
| 30 | `theorem` | [gramSchmidtNormed_linearIndependent](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidtnormed-linearindependent.md) | 303 | `result-track:22a6b96793c44c322ac71449869ed6612e60a898842bf2ced6c6147fca2ecfc6` |
| 31 | `def` | [gramSchmidtOrthonormalBasis](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidtorthonormalbasis.md) | 319 | `declaration-track:1a23d4a86b044f940b0f1442fb610416e8a98f06373bd285599fde8294101a5c` |
| 32 | `theorem` | [gramSchmidtOrthonormalBasis_apply](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidtorthonormalbasis-apply.md) | 323 | `result-track:711d1544f1168bb14d7ffc9cbdd39938a32ef087dc7d7278213556ee745530fb` |
| 33 | `theorem` | [gramSchmidtOrthonormalBasis_apply_of_orthogonal](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidtorthonormalbasis-apply-of-orthogonal.md) | 328 | `result-track:7917651d74daa2907ac96e80ec7351b8259aa0b3fb250dde2472f1c8509009a2` |
| 34 | `theorem` | [inner_gramSchmidtOrthonormalBasis_eq_zero](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/inner-gramschmidtorthonormalbasis-eq-zero.md) | 336 | `result-track:d1aff88f06470ec5bc2a521fe80534788bdce80010eb178c2c6e3cdd05bfe5ef` |
| 35 | `theorem` | [gramSchmidtOrthonormalBasis_inv_triangular](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidtorthonormalbasis-inv-triangular-source-edition-2.md) | 353 | `result-track:b62ba9bbc4eff4266b1b0e033b3bf955ed6ef64a8112c1dedb0ed1f3ccc6cc5a` |
| 36 | `theorem` | [gramSchmidtOrthonormalBasis_inv_triangular'](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidtorthonormalbasis-inv-triangular.md) | 360 | `result-track:94a1cb0ffb19be9e25c185dd773a94703642da1151490aeadf396683fc097655` |
| 37 | `theorem` | [gramSchmidtOrthonormalBasis_inv_isUpperTriangular](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidtorthonormalbasis-inv-isuppertriangular.md) | 367 | `result-track:0a00037b3d53ab04ceaa3b56d17629af4ce5cf24a40d0b5eea83d9b0e6baf71e` |
| 38 | `theorem` | [gramSchmidtOrthonormalBasis_det](../../../../FunctionalAnalysis/GramSchmidtOrthoPublic.lean/declarations/gramschmidtorthonormalbasis-det.md) | 375 | `result-track:2b25302bdc6b0724f4419a7d256c0f8249d82b269d42649d99c2aff98da70c48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de1a351ea0d74db4785e444f2b18507ca0f5e16f74d58751be2663633c61b970 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant704d995e01130543c48f9e21319a99c593b92ab190fde62135c181e77deff7fa.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant704d995e01130543c48f9e21319a99c593b92ab190fde62135c181e77deff7fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
