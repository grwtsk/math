# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.EnclosedZeroInventory

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64e6b0ebe0a1923f8fc0d89f65bdb3942e32487b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/EnclosedZeroInventory.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/EnclosedZeroInventory.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/EnclosedZeroInventory.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64e6b0ebe0a1923f8fc0d89f65bdb3942e32487b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/EnclosedZeroInventory.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/EnclosedZeroInventory.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalZeroDivisor.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Algebra.BigOperators.PositiveWeightExhaustion`](../../../../GeneralAlgebraicSystems/AlgebraicStructures/PositiveWeightExhaustion.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.RationalDiskSeparation`](../../../../RealFunctions/RationalDiskSeparation.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.Analysis.Complex.RationalTentEnclosure`](../../../../FunctionsOfAComplexVariable/RationalTentEnclosure.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RecordIndex](../../../../AssociativeRingsAndAlgebras/EnclosedZeroInventory.lean/declarations/recordindex.md) | 32 | `declaration-track:c677341d9a0664775c3581e4b0821bed3119753a9237b20d3b33f337788f98b9` |
| 2 | `abbrev` | [Head](../../../../AssociativeRingsAndAlgebras/EnclosedZeroInventory.lean/declarations/head.md) | 33 | `declaration-track:30c3f7a86cd68ae20d3f55b849bb5be170aeee37235dbaf3bd61480989e1b3a4` |
| 3 | `def` | [recordMass](../../../../AssociativeRingsAndAlgebras/EnclosedZeroInventory.lean/declarations/recordmass.md) | 36 | `declaration-track:c01721c72c4a99a0624e88a1a6e98c2bf3d80412c17074d10d6923660256659a` |
| 4 | `def` | [Geometry](../../../../AssociativeRingsAndAlgebras/EnclosedZeroInventory.lean/declarations/geometry.md) | 40 | `declaration-track:3b12846056070d198f13058b8173379cb4f016b76bd442e7648a6a3b234b82b5` |
| 5 | `instance` | [instDecidableGeometry](../../../../AssociativeRingsAndAlgebras/EnclosedZeroInventory.lean/declarations/instdecidablegeometry.md) | 48 | `declaration-track:7c396a9531e7386396d8c82573d94943497a00052bb5a94f599b0446b112e72c` |
| 6 | `def` | [checkGeometry](../../../../AssociativeRingsAndAlgebras/EnclosedZeroInventory.lean/declarations/checkgeometry.md) | 51 | `declaration-track:414bc621d605b21ea03c99f011ad616d90c8c6e32bdc61c5adfcd70145f912cd` |
| 7 | `def` | [LocalWitnesses](../../../../AssociativeRingsAndAlgebras/EnclosedZeroInventory.lean/declarations/localwitnesses.md) | 56 | `declaration-track:2ab7456f8d80d04e44e16b3b7a8e693c164e83d5e2df7dc3f1b0447b961b7074` |
| 8 | `theorem` | [checkGeometry_iff](../../../../AssociativeRingsAndAlgebras/EnclosedZeroInventory.lean/declarations/checkgeometry-iff.md) | 61 | `result-track:c5afa4845b335d410ac91d425aa9d21a16dfd1db96683b8c142f38b8ff51100e` |
| 9 | `theorem` | [sum_head_weights](../../../../AssociativeRingsAndAlgebras/EnclosedZeroInventory.lean/declarations/sum-head-weights.md) | 65 | `result-track:8dff1a3f2798d541ff53c2a04cd643b87bf3aaf25d0f099817cd89bf59dd55e0` |
| 10 | `theorem` | [sum_record_weights](../../../../AssociativeRingsAndAlgebras/EnclosedZeroInventory.lean/declarations/sum-record-weights.md) | 70 | `result-track:fa761a251b0c0740b7fb56139e5cf49658ef3e3d34b4d56eb366c723eaefc687` |
| 11 | `theorem` | [exists_canonical_equiv](../../../../AssociativeRingsAndAlgebras/EnclosedZeroInventory.lean/declarations/exists-canonical-equiv.md) | 78 | `result-track:d615b3dd8b845234ca1bc383a1fe4cbb38032bbf72c8a6654c10e4c13b58eedc` |
| 12 | `theorem` | [count_eq_recordMass](../../../../AssociativeRingsAndAlgebras/EnclosedZeroInventory.lean/declarations/count-eq-recordmass.md) | 118 | `result-track:9b63b83addf3999254151850e9b17c08a1ab7a4c0d5c6617a0469b68f1d50faf` |
| 13 | `theorem` | [source_card_eq_length](../../../../AssociativeRingsAndAlgebras/EnclosedZeroInventory.lean/declarations/source-card-eq-length.md) | 134 | `result-track:24956ae063c44e6aac2339c6c2026fd76133932f58ea9f130373dfaf535dc9d8` |
| 14 | `theorem` | [enclosed_zero_unique](../../../../AssociativeRingsAndAlgebras/EnclosedZeroInventory.lean/declarations/enclosed-zero-unique.md) | 145 | `result-track:958a5c03adb07e3994889e8597b05f1bc1ab69cf9b3476f83848ab9656b537fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1cd45fd23457412759d10d405ee89f440027e4386db5c1fe74b88b8eae21c32 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/EnclosedZeroInventory.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/EnclosedZeroInventory.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
