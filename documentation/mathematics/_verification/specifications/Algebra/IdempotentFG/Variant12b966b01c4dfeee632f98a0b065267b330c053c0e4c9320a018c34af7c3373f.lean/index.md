# Verification target: GRWTSK.Algebra.IdempotentFG.Variant12b966b01c4dfeee632f98a0b065267b330c053c0e4c9320a018c34af7c3373f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "707f70ab3dad0a006688a37d11e32c2b845c50d5",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IdempotentFG/Variant12b966b01c4dfeee632f98a0b065267b330c053c0e4c9320a018c34af7c3373f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Algebra/IdempotentFG/Variant12b966b01c4dfeee632f98a0b065267b330c053c0e4c9320a018c34af7c3373f.lean/index.md) · [Full source](../../../../../Algebra/IdempotentFG/Variant12b966b01c4dfeee632f98a0b065267b330c053c0e4c9320a018c34af7c3373f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `707f70ab3dad0a006688a37d11e32c2b845c50d5`.

Source path: `GRWTSK/Algebra/IdempotentFG/Variant12b966b01c4dfeee632f98a0b065267b330c053c0e4c9320a018c34af7c3373f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IdempotentFG/Variant12b966b01c4dfeee632f98a0b065267b330c053c0e4c9320a018c34af7c3373f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Idempotent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Nakayama` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isIdempotentElem_iff_of_fg](../../../../../Algebra/IdempotentFG/Variant12b966b01c4dfeee632f98a0b065267b330c053c0e4c9320a018c34af7c3373f.lean/declarations/isidempotentelem-iff-of-fg--8e0b0d43bd8597ff2ad76f54.md) | 18 | `result-track:8e0b0d43bd8597ff2ad76f54ff49aa574785d05ecd92ee4e706cf1e67a747666` |
| 2 | `theorem` | [isIdempotentElem_iff_eq_bot_or_top](../../../../../Algebra/IdempotentFG/Variant12b966b01c4dfeee632f98a0b065267b330c053c0e4c9320a018c34af7c3373f.lean/declarations/isidempotentelem-iff-eq-bot-or-top--ff7b3b5cbbcc29c1c2ef5e57.md) | 35 | `result-track:ff7b3b5cbbcc29c1c2ef5e57cc003c741448ad496b34c06277028e5f05b05ac7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=62c8f6affd11b9c7d483607a260fa3459fdc2826c65e07596968927b55523235 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/IdempotentFG/Variant12b966b01c4dfeee632f98a0b065267b330c053c0e4c9320a018c34af7c3373f.lean","GRWTSK/_verification/specifications/Algebra/IdempotentFG/Variant12b966b01c4dfeee632f98a0b065267b330c053c0e4c9320a018c34af7c3373f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
