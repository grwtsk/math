# Verification target: Uniform Mass Decoder For The Unchanged Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "212273556409c7f9984cfbf6947c30f225299acd",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceMass/Variant3a0ff027cb269359ef47dda7d4c6180bfda2349b9b145d69d92c62098a37f46f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/UniformMassDecoderForTheUnchangedSourceEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/UniformMassDecoderForTheUnchangedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `212273556409c7f9984cfbf6947c30f225299acd`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceMass/Variant3a0ff027cb269359ef47dda7d4c6180bfda2349b9b145d69d92c62098a37f46f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceMass/Variant3a0ff027cb269359ef47dda7d4c6180bfda2349b9b145d69d92c62098a37f46f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Conversation.SupplierWeakMertens` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMass](../../../../MeasureAndIntegration/UniformMassDecoderForTheUnchangedSourceEdition1.lean/declarations/bumpmass.md) | 23 | `declaration-track:5260eb4a977aa7bff97a4d759ce52cf9b20af8701cdce45e5ae573ebb2b2e0ed` |
| 2 | `def` | [unitNormalization](../../../../MeasureAndIntegration/UniformMassDecoderForTheUnchangedSourceEdition1.lean/declarations/unitnormalization.md) | 24 | `declaration-track:cff52ce458ee70906d636f8ff007a6cf5eaeedb7e240920395bde1c876c7a5e2` |
| 3 | `def` | [massDecoder](../../../../MeasureAndIntegration/UniformMassDecoderForTheUnchangedSourceEdition1.lean/declarations/massdecoder.md) | 25 | `declaration-track:84f0d9618b216d1d18ded03fb800b189f590dd6a282c5909c7f061e039439dab` |
| 4 | `theorem` | [unit_normalization_exact](../../../../MeasureAndIntegration/UniformMassDecoderForTheUnchangedSourceEdition1.lean/declarations/unit-normalization-exact.md) | 27 | `result-track:41e7fa89d64c30534861edcf099f5ef2b4cdab28182321b6d6f23af0f544d536` |
| 5 | `theorem` | [normalization_uniform](../../../../MeasureAndIntegration/UniformMassDecoderForTheUnchangedSourceEdition1.lean/declarations/normalization-uniform.md) | 30 | `result-track:bc8ff0c39e6da361d4f132be381393da0ff0f60edbfcc79a021f2b946b1e3ad7` |
| 6 | `theorem` | [prescribed_mass](../../../../MeasureAndIntegration/UniformMassDecoderForTheUnchangedSourceEdition1.lean/declarations/prescribed-mass.md) | 43 | `result-track:325df67a2f2cbe1500b3a51ca696153c1ed2ea7beb1414d4a7dfad9e082fc77a` |
| 7 | `theorem` | [prescribed_mass_ne_zero](../../../../MeasureAndIntegration/UniformMassDecoderForTheUnchangedSourceEdition1.lean/declarations/prescribed-mass-ne-zero.md) | 49 | `result-track:77ac4fed8572548de148607ec5a44d195df61c1ec477b588220c87b450c96cb6` |
| 8 | `theorem` | [decoder_nonneg](../../../../MeasureAndIntegration/UniformMassDecoderForTheUnchangedSourceEdition1.lean/declarations/decoder-nonneg.md) | 57 | `result-track:7f583a67e695a18b54c887a2f227bf4ee3abb07072db504b68f8c987eb80cbc0` |
| 9 | `theorem` | [decoder_square_exact](../../../../MeasureAndIntegration/UniformMassDecoderForTheUnchangedSourceEdition1.lean/declarations/decoder-square-exact.md) | 61 | `result-track:7580eeae6186073be416363dbbaa054961e92a82c0b461c0fdfb945365a9dc8d` |
| 10 | `theorem` | [mass_decoder_of_square_bound](../../../../MeasureAndIntegration/UniformMassDecoderForTheUnchangedSourceEdition1.lean/declarations/mass-decoder-of-square-bound.md) | 68 | `result-track:26351fb5e11568f2dee49c487d6d251997d450c34d48e3660d4a2010be58b277` |
| 11 | `theorem` | [mass_readout_bound](../../../../MeasureAndIntegration/UniformMassDecoderForTheUnchangedSourceEdition1.lean/declarations/mass-readout-bound.md) | 107 | `result-track:278be8e7defc97f49d15e1a113ac140f1fc6f18ae049722fe3fd5170fa569897` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a2df345ea9bce1e47a4f443d822d7c8e7aef52576c5ead64d95ccfb05147551 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceMass/Variant3a0ff027cb269359ef47dda7d4c6180bfda2349b9b145d69d92c62098a37f46f.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceMass/Variant3a0ff027cb269359ef47dda7d4c6180bfda2349b9b145d69d92c62098a37f46f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
