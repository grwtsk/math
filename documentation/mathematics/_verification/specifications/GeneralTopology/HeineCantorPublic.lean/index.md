# Verification target: Heine Cantor Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52d90e44852c4b95b9d0f36b17ea523013cf2768",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantbfb79da59c3164cc81af57221eaeb6c9abd25bb635e97ee810f2a1bac58f36c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HeineCantorPublic.lean/index.md) · [Full source](../../../../GeneralTopology/HeineCantorPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52d90e44852c4b95b9d0f36b17ea523013cf2768`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantbfb79da59c3164cc81af57221eaeb6c9abd25bb635e97ee810f2a1bac58f36c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantbfb79da59c3164cc81af57221eaeb6c9abd25bb635e97ee810f2a1bac58f36c0.lean.json)

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
| 1 | `theorem` | [CompactSpace.uniformContinuous_of_continuous](../../../../GeneralTopology/HeineCantorPublic.lean/declarations/compactspace-uniformcontinuous-of-continuous.md) | 40 | `result-track:53f2aa6019ff97b557853b2eda12e48eee6433ee8e64155b9184fff337b3d1be` |
| 2 | `theorem` | [IsCompact.uniformContinuousOn_of_continuous](../../../../GeneralTopology/HeineCantorPublic.lean/declarations/iscompact-uniformcontinuouson-of-continuous.md) | 49 | `result-track:1ca7e8049a55efa6fde74babd88c153953db666fa5f42da41d6faa5a09bf12c4` |
| 3 | `theorem` | [IsCompact.uniformContinuousAt_of_continuousAt](../../../../GeneralTopology/HeineCantorPublic.lean/declarations/iscompact-uniformcontinuousat-of-continuousat.md) | 60 | `result-track:c7cffdd6856720ba1f4130f64e385ac5fbda196f4a537dc868997112ece057c1` |
| 4 | `theorem` | [Continuous.uniformContinuous_of_tendsto_cocompact](../../../../GeneralTopology/HeineCantorPublic.lean/declarations/continuous-uniformcontinuous-of-tendsto-cocompact.md) | 74 | `result-track:2329d6d2728e8a6e9e69ac8f257d6e5c75d1917ffe5801aab764968facdd102a` |
| 5 | `theorem` | [HasCompactMulSupport.uniformContinuous_of_continuous](../../../../GeneralTopology/HeineCantorPublic.lean/declarations/hascompactmulsupport-uniformcontinuous-of-continuous.md) | 91 | `result-track:15857965cc8f14eec201f636640ea092787bd65858381ac63dbeeeec927976db` |
| 6 | `theorem` | [ContinuousOn.tendstoUniformly](../../../../GeneralTopology/HeineCantorPublic.lean/declarations/continuouson-tendstouniformly.md) | 97 | `result-track:dcbbd8f035b30a113bfcc689a20be9549ee23ebde11c40e4f5f32f442c54ccf1` |
| 7 | `theorem` | [Continuous.tendstoUniformly](../../../../GeneralTopology/HeineCantorPublic.lean/declarations/continuous-tendstouniformly.md) | 108 | `result-track:ce7338cd352fc7a0a21f60d2135cb99bb53ef6703bb7356312ec363056b9507f` |
| 8 | `lemma` | [IsCompact.mem_uniformity_of_prod](../../../../GeneralTopology/HeineCantorPublic.lean/declarations/iscompact-mem-uniformity-of-prod.md) | 118 | `result-track:72d70ad9ba330b7e0d4f5bd4ae9668e8a14363d305f8dd492a9ae5a79bbae443` |
| 9 | `theorem` | [CompactSpace.uniformEquicontinuous_of_equicontinuous](../../../../GeneralTopology/HeineCantorPublic.lean/declarations/compactspace-uniformequicontinuous-of-equicontinuous.md) | 146 | `result-track:a65272e643170f4176f3b1939f1ea97a4621ab3cf66af00eb001fa851668f453` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22f0488296196371125f96188bd093ce138c5e3741e0e26abd804da5ec45f932 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantbfb79da59c3164cc81af57221eaeb6c9abd25bb635e97ee810f2a1bac58f36c0.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantbfb79da59c3164cc81af57221eaeb6c9abd25bb635e97ee810f2a1bac58f36c0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
