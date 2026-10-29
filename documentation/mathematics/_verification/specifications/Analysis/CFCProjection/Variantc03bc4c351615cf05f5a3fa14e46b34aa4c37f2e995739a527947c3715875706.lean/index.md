# Verification target: GRWTSK.Analysis.CFCProjection.Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3aa98bcf08046d2fb29566b8e364ca232f95d77a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean/index.md) · [Full source](../../../../../Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3aa98bcf08046d2fb29566b8e364ca232f95d77a`.

Source path: `GRWTSK/Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean.json)

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
| 1 | `def` | [spectralCharacteristic](../../../../../Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean/declarations/spectralcharacteristic--1e1b2b0fb9b96a1946c25864.md) | 70 | `declaration-track:1e1b2b0fb9b96a1946c258644de2a85d1e8c859640cba1c5b2d01c804a203ac2` |
| 2 | `theorem` | [spectralCharacteristic_mul_self](../../../../../Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean/declarations/spectralcharacteristic-mul-self--94465dfb8c26eb205619cd2f.md) | 77 | `result-track:94465dfb8c26eb205619cd2fcd59027824d8b2ada7c9d484d0e258a3fc7cdceb` |
| 3 | `def` | [cfcSpectralProjection](../../../../../Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean/declarations/cfcspectralprojection--8f82c4470ab9b335d2da0146.md) | 96 | `declaration-track:8f82c4470ab9b335d2da0146c001223a93389ca27beabf2bf2e3349509efc9b0` |
| 4 | `theorem` | [cfcSpectralProjection_mem_elemental](../../../../../Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean/declarations/cfcspectralprojection-mem-elemental--ad865151c9d7e5c9856167fd.md) | 106 | `result-track:ad865151c9d7e5c9856167fdc1ef74609d74db02d9be1d0978bfd048795db8f2` |
| 5 | `theorem` | [cfcSpectralProjection_isIdempotentElem](../../../../../Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean/declarations/cfcspectralprojection-isidempotentelem--e247b6d757b5a82d8ddf1e90.md) | 114 | `result-track:e247b6d757b5a82d8ddf1e906b0921a4d8e7ff8cbe4f047ba6ec1840b409bd06` |
| 6 | `theorem` | [cfcSpectralProjection_isStarProjection](../../../../../Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean/declarations/cfcspectralprojection-isstarprojection--79b57026474f2beca60cf2e0.md) | 129 | `result-track:79b57026474f2beca60cf2e07c737484aa116b87cc21751bfcca69f20e121793` |
| 7 | `def` | [spectralSingleton](../../../../../Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean/declarations/spectralsingleton--9edd4076bcb4c500e97b8305.md) | 141 | `declaration-track:9edd4076bcb4c500e97b8305c17b13464d989673f5dd62dcee1310070503666f` |
| 8 | `theorem` | [spectralSingleton_isClopen_of_gap](../../../../../Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean/declarations/spectralsingleton-isclopen-of-gap--4c915faa642bdc7233de17c6.md) | 154 | `result-track:4c915faa642bdc7233de17c69ce5c07f45f2d9f98a899ad3c7f773a1022ee7be` |
| 9 | `def` | [isolatedSpectralProjection](../../../../../Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean/declarations/isolatedspectralprojection--46d454f74940606ddb9d1ff9.md) | 187 | `declaration-track:46d454f74940606ddb9d1ff920a2051fe5fb698a49ce3bff7849d12baa9a69f5` |
| 10 | `theorem` | [isolatedSpectralProjection_isStarProjection](../../../../../Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean/declarations/isolatedspectralprojection-isstarprojection--825eb2ae671bd2f82fb94bde.md) | 197 | `result-track:825eb2ae671bd2f82fb94bdeb1f0addba9e75e26a2f54c9cd3a15374a6d3a648` |
| 11 | `def` | [selfAdjointSpectralProjection](../../../../../Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean/declarations/selfadjointspectralprojection--58913265ae8bd82498d34352.md) | 210 | `declaration-track:58913265ae8bd82498d343522ac92b396c298f558ffe1d9ca8358cfe1286fae1` |
| 12 | `theorem` | [selfAdjointSpectralProjection_isStarProjection](../../../../../Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean/declarations/selfadjointspectralprojection-isstarprojection--bef5f11439d3785fb0bb7144.md) | 217 | `result-track:bef5f11439d3785fb0bb7144aa5dca2d9a0f7fc6363895fe437c6504cccd46eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=49f65175923f6cc0bf3feef54658e13630f06fd83914a03ba12395b7f1b8f8c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean","GRWTSK/_verification/specifications/Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
