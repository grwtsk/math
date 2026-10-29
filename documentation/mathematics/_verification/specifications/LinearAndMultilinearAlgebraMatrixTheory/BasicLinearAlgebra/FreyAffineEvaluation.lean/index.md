# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyAffineEvaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b15e0d96b7fb8a163003a135a3a1d957ff46ffea",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAffineEvaluation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreyAffineEvaluation.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreyAffineEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b15e0d96b7fb8a163003a135a3a1d957ff46ffea`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAffineEvaluation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAffineEvaluation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCurveGeometry`](../../../../../NumberTheory/DiophantineEquations/FreyCurveGeometry.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FreyRationalSectionCoordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreyAffineEvaluation.lean/declarations/freyrationalsectioncoordinates.md) | 16 | `declaration-track:8095ad03214356942fd45ea8355b1803a0f4f1e8024c54429f90356bed0a8641` |
| 2 | `abbrev` | [FreyRationalThreePortValues](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreyAffineEvaluation.lean/declarations/freyrationalthreeportvalues.md) | 19 | `declaration-track:f2ae38b4aafd247911c4c82cf438455cb396beb10661a6c3d1bf9a2dafc9a322` |
| 3 | `def` | [PrimitiveAdditiveTriple.freyAffineLinearValue](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreyAffineEvaluation.lean/declarations/primitiveadditivetriple-freyaffinelinearvalue.md) | 24 | `declaration-track:4778305611dadd1e673fc1a3e7c7cb97fc0c8b30a637a5d1a6601f1220c65adf` |
| 4 | `def` | [PrimitiveAdditiveTriple.freyAffinePortEval](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreyAffineEvaluation.lean/declarations/primitiveadditivetriple-freyaffineporteval.md) | 32 | `declaration-track:af5e74914045652a3451ff09aae85ac45bc5ae6c0363171b81f85421e8a69f36` |
| 5 | `theorem` | [PrimitiveAdditiveTriple.freyAffinePortEval_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreyAffineEvaluation.lean/declarations/primitiveadditivetriple-freyaffineporteval-eq.md) | 39 | `result-track:827f1ac7953da146cfda5bae184358b34bb02ae214708a5a3325eff93e6acb5c` |
| 6 | `def` | [freySectionCoordinatesToRat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreyAffineEvaluation.lean/declarations/freysectioncoordinatestorat.md) | 54 | `declaration-track:f534709f29b64f9b21d7a3fdad1f43128e947a607e52b3dea6a7ca13343f6ed2` |
| 7 | `def` | [freyThreePortValuesToRat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreyAffineEvaluation.lean/declarations/freythreeportvaluestorat.md) | 59 | `declaration-track:948d6357384919a2d12a75b6493eed8024ec00a0d8c8e803fb5a4e00f3809949` |
| 8 | `theorem` | [freySectionCoordinatesToRat_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreyAffineEvaluation.lean/declarations/freysectioncoordinatestorat-apply.md) | 63 | `result-track:bdd9472633786e6d813dcf1cf8ab3b222ae152b90cc40ad380aafb3d75a5a329` |
| 9 | `theorem` | [freyThreePortValuesToRat_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreyAffineEvaluation.lean/declarations/freythreeportvaluestorat-apply.md) | 68 | `result-track:adc94ea210d80e303e5672633d8fb0796f4c8cb640975561cb137602d115fca0` |
| 10 | `theorem` | [PrimitiveAdditiveTriple.freyAffinePortEval_intCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreyAffineEvaluation.lean/declarations/primitiveadditivetriple-freyaffineporteval-intcast.md) | 76 | `result-track:0aabf352b0f73ceed89ffbc07bdd4deb82ed70c8656054644694bd23a355aebb` |
| 11 | `def` | [freyXRationalSection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreyAffineEvaluation.lean/declarations/freyxrationalsection.md) | 89 | `declaration-track:4d4baff73d16c5ceac2ab269ff478929968e782198d8c4166e7bad673e7d647a` |
| 12 | `theorem` | [PrimitiveAdditiveTriple.freyAffinePortEval_x](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreyAffineEvaluation.lean/declarations/primitiveadditivetriple-freyaffineporteval-x.md) | 94 | `result-track:c7eb4b05a2da57a96b2661d6f240f1f8a7fec1b2d7a560cacfc66805bacfe2b9` |
| 13 | `theorem` | [PrimitiveAdditiveTriple.freyAffinePortEval_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreyAffineEvaluation.lean/declarations/primitiveadditivetriple-freyaffineporteval-injective.md) | 106 | `result-track:d8386851a664c4d36f928849d8613d6f90dfd39eec67480eac1be6eb895e0b6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1198134cf5a6cbb310a623bca8e716ff02c33401fe023cc06203716f7a5abff0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAffineEvaluation.lean","GRWTSK/_verification/specifications/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAffineEvaluation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
