# Verification target: SMul Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fde262f602b24b10b3a34f6549bb0506dd8ba1fd",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SMul/Variant5efd230a270ebe8690b34439fbe623f4d6cde4ebaa45c410dbb0868131529b36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SMulPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SMulPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fde262f602b24b10b3a34f6549bb0506dd8ba1fd`.

Source path: `GRWTSK/Analysis/MeasureTheory/SMul/Variant5efd230a270ebe8690b34439fbe623f4d6cde4ebaa45c410dbb0868131529b36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SMul/Variant5efd230a270ebe8690b34439fbe623f4d6cde4ebaa45c410dbb0868131529b36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eLpNorm'_const_smul_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SMulPublic.lean/declarations/elpnorm-const-smul-le.md) | 36 | `result-track:1860cfa0b4a91af7c2ccfcab464e9143e7b57050ebd346f603d6d8407fad64be` |
| 2 | `theorem` | [eLpNormEssSup_const_smul_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SMulPublic.lean/declarations/elpnormesssup-const-smul-le-source-edition-2.md) | 39 | `result-track:4a72e7e94cfbd429a7696cca33ec705f0058806bec8bed7858b7d8c719dfa6bd` |
| 3 | `theorem` | [eLpNorm_const_smul_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SMulPublic.lean/declarations/elpnorm-const-smul-le-source-edition-4.md) | 43 | `result-track:cec4261c62b8655ea4421579b8500fedef1693d36e0d7b39ed734ec957d42324` |
| 4 | `theorem` | [MemLp.const_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SMulPublic.lean/declarations/memlp-const-smul.md) | 54 | `result-track:4a897a6d62261ba1366aeb188e8b9b21d7e4eb36c24dce891532dcad811e4f9e` |
| 5 | `theorem` | [MemLp.const_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SMulPublic.lean/declarations/memlp-const-mul.md) | 57 | `result-track:454c4bda24c1a7a33e3574340d2df2e1a7394107e5eef846547ac6d14f665f7a` |
| 6 | `theorem` | [MemLp.mul_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SMulPublic.lean/declarations/memlp-mul-const.md) | 60 | `result-track:a4ffa68f93414657864ab894a8454494b4072bb367a50312f2d263cb92d50a64` |
| 7 | `theorem` | [eLpNorm'_const_smul_le'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SMulPublic.lean/declarations/elpnorm-const-smul-le-source-edition-3.md) | 72 | `result-track:3f7ee237b06ce48240a92663866d83c3d7d257b67bd5bfc1c4efc8097c601a3f` |
| 8 | `theorem` | [eLpNormEssSup_const_smul_le'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SMulPublic.lean/declarations/elpnormesssup-const-smul-le.md) | 76 | `result-track:34d21c0319146b374d461132c446241f9a043f8425d8e4909802179a44899923` |
| 9 | `theorem` | [eLpNorm_const_smul_le'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SMulPublic.lean/declarations/elpnorm-const-smul-le-source-edition-2.md) | 88 | `result-track:1f199e84afdac3e9120e68c7f09b70a8fdddab026e79eb357ccfbabe85834d59` |
| 10 | `theorem` | [MemLp.const_smul'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SMulPublic.lean/declarations/memlp-const-smul-source-edition-2.md) | 99 | `result-track:7bf3ef223e58a9beb5589b6ee903ff9b5069a177f773e2a5e9a6ed185e22ea02` |
| 11 | `theorem` | [MemLp.const_mul'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SMulPublic.lean/declarations/memlp-const-mul-source-edition-2.md) | 104 | `result-track:5e10c1766c3f44e5218b8273c835f45687da79ccc965c13aeae3134cf5da56ee` |
| 12 | `theorem` | [eLpNorm'_const_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SMulPublic.lean/declarations/elpnorm-const-smul.md) | 120 | `result-track:8314e5dfe272cda0a1cdd62543c5500951530d3c7dc99973293548bb04b8e93f` |
| 13 | `theorem` | [eLpNormEssSup_const_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SMulPublic.lean/declarations/elpnormesssup-const-smul.md) | 128 | `result-track:bb555b20b6534a339d65e1884c894b748082c19d436db0c7ce4ace41b7770236` |
| 14 | `theorem` | [eLpNorm_const_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SMulPublic.lean/declarations/elpnorm-const-smul-source-edition-2.md) | 133 | `result-track:de6c70f8365e3272a25e07b48688b97952cc28c6d42c91db7f7f82004ed6e05d` |
| 15 | `lemma` | [eLpNorm_nsmul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SMulPublic.lean/declarations/elpnorm-nsmul.md) | 141 | `result-track:587b1ca73603e4a75f16c1e0ac0d45858697f6b42f0bfd22b6d05482878e83ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2bf7b6dd6539cdb8ba8ae5e7a0b54aac6e48519d2ae2e9ab941619625a8b94d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/SMul/Variant5efd230a270ebe8690b34439fbe623f4d6cde4ebaa45c410dbb0868131529b36.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/SMul/Variant5efd230a270ebe8690b34439fbe623f4d6cde4ebaa45c410dbb0868131529b36.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
