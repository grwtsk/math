# Verification target: Conductor Three Prime Moment Program Public Conductor Three Abstract Moment Program

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b56d7c81335e747cd405145f65c46e734248fca",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePrimeMomentProgram/Variantacb042e8c4e6b2893b79af52748d116d58bfa6cb5c05fbcdc50b279edb8e4869.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ConductorThreePrimeMomentProgramPublicConductorThreeAbstractMomentProgram.lean/index.md) · [Full source](../../../../Combinatorics/ConductorThreePrimeMomentProgramPublicConductorThreeAbstractMomentProgram.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b56d7c81335e747cd405145f65c46e734248fca`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePrimeMomentProgram/Variantacb042e8c4e6b2893b79af52748d116d58bfa6cb5c05fbcdc50b279edb8e4869.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ConductorThreePrimeMomentProgram/Variantacb042e8c4e6b2893b79af52748d116d58bfa6cb5c05fbcdc50b279edb8e4869.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UniformMaximalMomentEstimate](../../../../Combinatorics/ConductorThreePrimeMomentProgramPublicConductorThreeAbstractMomentProgram.lean/declarations/uniformmaximalmomentestimate.md) | 35 | `declaration-track:b29ceb263380faf1dc802a632428869559fef52314a06ec1aef822dfd88fef79` |
| 2 | `def` | [ConductorThreeAbstractMomentProgram](../../../../Combinatorics/ConductorThreePrimeMomentProgramPublicConductorThreeAbstractMomentProgram.lean/declarations/conductorthreeabstractmomentprogram.md) | 47 | `declaration-track:d83093bb046bc951c3d81aaf852d9dbd884582012539cafecdfc5025bf3a3079` |
| 3 | `def` | [UniformConductorThreeTypeIMaximal](../../../../Combinatorics/ConductorThreePrimeMomentProgramPublicConductorThreeAbstractMomentProgram.lean/declarations/uniformconductorthreetypeimaximal.md) | 55 | `declaration-track:a98778c65411b4150c785051994ef81e95e0c591689eb62a5b4f85d768301865` |
| 4 | `def` | [ConductorThreePrimeMomentProgram](../../../../Combinatorics/ConductorThreePrimeMomentProgramPublicConductorThreeAbstractMomentProgram.lean/declarations/conductorthreeprimemomentprogram.md) | 68 | `declaration-track:b17374a887e2af489853cd8bfed14b0ee6607131328f8b0293d80b8d5fdc0285` |
| 5 | `theorem` | [uniformMaximalMomentEstimate_implies_arithmetic](../../../../Combinatorics/ConductorThreePrimeMomentProgramPublicConductorThreeAbstractMomentProgram.lean/declarations/uniformmaximalmomentestimate-implies-arithmetic.md) | 76 | `result-track:f3075a7af911daf69e1e13315760a9d082563c0fff74b36455060989ee9bb530` |
| 6 | `theorem` | [abstractMomentProgram_implies_bvPacketEstimate](../../../../Combinatorics/ConductorThreePrimeMomentProgramPublicConductorThreeAbstractMomentProgram.lean/declarations/abstractmomentprogram-implies-bvpacketestimate.md) | 96 | `result-track:0cf66bfe587bf9aa1f20599b7cd8b9c20d351d17313c7791ad76e47173bced2d` |
| 7 | `theorem` | [typeI_and_specificTypeII_imply_maximalMoment](../../../../Combinatorics/ConductorThreePrimeMomentProgramPublicConductorThreeAbstractMomentProgram.lean/declarations/typei-and-specifictypeii-imply-maximalmoment.md) | 106 | `result-track:07e7f9aa9cd0829c43c0d8e9cdd873a0e1673275f80d93862e70ff66525e8656` |
| 8 | `theorem` | [primeMomentProgram_implies_bvPacketEstimate](../../../../Combinatorics/ConductorThreePrimeMomentProgramPublicConductorThreeAbstractMomentProgram.lean/declarations/primemomentprogram-implies-bvpacketestimate.md) | 139 | `result-track:8d5e7fa4238bb14a39132019194fc324976ec163228637ecbb5b6720a37472be` |
| 9 | `theorem` | [primeMomentProgram_implies_grh](../../../../Combinatorics/ConductorThreePrimeMomentProgramPublicConductorThreeAbstractMomentProgram.lean/declarations/primemomentprogram-implies-grh.md) | 150 | `result-track:ae1bfd1da1ccee7aa403587fa25ed934f22f90ada73ce4bee6021b618370567f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11c70065f843e4259510af88dc9328e7f230a6ce013b64ea441777ba27b6a6ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePrimeMomentProgram/Variantacb042e8c4e6b2893b79af52748d116d58bfa6cb5c05fbcdc50b279edb8e4869.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ConductorThreePrimeMomentProgram/Variantacb042e8c4e6b2893b79af52748d116d58bfa6cb5c05fbcdc50b279edb8e4869.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
