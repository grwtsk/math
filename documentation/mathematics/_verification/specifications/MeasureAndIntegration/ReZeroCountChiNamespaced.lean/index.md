# Verification target: Re Zero Count Chi Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aff84b91dc54960a7cf959c64fc17e59bb110fef",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ReZeroCountChiNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ReZeroCountChiNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aff84b91dc54960a7cf959c64fc17e59bb110fef`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.BacklundChi` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.ReZeroCount` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [symL](../../../../MeasureAndIntegration/ReZeroCountChiNamespaced.lean/declarations/syml.md) | 35 | `declaration-track:aae72c36d812970ce57a8eeb888503d7939e483b57fd5a7ecc82de9d3ff71839` |
| 2 | `lemma` | [symL_analyticAt](../../../../MeasureAndIntegration/ReZeroCountChiNamespaced.lean/declarations/syml-analyticat.md) | 38 | `result-track:ddfe71bcc0f9149f408001dd268f622fb0acf2e32ac4235985aa2d3ff9548856` |
| 3 | `lemma` | [symL_ofReal](../../../../MeasureAndIntegration/ReZeroCountChiNamespaced.lean/declarations/syml-ofreal.md) | 48 | `result-track:29aeaf2b26c9cf2350820180814d7fa04e51dca2a7de254ce3f62f0777c11531` |
| 4 | `theorem` | [reZeroSetL_card_le_uniform](../../../../MeasureAndIntegration/ReZeroCountChiNamespaced.lean/declarations/rezerosetl-card-le-uniform.md) | 67 | `result-track:650f1f7e39358bdc771a6d18376fa5e88d35754f91057cfb83768aee89ee4eeb` |
| 5 | `theorem` | [backlund_horizontalChi_uniform](../../../../MeasureAndIntegration/ReZeroCountChiNamespaced.lean/declarations/backlund-horizontalchi-uniform.md) | 291 | `result-track:3943aca56810bdbc865556995997efdeec9dbb4c4460079e72b249d8681b1811` |
| 6 | `theorem` | [reZeroSetL_card_le](../../../../MeasureAndIntegration/ReZeroCountChiNamespaced.lean/declarations/rezerosetl-card-le.md) | 313 | `result-track:b9ea16a7cf2c98103847d4d6784dbcb642b187b476d3028b2a064bcdc4085098` |
| 7 | `theorem` | [backlund_horizontalChi](../../../../MeasureAndIntegration/ReZeroCountChiNamespaced.lean/declarations/backlund-horizontalchi.md) | 334 | `result-track:d4578f9c1848c03d4b5b2ffdaf4d8f8301c2bce1c918d4a0ac908a2c2dda0784` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8836b47e76088a2251dfee53eb86d20f5c998371508f2d8f256b599f76fd11f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
