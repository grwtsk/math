# Verification target: Serialization Canonical Index Serializer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f41a4a7f9450f32b285299efc9c7e70ffb8a2d97",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Serialization/Variant38ef97426a7032da8ced0962f9400efc99602c43c339b07c1698cbd12bc155a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SerializationCanonicalIndexSerializer.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SerializationCanonicalIndexSerializer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f41a4a7f9450f32b285299efc9c7e70ffb8a2d97`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Serialization/Variant38ef97426a7032da8ced0962f9400efc99602c43c339b07c1698cbd12bc155a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Serialization/Variant38ef97426a7032da8ced0962f9400efc99602c43c339b07c1698cbd12bc155a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.Index.Query` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CanonicalIndexSerializer](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SerializationCanonicalIndexSerializer.lean/declarations/canonicalindexserializer.md) | 18 | `declaration-track:c87da43e31db34500232d034d2b504003df4864f8a0c2c1bc86d9839155a2da3` |
| 2 | `theorem` | [CanonicalIndexSerializer.encode_deterministic](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SerializationCanonicalIndexSerializer.lean/declarations/canonicalindexserializer-encode-deterministic.md) | 27 | `result-track:cf914c3b2d61fecd3abdfc597a1848bd994241951fa022598877c1ca5c573392` |
| 3 | `structure` | [SerializedCanonicalIndex](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SerializationCanonicalIndexSerializer.lean/declarations/serializedcanonicalindex.md) | 39 | `declaration-track:a89658a24eff93a023940e9b82432a0ed26b258ac143f1190356b7c5dac8a344` |
| 4 | `theorem` | [SerializedCanonicalIndex.representation_chain](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SerializationCanonicalIndexSerializer.lean/declarations/serializedcanonicalindex-representation-chain.md) | 52 | `result-track:610c3b31da23285a00fac8c5ac8059cf9bc549aee90a798f3b92492b28d7e84f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a494dc3263ca7e1870b33e491853c48b9462e60c03ff24236507ab08b33c620 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Serialization/Variant38ef97426a7032da8ced0962f9400efc99602c43c339b07c1698cbd12bc155a8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Serialization/Variant38ef97426a7032da8ced0962f9400efc99602c43c339b07c1698cbd12bc155a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
