# Verification target: GRWTSK.NumberTheory.Moebius.CoreNonboundarySignedMertensCells

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f98a495095c2f601f2986fd610b45d3f024bcfe",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreNonboundarySignedMertensCells.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreNonboundarySignedMertensCells.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreNonboundarySignedMertensCells.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f98a495095c2f601f2986fd610b45d3f024bcfe`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreNonboundarySignedMertensCells.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreNonboundarySignedMertensCells.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreNonboundarySignedLengthTranspose`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreNonboundarySignedLengthTranspose.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coreNonboundaryMertensIncrement](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreNonboundarySignedMertensCells.lean/declarations/corenonboundarymertensincrement.md) | 21 | `declaration-track:9216214d01b6ed68bf65aa8308228b8e93b6a11c73283675db83e98a6d9ea285` |
| 2 | `theorem` | [harmonicShortMobiusSum_eq_mertensIncrement](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreNonboundarySignedMertensCells.lean/declarations/harmonicshortmobiussum-eq-mertensincrement.md) | 28 | `result-track:684356f7cac26eb08d7d26b788766b07680d4ff16296b680fbeac26da744b467` |
| 3 | `def` | [coreNonboundarySignedMertensCell](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreNonboundarySignedMertensCells.lean/declarations/corenonboundarysignedmertenscell.md) | 51 | `declaration-track:ba7788eefb01012108e5546c5d80b9f4c80447482d5c01936dd1dce57d765781` |
| 4 | `theorem` | [coreNonboundarySignedLengthSlice_eq_mertensCells](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreNonboundarySignedMertensCells.lean/declarations/corenonboundarysignedlengthslice-eq-mertenscells.md) | 61 | `result-track:0be2da669d1b9552e63dc220582b414922bfdc1fd0cdf2ecedaceb16126126b8` |
| 5 | `def` | [coreNonboundarySignedMertensCellPacket](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreNonboundarySignedMertensCells.lean/declarations/corenonboundarysignedmertenscellpacket.md) | 81 | `declaration-track:84edf31b92a52d569f23d445f730cf9f663ec4ef54963f6b82739d0e44e85fb7` |
| 6 | `theorem` | [coreNonboundarySignedLengthPacket_eq_mertensCellPacket](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreNonboundarySignedMertensCells.lean/declarations/corenonboundarysignedlengthpacket-eq-mertenscellpacket.md) | 90 | `result-track:6c78381e45f9e08f1d94daed3220ccc6b7d0b9ed5b676697451ce262859ca568` |
| 7 | `def` | [SubpolynomialCoreNonboundarySignedMertensCellPacket](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreNonboundarySignedMertensCells.lean/declarations/subpolynomialcorenonboundarysignedmertenscellpacket.md) | 120 | `declaration-track:7b87bc2cceaee2a020719bd5dad83607100302fa4639d34b8c3d505ef854ae9a` |
| 8 | `theorem` | [subpolynomialCoreNonboundarySignedMertensCellPacket_iff_lengthPacket](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreNonboundarySignedMertensCells.lean/declarations/subpolynomialcorenonboundarysignedmertenscellpacket-iff-lengthpacket.md) | 128 | `result-track:25d5739947b0e16aa1e25174dcc650bc755c905bcc845c9a65539b75cc8b9701` |
| 9 | `theorem` | [riemannHypothesis_of_classicalWeakMertensStep_and_signedMertensCells](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreNonboundarySignedMertensCells.lean/declarations/riemannhypothesis-of-classicalweakmertensstep-and-signedmertenscells.md) | 147 | `result-track:e8e5b4f5df387fd86c14de19016899629400f0290796243299a05fafb1004f75` |
| 10 | `structure` | [ToSignedMertensCellPacketAdapter](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreNonboundarySignedMertensCells.lean/declarations/tosignedmertenscellpacketadapter.md) | 159 | `declaration-track:e5a1b6993ca995d9af315f4a728fed79b516396aca03db530bc970355f3fbfff` |
| 11 | `theorem` | [signedMertensCellCancellation_hostileWitness](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreNonboundarySignedMertensCells.lean/declarations/signedmertenscellcancellation-hostilewitness.md) | 173 | `result-track:9d68bacd6542987a2c51da6343242b241711479ace238ae2a91f1c2a32dc7492` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23b7845407e0c3ec71d9aa9fe783e352adac0bb28b14ee705c94fc9e8f32d432 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/CoreNonboundarySignedMertensCells.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/CoreNonboundarySignedMertensCells.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
