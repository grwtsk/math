# Verification target: General Linear Group Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41e51b8952dfc090e39449a7e2b3fabe58b46477",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc5ad7a06a596052aeb7955f3a66dc6f004837521626003aae0c059b0b7de4749.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupBasicPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41e51b8952dfc090e39449a7e2b3fabe58b46477`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantc5ad7a06a596052aeb7955f3a66dc6f004837521626003aae0c059b0b7de4749.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantc5ad7a06a596052aeb7955f3a66dc6f004837521626003aae0c059b0b7de4749.lean.json)

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
| 1 | `def` | [planeConformalMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupBasicPublic.lean/declarations/planeconformalmatrix.md) | 26 | `declaration-track:50d7a993852a27154a41b5ac1052d425e54cb9b8e93665ddbb7077de97a91a33` |
| 2 | `lemma` | [mem_center_iff_val_mem_range_scalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupBasicPublic.lean/declarations/mem-center-iff-val-mem-range-scalar.md) | 42 | `result-track:f2bb9af01843ae55bfb4fe88ed6fd33f14eaef511ba9cf69e31b7c35e68f974d` |
| 3 | `lemma` | [center_eq_range_scalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupBasicPublic.lean/declarations/center-eq-range-scalar.md) | 52 | `result-track:96fd949c6243614ad98216b563238c3ce217c8093bf6d71e73a3f78770070076` |
| 4 | `lemma` | [map_center_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupBasicPublic.lean/declarations/map-center-le.md) | 71 | `result-track:959b6a32a09049b2a96fb4643bd2816c2defb3340f9a47bec5fe9408a3ab198f` |
| 5 | `lemma` | [SpecialLinearGroup.toGL_mem_center_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupBasicPublic.lean/declarations/speciallineargroup-togl-mem-center-iff.md) | 82 | `result-track:b1c627ae0aeca87f6d24311a6a25f827771b1a4e1baea61c8c23599dadc31f1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea72e94852da63b68a7c52a620aa17222e6576d75c5c978a7b06c7e4caa448ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantc5ad7a06a596052aeb7955f3a66dc6f004837521626003aae0c059b0b7de4749.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variantc5ad7a06a596052aeb7955f3a66dc6f004837521626003aae0c059b0b7de4749.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
