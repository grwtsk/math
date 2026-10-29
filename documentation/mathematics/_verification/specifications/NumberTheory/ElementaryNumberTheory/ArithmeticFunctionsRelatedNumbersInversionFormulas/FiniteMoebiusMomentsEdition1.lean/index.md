# Verification target: Finite Moebius Moments Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b45257c7da537071990aee8b613f59b19ebf507",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/UnitJetCorrection/Variant7d3b80aa81c0c0bfc5079abe85e173edc795107314c56a1120faf9b55331c092.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMoebiusMomentsEdition1.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMoebiusMomentsEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b45257c7da537071990aee8b613f59b19ebf507`.

Source path: `GRWTSK/NumberTheory/UnitJetCorrection/Variant7d3b80aa81c0c0bfc5079abe85e173edc795107314c56a1120faf9b55331c092.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/UnitJetCorrection/Variant7d3b80aa81c0c0bfc5079abe85e173edc795107314c56a1120faf9b55331c092.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.CenteredVaughan` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Conversation.WeightedHodge` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [momentZero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMoebiusMomentsEdition1.lean/declarations/momentzero.md) | 28 | `declaration-track:3c5c00f1a1fc08e2555eeab3f26a849772f1d9a44f385c20ce842375251761e6` |
| 2 | `def` | [momentOne](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMoebiusMomentsEdition1.lean/declarations/momentone.md) | 29 | `declaration-track:93aab3dfcb6e22010a687a6e9fda9dc5605e327e2be283028ea0c66210c199f0` |
| 3 | `def` | [atOne](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMoebiusMomentsEdition1.lean/declarations/atone.md) | 31 | `declaration-track:9a4256675983e9f31eb49db73910bb9edd9b78b9c9ce30127f517fa89c507b04` |
| 4 | `def` | [atQ](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMoebiusMomentsEdition1.lean/declarations/atq.md) | 33 | `declaration-track:98800db4ef4a1cc33bf5b212a499e98bd8914f096cffc37d284fd1603021008b` |
| 5 | `def` | [recordedSourceValue](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMoebiusMomentsEdition1.lean/declarations/recordedsourcevalue.md) | 34 | `declaration-track:2f575f26521d15078e47fbcd0e649740aff261bcca6fe6e94c2642bf0edee81b` |
| 6 | `theorem` | [log_q_pos](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMoebiusMomentsEdition1.lean/declarations/log-q-pos.md) | 36 | `result-track:9858df2df4dc16b40d49941a4e85fb8a41d07ecf1af654d7a31ef9edc2564c8a` |
| 7 | `theorem` | [exact_two_moments](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMoebiusMomentsEdition1.lean/declarations/exact-two-moments.md) | 39 | `result-track:4f580edb4c4d501256e7cdb9917d51ba2bbc7cb3f7baee6445a352dec79b57de` |
| 8 | `theorem` | [two_point_correction_unique](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMoebiusMomentsEdition1.lean/declarations/two-point-correction-unique.md) | 52 | `result-track:cc4e50cb543e71316c741724424e1d1807e308d4f4bbf83ce08cb93af3fce302` |
| 9 | `theorem` | [allocated_low_value](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMoebiusMomentsEdition1.lean/declarations/allocated-low-value.md) | 71 | `result-track:53ce87d93a5529589dd1a92ef83343341131a535edec74295e097d43eba7a20a` |
| 10 | `theorem` | [exact_child_allocation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMoebiusMomentsEdition1.lean/declarations/exact-child-allocation.md) | 77 | `result-track:71a5e87677d3614aae994cb68ad597cb747a8c8ad18ba26d40da53f42ef1c9ee` |
| 11 | `theorem` | [unit_jet_high_child_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMoebiusMomentsEdition1.lean/declarations/unit-jet-high-child-zero.md) | 79 | `result-track:144f63cb7bb038d7628d4a6ee6b03e257e75b18a49e5cc0f86f1b3e4ec1fd860` |
| 12 | `theorem` | [recorded_source_value_negative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMoebiusMomentsEdition1.lean/declarations/recorded-source-value-negative.md) | 81 | `result-track:7aef7a651ceb0bb4681db1952100ca25c183f90c852b6def1b644a2036da7425` |
| 13 | `theorem` | [recorded_source_children_cannot_both_vanish](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteMoebiusMomentsEdition1.lean/declarations/recorded-source-children-cannot-both-vanish.md) | 85 | `result-track:71d5ca8633926a9927cdf534e5663999301f77db9a927a328eb41c1969fdb230` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5279ee1801753c6d9b1d1211fc474aa1a0f7ce5a1fe885f909bcbf3004744f58 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/UnitJetCorrection/Variant7d3b80aa81c0c0bfc5079abe85e173edc795107314c56a1120faf9b55331c092.lean","GRWTSK/_verification/specifications/NumberTheory/UnitJetCorrection/Variant7d3b80aa81c0c0bfc5079abe85e173edc795107314c56a1120faf9b55331c092.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
