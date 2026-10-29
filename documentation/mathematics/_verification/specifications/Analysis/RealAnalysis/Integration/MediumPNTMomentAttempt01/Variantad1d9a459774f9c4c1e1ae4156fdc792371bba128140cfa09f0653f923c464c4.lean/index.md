# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MediumPNTMomentAttempt01.Variantad1d9a459774f9c4c1e1ae4156fdc792371bba128140cfa09f0653f923c464c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dddad1121573bba4c699b426e1306f5dd1439a0f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantad1d9a459774f9c4c1e1ae4156fdc792371bba128140cfa09f0653f923c464c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantad1d9a459774f9c4c1e1ae4156fdc792371bba128140cfa09f0653f923c464c4.lean/index.md) · [Full source](../../../../../../../Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantad1d9a459774f9c4c1e1ae4156fdc792371bba128140cfa09f0653f923c464c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dddad1121573bba4c699b426e1306f5dd1439a0f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantad1d9a459774f9c4c1e1ae4156fdc792371bba128140cfa09f0653f923c464c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantad1d9a459774f9c4c1e1ae4156fdc792371bba128140cfa09f0653f923c464c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MediumPNTLogError` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [psiRelativeError_measurable](../../../../../../../Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantad1d9a459774f9c4c1e1ae4156fdc792371bba128140cfa09f0653f923c464c4.lean/declarations/psirelativeerror-measurable--0bae760d1d47547564670798.md) | 11 | `result-track:0bae760d1d4754756467079838d212ea25d75a32537e2abb2feb69ec0fad1d01` |
| 2 | `theorem` | [psiRelativeError_bound](../../../../../../../Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantad1d9a459774f9c4c1e1ae4156fdc792371bba128140cfa09f0653f923c464c4.lean/declarations/psirelativeerror-bound--0ca1b3dfdc04a08d372d1356.md) | 17 | `result-track:0ca1b3dfdc04a08d372d135692206dc562830e8c240d74f74673d2513bc1d53f` |
| 3 | `theorem` | [inverse_square_integrable](../../../../../../../Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantad1d9a459774f9c4c1e1ae4156fdc792371bba128140cfa09f0653f923c464c4.lean/declarations/inverse-square-integrable--beff0b1abdc97118aba3db30.md) | 33 | `result-track:beff0b1abdc97118aba3db3010eef364cde4c45b726cf043ea112df133339605` |
| 4 | `theorem` | [psiRelativeError_mul_pow_integrable](../../../../../../../Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantad1d9a459774f9c4c1e1ae4156fdc792371bba128140cfa09f0653f923c464c4.lean/declarations/psirelativeerror-mul-pow-integrable--f6a668dee0203c5ae60daf9b.md) | 42 | `result-track:f6a668dee0203c5ae60daf9b4a3665524302b05d612225e085ca9c372188ca78` |
| 5 | `theorem` | [psiRelativeError_integrable](../../../../../../../Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantad1d9a459774f9c4c1e1ae4156fdc792371bba128140cfa09f0653f923c464c4.lean/declarations/psirelativeerror-integrable--ff776787752f9266158ead4b.md) | 79 | `result-track:ff776787752f9266158ead4b636b54271b045428ed2699158b46f89265a7dd18` |
| 6 | `theorem` | [psiRelativeError_first_moment_integrable](../../../../../../../Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantad1d9a459774f9c4c1e1ae4156fdc792371bba128140cfa09f0653f923c464c4.lean/declarations/psirelativeerror-first-moment-integrable--5710a62e4021054fbdae724a.md) | 83 | `result-track:5710a62e4021054fbdae724a74104bf1a0cd1e742f3d1de71ca303555883263b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=375a2cb2f74fd31a3bd3d64a6f3915631c64071fa43581c5e85ebecc7a2a5f85 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantad1d9a459774f9c4c1e1ae4156fdc792371bba128140cfa09f0653f923c464c4.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantad1d9a459774f9c4c1e1ae4156fdc792371bba128140cfa09f0653f923c464c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
