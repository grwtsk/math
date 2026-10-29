# Verification target: Positive Geometry Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a85a1e3092584c08c1ff940b9e7d1587254d64d1",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PositiveGeometry/Variant095d91614cc93d4123696c19d93672e801f8b9c6f6d2620f6c8a900f28bbd4d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/PositiveGeometryEdition1.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/PositiveGeometryEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a85a1e3092584c08c1ff940b9e7d1587254d64d1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PositiveGeometry/Variant095d91614cc93d4123696c19d93672e801f8b9c6f6d2620f6c8a900f28bbd4d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PositiveGeometry/Variant095d91614cc93d4123696c19d93672e801f8b9c6f6d2620f6c8a900f28bbd4d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Certification` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveForm](../../../../GroupTheoryAndGeneralizations/PositiveGeometryEdition1.lean/declarations/positiveform.md) | 27 | `declaration-track:f8696eca0682b6b6dc1d1b4cdbeb6af4dc7115b9393c0e242ee87302654748f6` |
| 2 | `def` | [Visible](../../../../GroupTheoryAndGeneralizations/PositiveGeometryEdition1.lean/declarations/visible.md) | 44 | `declaration-track:e59981e160febd8a0841e3c6563d31232ef6a98cfc977e1582fa6a83631536e0` |
| 3 | `def` | [IsNull](../../../../GroupTheoryAndGeneralizations/PositiveGeometryEdition1.lean/declarations/isnull.md) | 48 | `declaration-track:c956c22e37f58d1f344e1c4ee24325d48db30ab77c5f0d81658a91a96e6876fb` |
| 4 | `def` | [pullback](../../../../GroupTheoryAndGeneralizations/PositiveGeometryEdition1.lean/declarations/pullback.md) | 52 | `declaration-track:58650b971c3975683769357de2affb8b0309576e001068a434e7514e5b5667f2` |
| 5 | `theorem` | [pullback_nonnegative](../../../../GroupTheoryAndGeneralizations/PositiveGeometryEdition1.lean/declarations/pullback-nonnegative.md) | 66 | `result-track:6d53cba1a2bdd7cda9b7658faf4c6bb4b217c60fb6f26bfe8cd896a3de20eaa4` |
| 6 | `theorem` | [pullback_visible_iff](../../../../GroupTheoryAndGeneralizations/PositiveGeometryEdition1.lean/declarations/pullback-visible-iff.md) | 71 | `result-track:ee2a34f7fe1a197bb7036a7ba7e445e053e1e9b8ffe8b5b383c73029d27f2f9b` |
| 7 | `theorem` | [pullback_isNull_iff](../../../../GroupTheoryAndGeneralizations/PositiveGeometryEdition1.lean/declarations/pullback-isnull-iff.md) | 76 | `result-track:0586bda48a3d31323e684c7e43d997b59ddba9eccf10a037fffd17b51f031af1` |
| 8 | `def` | [add](../../../../GroupTheoryAndGeneralizations/PositiveGeometryEdition1.lean/declarations/add.md) | 81 | `declaration-track:0f138a8f41b4ce71be1b9a4bf062beacf58c664e69d43f1987ef7c0c5a4d8251` |
| 9 | `theorem` | [add_nonnegative](../../../../GroupTheoryAndGeneralizations/PositiveGeometryEdition1.lean/declarations/add-nonnegative.md) | 100 | `result-track:957a24aff125e59bfc6811dadff404525eb30572d62b293931cb987d484e64a7` |
| 10 | `structure` | [ProvenanceResidualization](../../../../GroupTheoryAndGeneralizations/PositiveGeometryEdition1.lean/declarations/provenanceresidualization.md) | 111 | `declaration-track:097b77a279d50758db50b2c487abef34aecbde57b6663b3f967f17132214d092` |
| 11 | `def` | [residualForm](../../../../GroupTheoryAndGeneralizations/PositiveGeometryEdition1.lean/declarations/residualform.md) | 126 | `declaration-track:e6b06cb5951560f1817e6ec909586f7ccb2aa858bccb8e91738c1349dd22a41e` |
| 12 | `theorem` | [residual_nonnegative](../../../../GroupTheoryAndGeneralizations/PositiveGeometryEdition1.lean/declarations/residual-nonnegative.md) | 131 | `result-track:58fcc0892a15c413ec063241af4e742ebb11d34a904ccaa84a91182b6eef4684` |
| 13 | `theorem` | [residual_visible_iff](../../../../GroupTheoryAndGeneralizations/PositiveGeometryEdition1.lean/declarations/residual-visible-iff.md) | 138 | `result-track:98fdd022d1173d0cca6270c6b79646268adb8fecf1c610037c749731d3545cdb` |
| 14 | `theorem` | [residual_isNull_iff](../../../../GroupTheoryAndGeneralizations/PositiveGeometryEdition1.lean/declarations/residual-isnull-iff.md) | 145 | `result-track:dd4e971b36191fd2603f2ed7ab7d9fb2bd806b4fb018e23e23d3b9aaf4569bd9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=980f7b33d4f46f20cdc334dd79aef86999d7c544b9369625df3bcf69ca90faec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PositiveGeometry/Variant095d91614cc93d4123696c19d93672e801f8b9c6f6d2620f6c8a900f28bbd4d0.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/PositiveGeometry/Variant095d91614cc93d4123696c19d93672e801f8b9c6f6d2620f6c8a900f28bbd4d0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
