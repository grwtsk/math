# Verification target: Lemmas Lemmas Public Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e91ec2ed1b2231a87501b5ff5baf29810476113",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0f9a4b249addd32909638fb4d33ec1f9fdec0a1de5578da567ba43496760be93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasPublicEdition3.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasPublicEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e91ec2ed1b2231a87501b5ff5baf29810476113`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0f9a4b249addd32909638fb4d33ec1f9fdec0a1de5578da567ba43496760be93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0f9a4b249addd32909638fb4d33ec1f9fdec0a1de5578da567ba43496760be93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [idxOf?_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasPublicEdition3.lean/declarations/idxof-tolist.md) | 18 | `result-track:f73f56cf0d9b2707baaeae8f81b675f38d62cf7667905440dd6cd73574968edf` |
| 2 | `theorem` | [toList_erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasPublicEdition3.lean/declarations/tolist-erase.md) | 25 | `result-track:5c3ccf70bde9e18420cd4a395ccae726b4f7cfac6032f59a86e5d2b2fe133047` |
| 3 | `theorem` | [size_eraseIdxIfInBounds](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasPublicEdition3.lean/declarations/size-eraseidxifinbounds.md) | 30 | `result-track:4da0d65461854e99983509483bf33a4e446f0a79d3a08eb595f74a6107d0e9b2` |
| 4 | `theorem` | [toList_drop](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasPublicEdition3.lean/declarations/tolist-drop.md) | 34 | `result-track:5a0aa3365fb732542767899944b6f846e28aa0bc9e4454feb71805670c430891` |
| 5 | `theorem` | [extract_empty_of_start_eq_stop](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasPublicEdition3.lean/declarations/extract-empty-of-start-eq-stop.md) | 48 | `result-track:e54bb48767a742da6cf4aa26da35b01fe1ea4d2e9ea58c5b2745c83f8ee78ee1` |
| 6 | `theorem` | [extract_append_of_stop_le_size_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasPublicEdition3.lean/declarations/extract-append-of-stop-le-size-left.md) | 51 | `result-track:8fac4e8159437b03fea5f362a069b1bb62237bc648fd20734169a02c8f9df4dc` |
| 7 | `theorem` | [extract_append_of_size_left_le_start](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasPublicEdition3.lean/declarations/extract-append-of-size-left-le-start.md) | 54 | `result-track:852bfbdb2d3dcd7b20010aa303cf6824690879e5238d34522acd90c5846ed61d` |
| 8 | `theorem` | [extract_eq_of_size_le_stop](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasPublicEdition3.lean/declarations/extract-eq-of-size-le-stop.md) | 58 | `result-track:994e806a676e6fa5cb6bd038ffecfad4fd83afa92fb851a4153a7d07c83f0585` |
| 9 | `theorem` | [toList_swapIfInBounds](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasPublicEdition3.lean/declarations/tolist-swapifinbounds.md) | 62 | `result-track:0caa44145a02d52b167401f4ed9b0477400e1fabc5e4115044a586378cc5175b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce10e1b2b1bbcd1ac649256e1d96e62dc221c4b28e1b988f131f5faf9a49ab28 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0f9a4b249addd32909638fb4d33ec1f9fdec0a1de5578da567ba43496760be93.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0f9a4b249addd32909638fb4d33ec1f9fdec0a1de5578da567ba43496760be93.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
