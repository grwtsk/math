# Verification target: GRWTSK.NumberTheory.Primes.GoldbachCircleWindowGeometry

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5d105564d0c8c61fea6bff4880d9dc2750c56b8",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachCircleWindowGeometry.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/GoldbachCircleWindowGeometry.lean/index.md) · [Full source](../../../../GeneralTopology/GoldbachCircleWindowGeometry.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5d105564d0c8c61fea6bff4880d9dc2750c56b8`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachCircleWindowGeometry.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachCircleWindowGeometry.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates`](../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachRationalArcCoordinates.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion`](../../../../MeasureAndIntegration/GoldbachRationalArcExpansion.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.Normed.Group.AddCircle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Periodic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [unitPeriodPositive](../../../../GeneralTopology/GoldbachCircleWindowGeometry.lean/declarations/unitperiodpositive.md) | 39 | `declaration-track:347809292475508fa9a62744ec89f494bd4d6a58649c2065dae1c2e18a5db9b5` |
| 2 | `def` | [goldbachOffsetCircle](../../../../GeneralTopology/GoldbachCircleWindowGeometry.lean/declarations/goldbachoffsetcircle.md) | 42 | `declaration-track:eebe774392d03210423b6507a9f2f1d931413d64712ef1d6917a67ae75aba098` |
| 3 | `def` | [goldbachCircleWindow](../../../../GeneralTopology/GoldbachCircleWindowGeometry.lean/declarations/goldbachcirclewindow.md) | 46 | `declaration-track:94c77130eec880eb232c233f2eb175c8d14d55a9ffd49421d5dd306c44efa30a` |
| 4 | `def` | [goldbachCircleWindowPreimage](../../../../GeneralTopology/GoldbachCircleWindowGeometry.lean/declarations/goldbachcirclewindowpreimage.md) | 50 | `declaration-track:dd619a1cdf450e1b6db4b35a141a7d70b0091aefd274e057fec3d2090a67ffff` |
| 5 | `theorem` | [continuous_goldbachOffsetCircle](../../../../GeneralTopology/GoldbachCircleWindowGeometry.lean/declarations/continuous-goldbachoffsetcircle.md) | 58 | `result-track:56341fb2d86331d38e3aef58ab87dc64f36ad9131e8fde9112384f937a0b1a47` |
| 6 | `theorem` | [measurable_goldbachCircleWindow](../../../../GeneralTopology/GoldbachCircleWindowGeometry.lean/declarations/measurable-goldbachcirclewindow.md) | 64 | `result-track:741d216e0e44764a452eae63527b492911ed01d42217381a650dd24d09282668` |
| 7 | `theorem` | [measurable_goldbachCircleWindowPreimage](../../../../GeneralTopology/GoldbachCircleWindowGeometry.lean/declarations/measurable-goldbachcirclewindowpreimage.md) | 69 | `result-track:efd3fa4cf4a97a158a21d68c25cc2ccee47661d98ff6b74d27e1cced523b2782` |
| 8 | `theorem` | [norm_goldbachOffsetCircle](../../../../GeneralTopology/GoldbachCircleWindowGeometry.lean/declarations/norm-goldbachoffsetcircle.md) | 77 | `result-track:0c06cbecf5a0dbf5b701698953b246e059e1938c02689346c371f2f99087d7d0` |
| 9 | `theorem` | [round_goldbachRationalArcOffset_cases](../../../../GeneralTopology/GoldbachCircleWindowGeometry.lean/declarations/round-goldbachrationalarcoffset-cases.md) | 88 | `result-track:a761ebf16bf14bfce9535062efc0f7d96670f124d0d2a7bae3ac426b184b9403` |
| 10 | `theorem` | [mem_goldbachPeriodizedRationalArc_iff_offsetCircle](../../../../GeneralTopology/GoldbachCircleWindowGeometry.lean/declarations/mem-goldbachperiodizedrationalarc-iff-offsetcircle.md) | 124 | `result-track:6f763c7c598ebc2d3b8001766779d338145f7322ef5d0d4442e061fe3593469c` |
| 11 | `theorem` | [goldbachClippedRationalArc_eq_circleWindowPreimage](../../../../GeneralTopology/GoldbachCircleWindowGeometry.lean/declarations/goldbachclippedrationalarc-eq-circlewindowpreimage.md) | 192 | `result-track:960b2a82931df096b931059942d0848610c0e4f51c4423957d5e4cdf66adb1e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce2b11084a2cb04c007cad8466b8698cdd316895dce9e8237281d843136033cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Primes/GoldbachCircleWindowGeometry.lean","GRWTSK/_verification/specifications/NumberTheory/Primes/GoldbachCircleWindowGeometry.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
