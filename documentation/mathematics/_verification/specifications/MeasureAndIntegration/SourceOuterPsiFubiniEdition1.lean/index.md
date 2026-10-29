# Verification target: Source Outer Psi Fubini Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69d81649555963f3180ec16685c79bcef66bc895",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant54dc6a6c9afacc45e7f4ad049706f3127ae55abbd967e4260b880e7e6ab91611.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceOuterPsiFubiniEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceOuterPsiFubiniEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69d81649555963f3180ec16685c79bcef66bc895`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant54dc6a6c9afacc45e7f4ad049706f3127ae55abbd967e4260b880e7e6ab91611.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant54dc6a6c9afacc45e7f4ad049706f3127ae55abbd967e4260b880e7e6ab91611.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePrimitiveInnerKernel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteDensity](../../../../MeasureAndIntegration/SourceOuterPsiFubiniEdition1.lean/declarations/finitedensity.md) | 20 | `declaration-track:a52848ba45605cd1a66e88f753ff726e60b83d06276b65ec82587a232932ceb2` |
| 2 | `theorem` | [threshold_order](../../../../MeasureAndIntegration/SourceOuterPsiFubiniEdition1.lean/declarations/threshold-order.md) | 25 | `result-track:07d9037ab3a55fa399624b142a50fdcc77700c5e0f9ee92459c203e7809b256f` |
| 3 | `theorem` | [finiteDensity_integrable](../../../../MeasureAndIntegration/SourceOuterPsiFubiniEdition1.lean/declarations/finitedensity-integrable.md) | 29 | `result-track:288b3b000790d0156eb0b22f79d9784db85071a14a322701ee9ab746988f3585` |
| 4 | `theorem` | [density_left_slice](../../../../MeasureAndIntegration/SourceOuterPsiFubiniEdition1.lean/declarations/density-left-slice.md) | 88 | `result-track:90eee9f0514b24633ffd8655d3d1094516feea574b5761bc773325719da6cf50` |
| 5 | `theorem` | [density_right_slice](../../../../MeasureAndIntegration/SourceOuterPsiFubiniEdition1.lean/declarations/density-right-slice.md) | 110 | `result-track:c394d3078f065a152901189e7aab1b25e84a4283ed89c06225cbf2ca2b3f1015` |
| 6 | `theorem` | [actualFiniteSecondReadout_outer_fubini](../../../../MeasureAndIntegration/SourceOuterPsiFubiniEdition1.lean/declarations/actualfinitesecondreadout-outer-fubini.md) | 136 | `result-track:29d9123e54231e1c2648dd1f47639f6d712bc0254465af2604f926354c87239c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e41799fa9dd14185a408c4b9bc5d079b32cadfd68c924a9864a1324a6a45122f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant54dc6a6c9afacc45e7f4ad049706f3127ae55abbd967e4260b880e7e6ab91611.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant54dc6a6c9afacc45e7f4ad049706f3127ae55abbd967e4260b880e7e6ab91611.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
