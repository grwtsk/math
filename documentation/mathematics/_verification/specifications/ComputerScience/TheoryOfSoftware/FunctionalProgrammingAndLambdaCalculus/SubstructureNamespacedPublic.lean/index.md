# Verification target: Substructure Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b652dc6de28bbd148146b9fd2a86808eef74b957",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substructure/Variant377faa7868a0c3ce77bf6296d9ef8b266a95bf1c3cffd215e11b627d8e3efeb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SubstructureNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SubstructureNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b652dc6de28bbd148146b9fd2a86808eef74b957`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substructure/Variant377faa7868a0c3ce77bf6296d9ef8b266a95bf1c3cffd215e11b627d8e3efeb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substructure/Variant377faa7868a0c3ce77bf6296d9ef8b266a95bf1c3cffd215e11b627d8e3efeb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bitblast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SubstructureNamespacedPublic.lean/declarations/bitblast.md) | 37 | `declaration-track:544611e16a979c95c7f0ba9a0578d7e4075539ff4e4ad906084a17689ea25319` |
| 2 | `theorem` | [go_le_size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SubstructureNamespacedPublic.lean/declarations/go-le-size.md) | 121 | `result-track:9dca8d77536725996d98756c0798f7aa4e189d49d578c7c0ea468c0bee82f1ff` |
| 3 | `theorem` | [go_lt_size_of_lt_aig_size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SubstructureNamespacedPublic.lean/declarations/go-lt-size-of-lt-aig-size.md) | 125 | `result-track:85e47002c097dfad0c7b1d92d3c2f063c2070362290cb660e87e70268a7b21de` |
| 4 | `theorem` | [go_decl_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SubstructureNamespacedPublic.lean/declarations/go-decl-eq.md) | 132 | `result-track:e3acfcb64a0a50f4170739a618e09d1adc06ed8e9f5ef8b54d8105a086e73b36` |
| 5 | `theorem` | [go_isPrefix_aig](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SubstructureNamespacedPublic.lean/declarations/go-isprefix-aig.md) | 192 | `result-track:2a8611a36180200564e5e726942153b7a152c456c6515b6bd906768d0786262e` |
| 6 | `theorem` | [go_denote_mem_prefix](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SubstructureNamespacedPublic.lean/declarations/go-denote-mem-prefix.md) | 199 | `result-track:fec134fff598cef0f0a1f8bda9a812b77232ac0d0fc2300f41a88d5cbd46e0a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a3da32570422d2b64173bfef7d4137497b5f1855f222376f3918f2e6defb0b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substructure/Variant377faa7868a0c3ce77bf6296d9ef8b266a95bf1c3cffd215e11b627d8e3efeb8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substructure/Variant377faa7868a0c3ce77bf6296d9ef8b266a95bf1c3cffd215e11b627d8e3efeb8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
