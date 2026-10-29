# Verification target: Rat Init Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e6b7d9c8deea82b401734731da838f40e1b73d2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Varianta1991496740e945b569dca2b2f4838298db27c79bd205f61bd418f9308c5fb67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/RatInitNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/RatInitNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e6b7d9c8deea82b401734731da838f40e1b73d2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Varianta1991496740e945b569dca2b2f4838298db27c79bd205f61bd418f9308c5fb67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Varianta1991496740e945b569dca2b2f4838298db27c79bd205f61bd418f9308c5fb67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Notation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lemma` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 13; external provider; requires a separately pinned dependency.
- `Batteries.Classes.RatCast` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NNRat](../../../../../NumberTheory/ElementaryNumberTheory/RatInitNamespacedSourceEdition2.lean/declarations/nnrat.md) | 30 | `declaration-track:3de017585555b30792bd5eddd5f11d5b0d99e845e8afb853b0cd20b580bde844` |
| 2 | `class` | [NNRatCast](../../../../../NumberTheory/ElementaryNumberTheory/RatInitNamespacedSourceEdition2.lean/declarations/nnratcast.md) | 45 | `declaration-track:4d3d463842829dd768de99c19494105fefc4a572359df1e6287a81de57befeea` |
| 3 | `instance` | [NNRat.instNNRatCast](../../../../../NumberTheory/ElementaryNumberTheory/RatInitNamespacedSourceEdition2.lean/declarations/nnrat-instnnratcast.md) | 51 | `declaration-track:8f9e76140d7527fc63335ebaf071f65fc34e02478efcfb677e9e3a910f69c41a` |
| 4 | `def` | [NNRat.cast](../../../../../NumberTheory/ElementaryNumberTheory/RatInitNamespacedSourceEdition2.lean/declarations/nnrat-cast.md) | 58 | `declaration-track:ed669aa71b0afe58baa2f4d96152bd33bba65e93eb6ead2b72c48d8774dd74aa` |
| 5 | `instance` | [NNRatCast.toCoeTail](../../../../../NumberTheory/ElementaryNumberTheory/RatInitNamespacedSourceEdition2.lean/declarations/nnratcast-tocoetail.md) | 61 | `declaration-track:5a5db8922c0d6b1e2e75e03eae56ed977d8f4fca22e9a4047e0f4630ce16f612` |
| 6 | `instance` | [NNRatCast.toCoeHTCT](../../../../../NumberTheory/ElementaryNumberTheory/RatInitNamespacedSourceEdition2.lean/declarations/nnratcast-tocoehtct.md) | 64 | `declaration-track:9182519f311fd965b075604f37a10f892b30bba60d249b792d75cbf2e3b6c2d2` |
| 7 | `instance` | [Rat.instNNRatCast](../../../../../NumberTheory/ElementaryNumberTheory/RatInitNamespacedSourceEdition2.lean/declarations/rat-instnnratcast.md) | 66 | `declaration-track:c59646e2780a104d044367201de916e69b149efe01c30460411b3991a34708dd` |
| 8 | `def` | [num](../../../../../NumberTheory/ElementaryNumberTheory/RatInitNamespacedSourceEdition2.lean/declarations/num.md) | 73 | `declaration-track:abb60ee4127efc618a23e54744a9d7c494921f6971772c8bef9d52f9f54d307d` |
| 9 | `def` | [den](../../../../../NumberTheory/ElementaryNumberTheory/RatInitNamespacedSourceEdition2.lean/declarations/den.md) | 76 | `declaration-track:cd345500870b0bafcf0fa9b82de96898d6c05711505c698d7557edfbd500dab3` |
| 10 | `lemma` | [num_mk](../../../../../NumberTheory/ElementaryNumberTheory/RatInitNamespacedSourceEdition2.lean/declarations/num-mk.md) | 78 | `result-track:885660b3482e7a2c0285e04738437c1e22e076cd58954cd026f91af1f4364c62` |
| 11 | `lemma` | [den_mk](../../../../../NumberTheory/ElementaryNumberTheory/RatInitNamespacedSourceEdition2.lean/declarations/den-mk.md) | 79 | `result-track:f27f81fe760330f9eea33f5878c60b3a5d67d8933a2f01eb7b7d9578f59b69cd` |
| 12 | `lemma` | [cast_id](../../../../../NumberTheory/ElementaryNumberTheory/RatInitNamespacedSourceEdition2.lean/declarations/cast-id-source-edition-2.md) | 81 | `result-track:1f3137c3fe6b4743e97eeca00cef4178e408a09755679e13e057c93bebb2d383` |
| 13 | `lemma` | [cast_eq_id](../../../../../NumberTheory/ElementaryNumberTheory/RatInitNamespacedSourceEdition2.lean/declarations/cast-eq-id.md) | 82 | `result-track:8c79560b6fe2c2f967fa540c876682e897954f0d4441f501be79f32090a3b653` |
| 14 | `lemma` | [cast_id](../../../../../NumberTheory/ElementaryNumberTheory/RatInitNamespacedSourceEdition2.lean/declarations/cast-id.md) | 88 | `result-track:01ffb655408a6101d22bd82c31477f5052fb097edc4d000881de92f9d025e510` |
| 15 | `lemma` | [cast_eq_id](../../../../../NumberTheory/ElementaryNumberTheory/RatInitNamespacedSourceEdition2.lean/declarations/cast-eq-id-source-edition-2.md) | 89 | `result-track:c622a8aeda87ef052bbfe67fed2d0e9c72fa743f17387e7af0b65d24f048a482` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ddfa92dd8c6f2d4286acab21fd73b435978dc073f51a29fc230e58700ac5605 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Varianta1991496740e945b569dca2b2f4838298db27c79bd205f61bd418f9308c5fb67.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Varianta1991496740e945b569dca2b2f4838298db27c79bd205f61bd418f9308c5fb67.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
