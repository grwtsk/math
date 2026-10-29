# Verification target: Syntax And Framing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1547ba0e7a69766a5e9b2883307149781971a0fb",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CodingTheory/CanonicalBitDocumentRelations/Variante2bb401b38826c5f/SyntaxAndFraming.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/SyntaxAndFraming.lean/index.md) · [Full source](../../../../Combinatorics/SyntaxAndFraming.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1547ba0e7a69766a5e9b2883307149781971a0fb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CodingTheory/CanonicalBitDocumentRelations/Variante2bb401b38826c5f/SyntaxAndFraming.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CodingTheory/CanonicalBitDocumentRelations/Variante2bb401b38826c5f/SyntaxAndFraming.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.Source` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Utf8Payload](../../../../Combinatorics/SyntaxAndFraming.lean/declarations/utf8payload.md) | 33 | `declaration-track:655c806baafb46d3dbaf89961ea4bd3e6b01ad2b62048e3047466b67be91127e` |
| 2 | `def` | [lengthPrefixDigits](../../../../Combinatorics/SyntaxAndFraming.lean/declarations/lengthprefixdigits.md) | 39 | `declaration-track:7196f37808b9835f40813339498c5470dae5fd7358eaf53155e35d367535c1fb` |
| 3 | `def` | [byteDigitsMSB](../../../../Combinatorics/SyntaxAndFraming.lean/declarations/bytedigitsmsb.md) | 43 | `declaration-track:6d2828dbc1dd2c0c4137f151ed0167a06b986295c4c1c00c1ca066aad2a137e0` |
| 4 | `def` | [payloadDigitsMSB](../../../../Combinatorics/SyntaxAndFraming.lean/declarations/payloaddigitsmsb.md) | 48 | `declaration-track:d0da5ef8368d9f48db0e5678396954c748870c087c6568bf89162c92db885991` |
| 5 | `structure` | [BitDocument](../../../../Combinatorics/SyntaxAndFraming.lean/declarations/bitdocument.md) | 52 | `declaration-track:b3ca682fca412741924fb344ba9e1912d21f666086f0f32786db47ca08ff8be4` |
| 6 | `def` | [digitByte](../../../../Combinatorics/SyntaxAndFraming.lean/declarations/digitbyte.md) | 57 | `declaration-track:a255d0b5b1e579c145ed2ada3774f7337932c43714fc8e35f70def83258e4729` |
| 7 | `def` | [BitDocument.serialize](../../../../Combinatorics/SyntaxAndFraming.lean/declarations/bitdocument-serialize.md) | 62 | `declaration-track:941b2a2d685a2a1e0d9336d37c4e172750a59bcfdc49a8fdb4611dcff7329521` |
| 8 | `def` | [encodeBitDocument](../../../../Combinatorics/SyntaxAndFraming.lean/declarations/encodebitdocument.md) | 66 | `declaration-track:3a4f84db1a84288ad1e748bb85237f36bea9df583fe1d680b20f226a02d8fb73` |
| 9 | `theorem` | [lengthPrefixDigits_length](../../../../Combinatorics/SyntaxAndFraming.lean/declarations/lengthprefixdigits-length.md) | 70 | `result-track:cfbb6dd4667a78b382964a53819b2b7f5bad20f93a1ae38eed71c3b876ccb034` |
| 10 | `theorem` | [byteDigitsMSB_length](../../../../Combinatorics/SyntaxAndFraming.lean/declarations/bytedigitsmsb-length.md) | 75 | `result-track:3d42165a762f1f22449d37de94efe70c14bc5e71829f4723245f753b1a027130` |
| 11 | `theorem` | [serialize_final_lf](../../../../Combinatorics/SyntaxAndFraming.lean/declarations/serialize-final-lf.md) | 80 | `result-track:df18f00529e05eae23bb95bdf3d7627cfcd9cfaa28028fd4cea858680660dee4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8158abab9f8057525f0a85031b4892fb3346eae58e2082faeff7caf900e100d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CodingTheory/CanonicalBitDocumentRelations/Variante2bb401b38826c5f/SyntaxAndFraming.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/CodingTheory/CanonicalBitDocumentRelations/Variante2bb401b38826c5f/SyntaxAndFraming.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
