# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleTuringPacket

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d92df78a112183db4e5470d28151e3d23d45084",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleTuringPacket.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleTuringPacket.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d92df78a112183db4e5470d28151e3d23d45084`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleCountIsolation`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleCountIsolation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPositiveTuringCountIsolation`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalPositiveTuringCountIsolation.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [packetOfRectangleIndex](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleTuringPacket.lean/declarations/packetofrectangleindex.md) | 49 | `declaration-track:9239e43509beba31f1db27618be1c91af26d945603a2e0d98fb022d42099c805` |
| 2 | `theorem` | [packet_height](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleTuringPacket.lean/declarations/packet-height.md) | 57 | `result-track:be2c7dfd8281140150aa45407d974fc829a485441f1317da2ed830d62b3983e7` |
| 3 | `theorem` | [packet_totalCount](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleTuringPacket.lean/declarations/packet-totalcount.md) | 66 | `result-track:bf2294565d6cb12c3895ddc01838ffaf79223a5833cbbb09f9ddae32c5cd1c2e` |
| 4 | `theorem` | [isolated_rectangle_total_not_lt_certifiedCount](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleTuringPacket.lean/declarations/isolated-rectangle-total-not-lt-certifiedcount.md) | 76 | `result-track:c51e0ebac2a451929fdba67863d9025e0b982d4646d18f2432d0c74f2bc7829d` |
| 5 | `theorem` | [packet_gap_lt_two_of_rectangle_total_lt_certified_add_two](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleTuringPacket.lean/declarations/packet-gap-lt-two-of-rectangle-total-lt-certified-add-two.md) | 86 | `result-track:3245a0925c0f2978e66bf48e65c5bf6f1ca4fc70746b38b00b2ed26bf8d565b3` |
| 6 | `theorem` | [all_positive_on_line_of_rectangle_count_margin](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleTuringPacket.lean/declarations/all-positive-on-line-of-rectangle-count-margin.md) | 99 | `result-track:224c566f0a4a4fe64069ba6eda1ed53bcc357fa9ad3c6701895d36d4ea8743cf` |
| 7 | `theorem` | [rhThrough_of_rectangle_count_margin](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleTuringPacket.lean/declarations/rhthrough-of-rectangle-count-margin.md) | 111 | `result-track:fd3d982eb8cd471ce8190aba26d314823bd4f134e3e2741feb3393c15ce70886` |
| 8 | `theorem` | [knownPoints_eq_positiveHeightHead_of_rectangle_count_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleTuringPacket.lean/declarations/knownpoints-eq-positiveheighthead-of-rectangle-count-eq.md) | 149 | `result-track:03d341ec6fe5fbb491c6c9f0e26e0c1606f57b9031568e64ac15f064ca15d12a` |
| 9 | `theorem` | [packet_gap_eq_zero_of_rectangle_count_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleTuringPacket.lean/declarations/packet-gap-eq-zero-of-rectangle-count-eq.md) | 160 | `result-track:18dbd5072bfad8bd0dc055e073aea6ee304c7ca3aa481d273c6bf94c254ceb7a` |
| 10 | `theorem` | [rectangle_one_unit_deficit_not_complete_fixture](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalRectangleTuringPacket.lean/declarations/rectangle-one-unit-deficit-not-complete-fixture.md) | 172 | `result-track:2278be0cae4f1c5510df4bba08d0f10bcafe6e6e56b55e03fad0938cc9bb844f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5cbcfb1574914377f6a55a24925cfe580f015233118e811543caeb2650da2de0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
