# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitQuarticWindingSplit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3164b46669481b8d417ad303aef0adfd06e6499",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitQuarticWindingSplit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitQuarticWindingSplit.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitQuarticWindingSplit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3164b46669481b8d417ad303aef0adfd06e6499`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitQuarticWindingSplit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitQuarticWindingSplit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitQuarticDiagonalObstruction`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitQuarticDiagonalObstruction.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Data.Int.ModEq` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parityHalfShiftSignedQuarticZeroWinding](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitQuarticWindingSplit.lean/declarations/parityhalfshiftsignedquarticzerowinding.md) | 41 | `declaration-track:0fb9b80f239e1ea31b123d846e3faf2ed00153ca7666035b5bc8c2c3f68fc1bb` |
| 2 | `def` | [parityHalfShiftSignedQuarticWrap](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitQuarticWindingSplit.lean/declarations/parityhalfshiftsignedquarticwrap.md) | 55 | `declaration-track:41e3c8bbad330b8284b5f989f11affa4657309401bc2bf032c92859283f7a485` |
| 3 | `theorem` | [wrapCollision_exists_nonzero_winding](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitQuarticWindingSplit.lean/declarations/wrapcollision-exists-nonzero-winding.md) | 71 | `result-track:3ce6c390ec1d5fafb4122678a8f22d6a22ebe5bd2e0eac443d0827733e6fceb4` |
| 4 | `theorem` | [quarticCollisionTerm_eq_zeroWinding_add_wrap](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitQuarticWindingSplit.lean/declarations/quarticcollisionterm-eq-zerowinding-add-wrap.md) | 99 | `result-track:a3b942a56e8f8a328c986fac857eaeda5f14b409721994b6d3a81636c286e91c` |
| 5 | `theorem` | [parityHalfShiftSignedQuarticCollision_eq_zeroWinding_add_wrap](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitQuarticWindingSplit.lean/declarations/parityhalfshiftsignedquarticcollision-eq-zerowinding-add-wrap.md) | 129 | `result-track:8fca037ea41d62e2670095b1688aeb9cf1ac9895b476fcc52d5e182a76848d0e` |
| 6 | `theorem` | [diagonal_implies_zeroWinding](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitQuarticWindingSplit.lean/declarations/diagonal-implies-zerowinding.md) | 148 | `result-track:c589d6a7591b6a3ff65cbc3b6d4c963808f5b7d46d6d83f3a14c118a84737f83` |
| 7 | `structure` | [RegularQuarticZeroWindingSourceData](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitQuarticWindingSplit.lean/declarations/regularquarticzerowindingsourcedata.md) | 157 | `declaration-track:1d4bc23d9fee5087a055836ffde37dd3cd6097468b3791d2d9010613b2b5b0ed` |
| 8 | `def` | [RegularQuarticZeroWindingSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitQuarticWindingSplit.lean/declarations/regularquarticzerowindingsource.md) | 167 | `declaration-track:3b4ab5142d7b0782b620e796dac9a70e1a9ddf75b5ba94863bc2170f3035aec9` |
| 9 | `structure` | [RegularQuarticWrapSourceData](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitQuarticWindingSplit.lean/declarations/regularquarticwrapsourcedata.md) | 180 | `declaration-track:b19e6a972e1e6a13b0552e317c6bf46e0763981cac3d2941e7d10bcae33d594b` |
| 10 | `def` | [RegularQuarticWrapSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitQuarticWindingSplit.lean/declarations/regularquarticwrapsource.md) | 190 | `declaration-track:ac21cfe1c6f0d107b171d3da2bab43e08104f80fe5f72c80778bdd948ecb34bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f9896c2731c904cc4cad4a0ac5b2073f9b703a01d89ed23b368d408b1d80c65 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/RegularOrbitQuarticWindingSplit.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/RegularOrbitQuarticWindingSplit.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
