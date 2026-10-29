# Verification target: Coequalizer Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62391c392d412b4c7f300189855d72d552a49856",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coequalizer/Variant1eef40a9983cf51b28026c35504ea7cc7ccfdf5118ad430d9584fd55cbb54de2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoequalizerNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoequalizerNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62391c392d412b4c7f300189855d72d552a49856`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coequalizer/Variant1eef40a9983cf51b28026c35504ea7cc7ccfdf5118ad430d9584fd55cbb54de2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Coequalizer/Variant1eef40a9983cf51b28026c35504ea7cc7ccfdf5118ad430d9584fd55cbb54de2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Coequalizer.Rel](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoequalizerNamespaced.lean/declarations/coequalizer-rel.md) | 31 | `declaration-track:bb294f2e006792b431776e2a17e91cecbf95fe0812f1d6f1b08770232af92da9` |
| 2 | `def` | [Coequalizer](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoequalizerNamespaced.lean/declarations/coequalizer.md) | 37 | `declaration-track:2d2f1705d527da3b33bf3edefc254466111e84d9a4b19bdf12ece7c69f6ded17` |
| 3 | `def` | [mk](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoequalizerNamespaced.lean/declarations/mk.md) | 45 | `declaration-track:8f855785570686d9f5dd4bf2cd785a1b4960f91bf64aff0f191f765f839312a4` |
| 4 | `lemma` | [condition](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoequalizerNamespaced.lean/declarations/condition.md) | 48 | `result-track:0513ac6128474bb64d65f717d0059c253f148172e30dfe9a51758419d6da9ccf` |
| 5 | `lemma` | [mk_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoequalizerNamespaced.lean/declarations/mk-surjective.md) | 51 | `result-track:ccb4bcaf1198d65a7f0c44cb4fc3c68f6e337c002a5f12f14b4f6591180fcbab` |
| 6 | `def` | [desc](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoequalizerNamespaced.lean/declarations/desc.md) | 55 | `declaration-track:86182816e9c45b16de6de1628bb82cb94f12490e7cbb637f7f0874287bc9a075` |
| 7 | `lemma` | [desc_mk](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoequalizerNamespaced.lean/declarations/desc-mk.md) | 58 | `result-track:1638fa4197f44b7a67775ce800084518f8470c8cbb919355755f123c4b366000` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e284500e0379689a77a381f9b1b88f465b646a8dc35cd07ea4c68f0da611b14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coequalizer/Variant1eef40a9983cf51b28026c35504ea7cc7ccfdf5118ad430d9584fd55cbb54de2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Coequalizer/Variant1eef40a9983cf51b28026c35504ea7cc7ccfdf5118ad430d9584fd55cbb54de2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
