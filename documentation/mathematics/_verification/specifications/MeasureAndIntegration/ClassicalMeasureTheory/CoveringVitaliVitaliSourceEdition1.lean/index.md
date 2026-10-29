# Verification target: Covering Vitali Vitali Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e02b7dbe19ff492ea2dc81f51941cb641aad448",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Vitali/Variant233509b5c803e19a7d128a2419ac45ef763ce5929907124daed3d7b41b73daa7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliVitaliSourceEdition1.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliVitaliSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e02b7dbe19ff492ea2dc81f51941cb641aad448`.

Source path: `GRWTSK/Analysis/MeasureTheory/Vitali/Variant233509b5c803e19a7d128a2419ac45ef763ce5929907124daed3d7b41b73daa7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Vitali/Variant233509b5c803e19a7d128a2419ac45ef763ce5929907124daed3d7b41b73daa7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.VitaliFamily` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pairwise.Lattice` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_disjoint_subfamily_covering_enlargement](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliVitaliSourceEdition1.lean/declarations/exists-disjoint-subfamily-covering-enlargement.md) | 56 | `result-track:3476354517364f981821254b9669149a3d9dee846174014ae562ec2e45c08692` |
| 2 | `theorem` | [exists_disjoint_subfamily_covering_enlargement_closedBall](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliVitaliSourceEdition1.lean/declarations/exists-disjoint-subfamily-covering-enlargement-closedball.md) | 160 | `result-track:bb772345957deff9ac6fa3bce601048832899336e84aed8bbc0f1aeef6279ea5` |
| 3 | `theorem` | [exists_disjoint_covering_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliVitaliSourceEdition1.lean/declarations/exists-disjoint-covering-ae.md) | 212 | `result-track:bae1302fea353f714da13c86b092d84c380415070601b76f63d80cbe630b6f84` |
| 4 | `def` | [vitaliFamily](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CoveringVitaliVitaliSourceEdition1.lean/declarations/vitalifamily.md) | 404 | `declaration-track:65c8c02c77f2fd9b6097e9bef0dfce719bcf9438b16266d102f6be743d3e35f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb77694bf3d3e6a2eed7ebfbcd0409a2a7f91ef122dd2a6991a3cbd115f9537c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Vitali/Variant233509b5c803e19a7d128a2419ac45ef763ce5929907124daed3d7b41b73daa7.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Vitali/Variant233509b5c803e19a7d128a2419ac45ef763ce5929907124daed3d7b41b73daa7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
