# Verification target: Quotients

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcc18ff887f893dbb455dc39a7c57fa66a311bc3",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Quotients/Variant7cc0488b83a82f739920a7d53e0dbaf8a80ce82af96a3f887397ef3b73e0ea13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/Quotients.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/Quotients.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcc18ff887f893dbb455dc39a7c57fa66a311bc3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Quotients/Variant7cc0488b83a82f739920a7d53e0dbaf8a80ce82af96a3f887397ef3b73e0ea13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Quotients/Variant7cc0488b83a82f739920a7d53e0dbaf8a80ce82af96a3f887397ef3b73e0ea13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Quotient` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Semantics` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Prestructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/Quotients.lean/declarations/prestructure.md) | 35 | `declaration-track:4de835196724fe8b55d70ec94e65213053690c86ba6391bd7fb37690cfb23c9c` |
| 2 | `instance` | [quotientStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/Quotients.lean/declarations/quotientstructure.md) | 44 | `declaration-track:37010dc7585cb71bfb042e9d2dcd81201c9b6a86a25b2b1d3a0c1eb5fa6318f4` |
| 3 | `theorem` | [funMap_quotient_mk'](../../../../../MathematicalLogicAndFoundations/ModelTheory/Quotients.lean/declarations/funmap-quotient-mk.md) | 52 | `result-track:edbc50f08804fd44f3dcdf89b67a673011e9ef266a960f66dc1a3f2df4a373d5` |
| 4 | `theorem` | [relMap_quotient_mk'](../../../../../MathematicalLogicAndFoundations/ModelTheory/Quotients.lean/declarations/relmap-quotient-mk.md) | 59 | `result-track:9e9d7c75257b70780e4afa9d4042dc980244a97b84a29cd7587d4480a9f58e00` |
| 5 | `theorem` | [Term.realize_quotient_mk'](../../../../../MathematicalLogicAndFoundations/ModelTheory/Quotients.lean/declarations/term-realize-quotient-mk.md) | 66 | `result-track:77c7ae849a58b962ab78f4050365f1495ac5889c0e640dff13b2103ca534c104` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1479dd18c271b0d6032b51a331b6a7647f91b2731181841d4179510710d3924d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Quotients/Variant7cc0488b83a82f739920a7d53e0dbaf8a80ce82af96a3f887397ef3b73e0ea13.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Quotients/Variant7cc0488b83a82f739920a7d53e0dbaf8a80ce82af96a3f887397ef3b73e0ea13.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
