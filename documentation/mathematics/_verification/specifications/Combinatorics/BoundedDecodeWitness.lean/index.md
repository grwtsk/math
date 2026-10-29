# Verification target: Bounded Decode Witness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1393cef73a3d2d766b7fe755fbf73b119bee8989",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CodingTheory/CanonicalBitDocumentRelations/Variante2bb401b38826c5f/BoundedDecodeWitness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/BoundedDecodeWitness.lean/index.md) · [Full source](../../../../Combinatorics/BoundedDecodeWitness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1393cef73a3d2d766b7fe755fbf73b119bee8989`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CodingTheory/CanonicalBitDocumentRelations/Variante2bb401b38826c5f/BoundedDecodeWitness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CodingTheory/CanonicalBitDocumentRelations/Variante2bb401b38826c5f/BoundedDecodeWitness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [Syntax And Framing](../../../../Combinatorics/SyntaxAndFraming.lean/index.md) — import line 20; pinned internal source present.
- `BitMatrix.Codec.Source` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RepresentableLength](../../../../Combinatorics/BoundedDecodeWitness.lean/declarations/representablelength.md) | 36 | `declaration-track:fcf5e9c31a512bbfe3358b6569431ea6fca3ed0d9f23a21f5b2a027e3f42565e` |
| 2 | `instance` | [representableLengthDecidable](../../../../Combinatorics/BoundedDecodeWitness.lean/declarations/representablelengthdecidable.md) | 39 | `declaration-track:3b735b108de9ae06a678794e1ee47bb08eeed3a96d53ae465f6506ac9274cfb7` |
| 3 | `def` | [EncodeDecodeRelation](../../../../Combinatorics/BoundedDecodeWitness.lean/declarations/encodedecoderelation.md) | 47 | `declaration-track:0d2a92875fa389427c46bb95554b8f6aa95481b564e110c1f03907823237bcb7` |
| 4 | `structure` | [DecodeWitness](../../../../Combinatorics/BoundedDecodeWitness.lean/declarations/decodewitness.md) | 59 | `declaration-track:bac0337ef46083d13f5dbe06a15758d7e891b1ee0dcfe8f990eb43aa4679616f` |
| 5 | `theorem` | [decodeWitness_declared_length_matches](../../../../Combinatorics/BoundedDecodeWitness.lean/declarations/decodewitness-declared-length-matches.md) | 66 | `result-track:7e2b1811f15aa8f6668ae842efea912020659ad0c65501be383ffa652bb96392` |
| 6 | `theorem` | [decodeWitness_length_representable](../../../../Combinatorics/BoundedDecodeWitness.lean/declarations/decodewitness-length-representable.md) | 78 | `result-track:340c0e2f0ce1863a031c3420ee143d799fe4397010bc703114022168bcea00cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=40d3b5bbc7f2390b78708727a009ba92697dd18b24ad0ed35276296d788a82a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CodingTheory/CanonicalBitDocumentRelations/Variante2bb401b38826c5f/BoundedDecodeWitness.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/CodingTheory/CanonicalBitDocumentRelations/Variante2bb401b38826c5f/BoundedDecodeWitness.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
