# Verification target: Hopf Algebra Convolution Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c416fb70304cb722a13b8d19a562dede7212b06",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Convolution/Varianta1517c132a2fb2a4e0c3b673f8cbc22111d55eab73b8b6d9801c68062cc91d10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/HopfAlgebraConvolutionPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/HopfAlgebraConvolutionPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c416fb70304cb722a13b8d19a562dede7212b06`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Convolution/Varianta1517c132a2fb2a4e0c3b673f8cbc22111d55eab73b8b6d9801c68062cc91d10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Convolution/Varianta1517c132a2fb2a4e0c3b673f8cbc22111d55eab73b8b6d9801c68062cc91d10.lean.json)

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
| 1 | `lemma` | [antipode_comp_mul_comp_comm](../../../../CommutativeAlgebra/HopfAlgebraConvolutionPublic.lean/declarations/antipode-comp-mul-comp-comm.md) | 41 | `result-track:b51887156bb6ab18c3ff0fb28c40e6b3f503e218eadca1de1210bb27b1e3a402` |
| 2 | `lemma` | [antipode_mul_antidistrib](../../../../CommutativeAlgebra/HopfAlgebraConvolutionPublic.lean/declarations/antipode-mul-antidistrib.md) | 57 | `result-track:f652315841b8000b819e6c17c96b0078fe4dcfc8285116484c2ef778f15a4af9` |
| 3 | `def` | [antipodeAlgHomOp](../../../../CommutativeAlgebra/HopfAlgebraConvolutionPublic.lean/declarations/antipodealghomop.md) | 65 | `declaration-track:10558f30ecb71af7981af6a679987a71b71848c0c8386aff5e58d9aa9a179232` |
| 4 | `lemma` | [antipode_mul_distrib](../../../../CommutativeAlgebra/HopfAlgebraConvolutionPublic.lean/declarations/antipode-mul-distrib.md) | 74 | `result-track:9dbf6473494fefaa556fad0967dc95c4bd7a165bdbed69753f498c421d5bf864` |
| 5 | `def` | [antipodeAlgHom](../../../../CommutativeAlgebra/HopfAlgebraConvolutionPublic.lean/declarations/antipodealghom.md) | 80 | `declaration-track:245e3a905e1bc14101639952cf345bababdf819c039541e707f65c1cb41414f0` |
| 6 | `lemma` | [toLinearMap_antipodeAlgHom](../../../../CommutativeAlgebra/HopfAlgebraConvolutionPublic.lean/declarations/tolinearmap-antipodealghom.md) | 82 | `result-track:0b2a961b1d8ca07c6b0c65c3009a19a2fd51b784b9c49d2756e331c69a04ac27` |
| 7 | `lemma` | [antipode_mul_id](../../../../CommutativeAlgebra/HopfAlgebraConvolutionPublic.lean/declarations/antipode-mul-id.md) | 90 | `result-track:f034e931c4c291927829811115a2a552153712491ce28fac50a81817304e2879` |
| 8 | `lemma` | [id_mul_antipode](../../../../CommutativeAlgebra/HopfAlgebraConvolutionPublic.lean/declarations/id-mul-antipode.md) | 93 | `result-track:a72293dd7c002cd2e1f6e0478516f38de729988d097068cc2d4eb47355645851` |
| 9 | `theorem` | [eq_antipode_of_convMul_id_eq_one](../../../../CommutativeAlgebra/HopfAlgebraConvolutionPublic.lean/declarations/eq-antipode-of-convmul-id-eq-one.md) | 103 | `result-track:a739de717b5304951e23a74fd2869cd833d29e19f02982def1ed74d26e3c934b` |
| 10 | `theorem` | [eq_antipode_of_id_convMul_eq_one](../../../../CommutativeAlgebra/HopfAlgebraConvolutionPublic.lean/declarations/eq-antipode-of-id-convmul-eq-one.md) | 109 | `result-track:6c4295e8e176febe2cbfd9166143e2b66659fc5d4f997b6ebca79dcdcbf19e97` |
| 11 | `lemma` | [comul_right_inv](../../../../CommutativeAlgebra/HopfAlgebraConvolutionPublic.lean/declarations/comul-right-inv.md) | 122 | `result-track:95b7d16a8a4ef56881b2518b1e017b340967767391cd68ea76328cbff3734636` |
| 12 | `instance` | [convInv](../../../../CommutativeAlgebra/HopfAlgebraConvolutionPublic.lean/declarations/convinv.md) | 143 | `declaration-track:3950f68820f47eca9e163a74dde4fec600e3f7a0628ac5a82f44918b8237573e` |
| 13 | `instance` | [convGroup](../../../../CommutativeAlgebra/HopfAlgebraConvolutionPublic.lean/declarations/convgroup.md) | 146 | `declaration-track:b17a7f8ccc295a2f8d16ebab91b7e4b73d6aa41b5dfe51f1957605c5c18094da` |
| 14 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HopfAlgebraConvolutionPublic.lean/declarations/instance.md) | 162 | `declaration-track:3b63dabcd73972a48fcec0beb7add381c058c1c5762f6c81a4776c21e195b683` |
| 15 | `lemma` | [antipode_id_cancel](../../../../CommutativeAlgebra/HopfAlgebraConvolutionPublic.lean/declarations/antipode-id-cancel.md) | 164 | `result-track:a97d87f987d348af485c9f2b751bcc1b03baf8824f373b660be2c5b95b82c4a9` |
| 16 | `lemma` | [counitAlgHom_comp_antipodeAlgHom](../../../../CommutativeAlgebra/HopfAlgebraConvolutionPublic.lean/declarations/counitalghom-comp-antipodealghom.md) | 172 | `result-track:c0b9bc0cc5a858755011b5b10c0ccac0df2715c1cd1dc44f4250c15806d0e66a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bfba2cbd068d11f7d1ea54494dd5e56e726c82b2a023a0d9e81b48f0a3493802 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Convolution/Varianta1517c132a2fb2a4e0c3b673f8cbc22111d55eab73b8b6d9801c68062cc91d10.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Convolution/Varianta1517c132a2fb2a4e0c3b673f8cbc22111d55eab73b8b6d9801c68062cc91d10.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
