# Verification target: Heine Cantor Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cde37a29ceafd4c16dfe19bae5085c8e9e7dea6c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variant9efeaa72a9bc126d571c4bbbd8ca4fa36938458e3f0dec47e94a0f8d1c58df71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HeineCantorNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/HeineCantorNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cde37a29ceafd4c16dfe19bae5085c8e9e7dea6c`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variant9efeaa72a9bc126d571c4bbbd8ca4fa36938458e3f0dec47e94a0f8d1c58df71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variant9efeaa72a9bc126d571c4bbbd8ca4fa36938458e3f0dec47e94a0f8d1c58df71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [CompactSpace.uniformContinuous_of_continuous](../../../../GeneralTopology/HeineCantorNamespacedPublic.lean/declarations/compactspace-uniformcontinuous-of-continuous.md) | 48 | `result-track:d63c78a1df5b9b08f3b5b10916116675e444ddc42330f2d84e43b332c775cf38` |
| 2 | `theorem` | [IsCompact.uniformContinuousOn_of_continuous](../../../../GeneralTopology/HeineCantorNamespacedPublic.lean/declarations/iscompact-uniformcontinuouson-of-continuous.md) | 57 | `result-track:6ed3a62f2865d5600633cd501f77910b1832ada1d6d443ae101e86d67466344a` |
| 3 | `theorem` | [IsCompact.uniformContinuousAt_of_continuousAt](../../../../GeneralTopology/HeineCantorNamespacedPublic.lean/declarations/iscompact-uniformcontinuousat-of-continuousat.md) | 68 | `result-track:2ff8c5cbdf2877e9f2e0982c656ecfa20877de4c215aaf5c30caa17bdf0b7846` |
| 4 | `theorem` | [Continuous.uniformContinuous_of_tendsto_cocompact](../../../../GeneralTopology/HeineCantorNamespacedPublic.lean/declarations/continuous-uniformcontinuous-of-tendsto-cocompact.md) | 82 | `result-track:270842ab980d6780852805a4228e58447be7600461a334d59a725259ee9288b4` |
| 5 | `theorem` | [HasCompactMulSupport.uniformContinuous_of_continuous](../../../../GeneralTopology/HeineCantorNamespacedPublic.lean/declarations/hascompactmulsupport-uniformcontinuous-of-continuous.md) | 99 | `result-track:0087c07e44e9b2c134552762eb9825c319ae50e28d313109747058a2b867d3ad` |
| 6 | `theorem` | [ContinuousOn.tendstoUniformly](../../../../GeneralTopology/HeineCantorNamespacedPublic.lean/declarations/continuouson-tendstouniformly.md) | 105 | `result-track:5830f6b1260a19ab89da37f3ae4b10b01f9a735200eec335ecaf66621780c99d` |
| 7 | `theorem` | [Continuous.tendstoUniformly](../../../../GeneralTopology/HeineCantorNamespacedPublic.lean/declarations/continuous-tendstouniformly.md) | 116 | `result-track:6ef6c7e6db3fdf1e2f6da45de0003aef813c0d4031c5287791d3ee2caa0110c6` |
| 8 | `lemma` | [IsCompact.mem_uniformity_of_prod](../../../../GeneralTopology/HeineCantorNamespacedPublic.lean/declarations/iscompact-mem-uniformity-of-prod.md) | 126 | `result-track:07bc8391ed2d8904c0f5838dc0dc15f10a2be56e11ae238d0d0dfa8570eb2af6` |
| 9 | `theorem` | [CompactSpace.uniformEquicontinuous_of_equicontinuous](../../../../GeneralTopology/HeineCantorNamespacedPublic.lean/declarations/compactspace-uniformequicontinuous-of-equicontinuous.md) | 154 | `result-track:98a0f30de3c2771d1b524e4cb1e938e60f61e290055d9981343b0a20f90fe3a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=605c72fae07f568fcb8b7a05eed151294b4a05cc4874ec1cac704153e46c7c29 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variant9efeaa72a9bc126d571c4bbbd8ca4fa36938458e3f0dec47e94a0f8d1c58df71.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variant9efeaa72a9bc126d571c4bbbd8ca4fa36938458e3f0dec47e94a0f8d1c58df71.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
