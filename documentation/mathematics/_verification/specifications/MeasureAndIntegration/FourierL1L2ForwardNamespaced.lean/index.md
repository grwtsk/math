# Verification target: Fourier L1 L2 Forward Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30f9cc2aa7ab8cdf546125e37e72e787528b6f28",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variantffe7a04fb2d5bd943e4d938edb34ba6888c43741aef1bceccbdde66694518ba0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FourierL1L2ForwardNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FourierL1L2ForwardNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30f9cc2aa7ab8cdf546125e37e72e787528b6f28`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variantffe7a04fb2d5bd943e4d938edb34ba6888c43741aef1bceccbdde66694518ba0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variantffe7a04fb2d5bd943e4d938edb34ba6888c43741aef1bceccbdde66694518ba0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.LpSpace` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_fourier_mul_eq](../../../../MeasureAndIntegration/FourierL1L2ForwardNamespaced.lean/declarations/integral-fourier-mul-eq.md) | 20 | `result-track:8d9ff9e4ebee5be7459b6a7ea876ad5ad4b478d4ca3c0203517d82b526796016` |
| 2 | `theorem` | [fourier_sub](../../../../MeasureAndIntegration/FourierL1L2ForwardNamespaced.lean/declarations/fourier-sub.md) | 33 | `result-track:523a43710b976cdecf46635d1a9c94f173f7720217a6db901378adef26e228cc` |
| 3 | `theorem` | [continuous_fourier](../../../../MeasureAndIntegration/FourierL1L2ForwardNamespaced.lean/declarations/continuous-fourier.md) | 49 | `result-track:583bf1c189acf5321b47b1009e6d77c090c8c0391d15f1903a91c380016bdfa9` |
| 4 | `theorem` | [fourier_toLp_ae](../../../../MeasureAndIntegration/FourierL1L2ForwardNamespaced.lean/declarations/fourier-tolp-ae.md) | 56 | `result-track:7f9a34fde132bbaa1fbda9049caa614e1e4fc802e6263ad9c5b58d22eb11909c` |
| 5 | `theorem` | [fourier_memLp](../../../../MeasureAndIntegration/FourierL1L2ForwardNamespaced.lean/declarations/fourier-memlp.md) | 87 | `result-track:4ccd863f5239aa34505baa4916609c5613fe9f809c433e4fef37384cd4a7e178` |
| 6 | `theorem` | [fourier_toLp_eq](../../../../MeasureAndIntegration/FourierL1L2ForwardNamespaced.lean/declarations/fourier-tolp-eq.md) | 92 | `result-track:80c90d120c9b16fcaecc17d2676c9f0cfe38713c70d6a166f6f93cbcf202aa0d` |
| 7 | `theorem` | [norm_fourier_toLp](../../../../MeasureAndIntegration/FourierL1L2ForwardNamespaced.lean/declarations/norm-fourier-tolp.md) | 98 | `result-track:a74ebcfbfa35b9875560f8f837f098a3d8b4bf445d3b10b8369f873963e87554` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63444cc2fed17f185fd696a0815700d252ab8b5f0cd556b13b210a513e9b9823 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variantffe7a04fb2d5bd943e4d938edb34ba6888c43741aef1bceccbdde66694518ba0.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variantffe7a04fb2d5bd943e4d938edb34ba6888c43741aef1bceccbdde66694518ba0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
