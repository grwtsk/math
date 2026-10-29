# Verification target: Cast Field Namespaced Cast Div Char Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "165e8a6cf62810310ea7258bc80ca80aa37b0a9d",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Field/Variant1401ff525bac067035791706416f698ac5036578e4ef2bcbda5188e64cf80987.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/CastFieldNamespacedCastDivCharZero.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/CastFieldNamespacedCastDivCharZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `165e8a6cf62810310ea7258bc80ca80aa37b0a9d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Field/Variant1401ff525bac067035791706416f698ac5036578e4ef2bcbda5188e64cf80987.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Field/Variant1401ff525bac067035791706416f698ac5036578e4ef2bcbda5188e64cf80987.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharZero.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cast_div](../../../../../NumberTheory/ElementaryNumberTheory/CastFieldNamespacedCastDivCharZero.lean/declarations/cast-div.md) | 36 | `result-track:47a79113f534331335739974dc8c2dbe675ca9d26e16cf46c3a5d3b421937afd` |
| 2 | `lemma` | [cast_div_charZero](../../../../../NumberTheory/ElementaryNumberTheory/CastFieldNamespacedCastDivCharZero.lean/declarations/cast-div-charzero.md) | 45 | `result-track:42b3274fcfc83ccea63d1e8ab801d6fcb6a8c83ac09c1d16e1a631d4384c6642` |
| 3 | `lemma` | [cast_div_div_div_cancel_right](../../../../../NumberTheory/ElementaryNumberTheory/CastFieldNamespacedCastDivCharZero.lean/declarations/cast-div-div-div-cancel-right.md) | 48 | `result-track:4a54dff8b963e83144206658bcbb38f729c5e617c195e82028f7cc5ad5c8fd32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b954c18ed01e53938792cbf97d959d852cccf78d2bee4bb9edfbed06da4bf927 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Field/Variant1401ff525bac067035791706416f698ac5036578e4ef2bcbda5188e64cf80987.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Field/Variant1401ff525bac067035791706416f698ac5036578e4ef2bcbda5188e64cf80987.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
