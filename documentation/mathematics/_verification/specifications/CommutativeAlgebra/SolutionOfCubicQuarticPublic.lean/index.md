# Verification target: Solution Of Cubic Quartic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb9417e8f89f4ce3fe2afa5f0c2ad8e79bc310cd",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variant633f7fc57f039f88b05d6e29978648c32dd609a9ebeea1e3ef0ff95430ea9c9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/SolutionOfCubicQuarticPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/SolutionOfCubicQuarticPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb9417e8f89f4ce3fe2afa5f0c2ad8e79bc310cd`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variant633f7fc57f039f88b05d6e29978648c32dd609a9ebeea1e3ef0ff95430ea9c9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variant633f7fc57f039f88b05d6e29978648c32dd609a9ebeea1e3ef0ff95430ea9c9a.lean.json)

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
| 1 | `theorem` | [cube_root_of_unity_sum](../../../../CommutativeAlgebra/SolutionOfCubicQuarticPublic.lean/declarations/cube-root-of-unity-sum.md) | 85 | `result-track:036fe534adbf52ceb6e977b78d20be436398fed8f1d1cdfc09c1d2212e1ec05a` |
| 2 | `theorem` | [cubic_depressed_eq_zero_iff](../../../../CommutativeAlgebra/SolutionOfCubicQuarticPublic.lean/declarations/cubic-depressed-eq-zero-iff.md) | 89 | `result-track:a78bab4f3952ae6ab3da7e0a02811c549be2c5159306c17fe4497f52ef2d6805` |
| 3 | `theorem` | [cubic_eq_zero_iff](../../../../CommutativeAlgebra/SolutionOfCubicQuarticPublic.lean/declarations/cubic-eq-zero-iff.md) | 110 | `result-track:2da810579937509928a5886c4bee87bdc34a94e5994bca5be31160cf169bd54a` |
| 4 | `theorem` | [cubic_eq_zero_iff_of_p_eq_zero](../../../../CommutativeAlgebra/SolutionOfCubicQuarticPublic.lean/declarations/cubic-eq-zero-iff-of-p-eq-zero.md) | 127 | `result-track:195cf985ff1a9e53074fab377c0746b5ce4c19a587b046be52ef5e7f98a52860` |
| 5 | `theorem` | [quartic_depressed_eq_zero_iff](../../../../CommutativeAlgebra/SolutionOfCubicQuarticPublic.lean/declarations/quartic-depressed-eq-zero-iff.md) | 166 | `result-track:a7e2d52c805d38c2b05d2724574d6a887c3a951357ea844a95af2b122cd98453` |
| 6 | `theorem` | [quartic_eq_zero_iff](../../../../CommutativeAlgebra/SolutionOfCubicQuarticPublic.lean/declarations/quartic-eq-zero-iff.md) | 198 | `result-track:79469c3cacd95db67a5294aa9ccb760ab24ad09533b6998662f78a408f6fcd2f` |
| 7 | `theorem` | [quartic_eq_zero_iff_of_q_eq_zero](../../../../CommutativeAlgebra/SolutionOfCubicQuarticPublic.lean/declarations/quartic-eq-zero-iff-of-q-eq-zero.md) | 223 | `result-track:7da7a5af52999bb086824339401396bc65b929b9244ef1cec4bc4b076bdb5d90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d771b5832104c2de8ea607a7b41acbd00370070b1f787b059bb4ee93d7d69589 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variant633f7fc57f039f88b05d6e29978648c32dd609a9ebeea1e3ef0ff95430ea9c9a.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variant633f7fc57f039f88b05d6e29978648c32dd609a9ebeea1e3ef0ff95430ea9c9a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
