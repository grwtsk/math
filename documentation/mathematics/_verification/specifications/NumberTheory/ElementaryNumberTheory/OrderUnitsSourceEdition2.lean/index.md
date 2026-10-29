# Verification target: Order Units Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d55112c64893054249c8b304b5d2e749701b8aa2",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Units/Variantb42e169e601c1d369419fe74d6a0cb69fa9db45bb0747db255029b3471d76228.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/OrderUnitsSourceEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/OrderUnitsSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d55112c64893054249c8b304b5d2e749701b8aa2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Units/Variantb42e169e601c1d369419fe74d6a0cb69fa9db45bb0747db255029b3471d76228.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Units/Variantb42e169e601c1d369419fe74d6a0cb69fa9db45bb0747db255029b3471d76228.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Units` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupPower.Order` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isUnit_iff_abs_eq](../../../../../NumberTheory/ElementaryNumberTheory/OrderUnitsSourceEdition2.lean/declarations/isunit-iff-abs-eq.md) | 19 | `result-track:94aa0dd121e358b28474829089cbe19188114f94fbefc02d9af8e51cb52eb953` |
| 2 | `theorem` | [isUnit_sq](../../../../../NumberTheory/ElementaryNumberTheory/OrderUnitsSourceEdition2.lean/declarations/isunit-sq.md) | 23 | `result-track:9d68e0d3b75500faf561699de50edab9fb1431be05cd12adbb06b874fad60a15` |
| 3 | `theorem` | [units_sq](../../../../../NumberTheory/ElementaryNumberTheory/OrderUnitsSourceEdition2.lean/declarations/units-sq.md) | 27 | `result-track:b6f94ce00169cd582d0f18139e15978dc18522437ca0213f47bf789495896dc1` |
| 4 | `theorem` | [units_mul_self](../../../../../NumberTheory/ElementaryNumberTheory/OrderUnitsSourceEdition2.lean/declarations/units-mul-self.md) | 35 | `result-track:61d3b68de61216f16701fd37c6a2d9fb0539615668221a4402607c753d1a6e5d` |
| 5 | `theorem` | [units_inv_eq_self](../../../../../NumberTheory/ElementaryNumberTheory/OrderUnitsSourceEdition2.lean/declarations/units-inv-eq-self.md) | 39 | `result-track:ccb137f780f84b4cdc68e25c1783ece79ac17b30d8f5d89a45932d0fd8d9e883` |
| 6 | `theorem` | [units_coe_mul_self](../../../../../NumberTheory/ElementaryNumberTheory/OrderUnitsSourceEdition2.lean/declarations/units-coe-mul-self.md) | 44 | `result-track:4dad7a42dc3706dd547bee7c6e71827df43d589956e15dafcdc64270678a3086` |
| 7 | `theorem` | [neg_one_pow_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/OrderUnitsSourceEdition2.lean/declarations/neg-one-pow-ne-zero.md) | 49 | `result-track:32b4424b5feec5474b90c773b3863b050f704ff3b67d1967dbd9df7da6f56ab6` |
| 8 | `theorem` | [sq_eq_one_of_sq_lt_four](../../../../../NumberTheory/ElementaryNumberTheory/OrderUnitsSourceEdition2.lean/declarations/sq-eq-one-of-sq-lt-four.md) | 53 | `result-track:59daabcae310f89dab3748f5b97cab4d666699f501fa9cfe990cc0e5994075b5` |
| 9 | `theorem` | [sq_eq_one_of_sq_le_three](../../../../../NumberTheory/ElementaryNumberTheory/OrderUnitsSourceEdition2.lean/declarations/sq-eq-one-of-sq-le-three.md) | 60 | `result-track:eb7ed7ffc574fefec4073ea9d0fa45c323dd2d21334f69d367121091bd08ac41` |
| 10 | `theorem` | [units_pow_eq_pow_mod_two](../../../../../NumberTheory/ElementaryNumberTheory/OrderUnitsSourceEdition2.lean/declarations/units-pow-eq-pow-mod-two.md) | 64 | `result-track:fd8e5905af63958d7150beeaeeada36359499d96bdc7efa3afc85e46b1c836db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e986f24a8fd6203d6fd088eb622fe3a205f480964977c98ea45f08047a47c18 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Units/Variantb42e169e601c1d369419fe74d6a0cb69fa9db45bb0747db255029b3471d76228.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Units/Variantb42e169e601c1d369419fe74d6a0cb69fa9db45bb0747db255029b3471d76228.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
