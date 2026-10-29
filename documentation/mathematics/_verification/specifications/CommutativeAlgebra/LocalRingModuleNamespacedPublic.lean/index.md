# Verification target: Local Ring Module Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d410a371204e948ea66760701c4abebafcf70ecc",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant80ad042463e3cdf3238d1af541dc194a62bfc5fbc1075f14cddd972052333918.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/LocalRingModuleNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/LocalRingModuleNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d410a371204e948ea66760701c4abebafcf70ecc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Variant80ad042463e3cdf3238d1af541dc194a62bfc5fbc1075f14cddd972052333918.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Variant80ad042463e3cdf3238d1af541dc194a62bfc5fbc1075f14cddd972052333918.lean.json)

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
| 1 | `theorem` | [map_mkQ_eq](../../../../CommutativeAlgebra/LocalRingModuleNamespacedPublic.lean/declarations/map-mkq-eq.md) | 69 | `result-track:a46f5faf0822d6a01a6cdd259896d85b99fe721646058b346809a3b1cc92e7f3` |
| 2 | `theorem` | [map_mkQ_eq_top](../../../../CommutativeAlgebra/LocalRingModuleNamespacedPublic.lean/declarations/map-mkq-eq-top.md) | 80 | `result-track:3acb95ab7fe2d78cb4b2a40c2d3d890e311aafef4e49231add5be35770ab4b4e` |
| 3 | `theorem` | [map_tensorProduct_mk_eq_top](../../../../CommutativeAlgebra/LocalRingModuleNamespacedPublic.lean/declarations/map-tensorproduct-mk-eq-top.md) | 84 | `result-track:77a143cbfe9b1859edf0ccf8549533eba33fc9111baa5a4da703df35de46777b` |
| 4 | `theorem` | [subsingleton_tensorProduct](../../../../CommutativeAlgebra/LocalRingModuleNamespacedPublic.lean/declarations/subsingleton-tensorproduct.md) | 104 | `result-track:38208dba48159591ff5bb712ce98f03fc8b3ad1899263e0cb10fd539f3abd6b6` |
| 5 | `theorem` | [span_eq_top_of_tmul_eq_basis](../../../../CommutativeAlgebra/LocalRingModuleNamespacedPublic.lean/declarations/span-eq-top-of-tmul-eq-basis.md) | 110 | `result-track:c24909930def7c0838ffddd36159b4e16ff2719dbaddc723510e3c5adbb35f63` |
| 6 | `lemma` | [Module.mem_support_iff_nontrivial_residueField_tensorProduct](../../../../CommutativeAlgebra/LocalRingModuleNamespacedPublic.lean/declarations/module-mem-support-iff-nontrivial-residuefield-tensorproduct.md) | 120 | `result-track:d27be864ee9e03b425a04764aa99e5bff9149f44edd555d62f65b4dcd287f14c` |
| 7 | `theorem` | [lTensor_injective_of_exact_of_exact_of_rTensor_injective](../../../../CommutativeAlgebra/LocalRingModuleNamespacedPublic.lean/declarations/ltensor-injective-of-exact-of-exact-of-rtensor-injective.md) | 136 | `result-track:c78dfb1c656cde1d7ae24782f336f66350fa0ed6020d8d4e8ce195ef5609af16` |
| 8 | `lemma` | [exists_basis_of_basis_baseChange](../../../../CommutativeAlgebra/LocalRingModuleNamespacedPublic.lean/declarations/exists-basis-of-basis-basechange.md) | 175 | `result-track:a13a91e704f7aca4d19098b3b9f363897bede912b7df38802e1a1dc63fa0c83f` |
| 9 | `lemma` | [exists_basis_of_span_of_maximalIdeal_rTensor_injective](../../../../CommutativeAlgebra/LocalRingModuleNamespacedPublic.lean/declarations/exists-basis-of-span-of-maximalideal-rtensor-injective.md) | 231 | `result-track:446879c4fca4b437f230b04f9d1e432a38689f4c9609b55edaaab42e23274a43` |
| 10 | `lemma` | [exists_basis_of_span_of_flat](../../../../CommutativeAlgebra/LocalRingModuleNamespacedPublic.lean/declarations/exists-basis-of-span-of-flat.md) | 246 | `result-track:486f512366cf7d65082c5f024015a093025198657d69aa73bd19184cc3aab841` |
| 11 | `theorem` | [free_of_maximalIdeal_rTensor_injective](../../../../CommutativeAlgebra/LocalRingModuleNamespacedPublic.lean/declarations/free-of-maximalideal-rtensor-injective.md) | 256 | `result-track:e24a4170d804d473bb5e1e22c6d16e928a84b230156c650cdc85a7de46c224c1` |
| 12 | `theorem` | [IsLocalRing.linearIndependent_of_flat](../../../../CommutativeAlgebra/LocalRingModuleNamespacedPublic.lean/declarations/islocalring-linearindependent-of-flat.md) | 263 | `result-track:21e2f3207fb74a2dc989277b4ce2e55ee74eaad4788cf3dc569d857db6bcb52c` |
| 13 | `theorem` | [IsLocalRing.linearCombination_bijective_of_flat](../../../../CommutativeAlgebra/LocalRingModuleNamespacedPublic.lean/declarations/islocalring-linearcombination-bijective-of-flat.md) | 302 | `result-track:7af617fa4e59dab66c1cc4f99e9e86a49c868d14639a36a1dc0d8a4171410ddc` |
| 14 | `theorem` | [free_of_flat_of_isLocalRing](../../../../CommutativeAlgebra/LocalRingModuleNamespacedPublic.lean/declarations/free-of-flat-of-islocalring.md) | 312 | `result-track:86be28fb812532050af087a41122468513ac0e28b0d3bc28cff25a4670648cfe` |
| 15 | `theorem` | [free_of_lTensor_residueField_injective](../../../../CommutativeAlgebra/LocalRingModuleNamespacedPublic.lean/declarations/free-of-ltensor-residuefield-injective.md) | 322 | `result-track:38bbd5ce8fe03eaecfb7fdd925de6d3f8ae7eb0f19f9a67cff70f4c87206dae7` |
| 16 | `theorem` | [IsLocalRing.split_injective_iff_lTensor_residueField_injective](../../../../CommutativeAlgebra/LocalRingModuleNamespacedPublic.lean/declarations/islocalring-split-injective-iff-ltensor-residuefield-injective.md) | 342 | `result-track:2a67cfa471af06557bc4fe44d27c08b79e25e7da086c525f4a7028f0d9c4442c` |
| 17 | `theorem` | [nonempty_basis_of_flat_of_finrank_eq](../../../../CommutativeAlgebra/LocalRingModuleNamespacedPublic.lean/declarations/nonempty-basis-of-flat-of-finrank-eq.md) | 403 | `result-track:d9ade817643e400ca5e6773267b54e4b50a08c2680c2741d39d7343a236c3b93` |
| 18 | `theorem` | [free_of_flat_of_finrank_eq](../../../../CommutativeAlgebra/LocalRingModuleNamespacedPublic.lean/declarations/free-of-flat-of-finrank-eq.md) | 430 | `result-track:7dae0d1e958389e504c20c09eee011c005fdb9937436f69fb384ae29ff80cbce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7207c98948f46452c2b6d3af7b4284b01a29ee71750ff50523e052a901ec5054 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Module/Variant80ad042463e3cdf3238d1af541dc194a62bfc5fbc1075f14cddd972052333918.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Module/Variant80ad042463e3cdf3238d1af541dc194a62bfc5fbc1075f14cddd972052333918.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
