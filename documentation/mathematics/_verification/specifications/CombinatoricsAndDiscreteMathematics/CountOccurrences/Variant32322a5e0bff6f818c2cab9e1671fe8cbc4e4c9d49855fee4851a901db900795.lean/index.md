# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CountOccurrences.Variant32322a5e0bff6f818c2cab9e1671fe8cbc4e4c9d49855fee4851a901db900795

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59c091b485a026eb1dfce01bf8f5cb5feae35f5e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant32322a5e0bff6f818c2cab9e1671fe8cbc4e4c9d49855fee4851a901db900795.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant32322a5e0bff6f818c2cab9e1671fe8cbc4e4c9d49855fee4851a901db900795.lean/index.md) · [Full source](../../../../../CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant32322a5e0bff6f818c2cab9e1671fe8cbc4e4c9d49855fee4851a901db900795.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59c091b485a026eb1dfce01bf8f5cb5feae35f5e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant32322a5e0bff6f818c2cab9e1671fe8cbc4e4c9d49855fee4851a901db900795.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant32322a5e0bff6f818c2cab9e1671fe8cbc4e4c9d49855fee4851a901db900795.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject` — import line 1; external provider; requires a separately pinned dependency.
- `Zeta23.Statement.SeamClosed` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PositiveOccurrenceWindow](../../../../../CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant32322a5e0bff6f818c2cab9e1671fe8cbc4e4c9d49855fee4851a901db900795.lean/declarations/positiveoccurrencewindow--a500834ee518ab0e94e2d24a.md) | 19 | `declaration-track:a500834ee518ab0e94e2d24a1e10223b36c4ee83d31c037faa17768ec08e4314` |
| 2 | `def` | [PositiveCountFibres](../../../../../CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant32322a5e0bff6f818c2cab9e1671fe8cbc4e4c9d49855fee4851a901db900795.lean/declarations/positivecountfibres--66d262e791461013b94807a4.md) | 23 | `declaration-track:66d262e791461013b94807a45ee1271482228b9250b6c519aaddbda32c017a87` |
| 3 | `def` | [positiveOccurrenceWindowEquiv](../../../../../CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant32322a5e0bff6f818c2cab9e1671fe8cbc4e4c9d49855fee4851a901db900795.lean/declarations/positiveoccurrencewindowequiv--27efbd89b20e4a11b00ac3ad.md) | 28 | `declaration-track:27efbd89b20e4a11b00ac3ad637b23a047df02647e31322bd9a0239e41d59d96` |
| 4 | `theorem` | [positive_occurrence_window_finite](../../../../../CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant32322a5e0bff6f818c2cab9e1671fe8cbc4e4c9d49855fee4851a901db900795.lean/declarations/positive-occurrence-window-finite--4b3d1347cc17e7c86363258b.md) | 42 | `result-track:4b3d1347cc17e7c86363258bfd93f63df63be0b8e985fa3df648643bf1a00cfa` |
| 5 | `theorem` | [positive_occurrence_window_card_eq_count](../../../../../CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant32322a5e0bff6f818c2cab9e1671fe8cbc4e4c9d49855fee4851a901db900795.lean/declarations/positive-occurrence-window-card-eq-count--85e46de13149be504bda1da2.md) | 52 | `result-track:85e46de13149be504bda1da28c6d45824886429c94483144742768da0a85410d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=20db4a9cc9cbc41e01264345740033d2d958a1c729fd3b73f5c9442aa9b98ff8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant32322a5e0bff6f818c2cab9e1671fe8cbc4e4c9d49855fee4851a901db900795.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant32322a5e0bff6f818c2cab9e1671fe8cbc4e4c9d49855fee4851a901db900795.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
