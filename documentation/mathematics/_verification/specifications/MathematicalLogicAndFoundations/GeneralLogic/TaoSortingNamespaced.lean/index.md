# Verification target: Tao Sorting Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5759aa17ce89d9d7821831f6838a89514891a2e5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaoSorting/Variant7e0575e46b56ed2bb29c39d0bbf472a2ef4b488d7228962e6794b0649c663392.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TaoSortingNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TaoSortingNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5759aa17ce89d9d7821831f6838a89514891a2e5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaoSorting/Variant7e0575e46b56ed2bb29c39d0bbf472a2ef4b488d7228962e6794b0649c663392.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaoSorting/Variant7e0575e46b56ed2bb29c39d0bbf472a2ef4b488d7228962e6794b0649c663392.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Carrier.BinaryMatrixStream` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.GrandChallenge.NavierStokes.SmoothContinuation` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.GrandChallenge.NavierStokes.NonBlowupObstruction` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CriticalControlCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TaoSortingNamespaced.lean/declarations/criticalcontrolcertificate.md) | 35 | `declaration-track:1019820c2160070f25df7148cb40c7a0062847cd9834c266fe95e9283420cc23` |
| 2 | `structure` | [FlowFrame](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TaoSortingNamespaced.lean/declarations/flowframe.md) | 45 | `declaration-track:6d7b407986e3a0f1a074979d80d746684b551c8eb49277b66c0c00ad9fc32c18` |
| 3 | `structure` | [NonGlitchStream](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TaoSortingNamespaced.lean/declarations/nonglitchstream.md) | 51 | `declaration-track:99dad07249c202eaab788381b3f287ebdb592617635a463583a7ac7e6fe084de` |
| 4 | `structure` | [GlitchCandidate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TaoSortingNamespaced.lean/declarations/glitchcandidate.md) | 56 | `declaration-track:3555bc70fde899f85c5c181fba1553a42e3b0962fcc495fa0a1dd87a19d8368d` |
| 5 | `structure` | [CriticalControlGap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TaoSortingNamespaced.lean/declarations/criticalcontrolgap.md) | 65 | `declaration-track:6f81e6032f7f913b6ec9b91737f2149b2e9c0b6f5e8681863a9409e0e47304db` |
| 6 | `structure` | [AveragedBlowupWarning](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TaoSortingNamespaced.lean/declarations/averagedblowupwarning.md) | 74 | `declaration-track:5c6f958f2f6b6b676fa3aa9a86572aacfb2fdffafe7127bd3976b19d91aeba26` |
| 7 | `structure` | [TaoSortingContract](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TaoSortingNamespaced.lean/declarations/taosortingcontract.md) | 88 | `declaration-track:df6b46b5c34de824f90203dfe86729f82d214d8ec4e5b03799efdc195296cb96` |
| 8 | `theorem` | [critical_norm_bounded_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TaoSortingNamespaced.lean/declarations/critical-norm-bounded-if-supplied.md) | 102 | `result-track:fc4d4ba7d123f2662ad524c698f52d4e5a58664cf884920cffb1cfeab55d788b` |
| 9 | `theorem` | [critical_control_preserves_true_nonlinearity_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TaoSortingNamespaced.lean/declarations/critical-control-preserves-true-nonlinearity-if-supplied.md) | 107 | `result-track:349e56988a28f222d316be1bea5e66b768518b8b7cd4444894e0d9b9700383e5` |
| 10 | `theorem` | [quantitative_regularity_control_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TaoSortingNamespaced.lean/declarations/quantitative-regularity-control-if-supplied.md) | 112 | `result-track:2f3b8685a8c2bc6a1437c895bf60e2bda2bde9556ff6db64ad9a290a4e05e8a8` |
| 11 | `theorem` | [averaged_blowup_warning_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TaoSortingNamespaced.lean/declarations/averaged-blowup-warning-if-supplied.md) | 117 | `result-track:42090663331127c2bf66c1c63920d558b788b985641b24704145461bfc4fedf4` |
| 12 | `theorem` | [tao_sorting_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TaoSortingNamespaced.lean/declarations/tao-sorting-if-supplied.md) | 127 | `result-track:9225d97cfabb4f4d1b2868ae9565581815843f1500df7871b3496aed5878e5d5` |
| 13 | `theorem` | [tao_gap_charts_glitch_candidate_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TaoSortingNamespaced.lean/declarations/tao-gap-charts-glitch-candidate-if-supplied.md) | 135 | `result-track:24fb0a83b518d5acc0c8d42f372b0a7b109a40a0ec40b98801c16e8a958d5391` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=039fcfce1feb181170d9cb1b22a9654bbf3d2221ab265aa66a609e73d6e95af4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaoSorting/Variant7e0575e46b56ed2bb29c39d0bbf472a2ef4b488d7228962e6794b0649c663392.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TaoSorting/Variant7e0575e46b56ed2bb29c39d0bbf472a2ef4b488d7228962e6794b0649c663392.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
