# Verification target: Subsemigroup Centralizer Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8179caaba7f0d4abe75feb28f090d850a4c60d4b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant6b6cac2b4ccea7fcdca79efb4a8853bbd9c90cc2817bdd33f5c77e4e184600ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SubsemigroupCentralizerPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SubsemigroupCentralizerPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8179caaba7f0d4abe75feb28f090d850a4c60d4b`.

Source path: `GRWTSK/Algebra/GroupTheory/Centralizer/Variant6b6cac2b4ccea7fcdca79efb4a8853bbd9c90cc2817bdd33f5c77e4e184600ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Centralizer/Variant6b6cac2b4ccea7fcdca79efb4a8853bbd9c90cc2817bdd33f5c77e4e184600ba.lean.json)

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
| 1 | `def` | [centralizer](../../../../GroupTheoryAndGeneralizations/SubsemigroupCentralizerPublic.lean/declarations/centralizer.md) | 39 | `declaration-track:b0318e72be72075dd025f874587f93820191b6b098d3ae670add1d3cd7a5ed18` |
| 2 | `theorem` | [coe_centralizer](../../../../GroupTheoryAndGeneralizations/SubsemigroupCentralizerPublic.lean/declarations/coe-centralizer.md) | 44 | `result-track:83adcba16ceb4d764a23225bacc9811269de54e12503e8965a00a0680f193f32` |
| 3 | `theorem` | [mem_centralizer_iff](../../../../GroupTheoryAndGeneralizations/SubsemigroupCentralizerPublic.lean/declarations/mem-centralizer-iff.md) | 50 | `result-track:fcb05de2132503e868f481e42ae063994e1073f115f3aa613f0537e7473ec65c` |
| 4 | `instance` | [decidableMemCentralizer](../../../../GroupTheoryAndGeneralizations/SubsemigroupCentralizerPublic.lean/declarations/decidablememcentralizer.md) | 54 | `declaration-track:b410ab1e3ff7cc7dcda318a6826ad3c60416d44762bb7940e1dc06f04c7d68f1` |
| 5 | `theorem` | [center_le_centralizer](../../../../GroupTheoryAndGeneralizations/SubsemigroupCentralizerPublic.lean/declarations/center-le-centralizer.md) | 59 | `result-track:6a911b36f4719f773ade63f2b95bbc29442e59157ceec9c46fa9c04fd073343f` |
| 6 | `theorem` | [centralizer_le](../../../../GroupTheoryAndGeneralizations/SubsemigroupCentralizerPublic.lean/declarations/centralizer-le.md) | 63 | `result-track:9640768e1814393c3c5772add301505bc974f67601edd8b47904097fb932f5dc` |
| 7 | `theorem` | [centralizer_eq_top_iff_subset](../../../../GroupTheoryAndGeneralizations/SubsemigroupCentralizerPublic.lean/declarations/centralizer-eq-top-iff-subset.md) | 67 | `result-track:34b00f522da12ec57ac5b46f7ffe8bf75241008feffab68cb6bf91dc6aec73b5` |
| 8 | `theorem` | [centralizer_univ](../../../../GroupTheoryAndGeneralizations/SubsemigroupCentralizerPublic.lean/declarations/centralizer-univ.md) | 72 | `result-track:3b4723b2e60e5a3800d5a6025d2a0636f29654b77f7e7cb532ca21868cb44044` |
| 9 | `lemma` | [closure_le_centralizer_centralizer](../../../../GroupTheoryAndGeneralizations/SubsemigroupCentralizerPublic.lean/declarations/closure-le-centralizer-centralizer.md) | 77 | `result-track:861ac72ea415a462b3baf74ad8bca462c8e13f15c18e76e8141473179a5d80b7` |
| 10 | `theorem` | [isMulCommutative_closure](../../../../GroupTheoryAndGeneralizations/SubsemigroupCentralizerPublic.lean/declarations/ismulcommutative-closure.md) | 84 | `result-track:0227498ba59bdecc2d26bf9566e241ca98d3d0a6c494dd6f665fc93bb69e2981` |
| 11 | `abbrev` | [closureCommSemigroupOfComm](../../../../GroupTheoryAndGeneralizations/SubsemigroupCentralizerPublic.lean/declarations/closurecommsemigroupofcomm.md) | 95 | `declaration-track:bf28a27269acb392f15f0a3733324c49e6cbd6d5f15a64a3bb51fbbc90590ac2` |
| 12 | `instance` | [instIsMulCommutative_closure](../../../../GroupTheoryAndGeneralizations/SubsemigroupCentralizerPublic.lean/declarations/instismulcommutative-closure.md) | 101 | `declaration-track:265fa482ef219bf15a892a97e8a217191669481e268cb4d7d4cde16d74e1e78b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=622b5122857ea9e380f5434dcff84164074d42c0728061fdce3b2c0e955051ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Centralizer/Variant6b6cac2b4ccea7fcdca79efb4a8853bbd9c90cc2817bdd33f5c77e4e184600ba.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Centralizer/Variant6b6cac2b4ccea7fcdca79efb4a8853bbd9c90cc2817bdd33f5c77e4e184600ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
