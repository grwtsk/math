# Verification target: Comp Notation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da495d0f596e0d8f53695471d5bb34feba01be01",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/CompNotation/Variant2a5e90e8484bb93820c4823b77595b8a2cdb0452adca0f9766d9439f528fc06a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/CompNotation.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/CompNotation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da495d0f596e0d8f53695471d5bb34feba01be01`.

Source path: `GRWTSK/Analysis/MeasureTheory/CompNotation/Variant2a5e90e8484bb93820c4823b77595b8a2cdb0452adca0f9766d9439f528fc06a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/CompNotation/Variant2a5e90e8484bb93820c4823b77595b8a2cdb0452adca0f9766d9439f528fc06a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [comp_apply_univ](../../../../ProbabilityTheoryAndStochasticProcesses/CompNotation.lean/declarations/comp-apply-univ.md) | 40 | `result-track:87d790ed2575ace4cff0393eecb2b7fb11b02566f46190e916fdc771c89dde34` |
| 2 | `lemma` | [deterministic_comp_eq_map](../../../../ProbabilityTheoryAndStochasticProcesses/CompNotation.lean/declarations/deterministic-comp-eq-map.md) | 43 | `result-track:f31fb8908fbfae1059aa0db2f69bd12228308f7e2c1c02e8cfc21f1ee6049c85` |
| 3 | `lemma` | [id_comp](../../../../ProbabilityTheoryAndStochasticProcesses/CompNotation.lean/declarations/id-comp.md) | 48 | `result-track:bd4ae3cfdbe1251ea003aae340f85fe641d275691eb02db4b0570038a9411a64` |
| 4 | `lemma` | [swap_comp](../../../../ProbabilityTheoryAndStochasticProcesses/CompNotation.lean/declarations/swap-comp.md) | 50 | `result-track:9aec3a397f5140a5d2d337802aaf5e694fca4225d61d7a6468d4a94af2f5c44b` |
| 5 | `lemma` | [const_comp](../../../../ProbabilityTheoryAndStochasticProcesses/CompNotation.lean/declarations/const-comp.md) | 54 | `result-track:d37c85d9bf0478aec4e0ce84fb67855c97c350d31e00b1673b8afd08f592d41e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7418d498384456c1c79da29db3fd7908093ad8c044d762d1e3053182ccdf431 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/CompNotation/Variant2a5e90e8484bb93820c4823b77595b8a2cdb0452adca0f9766d9439f528fc06a.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/CompNotation/Variant2a5e90e8484bb93820c4823b77595b8a2cdb0452adca0f9766d9439f528fc06a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
