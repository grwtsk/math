# Verification target: Lucas Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb77e75318e48a26211161174d695ba117d8c70b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Lucas/Variant20b5bf5d298cbe17bc1050b00fd0a9e5b3f5385a75dcb86cb94ffd93ceca02b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/LucasNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/LucasNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb77e75318e48a26211161174d695ba117d8c70b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Lucas/Variant20b5bf5d298cbe17bc1050b00fd0a9e5b3f5385a75dcb86cb94ffd93ceca02b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Lucas/Variant20b5bf5d298cbe17bc1050b00fd0a9e5b3f5385a75dcb86cb94ffd93ceca02b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [choose_modEq_choose_mod_mul_choose_div](../../../../../NumberTheory/ElementaryNumberTheory/LucasNamespaced.lean/declarations/choose-modeq-choose-mod-mul-choose-div.md) | 42 | `result-track:3bd834fec1e7274e78327059c6c6a8dc411f42a5f663dffce95825c0121711fc` |
| 2 | `theorem` | [choose_modEq_choose_mod_mul_choose_div_nat](../../../../../NumberTheory/ElementaryNumberTheory/LucasNamespaced.lean/declarations/choose-modeq-choose-mod-mul-choose-div-nat.md) | 72 | `result-track:728e18df88f036bafe2ca42d8da536c704f44ad62bdc4fd33c3d7a1002e4855e` |
| 3 | `theorem` | [choose_modEq_choose_mul_prod_range_choose](../../../../../NumberTheory/ElementaryNumberTheory/LucasNamespaced.lean/declarations/choose-modeq-choose-mul-prod-range-choose.md) | 79 | `result-track:7c1f8b4e963aac3479dc9dbf3d9074a25e28878a4dc09e84655bced6275c4d6e` |
| 4 | `theorem` | [choose_modEq_prod_range_choose](../../../../../NumberTheory/ElementaryNumberTheory/LucasNamespaced.lean/declarations/choose-modeq-prod-range-choose.md) | 92 | `result-track:9acafb5b4edeff00daa2535d3eac9798ea571071d9b40b811af054b6f80bf35a` |
| 5 | `theorem` | [choose_modEq_prod_range_choose_nat](../../../../../NumberTheory/ElementaryNumberTheory/LucasNamespaced.lean/declarations/choose-modeq-prod-range-choose-nat.md) | 100 | `result-track:8af12b5e7a60f38dd23d6c61bae35f4bf2a414c1664671319107f2fb007874ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90c101689b1f8eeb30b65ebd5925446ab7387435b0040e12476f4633c7dd5be5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Lucas/Variant20b5bf5d298cbe17bc1050b00fd0a9e5b3f5385a75dcb86cb94ffd93ceca02b1.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Lucas/Variant20b5bf5d298cbe17bc1050b00fd0a9e5b3f5385a75dcb86cb94ffd93ceca02b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
