# Verification target: Gcd Class Transport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34d4f4f159ea1e60c3206c2f8dd6850030546af6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GcdClassTransport.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GcdClassTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34d4f4f159ea1e60c3206c2f8dd6850030546af6`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusRatio` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coprimePairs](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GcdClassTransport.lean/declarations/coprimepairs.md) | 13 | `declaration-track:f09e99d0b0e00bcffb72e60d03fa0d7166304d16997dae31ca6cd5130551ac53` |
| 2 | `def` | [gcdClasses](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GcdClassTransport.lean/declarations/gcdclasses.md) | 16 | `declaration-track:5a3dbd91bf6891de5721a411880ededd90e764cd5b76f2035993755f9f5d33d8` |
| 3 | `def` | [splitPair](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GcdClassTransport.lean/declarations/splitpair.md) | 19 | `declaration-track:2640b58d1c6d62b6ac1ee83509323014c0211f675acf22786babc2bc7b6da88b` |
| 4 | `def` | [joinClass](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GcdClassTransport.lean/declarations/joinclass.md) | 22 | `declaration-track:4384d54bfe75c6e7cd83060b57d98053537211134d21688cc1a119187e3bf615` |
| 5 | `theorem` | [splitPair_mem](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GcdClassTransport.lean/declarations/splitpair-mem.md) | 25 | `result-track:cb5588cd7c6763ad25030051ce1e9fc3d25c531a4530ff1ec16922f809928115` |
| 6 | `theorem` | [joinClass_mem](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GcdClassTransport.lean/declarations/joinclass-mem.md) | 52 | `result-track:563e34f928057cb6b001b7199535f135209ca76c2feadb7edfcb9dc588839302` |
| 7 | `theorem` | [joinClass_splitPair](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GcdClassTransport.lean/declarations/joinclass-splitpair.md) | 68 | `result-track:998be2ef6c7a4dc9608ff0c8ac106e323336554dc99f7b5024b89934bbcfccba` |
| 8 | `theorem` | [splitPair_joinClass](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GcdClassTransport.lean/declarations/splitpair-joinclass.md) | 73 | `result-track:98daae3d06abda8fb886156e1ce4bef34081aa0469cb7c05910b573039fecfbd` |
| 9 | `theorem` | [sum_eq_coprime_classes](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GcdClassTransport.lean/declarations/sum-eq-coprime-classes.md) | 83 | `result-track:09aa8b118e394b242b99a489e679667d1a8361e03cd573fd3449f659c936510a` |
| 10 | `theorem` | [moebius_weighted_sum_eq_coprime_classes](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GcdClassTransport.lean/declarations/moebius-weighted-sum-eq-coprime-classes.md) | 99 | `result-track:9fb225468c4740764c5974d740d98d36b8a3178dad7fc1dd868877b36b5baaea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d482ebd0a19951a73572208360657f27e7c4b9e82a3d8d7e0036fe1584402b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
