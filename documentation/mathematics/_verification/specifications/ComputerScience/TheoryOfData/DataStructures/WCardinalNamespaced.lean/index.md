# Verification target: WCardinal Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3300513a1295ed3bf617b0eb89b4211403ec0b55",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variantee6450244957a9658df215ad95be26f557050250fd406c51102d008ac867328d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/WCardinalNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/WCardinalNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3300513a1295ed3bf617b0eb89b4211403ec0b55`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variantee6450244957a9658df215ad95be26f557050250fd406c51102d008ac867328d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variantee6450244957a9658df215ad95be26f557050250fd406c51102d008ac867328d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.W.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cardinalMk_eq_sum_lift](../../../../../../ComputerScience/TheoryOfData/DataStructures/WCardinalNamespaced.lean/declarations/cardinalmk-eq-sum-lift.md) | 45 | `result-track:dfabc07fa1df352db4b84888f57909ff2633a10a19a87d528ec54efb16cd2fb3` |
| 2 | `theorem` | [cardinalMk_le_of_le'](../../../../../../ComputerScience/TheoryOfData/DataStructures/WCardinalNamespaced.lean/declarations/cardinalmk-le-of-le.md) | 52 | `result-track:9733588d0c27dee738bc9a692ba0679277ddbb282c8a91848f8f5f6225e2ab88` |
| 3 | `theorem` | [cardinalMk_le_max_aleph0_of_finite'](../../../../../../ComputerScience/TheoryOfData/DataStructures/WCardinalNamespaced.lean/declarations/cardinalmk-le-max-aleph0-of-finite.md) | 66 | `result-track:27dc46d9b21bbd56eb91096386ae53584c341558d0c915b54b35a6b9a1bfd224` |
| 4 | `theorem` | [cardinalMk_eq_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/WCardinalNamespaced.lean/declarations/cardinalmk-eq-sum.md) | 99 | `result-track:38f9aa91d65e065afb5f99a28aaf59a1d8a0b2e4394288f92847e319091855f5` |
| 5 | `theorem` | [cardinalMk_le_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/WCardinalNamespaced.lean/declarations/cardinalmk-le-of-le-source-edition-2.md) | 105 | `result-track:ba124a7f4eaaf69cb2b1e8ea24fd40d5b2295be3b0df0cf03ce892f45de8bb22` |
| 6 | `theorem` | [cardinalMk_le_max_aleph0_of_finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/WCardinalNamespaced.lean/declarations/cardinalmk-le-max-aleph0-of-finite-source-edition-2.md) | 112 | `result-track:8d50fa1ba8c18f24ac30d2a57c4971d81ef58c4edffb81d9b9ac9df457794470` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d36de2aaee3eaebdeacf36c8ac21673cca3cb10e92ecb863b50865aca6493555 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variantee6450244957a9658df215ad95be26f557050250fd406c51102d008ac867328d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variantee6450244957a9658df215ad95be26f557050250fd406c51102d008ac867328d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
