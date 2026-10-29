# Verification target: Ends Weighted

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2278475a5def48b05af157cb9bfffefd6023b35b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsWeighted/Variant712af4d3cf29a5e169ee53337edc796e738e82e90040a8ab2a3077cceebb7cad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/EndsWeighted.lean/index.md) · [Full source](../../../../MeasureAndIntegration/EndsWeighted.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2278475a5def48b05af157cb9bfffefd6023b35b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EndsWeighted/Variant712af4d3cf29a5e169ee53337edc796e738e82e90040a8ab2a3077cceebb7cad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EndsWeighted/Variant712af4d3cf29a5e169ee53337edc796e738e82e90040a8ab2a3077cceebb7cad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PrimeSideA.EndsCore` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [max_log_le_two_sqrt](../../../../MeasureAndIntegration/EndsWeighted.lean/declarations/max-log-le-two-sqrt.md) | 28 | `result-track:91148f9d1128193c737147da271aee1ffbdd03daf073a46014bbab15a57895f3` |
| 2 | `theorem` | [abs_nuX_le_B](../../../../MeasureAndIntegration/EndsWeighted.lean/declarations/abs-nux-le-b.md) | 37 | `result-track:746d32c9df2711e2b0d55df27fea22006c4c5646d2ce7f898b3569214078c519` |
| 3 | `theorem` | [sqrt_add_le'](../../../../MeasureAndIntegration/EndsWeighted.lean/declarations/sqrt-add-le.md) | 48 | `result-track:a711bb972e41231ff12e5526ea6b634c87e683380184f2dbab33817b4d9835bb` |
| 4 | `theorem` | [abs_nuX_le_B_add_sqrt](../../../../MeasureAndIntegration/EndsWeighted.lean/declarations/abs-nux-le-b-add-sqrt.md) | 57 | `result-track:45e08624e37c9941095fe204fa3e698a5dd1e4464f81e2b61acc2675f52aa8f3` |
| 5 | `theorem` | [sqrt_shift_le](../../../../MeasureAndIntegration/EndsWeighted.lean/declarations/sqrt-shift-le.md) | 64 | `result-track:be004fe5f50615ff0dc9c20b318d567bf46e57cdc2634df06ddfa9d94afd2cf6` |
| 6 | `theorem` | [psiA_aestronglyMeasurable](../../../../MeasureAndIntegration/EndsWeighted.lean/declarations/psia-aestronglymeasurable.md) | 79 | `result-track:ffbfbf3b0f4290f348e349bca1becb490ae6fa18f7a785836b1cb841e6f4f595` |
| 7 | `theorem` | [psiA_shift_integrable](../../../../MeasureAndIntegration/EndsWeighted.lean/declarations/psia-shift-integrable.md) | 90 | `result-track:6fd573342141664bbd9f20092885f46d3b1026ec1944554a487e5f39385c1066` |
| 8 | `theorem` | [integral_psiA_shift](../../../../MeasureAndIntegration/EndsWeighted.lean/declarations/integral-psia-shift.md) | 95 | `result-track:a5bd4675f933ad1cd52fce4307f63045499c75623e2fed199acb5560df29a1a5` |
| 9 | `theorem` | [integrable_psiA_mul_sqrt](../../../../MeasureAndIntegration/EndsWeighted.lean/declarations/integrable-psia-mul-sqrt.md) | 101 | `result-track:c9f3fdcedc9ba674887187ba36314e8dca6dbbd1860e4e03e7d6747cefe0f6a7` |
| 10 | `theorem` | [integrable_psiA_shift_mul_nu](../../../../MeasureAndIntegration/EndsWeighted.lean/declarations/integrable-psia-shift-mul-nu.md) | 155 | `result-track:390254814f9cc34c6ff1827f9d201b63aabdf8c132bcbe9081e77741f4ddd158` |
| 11 | `theorem` | [sum_psiA_shift_left](../../../../MeasureAndIntegration/EndsWeighted.lean/declarations/sum-psia-shift-left.md) | 209 | `result-track:042af7431092f60f2d0dc075bd6a335b3f1f075ff75014301b3b9f7b7d291627` |
| 12 | `theorem` | [sum_psiA_shift_right](../../../../MeasureAndIntegration/EndsWeighted.lean/declarations/sum-psia-shift-right.md) | 217 | `result-track:ddd4cf6ba6ed277caaf0b5eaed7456db35850d4071a9a39d05f071008ff265c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6443ebf2a7f6a5c62865917d5db53f02505cf903a71b959dc3677743ea09f572 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/EndsWeighted/Variant712af4d3cf29a5e169ee53337edc796e738e82e90040a8ab2a3077cceebb7cad.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/EndsWeighted/Variant712af4d3cf29a5e169ee53337edc796e738e82e90040a8ab2a3077cceebb7cad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
