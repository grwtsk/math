# Verification target: Data ENNReal Lemmas

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2dad884e504a119e5b7c62cfe4550ffacc72eb97",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant856dd0bade087b14e78dcf906af104dae28d6bce1598645c54b328a6a0657e60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealLemmas.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealLemmas.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2dad884e504a119e5b7c62cfe4550ffacc72eb97`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant856dd0bade087b14e78dcf906af104dae28d6bce1598645c54b328a6a0657e60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lemmas/Variant856dd0bade087b14e78dcf906af104dae28d6bce1598645c54b328a6a0657e60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Indicator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENNReal.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_indicator](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealLemmas.lean/declarations/coe-indicator.md) | 25 | `result-track:16c0e66d31b159d690802f98c08780f3f3535b2ffadeed730ebd48a5da863f11` |
| 2 | `theorem` | [coe_finset_sup](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataENNRealLemmas.lean/declarations/coe-finset-sup.md) | 32 | `result-track:8fa2232ddb7ed0a7135cf147e4fb78862a6d9829520b12e644ba277009d09327` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e186e3fe3edf643f11981284797b70dd198048448a92c2d72b2201536b2d9469 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant856dd0bade087b14e78dcf906af104dae28d6bce1598645c54b328a6a0657e60.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Lemmas/Variant856dd0bade087b14e78dcf906af104dae28d6bce1598645c54b328a6a0657e60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
