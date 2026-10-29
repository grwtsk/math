# Verification target: GRWTSK.NumberTheory.Moebius.DyadicSignedAbelDepthPacket

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17c231f572462f054985fb3e8bebd8ab7985e3a5",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/DyadicSignedAbelDepthPacket.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedAbelDepthPacket.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedAbelDepthPacket.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17c231f572462f054985fb3e8bebd8ab7985e3a5`.

Source path: `GRWTSK/NumberTheory/Moebius/DyadicSignedAbelDepthPacket.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/DyadicSignedAbelDepthPacket.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.DyadicSignedAbelShiftPacket`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedAbelShiftPacket.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedMertensDyadicSignedAbelCell](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedAbelDepthPacket.lean/declarations/weightedmertensdyadicsignedabelcell.md) | 19 | `declaration-track:330d9dc9419b6a44938b73633b5c6ac270e7e77b5b11a254213c789d713b637c` |
| 2 | `def` | [weightedMertensDyadicSignedAbelDepthSlice](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedAbelDepthPacket.lean/declarations/weightedmertensdyadicsignedabeldepthslice.md) | 25 | `declaration-track:78bdd6743ba6e50e546c16f3465c26e9700a93d9eba02c9267856a03c25c7f90` |
| 3 | `def` | [weightedMertensDyadicSignedAbelDepthPacket](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedAbelDepthPacket.lean/declarations/weightedmertensdyadicsignedabeldepthpacket.md) | 29 | `declaration-track:0bdcd5e7e85a2d324cc705b69a8c3d4415f2f6d9b43c75b10a5febf31b1e1da2` |
| 4 | `theorem` | [sum_range_eq_sum_range_indicator_of_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedAbelDepthPacket.lean/declarations/sum-range-eq-sum-range-indicator-of-le.md) | 33 | `result-track:33a47f715ca4bc13becfeeddb08cff40ecf65b94876a83ed2db8eb1952cc9c05` |
| 5 | `theorem` | [weightedMertensDyadicSignedAbelCell_eq_zero_of_cutoff_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedAbelDepthPacket.lean/declarations/weightedmertensdyadicsignedabelcell-eq-zero-of-cutoff-le.md) | 47 | `result-track:55542aa5c45beaaad2721d785344298a60af18e862770503dce31611b7008043` |
| 6 | `theorem` | [weightedMertensDyadicSignedAbelCell_eq_zero_of_not_shift](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedAbelDepthPacket.lean/declarations/weightedmertensdyadicsignedabelcell-eq-zero-of-not-shift.md) | 53 | `result-track:0d05c26a80e192ab52691561818eb5289d92a39baedde2bbf3b58b5d3839751c` |
| 7 | `theorem` | [weightedMertensDyadicShiftAbelContribution_eq_cellSum](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedAbelDepthPacket.lean/declarations/weightedmertensdyadicshiftabelcontribution-eq-cellsum.md) | 59 | `result-track:f7952f00d7e32bc469cb7f851c6c4023184cc6b819ac73b3bceb6ea310b8a890` |
| 8 | `theorem` | [weightedMertensDyadicSignedAbelPacket_eq_cellDoubleSum](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedAbelDepthPacket.lean/declarations/weightedmertensdyadicsignedabelpacket-eq-celldoublesum.md) | 90 | `result-track:123ca19c4a14b1bfdc04c0d4c17ea9b0127428a7c41bd82d53263e66c2e087b6` |
| 9 | `theorem` | [weightedMertensDyadicSignedAbelPacket_eq_depthPacket](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedAbelDepthPacket.lean/declarations/weightedmertensdyadicsignedabelpacket-eq-depthpacket.md) | 102 | `result-track:10b3002e20b86f18cdaf300e82bdbbaf286661ed8041948da4fdfe53f7d8a1e3` |
| 10 | `theorem` | [weightedMertensDyadicShiftPacket_eq_signedAbelDepthPacket](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedAbelDepthPacket.lean/declarations/weightedmertensdyadicshiftpacket-eq-signedabeldepthpacket.md) | 111 | `result-track:c994364c0aa473ff8c624353b9588f887fe03537947773a63ebca72ad2fef76d` |
| 11 | `def` | [SubpolynomialDyadicSignedAbelDepthPacket](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedAbelDepthPacket.lean/declarations/subpolynomialdyadicsignedabeldepthpacket.md) | 118 | `declaration-track:cd556b1465fee4ef8e35c61faf63292d806dfa387a941c1eab649b642ff22a54` |
| 12 | `theorem` | [subpolynomialDyadicSignedAbelDepthPacket_iff_signedAbel](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedAbelDepthPacket.lean/declarations/subpolynomialdyadicsignedabeldepthpacket-iff-signedabel.md) | 124 | `result-track:e7389baf8426312b2a38f1b4442da230146b4969e8066e8bda73a5fbac5b5952` |
| 13 | `theorem` | [subpolynomialDyadicSignedAbelDepthPacket_iff_shiftPacket](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedAbelDepthPacket.lean/declarations/subpolynomialdyadicsignedabeldepthpacket-iff-shiftpacket.md) | 141 | `result-track:c2662395a5c050ac7e3c7d7054566ef5230aaff9075296b29e57bf78fc7f757e` |
| 14 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicSignedAbelDepthPacket](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedAbelDepthPacket.lean/declarations/riemannhypothesis-of-subpolynomialdyadicsignedabeldepthpacket.md) | 147 | `result-track:ef10f4559e211754b4d5698f5d95981e61c836eda8969ce3fda5aadfa43ccd10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d9004784bde003f2fa9d78523d60c005c33e9302976159fd69311c26de8d9b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/DyadicSignedAbelDepthPacket.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/DyadicSignedAbelDepthPacket.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
