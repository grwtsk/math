# Verification target: Data Char Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9347230bb37075a1b3cf0c0094933a79dc878de3",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant14a91ea94011bd95cf7cde2bba1a617c4b90e09d3dc333275f8d4ac6e1627b74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCharNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCharNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9347230bb37075a1b3cf0c0094933a79dc878de3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant14a91ea94011bd95cf7cde2bba1a617c4b90e09d3dc333275f8d4ac6e1627b74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant14a91ea94011bd95cf7cde2bba1a617c4b90e09d3dc333275f8d4ac6e1627b74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.UInt` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Algebra.Order` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Char.toUInt8](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCharNamespaced.lean/declarations/char-touint8.md) | 28 | `declaration-track:55d3575f9e7a2436f11dcf41986fc4c70e978908d15225e017bffbf5b3fb0d88` |
| 2 | `theorem` | [Char.utf8Size_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCharNamespaced.lean/declarations/char-utf8size-pos.md) | 30 | `result-track:236cb720421c53a85cd9d100c3c83f3077dee326a12244600574a4f07723c015` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCharNamespaced.lean/declarations/instance.md) | 38 | `declaration-track:3cb49f4a31d3ed6435f9a67163993bd621088afacfd695e0e778720526ce24af` |
| 4 | `theorem` | [Char.ofNat_toNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataCharNamespaced.lean/declarations/char-ofnat-tonat.md) | 49 | `result-track:db05f42c73e01530dbbb7be1fc3f8c788cfd087328a3bb1af8beda4da162c83d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=abdb6b5780e3279a21f6b026ee3c62876c85b62e21b59eea4a8ec5651fc76731 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant14a91ea94011bd95cf7cde2bba1a617c4b90e09d3dc333275f8d4ac6e1627b74.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant14a91ea94011bd95cf7cde2bba1a617c4b90e09d3dc333275f8d4ac6e1627b74.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
