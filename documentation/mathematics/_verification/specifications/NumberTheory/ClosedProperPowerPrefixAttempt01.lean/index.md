# Verification target: Closed Proper Power Prefix Attempt01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60a53f894b6d06878d7bc34396b84748d6acad6e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt01/Variantf4e368880e01c3417df2d6f02f699115779b7f483d01a1a06ce85bb95bc6ce4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/ClosedProperPowerPrefixAttempt01.lean/index.md) · [Full source](../../../../NumberTheory/ClosedProperPowerPrefixAttempt01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60a53f894b6d06878d7bc34396b84748d6acad6e`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt01/Variantf4e368880e01c3417df2d6f02f699115779b7f483d01a1a06ce85bb95bc6ce4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt01/Variantf4e368880e01c3417df2d6f02f699115779b7f483d01a1a06ce85bb95bc6ce4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.WeightedPrimeAbel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.IsPrimePow` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [properExponentInventory](../../../../NumberTheory/ClosedProperPowerPrefixAttempt01.lean/declarations/properexponentinventory.md) | 15 | `declaration-track:1af67ae84bc97ed3b3b1f2022e9d40b544af5e367a5ba512153dd8bf1a5ebea1` |
| 2 | `theorem` | [inventory_pow_injective](../../../../NumberTheory/ClosedProperPowerPrefixAttempt01.lean/declarations/inventory-pow-injective.md) | 19 | `result-track:04288676d7fd18bacc8bca3200421d8a5daa8cf24502d414fb973756b6a6c3b9` |
| 3 | `theorem` | [weighted_difference_eq_proper_exponents](../../../../NumberTheory/ClosedProperPowerPrefixAttempt01.lean/declarations/weighted-difference-eq-proper-exponents.md) | 33 | `result-track:bbbdd2a9f052a5c383a31023df6cc929f829243684466d7a2a8a19b4dfa2abb8` |
| 4 | `def` | [actualProperPowerClosedPrefix](../../../../NumberTheory/ClosedProperPowerPrefixAttempt01.lean/declarations/actualproperpowerclosedprefix.md) | 87 | `declaration-track:0d03192025518d75aa9b1829e31290714c1a8282881eb7ab8753351871dadb66` |
| 5 | `theorem` | [actual_closed_prefix_dictionary](../../../../NumberTheory/ClosedProperPowerPrefixAttempt01.lean/declarations/actual-closed-prefix-dictionary.md) | 91 | `result-track:6f2188a19c94557c5763465775020376f4ff305c45c2c8df5f9b12f45c47b50f` |
| 6 | `theorem` | [prime_power_closed_onset_iff](../../../../NumberTheory/ClosedProperPowerPrefixAttempt01.lean/declarations/prime-power-closed-onset-iff.md) | 96 | `result-track:9463129f1ecf8459aaed8362815af813b7d30263dfa782fd15e7cb114f634034` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48ad052dcbe9c4258575d930315b750962d937bd3879de215e608b5f64f7f482 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt01/Variantf4e368880e01c3417df2d6f02f699115779b7f483d01a1a06ce85bb95bc6ce4b.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt01/Variantf4e368880e01c3417df2d6f02f699115779b7f483d01a1a06ce85bb95bc6ce4b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
