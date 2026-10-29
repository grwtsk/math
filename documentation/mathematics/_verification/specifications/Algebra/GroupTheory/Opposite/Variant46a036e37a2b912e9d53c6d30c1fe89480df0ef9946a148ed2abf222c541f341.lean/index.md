# Verification target: GRWTSK.Algebra.GroupTheory.Opposite.Variant46a036e37a2b912e9d53c6d30c1fe89480df0ef9946a148ed2abf222c541f341

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f90448ef6608f4c7827be2acf9003aef4bdd4186",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Opposite/Variant46a036e37a2b912e9d53c6d30c1fe89480df0ef9946a148ed2abf222c541f341.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/GroupTheory/Opposite/Variant46a036e37a2b912e9d53c6d30c1fe89480df0ef9946a148ed2abf222c541f341.lean/index.md) · [Full source](../../../../../../Algebra/GroupTheory/Opposite/Variant46a036e37a2b912e9d53c6d30c1fe89480df0ef9946a148ed2abf222c541f341.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f90448ef6608f4c7827be2acf9003aef4bdd4186`.

Source path: `GRWTSK/Algebra/GroupTheory/Opposite/Variant46a036e37a2b912e9d53c6d30c1fe89480df0ef9946a148ed2abf222c541f341.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Opposite/Variant46a036e37a2b912e9d53c6d30c1fe89480df0ef9946a148ed2abf222c541f341.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Faithful` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.NeZero` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instSMulZeroClass](../../../../../../Algebra/GroupTheory/Opposite/Variant46a036e37a2b912e9d53c6d30c1fe89480df0ef9946a148ed2abf222c541f341.lean/declarations/instsmulzeroclass--8284b294fea389fc03252eb5.md) | 41 | `declaration-track:8284b294fea389fc03252eb58babf528e64625365c86743198c6b642be4ea05e` |
| 2 | `instance` | [instSMulWithZero](../../../../../../Algebra/GroupTheory/Opposite/Variant46a036e37a2b912e9d53c6d30c1fe89480df0ef9946a148ed2abf222c541f341.lean/declarations/instsmulwithzero--1eca98dbacbc7f1b0b8ccd23.md) | 44 | `declaration-track:1eca98dbacbc7f1b0b8ccd23dea5ebd7e1d47b7536dad9a250d4dd8bda617e15` |
| 3 | `instance` | [instMulActionWithZero](../../../../../../Algebra/GroupTheory/Opposite/Variant46a036e37a2b912e9d53c6d30c1fe89480df0ef9946a148ed2abf222c541f341.lean/declarations/instmulactionwithzero--a71c977251768a8a0d730880.md) | 48 | `declaration-track:a71c977251768a8a0d730880cecd83910f6c09b4a4bc8998ea727c6ab2a7080f` |
| 4 | `instance` | [instDistribMulAction](../../../../../../Algebra/GroupTheory/Opposite/Variant46a036e37a2b912e9d53c6d30c1fe89480df0ef9946a148ed2abf222c541f341.lean/declarations/instdistribmulaction--b0a1523fd87f60b2879eeafc.md) | 53 | `declaration-track:b0a1523fd87f60b2879eeafc60fc97cf034d75410a3da2182c19dc304c353887` |
| 5 | `instance` | [instMulDistribMulAction](../../../../../../Algebra/GroupTheory/Opposite/Variant46a036e37a2b912e9d53c6d30c1fe89480df0ef9946a148ed2abf222c541f341.lean/declarations/instmuldistribmulaction--65b781dc5ad1aebc7860181a.md) | 58 | `declaration-track:65b781dc5ad1aebc7860181a9c65a4cdcb4865dff61bc7c081aa08418e558ac2` |
| 6 | `instance` | [CancelMonoidWithZero.toFaithfulSMul_opposite](../../../../../../Algebra/GroupTheory/Opposite/Variant46a036e37a2b912e9d53c6d30c1fe89480df0ef9946a148ed2abf222c541f341.lean/declarations/cancelmonoidwithzero-tofaithfulsmul-opposite--4cab17b7ba12ce7aede099bc.md) | 76 | `declaration-track:4cab17b7ba12ce7aede099bc5b2f7cae45463e76ffc3a41290d7d81cbe2c44ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15ba1d24bee412cdddf77905e33d5e77b2a2b0ab43a0f9f79bbb20b08959ea4d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Opposite/Variant46a036e37a2b912e9d53c6d30c1fe89480df0ef9946a148ed2abf222c541f341.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Opposite/Variant46a036e37a2b912e9d53c6d30c1fe89480df0ef9946a148ed2abf222c541f341.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
