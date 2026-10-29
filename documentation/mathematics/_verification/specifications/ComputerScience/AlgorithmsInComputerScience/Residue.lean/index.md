# Verification target: Residue

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32515887159628b952183f779576a97826929bfe",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f526573696475652e6c65616e/Variantd43bf95969f6f4be2af81f4af7bcab5d078dbee6edff34235e6f2d98e51962cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/Residue.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/Residue.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32515887159628b952183f779576a97826929bfe`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f526573696475652e6c65616e/Variantd43bf95969f6f4be2af81f4af7bcab5d078dbee6edff34235e6f2d98e51962cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f526573696475652e6c65616e/Variantd43bf95969f6f4be2af81f4af7bcab5d078dbee6edff34235e6f2d98e51962cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit0.Bit1.M4b65726e656c2f5461726765742e6c65616e` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ResidueKind](../../../../../ComputerScience/AlgorithmsInComputerScience/Residue.lean/declarations/residuekind.md) | 12 | `declaration-track:7ba0a0bb34a52d2e42ca494b0348110a4f483d694b09babf5d5e32bf812c5b8a` |
| 2 | `structure` | [Residue](../../../../../ComputerScience/AlgorithmsInComputerScience/Residue.lean/declarations/residue.md) | 37 | `declaration-track:c86f44299affcac83c507486cf73d40a1a46c616ac81bb6e3fb6deca58d00ee4` |
| 3 | `structure` | [AtomLedger](../../../../../ComputerScience/AlgorithmsInComputerScience/Residue.lean/declarations/atomledger.md) | 45 | `declaration-track:c32a718dcc31e4df68f29552480af9be9d0e3e3532e58749ee2ff0049d6b4d41` |
| 4 | `structure` | [ResidueFor](../../../../../ComputerScience/AlgorithmsInComputerScience/Residue.lean/declarations/residuefor.md) | 50 | `declaration-track:4eef8ba808308f67359109e38719dd689eece1a87db7bef889636f522c39152c` |
| 5 | `def` | [residues](../../../../../ComputerScience/AlgorithmsInComputerScience/Residue.lean/declarations/residues.md) | 57 | `declaration-track:036b5a02ee6ad8659a7b19fb497b3abb2327e2a1224d0cbf9fb140ad1d44d7d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bbe699a497736a421ca20afb1639c1dd6f14d436bd76a007935eca32b2de02b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f526573696475652e6c65616e/Variantd43bf95969f6f4be2af81f4af7bcab5d078dbee6edff34235e6f2d98e51962cf.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f526573696475652e6c65616e/Variantd43bf95969f6f4be2af81f4af7bcab5d078dbee6edff34235e6f2d98e51962cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
