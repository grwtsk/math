# Verification target: Coset Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24bf9661e1345f493f0ebc73f25c2788755cd269",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variantff0ec561ab22c84d9e4134d61066357d7ed8f7b868a8111e74bdf78912b19af5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24bf9661e1345f493f0ebc73f25c2788755cd269`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variantff0ec561ab22c84d9e4134d61066357d7ed8f7b868a8111e74bdf78912b19af5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variantff0ec561ab22c84d9e4134d61066357d7ed8f7b868a8111e74bdf78912b19af5.lean.json)

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
| 1 | `def` | [leftRel](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/leftrel.md) | 74 | `declaration-track:675ca14af8a01355471361b021eec43f2e19af569d828bb78dd653023ef43f04` |
| 2 | `theorem` | [leftRel_apply](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/leftrel-apply.md) | 79 | `result-track:8fb3e4d0ac2a954ae7c2548e041e59ed89803b80989dfbffd99db10a45f520f0` |
| 3 | `theorem` | [leftRel_eq](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/leftrel-eq.md) | 88 | `result-track:aed12cda44c6fce2b8e4deffd69e26bd9f3fb977f3bbc4f773358bcded1c446d` |
| 4 | `instance` | [leftRelDecidable](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/leftreldecidable.md) | 94 | `declaration-track:409c5d89ffa367964b44d813ba2e0652040036396e094d67a2bbc23574ac7e2a` |
| 5 | `instance` | [instHasQuotientSubgroup](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/insthasquotientsubgroup.md) | 102 | `declaration-track:abf9a8e3779abbf786d2eacd18e7f55b73bd41c0155974e76312fa080af26b2e` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/instance.md) | 106 | `declaration-track:0caa6baa82d5dd165f4a6372f64553e5485fba31cc5d3cd0ab27f0f062ffdf14` |
| 7 | `def` | [rightRel](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/rightrel.md) | 114 | `declaration-track:8a8c3b2e70d687b1b2cff7a6a258d634973060ba282d043adafc689e35aec8f8` |
| 8 | `theorem` | [rightRel_apply](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/rightrel-apply.md) | 119 | `result-track:12d5676e0a236a6444575fa424078f0862699726ee37c624e74c897fcce54f30` |
| 9 | `theorem` | [rightRel_eq](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/rightrel-eq.md) | 126 | `result-track:b52b235f0eed0a6321e9114b4e44face472624ec821e2ad832726d121a8ab7d1` |
| 10 | `instance` | [rightRelDecidable](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/rightreldecidable.md) | 132 | `declaration-track:c9a7d3527a9401be0011deb27093d69f6f2b26bfd4fa102ea3beb2a403daf600` |
| 11 | `def` | [quotientRightRelEquivQuotientLeftRel](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/quotientrightrelequivquotientleftrel.md) | 138 | `declaration-track:22d862aad08cab91150157c80b7e97d01fe694e0d223ae2c46f6205a0e8aa2ab` |
| 12 | `abbrev` | [mk](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/mk.md) | 169 | `declaration-track:d3d18dfb9ccdbd64bb66e242779d413f0449fdadc0ca7915a5b4ec75fb895a6f` |
| 13 | `theorem` | [mk_surjective](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/mk-surjective.md) | 173 | `result-track:7f28da2ec1900905c8b9e75e1b20785e79dcbc052cec00f226d58d1134f564d9` |
| 14 | `lemma` | [range_mk](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/range-mk.md) | 177 | `result-track:52d37007524be72d25863bf5facc8549fbec42bd593cd17a5eed3b6e4479e6ac` |
| 15 | `theorem` | [induction_on](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/induction-on.md) | 180 | `result-track:37574aa00342f96cc14d89fd3b1f70e1860965255eec84f5f3352fd4b3461728` |
| 16 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 184 | `declaration-track:a307a0d49d0e8458261e227ce0f6c48b9f676b3d092b906e07a17ad60650e4e6` |
| 17 | `theorem` | [quotient_liftOn_mk](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/quotient-lifton-mk.md) | 190 | `result-track:5f3c5a5166f469f579231f5eaf05519a6d2b29b6d64dd73b3064c8a0bea9fc61` |
| 18 | `theorem` | [forall_mk](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/forall-mk.md) | 194 | `result-track:5d043d24ac320a20f745f7c42bce360c5f78f8eef8e9dacd699957f5574db822` |
| 19 | `theorem` | [exists_mk](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/exists-mk.md) | 198 | `result-track:8e15e5c4b8f109c0642a07cbbe3a151ff57543c2fcfb995a87e3f78969ce4061` |
| 20 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 202 | `declaration-track:b89d2d2e4409c45e6efba7e5e413bdf94fac99b7248781234c18be04f5ac0d65` |
| 21 | `theorem` | [eq](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/eq.md) | 206 | `result-track:c4c0bc4fbdf48d21c7de4774772f92c42d5e12ada955d7dc9fea1df7778800a5` |
| 22 | `theorem` | [out_eq'](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/out-eq.md) | 212 | `result-track:65ffee4db922b7165c558dd983ccb1f0d822b304c8c4e6a999555a82d43a3e54` |
| 23 | `theorem` | [mk_out_eq_mul](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/mk-out-eq-mul.md) | 224 | `result-track:fde1a094bf4abb1956123cce35bb8aa3964a6bc170cb11038ec543b9213e7b59` |
| 24 | `theorem` | [mk_mul_of_mem](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/mk-mul-of-mem.md) | 230 | `result-track:f9ba2ea84a24e36454fd404d33b627690a12278a381fc1105193569221823f24` |
| 25 | `theorem` | [preimage_image_mk](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/preimage-image-mk.md) | 234 | `result-track:2ad2d2958bdf6f1865e478fa345ff0a9d7f9a457c760ff9e33fcec71ff43ff45` |
| 26 | `theorem` | [preimage_image_mk_eq_iUnion_image](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/preimage-image-mk-eq-iunion-image.md) | 244 | `result-track:12e7b442e08e1c520094814392901b66e2eb8e03254894d2f7cfae3964e20c0d` |
| 27 | `theorem` | [preimage_image_mk_eq_mul](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/preimage-image-mk-eq-mul.md) | 250 | `result-track:473598a85421c0742e1dc8c66c5e564be10a640e65a1b6c75649e0ae4b0d2d0c` |
| 28 | `theorem` | [preimage_mk_one](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/preimage-mk-one.md) | 256 | `result-track:15e50417726dc2e9bd1f7ada188882fc43383fb329deb706332e307ff0bc94b3` |
| 29 | `def` | [quotientEquivOfEq](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/quotientequivofeq.md) | 277 | `declaration-track:1ac09c051cde7f2c38131ffe512861f7b1c500a1f93d344f299d02259e38868b` |
| 30 | `theorem` | [quotientEquivOfEq_mk](../../../../GroupTheoryAndGeneralizations/CosetDefsNamespacedPublic.lean/declarations/quotientequivofeq-mk.md) | 283 | `result-track:b2947c6f0d7dbb52ac44ed603c8fa021615590e5452dd5af54ad39febb718b60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd925e2fe3b0f60d964e2bf90349f6056f6c7870b04e564bc07b6f4a9c489166 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variantff0ec561ab22c84d9e4134d61066357d7ed8f7b868a8111e74bdf78912b19af5.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variantff0ec561ab22c84d9e4134d61066357d7ed8f7b868a8111e74bdf78912b19af5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
