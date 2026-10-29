# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.SeventhBlockControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4618c58a64d3d3949fd816ac17dbc3d59bede1a5",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/SeventhBlockControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/Chebyshev/Checks/SeventhBlockControls.lean/index.md) · [Full source](../../../../../../NumberTheory/Chebyshev/Checks/SeventhBlockControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4618c58a64d3d3949fd816ac17dbc3d59bede1a5`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/SeventhBlockControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/SeventhBlockControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSevenBlocksAndTerminal`](../../../../../../NumberTheory/Zeta/Riemann/ConcreteNewtonSevenBlocksAndTerminal.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [base_boundaries](../../../../../../NumberTheory/Chebyshev/Checks/SeventhBlockControls.lean/declarations/base-boundaries--1a8300a8359ad823551b1dce.md) | 13 | `result-track:1a8300a8359ad823551b1dce03541234e4fcc99b5fc9367ec174973920c6b84d` |
| 2 | `theorem` | [prefix_boundaries](../../../../../../NumberTheory/Chebyshev/Checks/SeventhBlockControls.lean/declarations/prefix-boundaries--17b0d17368ed660ef64a5a6e.md) | 17 | `result-track:17b0d17368ed660ef64a5a6eb3a9f51b3b04fc30f2d7fe30e62b2b6498631906` |
| 3 | `theorem` | [seventh_block_endpoints](../../../../../../NumberTheory/Chebyshev/Checks/SeventhBlockControls.lean/declarations/seventh-block-endpoints--190e9f5972c1e3206904c2e8.md) | 21 | `result-track:190e9f5972c1e3206904c2e87cd0741c8b2d2359a6e65165263a096bf9acd004` |
| 4 | `theorem` | [adjacent_positions_excluded](../../../../../../NumberTheory/Chebyshev/Checks/SeventhBlockControls.lean/declarations/adjacent-positions-excluded--b79281ceb722d75d656d778d.md) | 26 | `result-track:b79281ceb722d75d656d778d2a98863264758da64b3d3face93644dd1b2f9c00` |
| 5 | `theorem` | [logarithm_reduction_uniform](../../../../../../NumberTheory/Chebyshev/Checks/SeventhBlockControls.lean/declarations/logarithm-reduction-uniform--9a4d140b33717bf5e4392d68.md) | 31 | `result-track:9a4d140b33717bf5e4392d68f790107e93de39f089d7ebe10301c8d8f082abe1` |
| 6 | `theorem` | [terminal_not_seventh_block](../../../../../../NumberTheory/Chebyshev/Checks/SeventhBlockControls.lean/declarations/terminal-not-seventh-block--c3e55ebeb391a36dcb924f47.md) | 35 | `result-track:c3e55ebeb391a36dcb924f475d1eac92732db9c08d52e72a7401d606fe600b49` |
| 7 | `theorem` | [first_unfilled_preserved](../../../../../../NumberTheory/Chebyshev/Checks/SeventhBlockControls.lean/declarations/first-unfilled-preserved--7d3c556297e02cb093fabf5c.md) | 40 | `result-track:7d3c556297e02cb093fabf5cd685b6ca08c6a98a58d3baa4259cb41c71bd3fad` |
| 8 | `theorem` | [terminal_is_copied_exactly](../../../../../../NumberTheory/Chebyshev/Checks/SeventhBlockControls.lean/declarations/terminal-is-copied-exactly--cd3ec7d445679162dc962c77.md) | 45 | `result-track:cd3ec7d445679162dc962c772bdddc0a8eef14daf8900379aad732a7d8baefab` |
| 9 | `theorem` | [remaining_label_boundaries](../../../../../../NumberTheory/Chebyshev/Checks/SeventhBlockControls.lean/declarations/remaining-label-boundaries--6d82cf7756b025e8885383e0.md) | 49 | `result-track:6d82cf7756b025e8885383e0518ab429f53ba4dea70b3b738e7dc054d530a71f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f0abb766ea5e702f0a4dfcef67d55b666a5412507e1f63fbc08fb75aaed5d3b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Chebyshev/Checks/SeventhBlockControls.lean","GRWTSK/_verification/specifications/NumberTheory/Chebyshev/Checks/SeventhBlockControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
