# Verification target: Dimension Division Ring Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d99dd565271b7a7158a4cc0e3149993f3693eb2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DivisionRing/Variant4cf83646f18ba1f530cee1fbfc4b71f2f0ca720919ca51e7f7abb8e2bb56cf91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionDivisionRingPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionDivisionRingPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d99dd565271b7a7158a4cc0e3149993f3693eb2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DivisionRing/Variant4cf83646f18ba1f530cee1fbfc4b71f2f0ca720919ca51e7f7abb8e2bb56cf91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DivisionRing/Variant4cf83646f18ba1f530cee1fbfc4b71f2f0ca720919ca51e7f7abb8e2bb56cf91.lean.json)

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
| 1 | `theorem` | [Module.Basis.finite_ofVectorSpaceIndex_of_rank_lt_aleph0](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionDivisionRingPublic.lean/declarations/module-basis-finite-ofvectorspaceindex-of-rank-lt-aleph0.md) | 52 | `result-track:5deca85e62b4085cf7588de2068d4cc70d35094b9575223c012a94240ea039b8` |
| 2 | `theorem` | [rank_quotient_add_rank_of_divisionRing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionDivisionRingPublic.lean/declarations/rank-quotient-add-rank-of-divisionring.md) | 57 | `result-track:7136e0b71019af7ef7587dda936d52dc08029556c01e08a63f0c474ac034a6f1` |
| 3 | `instance` | [DivisionRing.hasRankNullity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionDivisionRingPublic.lean/declarations/divisionring-hasranknullity.md) | 62 | `declaration-track:c1beddb10adda908b6605141a789a67db75d71d5cecab5d89d6a88bc8a80836b` |
| 4 | `theorem` | [rank_add_rank_split](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionDivisionRingPublic.lean/declarations/rank-add-rank-split.md) | 78 | `result-track:b3bf273379680952223d2faecb486bb4c49b25760ec6fc16a2fe4268f9f3a79e` |
| 5 | `theorem` | [rank_span_le_rank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionDivisionRingPublic.lean/declarations/rank-span-le-rank.md) | 113 | `result-track:2d77f7da93099cf03c2f697424ebe9fc75bfe46306e364dc8d7a103895ec8447` |
| 6 | `theorem` | [rank_span_le_rank_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionDivisionRingPublic.lean/declarations/rank-span-le-rank-span.md) | 121 | `result-track:e764745d26f3724eea2df9e18d934b20a56654641ee90506ec1490c4c38e3bcf` |
| 7 | `theorem` | [finrank_span_le_finrank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionDivisionRingPublic.lean/declarations/finrank-span-le-finrank.md) | 130 | `result-track:d58aba9cacfbf9b6cf5cbacf207d9ff7f17040095feaeb75499e2564403b780f` |
| 8 | `theorem` | [finrank_span_le_finrank_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionDivisionRingPublic.lean/declarations/finrank-span-le-finrank-span.md) | 141 | `result-track:b2e96445a8d35a15239db721c6fc36755617e5cb72120284ee2f6ab8391e3c80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26773036f773775211ee1f8d636b07078698ac02669d0741592052776a916420 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/DivisionRing/Variant4cf83646f18ba1f530cee1fbfc4b71f2f0ca720919ca51e7f7abb8e2bb56cf91.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/DivisionRing/Variant4cf83646f18ba1f530cee1fbfc4b71f2f0ca720919ca51e7f7abb8e2bb56cf91.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
