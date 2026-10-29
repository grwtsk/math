# Verification target: Fixed Program Interpreter Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15108fba50eb1f256fd4dc73b3580ebb0ad42162",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variantf34998ae050b2893fee5a1461de7e05e65e33b0dfc3217a7263d1d43f2fdb75c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15108fba50eb1f256fd4dc73b3580ebb0ad42162`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variantf34998ae050b2893fee5a1461de7e05e65e33b0dfc3217a7263d1d43f2fdb75c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variantf34998ae050b2893fee5a1461de7e05e65e33b0dfc3217a7263d1d43f2fdb75c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.BooleanSpace` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [State](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/declarations/state.md) | 31 | `declaration-track:5e96f19f81f9d143e644630f4a47869f78fac411f12ac2994cfca1654cb90d46` |
| 2 | `def` | [zeroState](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/declarations/zerostate.md) | 34 | `declaration-track:86f1df3ea7ea2054ae7b726b27287a0c09f6a2e6bd7538d58c2f516c38d36d51` |
| 3 | `def` | [programLengthBits](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/declarations/programlengthbits.md) | 37 | `declaration-track:616d959b9574c5d29e2be7495187860169552e2e8cbae3113349dcf56fdcfd22` |
| 4 | `def` | [maxProgramBytes](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/declarations/maxprogrambytes.md) | 40 | `declaration-track:29ef691e2486a05be6340d6bb86e2d2ab99624a862f7a046493f1869ae235621` |
| 5 | `def` | [maxStackDepth](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/declarations/maxstackdepth.md) | 43 | `declaration-track:55f8384e8cb4a902e483c0487db92da6fb6b4a9092320444fba90536f10bd888` |
| 6 | `abbrev` | [IndexBitPosition](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/declarations/indexbitposition.md) | 46 | `declaration-track:8e3033da9278f85a7b6fa6235e872282502f90c01a286d8ab7db8a6bc4df9714` |
| 7 | `inductive` | [Operation](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/declarations/operation.md) | 52 | `declaration-track:98fa6a24e4855734355fae3efc9d79cd097e57abcaa60dc2e984afb3b1e72f07` |
| 8 | `def` | [nextStackDepth](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/declarations/nextstackdepth.md) | 70 | `declaration-track:bdba6cff5259c78f6ddeb655c5503be4547ad27b7eafe7977e7b3dfc57259c30` |
| 9 | `def` | [executeOperation](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/declarations/executeoperation.md) | 99 | `declaration-track:6b1435c08abe755a095aca6f84dee386745f60482830b5c533c18b52571fe028` |
| 10 | `def` | [evaluateOperations](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/declarations/evaluateoperations.md) | 125 | `declaration-track:bb955ce0141367e9e1568994ace745926c66165ebc3262612f7469461d6977bb` |
| 11 | `def` | [validateOperationsFrom](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/declarations/validateoperationsfrom.md) | 144 | `declaration-track:8eb26f49289c6ebbe4859ab73afc92870acafb7035465d572c0e7541b3116d94` |
| 12 | `def` | [validateOperations](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/declarations/validateoperations.md) | 156 | `declaration-track:8d8ce7842ee0698900858cb468d201722a2b2c05284abd2af9ac4579c2ddf45b` |
| 13 | `structure` | [DecodedProgram](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/declarations/decodedprogram.md) | 163 | `declaration-track:82305080bf05b43ca2bb797083fcaa5a0c50037b31725ac1d6d69639ae6b3b6f` |
| 14 | `structure` | [CheckedDecoder](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/declarations/checkeddecoder.md) | 177 | `declaration-track:e05da269c0ac9df3ab771d63100dcebf22b0b018aee40e274e3547518d205946` |
| 15 | `def` | [DecodedProgram.evaluate](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/declarations/decodedprogram-evaluate.md) | 181 | `declaration-track:0f36e9546063c37c5e387a4451f56763687ac514470a1aab7aa237d029c48a02` |
| 16 | `theorem` | [DecodedProgram.evaluateOperations_eq_some_evaluate](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/declarations/decodedprogram-evaluateoperations-eq-some-evaluate.md) | 188 | `result-track:10bc5a6c2d04d2f65f1009351b514de51ecfcdad78ad2c50fd44032bb01e474e` |
| 17 | `def` | [interpretChecked](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/declarations/interpretchecked.md) | 198 | `declaration-track:09431298a0ab8c95850eebbd0a98d5df507b887fc721ce8177e8c246dabfe060` |
| 18 | `def` | [interpretTotal](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/declarations/interprettotal.md) | 208 | `declaration-track:3185c07ca5f207a87251a5a3b6cdae801b2562de47ff6accacdfeddb7956cdde` |
| 19 | `theorem` | [interpretTotal_eq_checked_getD](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/declarations/interprettotal-eq-checked-getd.md) | 214 | `result-track:226b0e3594418280e2cdaf6997f0e9cd561869be69658baa898486d7dc280725` |
| 20 | `theorem` | [interpretTotal_of_decode_some](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/declarations/interprettotal-of-decode-some.md) | 222 | `result-track:b55b2b566c14a7a445ef6d97622f87d04f3e80f6a12243e4b71224ad82f7e2af` |
| 21 | `theorem` | [interpretChecked_of_decode_none](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/declarations/interpretchecked-of-decode-none.md) | 231 | `result-track:2832264e35c7fa1c797368889141dee354c93f1cc9e1da340ae7c899aafd3ebd` |
| 22 | `theorem` | [interpretTotal_of_decode_none](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/declarations/interprettotal-of-decode-none.md) | 239 | `result-track:9012f44b6c0344dba5a60a5113835d6a8fdef4217857f92be6c835c97dc11363` |
| 23 | `theorem` | [interpretTotal_apply_of_decode_none](../../../../../ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/declarations/interprettotal-apply-of-decode-none.md) | 247 | `result-track:b6f009ebc540082b8020c289d575be002b5c8d126444ac8f8738034f0bd1d591` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e118bb237fc7b5a826e271fbf025917cfa353448fa4cc253aafb4051814ddf81 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variantf34998ae050b2893fee5a1461de7e05e65e33b0dfc3217a7263d1d43f2fdb75c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variantf34998ae050b2893fee5a1461de7e05e65e33b0dfc3217a7263d1d43f2fdb75c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
