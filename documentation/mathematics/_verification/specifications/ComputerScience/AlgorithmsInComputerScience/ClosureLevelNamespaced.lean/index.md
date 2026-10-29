# Verification target: Closure Level Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9483bb0e1b103eb9557642de7449db90d18ba27",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ClosureLevel/Variant5fefc1a7a0f68e77f1a6c40444fabc9de1806ee14e515e0fc9f1e39cf90ba6f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ClosureLevelNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ClosureLevelNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9483bb0e1b103eb9557642de7449db90d18ba27`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ClosureLevel/Variant5fefc1a7a0f68e77f1a6c40444fabc9de1806ee14e515e0fc9f1e39cf90ba6f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ClosureLevel/Variant5fefc1a7a0f68e77f1a6c40444fabc9de1806ee14e515e0fc9f1e39cf90ba6f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Ecosystem.VerificationObligation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ClosureLevel](../../../../../ComputerScience/AlgorithmsInComputerScience/ClosureLevelNamespaced.lean/declarations/closurelevel.md) | 21 | `declaration-track:efed6788bd5042977e6069827ec9372ac533758feeabd474858611507522f32c` |
| 2 | `inductive` | [ClosureStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/ClosureLevelNamespaced.lean/declarations/closurestatus.md) | 34 | `declaration-track:f58da16fd50663b20cd6d231ab3171bc3ae5822e96c9e5bc7bd8f2322e616f39` |
| 3 | `structure` | [ClosureRecord](../../../../../ComputerScience/AlgorithmsInComputerScience/ClosureLevelNamespaced.lean/declarations/closurerecord.md) | 46 | `declaration-track:4947f0f034f8486ce256263ece127a0adc07a9fdc0bd070410807e6b60ed78e8` |
| 4 | `structure` | [ClosureSemantics](../../../../../ComputerScience/AlgorithmsInComputerScience/ClosureLevelNamespaced.lean/declarations/closuresemantics.md) | 56 | `declaration-track:3ca76274e0d5c12c93e2cc620eeb202eb009ebfb023f09b301a2d5048851c822` |
| 5 | `structure` | [ClosureLedger](../../../../../ComputerScience/AlgorithmsInComputerScience/ClosureLevelNamespaced.lean/declarations/closureledger.md) | 66 | `declaration-track:f13ef8059c8ffb23899f81724883122cbd5fa59d12db64f5806ba7bdd456ab39` |
| 6 | `def` | [SemanticallyTotal](../../../../../ComputerScience/AlgorithmsInComputerScience/ClosureLevelNamespaced.lean/declarations/semanticallytotal.md) | 89 | `declaration-track:7fc95f90c5fa48e01cb412ce43492adf45d86cad008684d89b87292e3b1e9a71` |
| 7 | `theorem` | [record_exists](../../../../../ComputerScience/AlgorithmsInComputerScience/ClosureLevelNamespaced.lean/declarations/record-exists.md) | 93 | `result-track:5863cf91b4fcd25c7f28168495fd90de8acc3240eda61e7c22d4a99122c01de5` |
| 8 | `theorem` | [incomplete_has_obligation](../../../../../ComputerScience/AlgorithmsInComputerScience/ClosureLevelNamespaced.lean/declarations/incomplete-has-obligation.md) | 100 | `result-track:d75ed1215a85ecfb72b5afcc010b3a792b86e782285a0b7f2bc718c9982161a2` |
| 9 | `theorem` | [semanticallyTotal_of_all_complete](../../../../../ComputerScience/AlgorithmsInComputerScience/ClosureLevelNamespaced.lean/declarations/semanticallytotal-of-all-complete.md) | 109 | `result-track:2092178412005689d91e62c3afc7facc7ce6a7b2b85ec6237f98540ec0910f78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=369d264b6002c80de49e4e2c50fa1803e04579a9795154d6f1b8ddc20ca65f6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ClosureLevel/Variant5fefc1a7a0f68e77f1a6c40444fabc9de1806ee14e515e0fc9f1e39cf90ba6f9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ClosureLevel/Variant5fefc1a7a0f68e77f1a6c40444fabc9de1806ee14e515e0fc9f1e39cf90ba6f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
