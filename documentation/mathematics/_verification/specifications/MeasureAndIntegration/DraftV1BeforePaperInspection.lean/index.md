# Verification target: Draft V1 Before Paper Inspection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0bedc577c56e4c181f05c107f4f8736323b21ed",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV1BeforePaperInspection/Variant8e86082fcba2a6ec7f6c5e16493f47856d53c5ad5d6c4c178ad787b66d8f576c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/DraftV1BeforePaperInspection.lean/index.md) · [Full source](../../../../MeasureAndIntegration/DraftV1BeforePaperInspection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0bedc577c56e4c181f05c107f4f8736323b21ed`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV1BeforePaperInspection/Variant8e86082fcba2a6ec7f6c5e16493f47856d53c5ad5d6c4c178ad787b66d8f576c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV1BeforePaperInspection/Variant8e86082fcba2a6ec7f6c5e16493f47856d53c5ad5d6c4c178ad787b66d8f576c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceHigherPrimePowerCoefficients` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squarePrefixCoefficient](../../../../MeasureAndIntegration/DraftV1BeforePaperInspection.lean/declarations/squareprefixcoefficient.md) | 27 | `declaration-track:30d64cea23197356a33fac924e4a1c45404eb2063af476b49eb0264ef73084be` |
| 2 | `def` | [squarePrefixBaseline](../../../../MeasureAndIntegration/DraftV1BeforePaperInspection.lean/declarations/squareprefixbaseline.md) | 30 | `declaration-track:a19213e593d1f6fc28f6e07525c60465f8b2f89f31c280de5aceedc21d028c0d` |
| 3 | `def` | [squarePrefix](../../../../MeasureAndIntegration/DraftV1BeforePaperInspection.lean/declarations/squareprefix.md) | 33 | `declaration-track:6a78aba7d222a2152a9c36bc239f017a0f3a76561a0499de4938eeece1e1d3eb` |
| 4 | `def` | [squareTail](../../../../MeasureAndIntegration/DraftV1BeforePaperInspection.lean/declarations/squaretail.md) | 37 | `declaration-track:07ca5b3426a75c80c05904cda889512d9d6ff208adef28cc3032bbf76b087136` |
| 5 | `def` | [squareTailWork](../../../../MeasureAndIntegration/DraftV1BeforePaperInspection.lean/declarations/squaretailwork.md) | 40 | `declaration-track:6f2624fba2ef65cffcbc6ab8dca103dec41faf86386a81d189611fe7cf00bb3a` |
| 6 | `def` | [squareTailNegativeMean](../../../../MeasureAndIntegration/DraftV1BeforePaperInspection.lean/declarations/squaretailnegativemean.md) | 44 | `declaration-track:284f9aecd6f79132231cfe9f3554921472b495c93008c5db0f10c87dcad43aae` |
| 7 | `def` | [squareTailPairedWork](../../../../MeasureAndIntegration/DraftV1BeforePaperInspection.lean/declarations/squaretailpairedwork.md) | 48 | `declaration-track:8e20198586e2ef5b8ed9ea9818869d0e4952a27948f6979d8b63ae448ac3d27c` |
| 8 | `theorem` | [squarePrefixCoefficient_eq_slice](../../../../MeasureAndIntegration/DraftV1BeforePaperInspection.lean/declarations/squareprefixcoefficient-eq-slice.md) | 53 | `result-track:6893b344f9c790b07f84cb496edb70c8d692b507c6658d9fcec241a113dc1234` |
| 9 | `theorem` | [squarePrefixCoefficient_summable](../../../../MeasureAndIntegration/DraftV1BeforePaperInspection.lean/declarations/squareprefixcoefficient-summable.md) | 66 | `result-track:9bea417b606585b17a81986571f9ad842ea9aa745044116a41a260166260ec07` |
| 10 | `theorem` | [squarePrefixCoefficient_pos](../../../../MeasureAndIntegration/DraftV1BeforePaperInspection.lean/declarations/squareprefixcoefficient-pos.md) | 74 | `result-track:445dba5434fb2955210d1019329b923afe8136999baa68bf5ac5a7c8d54b9b6c` |
| 11 | `theorem` | [squarePrefixBaseline_nonneg](../../../../MeasureAndIntegration/DraftV1BeforePaperInspection.lean/declarations/squareprefixbaseline-nonneg.md) | 79 | `result-track:f247104d539aab8d6449f0e9f23c5a0a76d8f794cc23f5085aeac0bd8fb93698` |
| 12 | `theorem` | [squarePrefixBaseline_pos](../../../../MeasureAndIntegration/DraftV1BeforePaperInspection.lean/declarations/squareprefixbaseline-pos.md) | 82 | `result-track:94de595acfe45d16e8982091cef6e1ef70cff0aa46a92398bbc79bfb0761137f` |
| 13 | `theorem` | [squarePrefix_eq_steps](../../../../MeasureAndIntegration/DraftV1BeforePaperInspection.lean/declarations/squareprefix-eq-steps.md) | 88 | `result-track:8ea53235bf5582d630de1c6a0545e8357fc91150bd75b61ad7b521de9f4e09e7` |
| 14 | `theorem` | [squarePrefix_mul_deriv_intervalIntegrable](../../../../MeasureAndIntegration/DraftV1BeforePaperInspection.lean/declarations/squareprefix-mul-deriv-intervalintegrable.md) | 102 | `result-track:bda750fff283751307cb83d518b54283003e1632a598ff41f0edaab6f8fab8c0` |
| 15 | `theorem` | [squareTail_mul_deriv_intervalIntegrable](../../../../MeasureAndIntegration/DraftV1BeforePaperInspection.lean/declarations/squaretail-mul-deriv-intervalintegrable.md) | 124 | `result-track:65003594f5130d428c5a37fd2b7b79b0b4c97b729f1aa9a0bac39d320cc0310c` |
| 16 | `theorem` | [squarePrefix_source_work](../../../../MeasureAndIntegration/DraftV1BeforePaperInspection.lean/declarations/squareprefix-source-work.md) | 133 | `result-track:9800af4af70c23ef21b34318a05c05673f4c0c446756e35ec2d56eb756966cff` |
| 17 | `theorem` | [squareTailWork_eq](../../../../MeasureAndIntegration/DraftV1BeforePaperInspection.lean/declarations/squaretailwork-eq.md) | 167 | `result-track:045fc0d57ea7dc36706ec0156e555dd4604fca725ed07a6fa1cce593fb665573` |
| 18 | `theorem` | [squareTail_intervalIntegrable](../../../../MeasureAndIntegration/DraftV1BeforePaperInspection.lean/declarations/squaretail-intervalintegrable.md) | 183 | `result-track:1e4a2989f821c6454f25945ac466c095cbd2d10693a1064f83bd8c8d916de9e3` |
| 19 | `theorem` | [squareTailPairedWork_eq_work_add_mean](../../../../MeasureAndIntegration/DraftV1BeforePaperInspection.lean/declarations/squaretailpairedwork-eq-work-add-mean.md) | 190 | `result-track:ee31a04478b12b13d0b2457b9b53269aed80c9a1f38d0f2323d7423b4855dcff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9188114346078d3ffddb0a14f40004ed06f4d294013bf2365503e9d24982b59a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV1BeforePaperInspection/Variant8e86082fcba2a6ec7f6c5e16493f47856d53c5ad5d6c4c178ad787b66d8f576c.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV1BeforePaperInspection/Variant8e86082fcba2a6ec7f6c5e16493f47856d53c5ad5d6c4c178ad787b66d8f576c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
