# Verification target: Cast Cast Choose Eq Pochhammer Div

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67b349663aa72354cd3171f78fad8c70ca414a93",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantacd02b9395280ea65b5bfe9e2255d2e7641f8155cd6bca3e98277f2da5875069.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/CastCastChooseEqPochhammerDiv.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/CastCastChooseEqPochhammerDiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67b349663aa72354cd3171f78fad8c70ca414a93`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantacd02b9395280ea65b5bfe9e2255d2e7641f8155cd6bca3e98277f2da5875069.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantacd02b9395280ea65b5bfe9e2255d2e7641f8155cd6bca3e98277f2da5875069.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Cast` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_choose](../../../../../NumberTheory/ElementaryNumberTheory/CastCastChooseEqPochhammerDiv.lean/declarations/cast-choose.md) | 25 | `result-track:a5f4a8556eca173c3c38d5a280a6d5a3c996e82f97197be7abd173aadab2facb` |
| 2 | `theorem` | [cast_add_choose](../../../../../NumberTheory/ElementaryNumberTheory/CastCastChooseEqPochhammerDiv.lean/declarations/cast-add-choose.md) | 31 | `result-track:d368823bd1cf48f8dbe7a599ff361a1a453ce409a39d1f6f8f7a07881e39b39d` |
| 3 | `theorem` | [cast_choose_eq_pochhammer_div](../../../../../NumberTheory/ElementaryNumberTheory/CastCastChooseEqPochhammerDiv.lean/declarations/cast-choose-eq-pochhammer-div.md) | 35 | `result-track:be7ca5c16b7e33d59bdd568b97cd040159bbe66c43941bf43497b47b1d3001b2` |
| 4 | `theorem` | [cast_choose_two](../../../../../NumberTheory/ElementaryNumberTheory/CastCastChooseEqPochhammerDiv.lean/declarations/cast-choose-two.md) | 41 | `result-track:4bc08bed5eb0ab933cd4409817ac2b53a9dcf02067f1c1a8fd74c200c227ed8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d7bbc6be96f74cb42783f8ba6df941e3242db2e1ff4550efc13def5a157e8df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantacd02b9395280ea65b5bfe9e2255d2e7641f8155cd6bca3e98277f2da5875069.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Cast/Variantacd02b9395280ea65b5bfe9e2255d2e7641f8155cd6bca3e98277f2da5875069.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
