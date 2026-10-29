# Verification target: Foreign Trace Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9635aa1c233b67ae1ddd4bef5436ed0cb444b100",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForeignTrace/Variant87218afe0b61bc8e939cd6572a923b9b77fc7e71793c7af7811c0186bed27db3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ForeignTraceNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ForeignTraceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9635aa1c233b67ae1ddd4bef5436ed0cb444b100`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForeignTrace/Variant87218afe0b61bc8e939cd6572a923b9b77fc7e71793c7af7811c0186bed27db3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForeignTrace/Variant87218afe0b61bc8e939cd6572a923b9b77fc7e71793c7af7811c0186bed27db3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.Profiles` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Producer](../../../../../ComputerScience/AlgorithmsInComputerScience/ForeignTraceNamespaced.lean/declarations/producer.md) | 41 | `declaration-track:02ad01c04dc560b8f16daf97e25a0be27299731a930c68b856fd23201dfeccf4` |
| 2 | `def` | [Producer.profile](../../../../../ComputerScience/AlgorithmsInComputerScience/ForeignTraceNamespaced.lean/declarations/producer-profile.md) | 47 | `declaration-track:89d43919ee840e8dcb0317aec1b024dc6ac3a1426d9e6d6ac96abefe5fd35ad6` |
| 3 | `structure` | [CodecTrace](../../../../../ComputerScience/AlgorithmsInComputerScience/ForeignTraceNamespaced.lean/declarations/codectrace.md) | 52 | `declaration-track:c08c28d78b1354023a09e7495aeebd1e9e3d02a15c07696a2c8cb499ea55d672` |
| 4 | `def` | [magic](../../../../../ComputerScience/AlgorithmsInComputerScience/ForeignTraceNamespaced.lean/declarations/magic.md) | 59 | `declaration-track:8a2dd14da19b9da42712cd0b10fc05dde91e672c9eb77310bbe6cab9c2cfb047` |
| 5 | `def` | [Producer.tag](../../../../../ComputerScience/AlgorithmsInComputerScience/ForeignTraceNamespaced.lean/declarations/producer-tag.md) | 62 | `declaration-track:f65f5b22094f0e10e5a946f79ce0e412c0ef61b21b562e7956c7aebdf0095998` |
| 6 | `def` | [decodeProducer](../../../../../ComputerScience/AlgorithmsInComputerScience/ForeignTraceNamespaced.lean/declarations/decodeproducer.md) | 67 | `declaration-track:2b5c8ae19ac0f694c78aecc86e34ff871e01f89216d2090fa5d29a4b960c9776` |
| 7 | `def` | [asciiChar](../../../../../ComputerScience/AlgorithmsInComputerScience/ForeignTraceNamespaced.lean/declarations/asciichar.md) | 73 | `declaration-track:ca5f07b98cd5eee76fe92b5d6b33a3c24d9ce5768e8f5c0a17fbe6ed845b81ac` |
| 8 | `def` | [decode](../../../../../ComputerScience/AlgorithmsInComputerScience/ForeignTraceNamespaced.lean/declarations/decode.md) | 78 | `declaration-track:5609602d034ec1e9cfdf1b558ada6d37937095318255943ba8ba623597970227` |
| 9 | `def` | [expected](../../../../../ComputerScience/AlgorithmsInComputerScience/ForeignTraceNamespaced.lean/declarations/expected.md) | 103 | `declaration-track:73234739e2c3a48527372cef9baaf613027cef218141b57dd9a6931085e2e7e6` |
| 10 | `def` | [lengthRepresentable](../../../../../ComputerScience/AlgorithmsInComputerScience/ForeignTraceNamespaced.lean/declarations/lengthrepresentable.md) | 107 | `declaration-track:3ceda7b56c314a51292196fb467524325bf69f31056dbba1b10e6c092a21b2da` |
| 11 | `def` | [Represents](../../../../../ComputerScience/AlgorithmsInComputerScience/ForeignTraceNamespaced.lean/declarations/represents.md) | 112 | `declaration-track:4a03fb23a7f11ce07266c21e41fa2300f0bcfb95ca8e68ec4574d33a87218330` |
| 12 | `instance` | [lengthRepresentableDecidable](../../../../../ComputerScience/AlgorithmsInComputerScience/ForeignTraceNamespaced.lean/declarations/lengthrepresentabledecidable.md) | 115 | `declaration-track:06aae02df0cb400a218eece7d1e599a757263be50d1564c26f698c717fc9c0e2` |
| 13 | `instance` | [representsDecidable](../../../../../ComputerScience/AlgorithmsInComputerScience/ForeignTraceNamespaced.lean/declarations/representsdecidable.md) | 120 | `declaration-track:c2696be9ba872536fd4e2f7401548ddfe4935edcb4b1e5854ae161f919e6648f` |
| 14 | `def` | [verify](../../../../../ComputerScience/AlgorithmsInComputerScience/ForeignTraceNamespaced.lean/declarations/verify.md) | 127 | `declaration-track:cb27855ac2a303011c2de8cd81119926668430c47cda4e31426dad63f5282ec9` |
| 15 | `def` | [AcceptedTrace](../../../../../ComputerScience/AlgorithmsInComputerScience/ForeignTraceNamespaced.lean/declarations/acceptedtrace.md) | 132 | `declaration-track:dc39ec5d3bf429d4f5057bad06170da6e49f6e26dd6c6adc13ea6591609d344b` |
| 16 | `instance` | [acceptedTraceDecidable](../../../../../ComputerScience/AlgorithmsInComputerScience/ForeignTraceNamespaced.lean/declarations/acceptedtracedecidable.md) | 137 | `declaration-track:f08241ef712ce590343a20fb9a7b0ec43631853cdd411abe7771445467b5ba9f` |
| 17 | `theorem` | [acceptedTrace_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/ForeignTraceNamespaced.lean/declarations/acceptedtrace-sound.md) | 143 | `result-track:b336cd7bac0b4835c4533a7324cba8d9ef01978f562ddd642d5931cad05348a5` |
| 18 | `theorem` | [acceptedTrace_represents](../../../../../ComputerScience/AlgorithmsInComputerScience/ForeignTraceNamespaced.lean/declarations/acceptedtrace-represents.md) | 159 | `result-track:4522b6505b7043cbd4ef6dcb09740b0d5a807053d216de471f2b317de8dbe373` |
| 19 | `theorem` | [acceptedTrace_operation_preserved](../../../../../ComputerScience/AlgorithmsInComputerScience/ForeignTraceNamespaced.lean/declarations/acceptedtrace-operation-preserved.md) | 167 | `result-track:608a4ba9396bbe20f93d8c6e55c3cd1f5e6ae282b94722d0e3a1fb1506eb4299` |
| 20 | `theorem` | [acceptedTrace_final_lf](../../../../../ComputerScience/AlgorithmsInComputerScience/ForeignTraceNamespaced.lean/declarations/acceptedtrace-final-lf.md) | 177 | `result-track:5881cee9459200ac827a8041d51f56b591d4bec2e746ba95ae9f041122fd0191` |
| 21 | `theorem` | [acceptedTrace_encodeDecodeRelation](../../../../../ComputerScience/AlgorithmsInComputerScience/ForeignTraceNamespaced.lean/declarations/acceptedtrace-encodedecoderelation.md) | 189 | `result-track:8d590aeaa5f6ce94e87864c51099e239270027de9fffad035ec582b678c26e05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=564fc2d4b9544cf2ab155e21602f0edf10fa229507c5872f05f51fcbdcef8c47 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForeignTrace/Variant87218afe0b61bc8e939cd6572a923b9b77fc7e71793c7af7811c0186bed27db3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForeignTrace/Variant87218afe0b61bc8e939cd6572a923b9b77fc7e71793c7af7811c0186bed27db3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
