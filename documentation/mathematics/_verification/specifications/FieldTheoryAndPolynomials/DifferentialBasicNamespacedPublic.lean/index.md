# Verification target: Differential Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2264a8ba6b0778aef32b65a0189b604461540a01",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/DifferentialBasicNamespacedPublic.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/DifferentialBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2264a8ba6b0778aef32b65a0189b604461540a01`.

Source path: `GRWTSK/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean.json)

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
| 1 | `def` | [logDeriv](../../../../FieldTheoryAndPolynomials/DifferentialBasicNamespacedPublic.lean/declarations/logderiv.md) | 37 | `declaration-track:c723f1f5a4788579908d2f9e77f659af7ed19a470a089c8aa1fe30ede10fcd3b` |
| 2 | `lemma` | [logDeriv_zero](../../../../FieldTheoryAndPolynomials/DifferentialBasicNamespacedPublic.lean/declarations/logderiv-zero.md) | 40 | `result-track:bbbb8346e227c72d8fc9bb9de56cdb3cad9a24a19197b40c1353225e958395a9` |
| 3 | `lemma` | [logDeriv_one](../../../../FieldTheoryAndPolynomials/DifferentialBasicNamespacedPublic.lean/declarations/logderiv-one.md) | 44 | `result-track:351fc3cf13607cbfc2780bc93cc11a1aa2920b32986891a195847d97a75e4d73` |
| 4 | `lemma` | [logDeriv_mul](../../../../FieldTheoryAndPolynomials/DifferentialBasicNamespacedPublic.lean/declarations/logderiv-mul.md) | 47 | `result-track:3e20de3c85c8942c5126c7be34b4e12554457891390a372b9179cbc823029310` |
| 5 | `lemma` | [logDeriv_div](../../../../FieldTheoryAndPolynomials/DifferentialBasicNamespacedPublic.lean/declarations/logderiv-div.md) | 52 | `result-track:23a19ebc4fb2fd03eccb201fbdfc14ff75a9f233597906c0d91a96d55a0d08e7` |
| 6 | `lemma` | [logDeriv_pow](../../../../FieldTheoryAndPolynomials/DifferentialBasicNamespacedPublic.lean/declarations/logderiv-pow.md) | 57 | `result-track:48176b55b80e356e18d82377e0c0d2f7cc5ecf4df7d563aeba1b642d63413847` |
| 7 | `lemma` | [logDeriv_eq_zero](../../../../FieldTheoryAndPolynomials/DifferentialBasicNamespacedPublic.lean/declarations/logderiv-eq-zero.md) | 66 | `result-track:1ebec27bbe9a9beba87b42d1fbbc9b247bedd445e743b4453b43e5d724e82953` |
| 8 | `lemma` | [logDeriv_multisetProd](../../../../FieldTheoryAndPolynomials/DifferentialBasicNamespacedPublic.lean/declarations/logderiv-multisetprod.md) | 70 | `result-track:a902aba2ba7ec76fa1927b8cfc0ded5e217994d4fb7bd81fbb1f6be73fc14dd3` |
| 9 | `lemma` | [logDeriv_prod](../../../../FieldTheoryAndPolynomials/DifferentialBasicNamespacedPublic.lean/declarations/logderiv-prod.md) | 82 | `result-track:05d4c73ba77d3f75e5d10971efb07205f3e00c331932b18aa1d17dcd5ac82db2` |
| 10 | `lemma` | [logDeriv_prod_of_eq_zero](../../../../FieldTheoryAndPolynomials/DifferentialBasicNamespacedPublic.lean/declarations/logderiv-prod-of-eq-zero.md) | 85 | `result-track:a1e12500806cc90083803b5b707c777adacc155996403c87069814c86500c22a` |
| 11 | `lemma` | [logDeriv_algebraMap](../../../../FieldTheoryAndPolynomials/DifferentialBasicNamespacedPublic.lean/declarations/logderiv-algebramap.md) | 90 | `result-track:dff432d2aa30752c3e0c56e7b740cdebc9aa802fa95d1f2d2c704b0056f932bf` |
| 12 | `lemma` | [Differential Basic Namespaced Public](../../../../FieldTheoryAndPolynomials/DifferentialBasicNamespacedPublic.lean/declarations/coe-logderiv.md) | 97 | `result-track:ed2ab3213f183fa61910b9730042e5f325f061f53fc5d0465d3e03905d8ecef0` |
| 13 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/DifferentialBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 103 | `declaration-track:c32d8c54650d819622f2e1b5241ac6e55d5a11e752466357e495f8e302808524` |
| 14 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/DifferentialBasicNamespacedPublic.lean/declarations/instance.md) | 129 | `declaration-track:0b4235a639e6b785a9c168faf469fbbd1d9026093e72359506c385332d88280b` |
| 15 | `def` | [differentialFiniteDimensional](../../../../FieldTheoryAndPolynomials/DifferentialBasicNamespacedPublic.lean/declarations/differentialfinitedimensional.md) | 144 | `declaration-track:7c86fee2108316acfe6e576a7bd4fbdf4c76b58be68d945638c278545cbb3cc6` |
| 16 | `lemma` | [differentialAlgebraFiniteDimensional](../../../../FieldTheoryAndPolynomials/DifferentialBasicNamespacedPublic.lean/declarations/differentialalgebrafinitedimensional.md) | 154 | `result-track:6c068123e1d18c38c83456ddac35df53aece7e1fb9f37d331307ae92dde63aa9` |
| 17 | `def` | [uniqueDifferentialAlgebraFiniteDimensional](../../../../FieldTheoryAndPolynomials/DifferentialBasicNamespacedPublic.lean/declarations/uniquedifferentialalgebrafinitedimensional.md) | 169 | `declaration-track:126e4aec03b4b8de379ad3c9c10cc641ea7339e115428f3c0350d23d03a9316d` |
| 18 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/DifferentialBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 190 | `declaration-track:eb20bda58f05093b3f2e49a30d6a4d7010a9464f74e46474a6a068f1783a46cb` |
| 19 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/DifferentialBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 193 | `declaration-track:a81bee26b8b0ea8c56cdfebf45355be4d2f9220e0a98cefd1b3144c130bb3d1a` |
| 20 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/DifferentialBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 196 | `declaration-track:e1b4ca912207bb52eedbe8de814e82e4c8e08189e094e32a9349a4c5cd89d213` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=485490f1d22b16cb8b9caa90cd0c4b2077beab58524ad74c4e5d9a25cb958b63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean","GRWTSK/_verification/specifications/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
