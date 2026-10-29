# Verification target: Measure Complex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbbedb1ff6683866ccbcfa671949f34576336f7f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Complex/Variante0678896a9f51d30f6cf853c7d9458c5ff4b47d6f51e2abf34f029edd53ca993.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplex.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbbedb1ff6683866ccbcfa671949f34576336f7f`.

Source path: `GRWTSK/Analysis/MeasureTheory/Complex/Variante0678896a9f51d30f6cf853c7d9458c5ff4b47d6f51e2abf34f029edd53ca993.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Complex/Variante0678896a9f51d30f6cf853c7d9458c5ff4b47d6f51e2abf34f029edd53ca993.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.VectorMeasure` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [re](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplex.lean/declarations/re.md) | 51 | `declaration-track:ec7a8b62863aae6bf815f2bad5171911e66381c0e1b621e6f2aea404dfb48e06` |
| 2 | `def` | [im](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplex.lean/declarations/im.md) | 57 | `declaration-track:8b64cdb50b739a5c62f82e0caf8041205c02e2e347f0a7f3e4db543fc3fbdead` |
| 3 | `def` | [_root_.MeasureTheory.SignedMeasure.toComplexMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplex.lean/declarations/root-measuretheory-signedmeasure-tocomplexmeasure.md) | 63 | `declaration-track:1fe331f8701aca9460a944c6faa7239082ce01ad9c2720cb0589380ae16bd25c` |
| 4 | `theorem` | [_root_.MeasureTheory.SignedMeasure.toComplexMeasure_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplex.lean/declarations/root-measuretheory-signedmeasure-tocomplexmeasure-apply.md) | 71 | `result-track:df83f8bbce615ddd95cfb7fe8d8218991aefd22b7f9e9bbe487c7c7cc92847b3` |
| 5 | `theorem` | [toComplexMeasure_to_signedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplex.lean/declarations/tocomplexmeasure-to-signedmeasure.md) | 75 | `result-track:5d2dfc58b25c4d19b5fdb875ec1940d76b608bc5a08368bcea75eb6a584ccdbb` |
| 6 | `theorem` | [_root_.MeasureTheory.SignedMeasure.re_toComplexMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplex.lean/declarations/root-measuretheory-signedmeasure-re-tocomplexmeasure.md) | 79 | `result-track:198cc0942df27b674ac57561f4a8b9f6c1c5f0ca634ebc2bf4a9101f0845afc0` |
| 7 | `theorem` | [_root_.MeasureTheory.SignedMeasure.im_toComplexMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplex.lean/declarations/root-measuretheory-signedmeasure-im-tocomplexmeasure.md) | 83 | `result-track:477ab59b779e146f740a21096fa2bd566f52461496bb7ef51ec7b0b3e09a4226` |
| 8 | `def` | [equivSignedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplex.lean/declarations/equivsignedmeasure-source-edition-2.md) | 89 | `declaration-track:d095bdac1e972297c45e7603b734d880147cbc0e649a6c5da5e5c8f54e7ca0c2` |
| 9 | `def` | [equivSignedMeasureₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplex.lean/declarations/equivsignedmeasure.md) | 104 | `declaration-track:95a1431c6b695a595c0a2d024b5d1f02767a65ae501ade7cce2307f300b23bfe` |
| 10 | `theorem` | [absolutelyContinuous_ennreal_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplex.lean/declarations/absolutelycontinuous-ennreal-iff.md) | 117 | `result-track:8defbbed0cc5d14977c7c5bb4e31c1ea570043e15ab89204c308fe85c0f9eaf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a5905f04f781cd2cad39e88cb72da6dcd9bff577cb4b6bf21692314eb936d5f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Complex/Variante0678896a9f51d30f6cf853c7d9458c5ff4b47d6f51e2abf34f029edd53ca993.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Complex/Variante0678896a9f51d30f6cf853c7d9458c5ff4b47d6f51e2abf34f029edd53ca993.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
