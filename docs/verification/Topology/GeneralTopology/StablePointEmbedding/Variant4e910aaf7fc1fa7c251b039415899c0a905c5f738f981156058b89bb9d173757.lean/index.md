# Verification target: GRWTSK.Topology.GeneralTopology.StablePointEmbedding.Variant4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "497d4211aee5e389744cbfc1893ab7d6ff5c9db9",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/StablePointEmbedding/Variant4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/StablePointEmbedding/Variant4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/StablePointEmbedding/Variant4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `497d4211aee5e389744cbfc1893ab7d6ff5c9db9`.

Source path: `GRWTSK/Topology/GeneralTopology/StablePointEmbedding/Variant4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/StablePointEmbedding/Variant4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Discovery.OpenElement` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Prismatic.LoopClosure` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Hausdorff` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StableProbeFamily](../../../../../mathematics/Topology/GeneralTopology/StablePointEmbedding/Variant4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757.lean/declarations/stableprobefamily--a71d2fdff3a2965653787c21.md) | 21 | `declaration-track:a71d2fdff3a2965653787c217ba4416ba673de874594645709c6177eadd02afe` |
| 2 | `def` | [profile](../../../../../mathematics/Topology/GeneralTopology/StablePointEmbedding/Variant4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757.lean/declarations/profile--401e0a28b2d26225c5fd22d0.md) | 37 | `declaration-track:401e0a28b2d26225c5fd22d0bec3c8a7f702611dbc827fea375cef72dedcb3d6` |
| 3 | `structure` | [Rigid](../../../../../mathematics/Topology/GeneralTopology/StablePointEmbedding/Variant4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757.lean/declarations/rigid--0c7882cd033ba77e70d2e9b2.md) | 44 | `declaration-track:0c7882cd033ba77e70d2e9b2681145291cb2e2f711a32d6319924a0d4dd5f511` |
| 4 | `theorem` | [Rigid.isEmbedding](../../../../../mathematics/Topology/GeneralTopology/StablePointEmbedding/Variant4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757.lean/declarations/rigid-isembedding--32cdb73d40ba369576b7577e.md) | 52 | `result-track:32cdb73d40ba369576b7577e75347d0cd551c38a4decf34ed83c790f4349fbe7` |
| 5 | `theorem` | [Rigid.injective](../../../../../mathematics/Topology/GeneralTopology/StablePointEmbedding/Variant4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757.lean/declarations/rigid-injective--70507b45762db1fe338ca087.md) | 58 | `result-track:70507b45762db1fe338ca0871b517a7d76a818d93d03fc5629a726bfbbf8f3da` |
| 6 | `def` | [CompactProbeRigidityStatement](../../../../../mathematics/Topology/GeneralTopology/StablePointEmbedding/Variant4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757.lean/declarations/compactproberigiditystatement--215444efbc3225647dfd9f48.md) | 69 | `declaration-track:215444efbc3225647dfd9f484689e2a52e613048522e760d907b31a470f3b6c6` |
| 7 | `def` | [compactProbeRigidityOpenElement](../../../../../mathematics/Topology/GeneralTopology/StablePointEmbedding/Variant4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757.lean/declarations/compactproberigidityopenelement--a7a8472391d559a412fe2da4.md) | 81 | `declaration-track:a7a8472391d559a412fe2da458e1896c747c2ae7de8fb78d361d17ee8d73d1fb` |
| 8 | `theorem` | [compactProbeRigidity](../../../../../mathematics/Topology/GeneralTopology/StablePointEmbedding/Variant4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757.lean/declarations/compactproberigidity--e4dd56024e5417f8abc0228d.md) | 103 | `result-track:e4dd56024e5417f8abc0228d0707f2c735d14fe9326abfc4ba724aec50bbfd58` |
| 9 | `def` | [compactProbeRigidityTheoremElement](../../../../../mathematics/Topology/GeneralTopology/StablePointEmbedding/Variant4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757.lean/declarations/compactproberigiditytheoremelement--03c4452b6bf1172b293fcd52.md) | 116 | `declaration-track:03c4452b6bf1172b293fcd52692f8a7e638269a728b98fce406eba4d8dc10030` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
