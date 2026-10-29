# Verification target: Equational Criterion Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "743e9721468e82eda444d1533a52c5f486305d01",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variante0e52385eed3a509e4689e5bf55fc2ebfe2bc3bdbcbe7210e4dc54f76626a249.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/EquationalCriterionNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/EquationalCriterionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `743e9721468e82eda444d1533a52c5f486305d01`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variante0e52385eed3a509e4689e5bf55fc2ebfe2bc3bdbcbe7210e4dc54f76626a249.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EquationalCriterion/Variante0e52385eed3a509e4689e5bf55fc2ebfe2bc3bdbcbe7210e4dc54f76626a249.lean.json)

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
| 1 | `abbrev` | [IsTrivialRelation](../../../../CommutativeAlgebra/EquationalCriterionNamespacedPublic.lean/declarations/istrivialrelation.md) | 83 | `declaration-track:a6c00e25cb8aac2fc5d0e153cbd7203831d0be8e92edbcd7395ace616c96dd09` |
| 2 | `theorem` | [isTrivialRelation_iff_vanishesTrivially](../../../../CommutativeAlgebra/EquationalCriterionNamespacedPublic.lean/declarations/istrivialrelation-iff-vanishestrivially.md) | 91 | `result-track:4bc68d162e3297a0a8e6004189cfc9bcfd1eb0a96cb4573d500ceaffc2c84a68` |
| 3 | `theorem` | [Equational Criterion Namespaced Public](../../../../CommutativeAlgebra/EquationalCriterionNamespacedPublic.lean/declarations/istrivialrelation-comp.md) | 95 | `result-track:cab754d9c16b4f82c5ae0c105aa2bc93b6ee76c7872bc2c7ee1b2f112db04b09` |
| 4 | `theorem` | [sum_smul_eq_zero_of_isTrivialRelation](../../../../CommutativeAlgebra/EquationalCriterionNamespacedPublic.lean/declarations/sum-smul-eq-zero-of-istrivialrelation.md) | 101 | `result-track:1965114729124607df2102cb2eba40a1f90d4f7b80bd90983510f6ec2a761d70` |
| 5 | `theorem` | [tfae_equational_criterion](../../../../CommutativeAlgebra/EquationalCriterionNamespacedPublic.lean/declarations/tfae-equational-criterion.md) | 125 | `result-track:2daef8441ef9d4ee41022bb3581b8b54063ca74c857e4e2a20b8603e4ed26419` |
| 6 | `theorem` | [iff_forall_isTrivialRelation](../../../../CommutativeAlgebra/EquationalCriterionNamespacedPublic.lean/declarations/iff-forall-istrivialrelation.md) | 177 | `result-track:2048bbec30e384e53e0d69e6f1575ccfe2790085fa388dcd7dd206219af64c62` |
| 7 | `theorem` | [isTrivialRelation_of_sum_smul_eq_zero](../../../../CommutativeAlgebra/EquationalCriterionNamespacedPublic.lean/declarations/istrivialrelation-of-sum-smul-eq-zero.md) | 185 | `result-track:38653ac348fc818d5e164f2f967f14d6cd0a9f380db4263ed3ab22971d26ae42` |
| 8 | `theorem` | [of_forall_isTrivialRelation](../../../../CommutativeAlgebra/EquationalCriterionNamespacedPublic.lean/declarations/of-forall-istrivialrelation.md) | 194 | `result-track:d206a898005230a37d12ef267d6b4b2e69a0120f167db2a0614c8d6d715d17ca` |
| 9 | `theorem` | [iff_forall_exists_factorization](../../../../CommutativeAlgebra/EquationalCriterionNamespacedPublic.lean/declarations/iff-forall-exists-factorization.md) | 205 | `result-track:d241ae61ab24150d157c24836d2cee5b752f7c14f8ade9271a2ecae994eb7264` |
| 10 | `theorem` | [of_forall_exists_factorization](../../../../CommutativeAlgebra/EquationalCriterionNamespacedPublic.lean/declarations/of-forall-exists-factorization.md) | 217 | `result-track:38b211ec793b4bf864dced83f20c26d5db5e75a4daabe6fd776258d3594a4962` |
| 11 | `theorem` | [exists_factorization_of_apply_eq_zero_of_free](../../../../CommutativeAlgebra/EquationalCriterionNamespacedPublic.lean/declarations/exists-factorization-of-apply-eq-zero-of-free.md) | 229 | `result-track:c650e986ea3995f4a83c902c695cca121a20e6ecb88ef3eb45b1a484c03e003f` |
| 12 | `theorem` | [exists_factorization_of_comp_eq_zero_of_free_aux](../../../../CommutativeAlgebra/EquationalCriterionNamespacedPublic.lean/declarations/exists-factorization-of-comp-eq-zero-of-free-aux.md) | 237 | `result-track:a3fd6779ff3bd4f8519977376ff738e7b9f326e550351e57069d9b5c95f11187` |
| 13 | `theorem` | [exists_factorization_of_comp_eq_zero_of_free](../../../../CommutativeAlgebra/EquationalCriterionNamespacedPublic.lean/declarations/exists-factorization-of-comp-eq-zero-of-free.md) | 264 | `result-track:458f9cd6d15e3a4c0be50eed244f54134230b3751a92257aaff4b1a9534ccb0b` |
| 14 | `theorem` | [exists_factorization_of_finitePresentation](../../../../CommutativeAlgebra/EquationalCriterionNamespacedPublic.lean/declarations/exists-factorization-of-finitepresentation.md) | 278 | `result-track:c043e38d4823195d4e1686f41aaa09fb3e3efdaebdf80d5e3199835fb034cf8d` |
| 15 | `theorem` | [projective_of_finitePresentation](../../../../CommutativeAlgebra/EquationalCriterionNamespacedPublic.lean/declarations/projective-of-finitepresentation.md) | 295 | `result-track:c512c963d7782412e84d33cf84cf598a9a78f8db17c7ee4707db5be3acf2e2bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=16412be152c2eeaf47911dccef58736e8db7d52c0160bf06004bd266396d57c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variante0e52385eed3a509e4689e5bf55fc2ebfe2bc3bdbcbe7210e4dc54f76626a249.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/EquationalCriterion/Variante0e52385eed3a509e4689e5bf55fc2ebfe2bc3bdbcbe7210e4dc54f76626a249.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
