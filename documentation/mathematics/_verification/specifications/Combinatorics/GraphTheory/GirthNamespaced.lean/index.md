# Verification target: Girth Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17bf81f2fde48aaed622fb8091017ae976de9fbd",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant094f5a596770d3f5fa3297329657fd01ae57ce3cefa1b21994a0f5c37596ff52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/GirthNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/GirthNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17bf81f2fde48aaed622fb8091017ae976de9fbd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant094f5a596770d3f5fa3297329657fd01ae57ce3cefa1b21994a0f5c37596ff52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant094f5a596770d3f5fa3297329657fd01ae57ce3cefa1b21994a0f5c37596ff52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Acyclic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENat.Lattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [egirth](../../../../../Combinatorics/GraphTheory/GirthNamespaced.lean/declarations/egirth.md) | 40 | `declaration-track:34388b449ac23be62bf96f3f86834d90680650481edb24e7cd3efbd2188e6ca8` |
| 2 | `lemma` | [le_egirth](../../../../../Combinatorics/GraphTheory/GirthNamespaced.lean/declarations/le-egirth.md) | 44 | `result-track:103203403bb43f535ffa47f9b8bfbf1025bac2b93c524e5408b66a955474dae6` |
| 3 | `lemma` | [egirth_eq_top](../../../../../Combinatorics/GraphTheory/GirthNamespaced.lean/declarations/egirth-eq-top.md) | 48 | `result-track:0f3832b0fcef8246cb28357644fbae7ce196ff72177b853ff12ef4a95f0126c7` |
| 4 | `lemma` | [egirth_anti](../../../../../Combinatorics/GraphTheory/GirthNamespaced.lean/declarations/egirth-anti.md) | 52 | `result-track:ae687bf32bd07d50e5ceef599b3399658cee72dd2934c950752493c238c6515b` |
| 5 | `lemma` | [exists_egirth_eq_length](../../../../../Combinatorics/GraphTheory/GirthNamespaced.lean/declarations/exists-egirth-eq-length.md) | 55 | `result-track:c3cdb51bce026fcc01bf4f3302fea43d57f8ffbfdae4f03603c872432a7bfe28` |
| 6 | `lemma` | [three_le_egirth](../../../../../Combinatorics/GraphTheory/GirthNamespaced.lean/declarations/three-le-egirth.md) | 64 | `result-track:09e830b766340565760c7484eddc0a98e04577afdf8b69f9b9a6bfd6a58936b4` |
| 7 | `lemma` | [egirth_bot](../../../../../Combinatorics/GraphTheory/GirthNamespaced.lean/declarations/egirth-bot.md) | 73 | `result-track:170000daf43fe2524ab62e87f877d247cde7dd1e40edc27cd02af140294ca1ab` |
| 8 | `def` | [girth](../../../../../Combinatorics/GraphTheory/GirthNamespaced.lean/declarations/girth.md) | 84 | `declaration-track:eb568edfa96432cf19baa02a9fa8cec5f71e254cb2400d946357f6a30a599a80` |
| 9 | `lemma` | [three_le_girth](../../../../../Combinatorics/GraphTheory/GirthNamespaced.lean/declarations/three-le-girth.md) | 87 | `result-track:8836a688cd04b085ed1a7253e1489192516f7d68af0d32e1379103744e3ed537` |
| 10 | `lemma` | [girth_eq_zero](../../../../../Combinatorics/GraphTheory/GirthNamespaced.lean/declarations/girth-eq-zero.md) | 90 | `result-track:df941407c902a1180d1a374230a885dac48be383e469bfd00896ace26b8e7611` |
| 11 | `lemma` | [girth_anti](../../../../../Combinatorics/GraphTheory/GirthNamespaced.lean/declarations/girth-anti.md) | 95 | `result-track:d0f780b7f723e404b8648aa3798510f0269f94bdb25fd2326e737a2ddf54cd9b` |
| 12 | `lemma` | [exists_girth_eq_length](../../../../../Combinatorics/GraphTheory/GirthNamespaced.lean/declarations/exists-girth-eq-length.md) | 98 | `result-track:6348a879e23d693c8b2804a418669b4968273c56f57aec34aff109daacf4ed93` |
| 13 | `lemma` | [girth_bot](../../../../../Combinatorics/GraphTheory/GirthNamespaced.lean/declarations/girth-bot.md) | 105 | `result-track:14430d6c482d53fe7428c0714c0577175707b648b59eca37635363961218e0be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b3411fa0e5cef1faef3b9de44151e7ec0cfbcb38894bf23852babc5acf23f054 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant094f5a596770d3f5fa3297329657fd01ae57ce3cefa1b21994a0f5c37596ff52.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant094f5a596770d3f5fa3297329657fd01ae57ce3cefa1b21994a0f5c37596ff52.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
