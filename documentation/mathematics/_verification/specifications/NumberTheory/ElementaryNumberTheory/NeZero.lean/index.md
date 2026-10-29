# Verification target: Ne Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3f00eb8b882090c66c16521c81d1941b2b8734e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/NeZero/Varianta35aafd3564ac4e99a3b925612498b7c1249b9d9cb0f0d8afb7b03ed49e46af5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/NeZero.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/NeZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3f00eb8b882090c66c16521c81d1941b2b8734e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/NeZero/Varianta35aafd3564ac4e99a3b925612498b7c1249b9d9cb0f0d8afb7b03ed49e46af5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/NeZero/Varianta35aafd3564ac4e99a3b925612498b7c1249b9d9cb0f0d8afb7b03ed49e46af5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Cast.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [one_le](../../../../../NumberTheory/ElementaryNumberTheory/NeZero.lean/declarations/one-le.md) | 16 | `result-track:a078dca44f22189318e9477c275e4f8c22c859022af5a8af7489b608b9fe2b5b` |
| 2 | `lemma` | [natCast_ne](../../../../../NumberTheory/ElementaryNumberTheory/NeZero.lean/declarations/natcast-ne.md) | 18 | `result-track:1e26b95d2c9a284449a5e17644f011c8e0f8b91b99d1043db8cc52713cea8ea2` |
| 3 | `lemma` | [of_neZero_natCast](../../../../../NumberTheory/ElementaryNumberTheory/NeZero.lean/declarations/of-nezero-natcast.md) | 20 | `result-track:aea7cf1f44254d096597c57a69a8db43695d7c34b20d59e80737fb991e0fda2f` |
| 4 | `lemma` | [pos_of_neZero_natCast](../../../../../NumberTheory/ElementaryNumberTheory/NeZero.lean/declarations/pos-of-nezero-natcast.md) | 23 | `result-track:7acb7db9399b4f7d7e9288ecc4ec3852e4bfa9908e4263de8f3298349aebac60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14914f06ead4f7bdbc0f5af712a1e276a6ace0d17d115d004c209d2ebd2e6246 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/NeZero/Varianta35aafd3564ac4e99a3b925612498b7c1249b9d9cb0f0d8afb7b03ed49e46af5.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/NeZero/Varianta35aafd3564ac4e99a3b925612498b7c1249b9d9cb0f0d8afb7b03ed49e46af5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
