# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DAFRefinement.Variant946702250d7f4aa6ff4ed1ac8aa28c99e288f153f13b8f1b9fbb1ff2a9f7a7ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d358fc84b44168a7e089a151b814075a26891efa",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variant946702250d7f4aa6ff4ed1ac8aa28c99e288f153f13b8f1b9fbb1ff2a9f7a7ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variant946702250d7f4aa6ff4ed1ac8aa28c99e288f153f13b8f1b9fbb1ff2a9f7a7ea.lean/index.md) · [Full source](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variant946702250d7f4aa6ff4ed1ac8aa28c99e288f153f13b8f1b9fbb1ff2a9f7a7ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d358fc84b44168a7e089a151b814075a26891efa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variant946702250d7f4aa6ff4ed1ac8aa28c99e288f153f13b8f1b9fbb1ff2a9f7a7ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variant946702250d7f4aa6ff4ed1ac8aa28c99e288f153f13b8f1b9fbb1ff2a9f7a7ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Refinement` — import line 6; external provider; requires a separately pinned dependency.
- `BinaryMatrix` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapSpecSystem](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variant946702250d7f4aa6ff4ed1ac8aa28c99e288f153f13b8f1b9fbb1ff2a9f7a7ea.lean/declarations/mapspecsystem--3c43550335a07f0845d6f60e.md) | 28 | `declaration-track:3c43550335a07f0845d6f60e53ea25d14885b49a039fef5a877c715b7cd2ac0f` |
| 2 | `def` | [mapImplSystem](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variant946702250d7f4aa6ff4ed1ac8aa28c99e288f153f13b8f1b9fbb1ff2a9f7a7ea.lean/declarations/mapimplsystem--76cb9870241bd535679c6f79.md) | 37 | `declaration-track:76cb9870241bd535679c6f7971976bd963dfb4187c943e9d786ffdcc52ce9d42` |
| 3 | `def` | [mapRefinement](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variant946702250d7f4aa6ff4ed1ac8aa28c99e288f153f13b8f1b9fbb1ff2a9f7a7ea.lean/declarations/maprefinement--afdbea575d4266b9cf4a62ef.md) | 46 | `declaration-track:afdbea575d4266b9cf4a62ef11f20a1a88548fb048ad66ef17be08e9fa05346a` |
| 4 | `theorem` | [mapRefinement_abstract](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variant946702250d7f4aa6ff4ed1ac8aa28c99e288f153f13b8f1b9fbb1ff2a9f7a7ea.lean/declarations/maprefinement-abstract--da807312559c7af5324fbae8.md) | 60 | `result-track:da807312559c7af5324fbae8b569f0d7d6d10648b04ec63f5fe14854ed19479c` |
| 5 | `theorem` | [mapRefinement_step_sound](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variant946702250d7f4aa6ff4ed1ac8aa28c99e288f153f13b8f1b9fbb1ff2a9f7a7ea.lean/declarations/maprefinement-step-sound--473646a80030b2353ffc46b1.md) | 66 | `result-track:473646a80030b2353ffc46b17b0c816226ce6a657d790d517c0ad56ada4e7b9d` |
| 6 | `theorem` | [refines_iff_abstract_eq](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variant946702250d7f4aa6ff4ed1ac8aa28c99e288f153f13b8f1b9fbb1ff2a9f7a7ea.lean/declarations/refines-iff-abstract-eq--d905206a308c6291b4d0ac76.md) | 76 | `result-track:d905206a308c6291b4d0ac760329c33896449176fbde47f5f903ecbeab793335` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea1a2e57686d7d57419abef7f5d313227bd33cbbd1d2263a6075cd4269fc1924 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variant946702250d7f4aa6ff4ed1ac8aa28c99e288f153f13b8f1b9fbb1ff2a9f7a7ea.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DAFRefinement/Variant946702250d7f4aa6ff4ed1ac8aa28c99e288f153f13b8f1b9fbb1ff2a9f7a7ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
