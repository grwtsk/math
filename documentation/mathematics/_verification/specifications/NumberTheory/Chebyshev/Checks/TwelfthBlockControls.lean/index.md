# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.TwelfthBlockControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25ca5ac0895094292a0db39e3ff39a62e0209ce7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/TwelfthBlockControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/Chebyshev/Checks/TwelfthBlockControls.lean/index.md) · [Full source](../../../../../../NumberTheory/Chebyshev/Checks/TwelfthBlockControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25ca5ac0895094292a0db39e3ff39a62e0209ce7`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/TwelfthBlockControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/TwelfthBlockControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTwelveBlocksAndTerminal`](../../../../../../NumberTheory/Zeta/Riemann/ConcreteNewtonTwelveBlocksAndTerminal.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [base_boundaries](../../../../../../NumberTheory/Chebyshev/Checks/TwelfthBlockControls.lean/declarations/base-boundaries--986e2960c6fb26af86ad3255.md) | 13 | `result-track:986e2960c6fb26af86ad3255289f6525a90e0b7fd1715d3a8d6202f1d6f32770` |
| 2 | `theorem` | [prefix_boundaries](../../../../../../NumberTheory/Chebyshev/Checks/TwelfthBlockControls.lean/declarations/prefix-boundaries--e0ce821f40487343aded6b4b.md) | 17 | `result-track:e0ce821f40487343aded6b4b1bff32d70a40ef572864dd4928cdcc2b1e5379dc` |
| 3 | `theorem` | [twelfth_block_endpoints](../../../../../../NumberTheory/Chebyshev/Checks/TwelfthBlockControls.lean/declarations/twelfth-block-endpoints--6117e1be6a73a3a4bd726c7e.md) | 21 | `result-track:6117e1be6a73a3a4bd726c7e65ce61a13a9dd420342808d0a1ded8425754f781` |
| 4 | `theorem` | [adjacent_positions_excluded](../../../../../../NumberTheory/Chebyshev/Checks/TwelfthBlockControls.lean/declarations/adjacent-positions-excluded--bf10373eaeac3a1094125934.md) | 26 | `result-track:bf10373eaeac3a1094125934189dfaf4fb06d287dfaa254a9ddca08dafc69f76` |
| 5 | `theorem` | [logarithm_reduction_uniform](../../../../../../NumberTheory/Chebyshev/Checks/TwelfthBlockControls.lean/declarations/logarithm-reduction-uniform--b56af9f5bdb69dcd21225b58.md) | 31 | `result-track:b56af9f5bdb69dcd21225b585e9916e70eb5afeef8d207315e4d6c44d6d9b8cc` |
| 6 | `theorem` | [terminal_not_twelfth_block](../../../../../../NumberTheory/Chebyshev/Checks/TwelfthBlockControls.lean/declarations/terminal-not-twelfth-block--6ac982b9f07e5c5300673704.md) | 35 | `result-track:6ac982b9f07e5c5300673704b6eee8c7bc647612fc219552c0cf2860599c27a3` |
| 7 | `theorem` | [first_unfilled_preserved](../../../../../../NumberTheory/Chebyshev/Checks/TwelfthBlockControls.lean/declarations/first-unfilled-preserved--816450139fa2b2723bd0e840.md) | 40 | `result-track:816450139fa2b2723bd0e840ad172288ae1a5bc8c4b2396b8928eca70a8376a0` |
| 8 | `theorem` | [terminal_is_copied_exactly](../../../../../../NumberTheory/Chebyshev/Checks/TwelfthBlockControls.lean/declarations/terminal-is-copied-exactly--4fb6b65295f6856f902cd193.md) | 45 | `result-track:4fb6b65295f6856f902cd193000305ca5d41192e5427937deaf51cbff7c14d6d` |
| 9 | `theorem` | [remaining_label_boundaries](../../../../../../NumberTheory/Chebyshev/Checks/TwelfthBlockControls.lean/declarations/remaining-label-boundaries--f6dd22a6b7f33adbd49cf7db.md) | 49 | `result-track:f6dd22a6b7f33adbd49cf7dbd5e6d551948bb4a196b3f78818eee5fbcfa78224` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e665bb5156b3763b6b30072fa46af24aa57cc4e0c337d75fc5d84a37e7c44f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Chebyshev/Checks/TwelfthBlockControls.lean","GRWTSK/_verification/specifications/NumberTheory/Chebyshev/Checks/TwelfthBlockControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
