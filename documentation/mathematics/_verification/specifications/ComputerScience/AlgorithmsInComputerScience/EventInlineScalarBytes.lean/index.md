# Verification target: Event Inline Scalar Bytes

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d6fd280155f85c2def06d89a883c3910a829bae",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Event/Variant4b865406f5240b7a4bc6d5b095f68c72edda353ef1d824e320755ecd398e5808.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/EventInlineScalarBytes.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/EventInlineScalarBytes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d6fd280155f85c2def06d89a883c3910a829bae`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Event/Variant4b865406f5240b7a4bc6d5b095f68c72edda353ef1d824e320755ecd398e5808.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Event/Variant4b865406f5240b7a4bc6d5b095f68c72edda353ef1d824e320755ecd398e5808.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inlineScalarBytes](../../../../../ComputerScience/AlgorithmsInComputerScience/EventInlineScalarBytes.lean/declarations/inlinescalarbytes.md) | 15 | `declaration-track:ec042803f232ff6ea3641ee188d67e11f1db73e6dd3d53e8723f6106d2dc98fe` |
| 2 | `structure` | [EventEmitter](../../../../../ComputerScience/AlgorithmsInComputerScience/EventInlineScalarBytes.lean/declarations/eventemitter.md) | 17 | `declaration-track:e31ac4c6a548d1f8453230a8a881429c3a6c884457bf9abb2e5acc42553c1a09` |
| 3 | `def` | [EventEmitter.create](../../../../../ComputerScience/AlgorithmsInComputerScience/EventInlineScalarBytes.lean/declarations/eventemitter-create.md) | 20 | `declaration-track:ac2f2699e26ef5c4cde384aa27722470fef22361380b9b630e507fe2a243cb00` |
| 4 | `def` | [EventEmitter.fresh](../../../../../ComputerScience/AlgorithmsInComputerScience/EventInlineScalarBytes.lean/declarations/eventemitter-fresh.md) | 23 | `declaration-track:7c67a2ecdbfa0750bcbffe9da811b8d8fb9748fdb574ea97dd72c57025c4d5ac` |
| 5 | `def` | [EventEmitter.emit](../../../../../ComputerScience/AlgorithmsInComputerScience/EventInlineScalarBytes.lean/declarations/eventemitter-emit.md) | 28 | `declaration-track:1e8a227ff2c515bb5726395fe6b94c3682bf4fef30fc439707d373a4bc1e86de` |
| 6 | `def` | [charChunks](../../../../../ComputerScience/AlgorithmsInComputerScience/EventInlineScalarBytes.lean/declarations/charchunks.md) | 31 | `declaration-track:c260a1c59af3f6964c7c2b85386b8a246b6780c28874735724fae2976d16cb9b` |
| 7 | `def` | [EventEmitter.scalarField](../../../../../ComputerScience/AlgorithmsInComputerScience/EventInlineScalarBytes.lean/declarations/eventemitter-scalarfield.md) | 37 | `declaration-track:8760bbdcb1431d2328689292a4c6f4728f36f42e3e54feb06dd6e60c4427f057` |
| 8 | `def` | [childField](../../../../../ComputerScience/AlgorithmsInComputerScience/EventInlineScalarBytes.lean/declarations/childfield.md) | 59 | `declaration-track:3c25afd53e385b2f4d2154ba14282218aea11fe2ffaccf2f620fa680edff0335` |
| 9 | `def` | [EventEmitter.node](../../../../../ComputerScience/AlgorithmsInComputerScience/EventInlineScalarBytes.lean/declarations/eventemitter-node.md) | 65 | `declaration-track:bce0d163ead2a8c8792efff3756f3abcb95c29ae8334b5bdf6a8944da678ed1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef6afc4ab7c6197b0bcf4cc8c61f1dfd963d577a34eb8f2b7e4ccf67082ae72a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Event/Variant4b865406f5240b7a4bc6d5b095f68c72edda353ef1d824e320755ecd398e5808.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Event/Variant4b865406f5240b7a4bc6d5b095f68c72edda353ef1d824e320755ecd398e5808.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
