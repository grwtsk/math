# Verification target: Reindex Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd99760518a771e512224a60c2cf24073b88bd47",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Reindex/Variant857e1deee643dc12707e13e735e9278c3b981b3d69a717b8cbc315205adba61b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd99760518a771e512224a60c2cf24073b88bd47`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Reindex/Variant857e1deee643dc12707e13e735e9278c3b981b3d69a717b8cbc315205adba61b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Reindex/Variant857e1deee643dc12707e13e735e9278c3b981b3d69a717b8cbc315205adba61b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reindexAddEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/reindexaddequiv.md) | 45 | `declaration-track:6d675f357703fff80eb9b0f1542b3149182671f2b2a13a2a54df32b2ba2c4912` |
| 2 | `theorem` | [coe_reindexAddEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/coe-reindexaddequiv.md) | 50 | `result-track:29917dbb7a44c6ebf06ae0d44e8dc10d24250105ee1edb3937c191432971f374` |
| 3 | `theorem` | [toEquiv_reindexAddEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/toequiv-reindexaddequiv.md) | 55 | `result-track:12df18d4409e4205f203518850d447ba04698e224e4497313233b32d707a7675` |
| 4 | `theorem` | [symm_reindexAddEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/symm-reindexaddequiv.md) | 60 | `result-track:b202e15dc967bd0e0ae51fa0d4b94edcb2e85a6e899cfa953c0bc1ece744aed6` |
| 5 | `theorem` | [reindexAddEquiv_refl_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/reindexaddequiv-refl-refl.md) | 65 | `result-track:0e35a48ebf6ab7755e379981ceca765d61f76a9328170f554d4d1fc6b6ea118d` |
| 6 | `theorem` | [reindexAddEquiv_trans_reindexAddEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/reindexaddequiv-trans-reindexaddequiv.md) | 69 | `result-track:4449f0683a9ec1db2e6d414cd0dca42a0c4aa02c1d79e51f406288750602af89` |
| 7 | `def` | [reindexRingEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/reindexringequiv.md) | 82 | `declaration-track:36fa35c1a27fb7f651af51d57d6a6024b78d226cc8085d971f7e0436a5b88986` |
| 8 | `theorem` | [coe_reindexRingEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/coe-reindexringequiv.md) | 87 | `result-track:8a6a8a2902682367c482660b00dc099ddeea97bb277b7aa723f942de5abeddae` |
| 9 | `theorem` | [toEquiv_reindexRingEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/toequiv-reindexringequiv.md) | 91 | `result-track:6a6bc5dc803c78f94e76285a4b3a1e05b6223019e1342a1251916476fa9932b9` |
| 10 | `theorem` | [toAddEquiv_reindexRingEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/toaddequiv-reindexringequiv.md) | 96 | `result-track:f256cf1acdee5cafad2670127d867cf7aaf7146261c734b852c897892c0f9731` |
| 11 | `theorem` | [symm_reindexRingEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/symm-reindexringequiv.md) | 100 | `result-track:7fb9f2ce52ec384ac9673d39732a66c97fb0d9a2ce2444ba4216c49804667a07` |
| 12 | `theorem` | [reindexRingEquiv_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/reindexringequiv-refl.md) | 105 | `result-track:d9b4b57947071851b7528f2996a2b5059cf63999035b0dc8031022c363bacfa6` |
| 13 | `theorem` | [reindexRingEquiv_trans_reindexRingEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/reindexringequiv-trans-reindexringequiv.md) | 109 | `result-track:f724c0f81e0290012897ea0ed457030d6133d38cff81d1ba51e48ccd865e5e7a` |
| 14 | `def` | [reindexLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/reindexlinearequiv.md) | 121 | `declaration-track:f969311214a35af319fcaa0c8b18cca51d07671afcb4a846d5a116a4c933d69e` |
| 15 | `theorem` | [coe_reindexLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/coe-reindexlinearequiv.md) | 126 | `result-track:1a87bf9224fc24502162af1df4e1be85064cf669572cd4cc526ceaf17faa8181` |
| 16 | `theorem` | [toEquiv_reindexLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/toequiv-reindexlinearequiv.md) | 131 | `result-track:079b2b0b04b7b770bd2b8db4b96270b60be4767980909381027d96841eef24cb` |
| 17 | `theorem` | [toAddEquiv_reindexLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/toaddequiv-reindexlinearequiv.md) | 136 | `result-track:1d5c66c2d3b782c8cb49bbd7bc83b9e426a2b2c9ad531bc96aa36ed63bb30197` |
| 18 | `theorem` | [reindexLinearEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/reindexlinearequiv-apply.md) | 141 | `result-track:bcac5a4050c6526ea21a9698bb4c196945bb4c2972f25a97e1c7d6c5b88957c3` |
| 19 | `theorem` | [symm_reindexLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/symm-reindexlinearequiv.md) | 146 | `result-track:edacc835d343a178bab460dc9e9bda407814f9d60ee0003cb310691d37023f2a` |
| 20 | `theorem` | [reindexLinearEquiv_refl_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/reindexlinearequiv-refl-refl.md) | 153 | `result-track:63a80fe1b91963f7513c06abbfae8d9301c3d8d61d6dd21664b5119369c09aae` |
| 21 | `theorem` | [reindexLinearEquiv_trans_reindexLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/reindexlinearequiv-trans-reindexlinearequiv.md) | 158 | `result-track:8e0130f8efb0abe13fd904765f2705e32957f24262a4d048c6a40da290d1ecca` |
| 22 | `theorem` | [reindexLinearEquiv_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/reindexlinearequiv-comp.md) | 167 | `result-track:11f19fb1722581f07daa85ab15ef89b204f28217774ea84f3ab5e2ad591cde0f` |
| 23 | `theorem` | [reindexLinearEquiv_comp_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/reindexlinearequiv-comp-apply.md) | 172 | `result-track:bc246fb275f48f4a91b4d60291e09179a4a4964da86a337c9e0034e53ccdd812` |
| 24 | `theorem` | [reindexLinearEquiv_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/reindexlinearequiv-one.md) | 178 | `result-track:bd60d6ef775cfc3eb20c52648f3064b565abb6b1d63084c6ad60f58f89aecfbe` |
| 25 | `theorem` | [reindexLinearEquiv_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/reindexlinearequiv-mul.md) | 188 | `result-track:576438fe5bdab33fe9cfafbaa6ee2beff75f8ea359dd21f477dc9ac53c069111` |
| 26 | `theorem` | [mul_reindexLinearEquiv_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/mul-reindexlinearequiv-one.md) | 194 | `result-track:368c3b4336a0463e5a380fa459aff00247fe09e3e5f3df6cc553c16feeeb0287` |
| 27 | `def` | [reindexAlgEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/reindexalgequiv.md) | 211 | `declaration-track:6f48cf443b112075d811d5191dadcbcc277920fcaea6ebb2302302f4729e0d59` |
| 28 | `theorem` | [coe_reindexAlgEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/coe-reindexalgequiv.md) | 216 | `result-track:78533284516774d6e31df7d12a34dd588c6f0fc5f799913f69245f7ccb5219b1` |
| 29 | `theorem` | [toEquiv_reindexAlgEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/toequiv-reindexalgequiv.md) | 220 | `result-track:55a80954e35a67c722e7b1004bf624c10aa56ba2ebceef67d4b9e652ff86cf98` |
| 30 | `theorem` | [toAddEquiv_reindexAlgEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/toaddequiv-reindexalgequiv.md) | 225 | `result-track:675a47fef95792bcafe3fe6cc4800e1e1ef4a300370d83f9d426826c837cd1df` |
| 31 | `theorem` | [toRingEquiv_reindexAlgEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/toringequiv-reindexalgequiv.md) | 229 | `result-track:c1d7eae680f5d8bae4c4673e5f5e56400fc54efabfc077c471d76fe0978384e8` |
| 32 | `theorem` | [toLinearEquiv_reindexAlgEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/tolinearequiv-reindexalgequiv.md) | 233 | `result-track:8e4cbd37d3fdbee603f25cc230e66c1cc04887791df4a27d545606416a50573d` |
| 33 | `theorem` | [reindexAlgEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/reindexalgequiv-apply.md) | 238 | `result-track:92d2139caeeb726226b3963d6f575183abcf67a274db33eb3a1b61bdd9b4d855` |
| 34 | `theorem` | [symm_reindexAlgEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/symm-reindexalgequiv.md) | 243 | `result-track:c1206b261f5c067e9cdf664bcc66ee7ee5bd7914b2c1794a417e30eae98e88f5` |
| 35 | `theorem` | [reindexAlgEquiv_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/reindexalgequiv-refl.md) | 250 | `result-track:c1f0c50e7f93ad3c179ddf8d7c6665a8658105a1ec5846620929aa23bd9924c0` |
| 36 | `theorem` | [reindexAlgEquiv_trans_reindexAlgEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/reindexalgequiv-trans-reindexalgequiv.md) | 254 | `result-track:4c254001e23a4af768d8d8b7f77a4d0576827881b8742ed225aafa85b1eb90ee` |
| 37 | `theorem` | [reindexAlgEquiv_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/reindexalgequiv-mul.md) | 259 | `result-track:75f011da5a9e8b1115077409ef4379db9a411cbf8f412ac4c4841b36e9d689d0` |
| 38 | `theorem` | [det_reindexLinearEquiv_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/det-reindexlinearequiv-self.md) | 269 | `result-track:8dd474249584c5121773e394358080718e4af2d4f7d5d6615a7a68da979ec021` |
| 39 | `theorem` | [det_reindexAlgEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ReindexPublic.lean/declarations/det-reindexalgequiv.md) | 277 | `result-track:3afa4d2d3529a5f3db745c7efef7cd77a8d7c2a18f93a3ba25adc745f8f0b6f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b326deeb08f67169ae01b86eb52e3b1c3c845756a455a0e9ace97bec8cccd8a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Reindex/Variant857e1deee643dc12707e13e735e9278c3b981b3d69a717b8cbc315205adba61b.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Reindex/Variant857e1deee643dc12707e13e735e9278c3b981b3d69a717b8cbc315205adba61b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
