# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PinnedWienerSmoothIntervalBrackets

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5830184b9c03d227551b941d0ba64962457ba6bb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PinnedWienerSmoothIntervalBrackets.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PinnedWienerSmoothIntervalBrackets.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5830184b9c03d227551b941d0ba64962457ba6bb`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedWienerIkeharaRelativeWindowToFull`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedWienerIkeharaRelativeWindowToFull.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Geometry.Manifold.PartitionOfUnity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pinnedSmoothUrysohnIoo](../../../../MeasureAndIntegration/PinnedWienerSmoothIntervalBrackets.lean/declarations/pinnedsmoothurysohnioo.md) | 60 | `result-track:bebb944b20b517292a0cfdfa00b1e2850841818b737dcbb380a37d652f5aeda9` |
| 2 | `theorem` | [pinnedIntervalSupport_closure_away](../../../../MeasureAndIntegration/PinnedWienerSmoothIntervalBrackets.lean/declarations/pinnedintervalsupport-closure-away.md) | 116 | `result-track:afc4ea742421fda909af679fe0be570dcff0b1f8ecc0f19304e9cf5f141fa3a6` |
| 3 | `def` | [PinnedSmoothIntervalBrackets](../../../../MeasureAndIntegration/PinnedWienerSmoothIntervalBrackets.lean/declarations/pinnedsmoothintervalbrackets.md) | 131 | `declaration-track:b2d8cded2dc36147ca9f861d23a742daa71de859a10419fdad5755c71acee69f` |
| 4 | `theorem` | [pinnedSmoothIntervalLower](../../../../MeasureAndIntegration/PinnedWienerSmoothIntervalBrackets.lean/declarations/pinnedsmoothintervallower.md) | 149 | `result-track:adf407f2276405fe33b34ce1ee262453bc55ccb6ccd1482c67183a75b7c59db0` |
| 5 | `theorem` | [pinnedSmoothIntervalUpper](../../../../MeasureAndIntegration/PinnedWienerSmoothIntervalBrackets.lean/declarations/pinnedsmoothintervalupper.md) | 224 | `result-track:9ee97cc6b23430cd94bc56dffa7099042280e8c3097b35be95ada6af6d35b868` |
| 6 | `theorem` | [pinnedSmoothIntervalBrackets_exists](../../../../MeasureAndIntegration/PinnedWienerSmoothIntervalBrackets.lean/declarations/pinnedsmoothintervalbrackets-exists.md) | 297 | `result-track:d73a0c38675c092838666500dd4f4a33003fcdca97fe9a42b821d009d93ea4cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd6133a6eb1b21c0e45b834cfe743e186be8874bf7eefe211ccf7e239b008176 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
