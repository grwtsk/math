# Verification target: Element Name

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e92b6964afd4c046356e98c8d973eb28a2492fd9",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ElementName/Variant01fd8dd5f43b46f7763bd249a68105189bfad751e6a02f809ee6e4c4dcfef397.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ElementName.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ElementName.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e92b6964afd4c046356e98c8d973eb28a2492fd9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ElementName/Variant01fd8dd5f43b46f7763bd249a68105189bfad751e6a02f809ee6e4c4dcfef397.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ElementName/Variant01fd8dd5f43b46f7763bd249a68105189bfad751e6a02f809ee6e4c4dcfef397.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Oracle.Naming.Kind` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.KindElements.NameRole` — import line 3; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.KindElements.NamingLanguage` — import line 4; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.NameElements.ReservedHeads` — import line 5; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.NameElements.LegalStem` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ElementName](../../../../../ComputerScience/AlgorithmsInComputerScience/ElementName.lean/declarations/elementname.md) | 12 | `declaration-track:87f442257dbb79681f2842cc6fb4df8fee0e9e172f1c4ec080a6e4cc311f787f` |
| 2 | `def` | [ElementName.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/ElementName.lean/declarations/elementname-valid.md) | 23 | `declaration-track:67b1d010feea00638b3262df444dcb74c97261408b57da8fe1a8b828e68609ea` |
| 3 | `def` | [ElementName.canonicalCoordinates](../../../../../ComputerScience/AlgorithmsInComputerScience/ElementName.lean/declarations/elementname-canonicalcoordinates.md) | 28 | `declaration-track:314ef308bdc2284e3e602a9d2aaac1fd3c12d888d1f3c813ce3d3b6c8367c8b5` |
| 4 | `theorem` | [canonical_coordinates_preserve_name_identity](../../../../../ComputerScience/AlgorithmsInComputerScience/ElementName.lean/declarations/canonical-coordinates-preserve-name-identity.md) | 32 | `result-track:9a248d80c9bf5cbd609ef7fe99a12a3ef9c72ff3e31b6407590075061f008d18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=79db77b50cfb7cdf868e827386117c90849c181b27c7c86c7a5e7feb62f01f00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ElementName/Variant01fd8dd5f43b46f7763bd249a68105189bfad751e6a02f809ee6e4c4dcfef397.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ElementName/Variant01fd8dd5f43b46f7763bd249a68105189bfad751e6a02f809ee6e4c4dcfef397.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
