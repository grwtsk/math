# Verification target: Norm Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e12f202452b2a637640618ee5c257455924f8fb7",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant164a7f065bd1e76bd3ec9aedba6b6293a20bc4b54086cae7109010a37fe6cbdc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/NormBasicNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/NormBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e12f202452b2a637640618ee5c257455924f8fb7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant164a7f065bd1e76bd3ec9aedba6b6293a20bc4b54086cae7109010a37fe6cbdc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant164a7f065bd1e76bd3ec9aedba6b6293a20bc4b54086cae7109010a37fe6cbdc.lean.json)

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
| 1 | `theorem` | [PowerBasis.norm_gen_eq_coeff_zero_minpoly](../../../../CommutativeAlgebra/NormBasicNamespacedPublic.lean/declarations/powerbasis-norm-gen-eq-coeff-zero-minpoly.md) | 73 | `result-track:d8f08bd2348be8b893582d2fe79b4a0745e309da08173b77fa2efc029db018f8` |
| 2 | `theorem` | [PowerBasis.norm_gen_eq_prod_roots](../../../../CommutativeAlgebra/NormBasicNamespacedPublic.lean/declarations/powerbasis-norm-gen-eq-prod-roots.md) | 80 | `result-track:75a0d0c91a2a1d55ed6107d8313a8ec177f59c32a1583c571f5f58312f682251` |
| 3 | `theorem` | [norm_zero](../../../../CommutativeAlgebra/NormBasicNamespacedPublic.lean/declarations/norm-zero.md) | 98 | `result-track:f7fa8bb09d9e0080b7a10f23a61fe5ec9a845f830d175b4cf13b614dae11c7d0` |
| 4 | `theorem` | [norm_eq_zero_iff](../../../../CommutativeAlgebra/NormBasicNamespacedPublic.lean/declarations/norm-eq-zero-iff.md) | 103 | `result-track:1d972f595ab23814e4bbd7d157d85f8458762496df41d7181947088fd9c9d0a1` |
| 5 | `theorem` | [norm_ne_zero_iff](../../../../CommutativeAlgebra/NormBasicNamespacedPublic.lean/declarations/norm-ne-zero-iff.md) | 120 | `result-track:82d9e6e1732af7ceb07a8fc82a6273d529b7925e49ff45bd07c739833d1293b1` |
| 6 | `theorem` | [norm_eq_zero_iff'](../../../../CommutativeAlgebra/NormBasicNamespacedPublic.lean/declarations/norm-eq-zero-iff-source-edition-2.md) | 125 | `result-track:716552b2205c1603f82423a162580691dc348395e91b6d5e9596d4a39b20f408` |
| 7 | `theorem` | [norm_eq_zero_iff_of_basis](../../../../CommutativeAlgebra/NormBasicNamespacedPublic.lean/declarations/norm-eq-zero-iff-of-basis.md) | 128 | `result-track:ad6d5f0a22bc52402d77474ffc1b8a25b99267f61f288883d3945c68262d052f` |
| 8 | `theorem` | [norm_ne_zero_iff_of_basis](../../../../CommutativeAlgebra/NormBasicNamespacedPublic.lean/declarations/norm-ne-zero-iff-of-basis.md) | 134 | `result-track:5a534a66cc686996c068be3b862f864b93cce565c34c88c2f86f639d26940364` |
| 9 | `theorem` | [norm_inv](../../../../CommutativeAlgebra/NormBasicNamespacedPublic.lean/declarations/norm-inv.md) | 144 | `result-track:9ea2e76aef994cedb14cafdd94ac934ecf96cb4baf3d19d09cb71ca0ea203492` |
| 10 | `theorem` | [norm_zpow](../../../../CommutativeAlgebra/NormBasicNamespacedPublic.lean/declarations/norm-zpow.md) | 149 | `result-track:2329323bd3a8ae123599cfa24ec78f29c2288fa24db88582554eb5d2c5f117b2` |
| 11 | `theorem` | [Norm Basic Namespaced Public](../../../../CommutativeAlgebra/NormBasicNamespacedPublic.lean/declarations/root-grwtsk-algebra-linearalgebra-powerbasisnormgeneqcoeffzerominpoly-va.md) | 158 | `result-track:081bbc2a0e45cc0ed7da5dad3a7301ed6175b3d33bae47d28df9990fcfb943f9` |
| 12 | `theorem` | [Norm Basic Namespaced Public](../../../../CommutativeAlgebra/NormBasicNamespacedPublic.lean/declarations/root-grwtsk-algebra-linearalgebra-powerbasisnormgeneqcoeffzerominpoly-va-source-edition-2.md) | 167 | `result-track:6b1499e7d49975d00d9b69cc0c36b5fbe6b2c1fe29a2e7aa2749dc90b6103656` |
| 13 | `theorem` | [norm_eq_prod_embeddings_gen](../../../../CommutativeAlgebra/NormBasicNamespacedPublic.lean/declarations/norm-eq-prod-embeddings-gen.md) | 186 | `result-track:5062dab8c716a47b0d5725582274a927c0fc89ee6af580579a64303de4485d96` |
| 14 | `theorem` | [prod_embeddings_eq_finrank_pow](../../../../CommutativeAlgebra/NormBasicNamespacedPublic.lean/declarations/prod-embeddings-eq-finrank-pow.md) | 200 | `result-track:219a511a413f52f14bc4966f06f15eb5508f44b30df537daece7d481979df927` |
| 15 | `lemma` | [norm_eq_of_algEquiv](../../../../CommutativeAlgebra/NormBasicNamespacedPublic.lean/declarations/norm-eq-of-algequiv.md) | 219 | `result-track:145d814cb673368b0475042f3d1690a81c0c519f0ca52353182c17585206e916` |
| 16 | `lemma` | [norm_eq_of_ringEquiv](../../../../CommutativeAlgebra/NormBasicNamespacedPublic.lean/declarations/norm-eq-of-ringequiv.md) | 224 | `result-track:63e0df0423c6ad2bf69164833f0e3200605b97aff9711ca1120a04d98a29b5b6` |
| 17 | `lemma` | [norm_eq_of_equiv_equiv](../../../../CommutativeAlgebra/NormBasicNamespacedPublic.lean/declarations/norm-eq-of-equiv-equiv.md) | 243 | `result-track:1ae5690485e63627426e3e493521b309b803e7f34125503a9184291e5b87d6b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e16c4a649a05dcfdaee01e84c744022edb4da68064dd184ab125e68bff00d730 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant164a7f065bd1e76bd3ec9aedba6b6293a20bc4b54086cae7109010a37fe6cbdc.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant164a7f065bd1e76bd3ec9aedba6b6293a20bc4b54086cae7109010a37fe6cbdc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
