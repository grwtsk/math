# Verification target: Eigenspace Semisimple Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfbd206a219d1e76d1aee49962073b4daa1d8c31",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant6eea2a484156aceef4c761be91490f415150bf643cdb408da789a6ba27302b5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceSemisimplePublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceSemisimplePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfbd206a219d1e76d1aee49962073b4daa1d8c31`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant6eea2a484156aceef4c761be91490f415150bf643cdb408da789a6ba27302b5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Semisimple/Variant6eea2a484156aceef4c761be91490f415150bf643cdb408da789a6ba27302b5d.lean.json)

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
| 1 | `lemma` | [apply_eq_of_mem_of_comm_of_isFinitelySemisimple_of_isNil](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceSemisimplePublic.lean/declarations/apply-eq-of-mem-of-comm-of-isfinitelysemisimple-of-isnil.md) | 40 | `result-track:cbd4ed593d182bd1dd993f3fb019de76f7af3e59ef124f81e45aabeb9a5e3193` |
| 2 | `lemma` | [IsFinitelySemisimple.genEigenspace_eq_eigenspace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceSemisimplePublic.lean/declarations/isfinitelysemisimple-geneigenspace-eq-eigenspace.md) | 64 | `result-track:de63f06f2123343b8a105c12d40c4ce2305cb28af4dfa2a879e564e131f08b79` |
| 3 | `lemma` | [IsFinitelySemisimple.maxGenEigenspace_eq_eigenspace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceSemisimplePublic.lean/declarations/isfinitelysemisimple-maxgeneigenspace-eq-eigenspace.md) | 72 | `result-track:d79004fe90969b701e62583e548314ab2f9b2dee88ec8027e32fa6d73f1ce87d` |
| 4 | `lemma` | [IsFinitelySemisimple.iSup_maxGenEigenspace_eq_top_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceSemisimplePublic.lean/declarations/isfinitelysemisimple-isup-maxgeneigenspace-eq-top-iff.md) | 78 | `result-track:9cde8b42275655257f78b34bd53c76f208506f8c2b08d08eec525e27e18755b3` |
| 5 | `lemma` | [IsSemisimple.iSup_maxGenEigenspace_eq_top_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceSemisimplePublic.lean/declarations/issemisimple-isup-maxgeneigenspace-eq-top-iff.md) | 83 | `result-track:2ee35510176a300e7364ab5e417cabd8ac1fe9b3c58a76d904040c27d94ce56b` |
| 6 | `lemma` | [IsSemisimple.iSup_eigenspace_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceSemisimplePublic.lean/declarations/issemisimple-isup-eigenspace-eq-top.md) | 92 | `result-track:d070ca8150c2891279d3f358ef3dd477bc523423675322c4772ebdbd343366b2` |
| 7 | `lemma` | [IsSemisimple.eq_zero_iff_forall_eigenvalue](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceSemisimplePublic.lean/declarations/issemisimple-eq-zero-iff-forall-eigenvalue.md) | 97 | `result-track:3fb61f78c73bef2697492181c9e7ec5f74d0d7ba28bf2b1e33d35386d3bab8b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d2c06b1ee420f5f151c37e8247c41868bc4ca6ff50ed128bc6dd865818ff2a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant6eea2a484156aceef4c761be91490f415150bf643cdb408da789a6ba27302b5d.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Semisimple/Variant6eea2a484156aceef4c761be91490f415150bf643cdb408da789a6ba27302b5d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
