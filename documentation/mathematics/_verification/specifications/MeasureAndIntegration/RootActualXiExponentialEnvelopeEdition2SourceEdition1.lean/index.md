# Verification target: Root Actual Xi Exponential Envelope Edition2 Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8886e9a6ae1459477ecee1fb2dde4844d314dff5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variantca4ecba893d034d1a29cbe9d467e2118e1aaa62ac41539376e26f83182e7bcb9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/RootActualXiExponentialEnvelopeEdition2SourceEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/RootActualXiExponentialEnvelopeEdition2SourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8886e9a6ae1459477ecee1fb2dde4844d314dff5`.

Source path: `GRWTSK/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variantca4ecba893d034d1a29cbe9d467e2118e1aaa62ac41539376e26f83182e7bcb9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variantca4ecba893d034d1a29cbe9d467e2118e1aaa62ac41539376e26f83182e7bcb9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualXiTailPrimitive` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualXiExponentialEnvelopeConstant](../../../../MeasureAndIntegration/RootActualXiExponentialEnvelopeEdition2SourceEdition1.lean/declarations/actualxiexponentialenvelopeconstant.md) | 20 | `declaration-track:c7abb193ec8d47ec5466490128919bd44c69d2c5680af77ed627bef77c102edf` |
| 2 | `theorem` | [coefficient_nonneg](../../../../MeasureAndIntegration/RootActualXiExponentialEnvelopeEdition2SourceEdition1.lean/declarations/coefficient-nonneg.md) | 23 | `result-track:217d75fcff0cda34413a6f29a80dc6a374cafd00706a044ff861555bb93a46b0` |
| 3 | `theorem` | [actualXiTailTimeDensity_abs_le](../../../../MeasureAndIntegration/RootActualXiExponentialEnvelopeEdition2SourceEdition1.lean/declarations/actualxitailtimedensity-abs-le.md) | 28 | `result-track:eb183f8e340e71854258c54184943897e9631589b5ab1a172182a304ddc77803` |
| 4 | `theorem` | [actualAnchoredXiTailPrimitive_abs_le](../../../../MeasureAndIntegration/RootActualXiExponentialEnvelopeEdition2SourceEdition1.lean/declarations/actualanchoredxitailprimitive-abs-le.md) | 50 | `result-track:9fd78f1beca946cb799cf61d73807a111b1950cabef1a4a8dce688a3023ad50e` |
| 5 | `theorem` | [primitive_continuousOn_Ici](../../../../MeasureAndIntegration/RootActualXiExponentialEnvelopeEdition2SourceEdition1.lean/declarations/primitive-continuouson-ici.md) | 73 | `result-track:ee30fe631f6c10f706abdb9a10eb042119b1088c5490f9c8fd4125fd3f557377` |
| 6 | `theorem` | [actualXiLaplace_integrableOn](../../../../MeasureAndIntegration/RootActualXiExponentialEnvelopeEdition2SourceEdition1.lean/declarations/actualxilaplace-integrableon.md) | 85 | `result-track:ab24ad3fc0d9505fc3ef2b32971f5aab0350146fb166be143e2c468a2a99bec0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=25f734cf751bb41ef88d5694aaef6a968848b2a3665aaec6a8e0be2606395eea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variantca4ecba893d034d1a29cbe9d467e2118e1aaa62ac41539376e26f83182e7bcb9.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variantca4ecba893d034d1a29cbe9d467e2118e1aaa62ac41539376e26f83182e7bcb9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
