# Verification target: Factorial Big Operators Namespaced Monotone Factorial

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddd4fa963a78f1ac6050b4b80f41bdb41a56e0eb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantad0a842f38d37887114b61cdb9e104df154a4e135eb3c750c41cc2c1a10225ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBigOperatorsNamespacedMonotoneFactorial.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBigOperatorsNamespacedMonotoneFactorial.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddd4fa963a78f1ac6050b4b80f41bdb41a56e0eb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantad0a842f38d37887114b61cdb9e104df154a4e135eb3c750c41cc2c1a10225ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variantad0a842f38d37887114b61cdb9e104df154a4e135eb3c750c41cc2c1a10225ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorial.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [monotone_factorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBigOperatorsNamespacedMonotoneFactorial.lean/declarations/monotone-factorial.md) | 33 | `result-track:6d65b8782aab058e0b238eb7bdb3884245f5998c082ca75dddd5248a5bc63763` |
| 2 | `theorem` | [prod_factorial_pos](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBigOperatorsNamespacedMonotoneFactorial.lean/declarations/prod-factorial-pos.md) | 37 | `result-track:1f09deed3bdafc888e9653f52e435af83fdd214e7aa016a96faefac15a0063a7` |
| 3 | `theorem` | [prod_factorial_dvd_factorial_sum](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBigOperatorsNamespacedMonotoneFactorial.lean/declarations/prod-factorial-dvd-factorial-sum.md) | 39 | `result-track:14bc175fa1f645fc276277758ba0d54bf835c3e94d62e34dea3934c113a64531` |
| 4 | `theorem` | [ascFactorial_eq_prod_range](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBigOperatorsNamespacedMonotoneFactorial.lean/declarations/ascfactorial-eq-prod-range.md) | 45 | `result-track:0a5001afc984620165324ce3a5f3ce64a25914f8ef91a9a4b0cefb13a78c9f82` |
| 5 | `theorem` | [descFactorial_eq_prod_range](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBigOperatorsNamespacedMonotoneFactorial.lean/declarations/descfactorial-eq-prod-range.md) | 49 | `result-track:b33d3c0dac851e85cb62e453f261dfc434eb731fb081a6522b83714cd7e112b1` |
| 6 | `lemma` | [factorial_coe_dvd_prod](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBigOperatorsNamespacedMonotoneFactorial.lean/declarations/factorial-coe-dvd-prod.md) | 54 | `result-track:71e5805f388dde5b7878e22147c2248241705e4342982e036c19ab0e3ff73710` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6edba42c7c35d746eaebccc51e54ef0598a6644c5789467fd69a13332cb369df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantad0a842f38d37887114b61cdb9e104df154a4e135eb3c750c41cc2c1a10225ad.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/BigOperators/Variantad0a842f38d37887114b61cdb9e104df154a4e135eb3c750c41cc2c1a10225ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
