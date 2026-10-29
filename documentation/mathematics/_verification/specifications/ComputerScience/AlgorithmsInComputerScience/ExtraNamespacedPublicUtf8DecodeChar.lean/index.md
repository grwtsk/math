# Verification target: Extra Namespaced Public Utf8 Decode Char

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbef81a10bc862671ba672f47aa11d2fbf4407fd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extra/Variant1d4d8cf9c56f85b674939dc49dd50fb059b4f279111bd2cea18bf267c595d1c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtraNamespacedPublicUtf8DecodeChar.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtraNamespacedPublicUtf8DecodeChar.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbef81a10bc862671ba672f47aa11d2fbf4407fd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extra/Variant1d4d8cf9c56f85b674939dc49dd50fb059b4f279111bd2cea18bf267c595d1c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extra/Variant1d4d8cf9c56f85b674939dc49dd50fb059b4f279111bd2cea18bf267c595d1c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Search` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.String.Termination` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.String.Length` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [utf8DecodeChar?](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtraNamespacedPublicUtf8DecodeChar.lean/declarations/utf8decodechar.md) | 29 | `declaration-track:ef5ad7727ecf2307b46746e15ddb9cdf95c30a4055c92304c11c7bb10cd5956b` |
| 2 | `abbrev` | [validateUTF8](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtraNamespacedPublicUtf8DecodeChar.lean/declarations/validateutf8.md) | 36 | `declaration-track:802695c2e1269bfe0539993dfecd6aec31e2935789013594a7d41251799d6eb7` |
| 3 | `def` | [findLeadingSpacesSize](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtraNamespacedPublicUtf8DecodeChar.lean/declarations/findleadingspacessize.md) | 39 | `declaration-track:83ba92bc1d22fc63f16968478ce16fc7f94e7bb018581e53b095ecf3a063bf59` |
| 4 | `def` | [removeNumLeadingSpaces](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtraNamespacedPublicUtf8DecodeChar.lean/declarations/removenumleadingspaces.md) | 58 | `declaration-track:907753171f357fe520d7cee5ff67e85ffba192cc3eec3c16c4fc81c11de6e0bc` |
| 5 | `def` | [removeLeadingSpaces](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtraNamespacedPublicUtf8DecodeChar.lean/declarations/removeleadingspaces.md) | 93 | `declaration-track:d94231d14e7251af10dbd3b0c167dc4b626c35838d46431fcbdb06af7826f143` |
| 6 | `def` | [crlfToLf](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtraNamespacedPublicUtf8DecodeChar.lean/declarations/crlftolf.md) | 103 | `declaration-track:f15139702d7ee737481f1d40abd7703c30f036c2222c8cdecbedfb84e11d92be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ffa11571a86e5a245c47287646ef650d6515b69752fb8f07f940217803ed7d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extra/Variant1d4d8cf9c56f85b674939dc49dd50fb059b4f279111bd2cea18bf267c595d1c7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extra/Variant1d4d8cf9c56f85b674939dc49dd50fb059b4f279111bd2cea18bf267c595d1c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
