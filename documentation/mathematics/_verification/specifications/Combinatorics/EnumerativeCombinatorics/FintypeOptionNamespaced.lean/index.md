# Verification target: Fintype Option Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5a92c8965571a98806ea62535ff5af4b2974fb5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variant1d41b0a5a93bd6b8094e445d5f19f5c9831a9519cac1e2c524516471e3576a6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeOptionNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeOptionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5a92c8965571a98806ea62535ff5af4b2974fb5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variant1d41b0a5a93bd6b8094e445d5f19f5c9831a9519cac1e2c524516471e3576a6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Option/Variant1d41b0a5a93bd6b8094e445d5f19f5c9831a9519cac1e2c524516471e3576a6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.EquivFin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Option` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeOptionNamespaced.lean/declarations/instance.md) | 33 | `declaration-track:5767516dc9f4d50c306ec36c42eae9a353b662458d79d0079fcc3043c84ad2d4` |
| 2 | `theorem` | [univ_option](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeOptionNamespaced.lean/declarations/univ-option.md) | 36 | `result-track:4c58dfd79a614c972f82fa35adfe2240b5e95a5d535d6de30d7f890b85d26e1a` |
| 3 | `theorem` | [Fintype.card_option](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeOptionNamespaced.lean/declarations/fintype-card-option.md) | 40 | `result-track:698e2af24ea21d8452c104e90236340cf9f49db84df83608a8246593e83176de` |
| 4 | `def` | [fintypeOfOption](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeOptionNamespaced.lean/declarations/fintypeofoption.md) | 45 | `declaration-track:5c53841309a655d7ae5d365b3075f9a9b1c8dc853bcc86012c679312f644b3ea` |
| 5 | `def` | [fintypeOfOptionEquiv](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeOptionNamespaced.lean/declarations/fintypeofoptionequiv.md) | 50 | `declaration-track:4f4d5fba590dcfe2a5e18c81e38d90b6f2b90f1ab41ad168b6945193cfd7a904` |
| 6 | `def` | [truncRecEmptyOption](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeOptionNamespaced.lean/declarations/truncrecemptyoption.md) | 58 | `declaration-track:8c6fbbb3b68fd9b71234479e4a4c972999c2270a4d5051bea4930a480ec2db26` |
| 7 | `theorem` | [induction_empty_option](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeOptionNamespaced.lean/declarations/induction-empty-option.md) | 88 | `result-track:4cb9bb6277e9dff95c55bf0c249a48defc9f9c0baae3ac81d297bbd949efcb38` |
| 8 | `theorem` | [Finite.induction_empty_option](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeOptionNamespaced.lean/declarations/finite-induction-empty-option.md) | 107 | `result-track:658eb25f24b1f8d30d5b75154210b7f2af86f46e75de79858d8035cec0f9371a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f27bad92bdafee78a55b90afcdb1c1ff6cddecf0d83ccf91acbbca980485007 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variant1d41b0a5a93bd6b8094e445d5f19f5c9831a9519cac1e2c524516471e3576a6d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Option/Variant1d41b0a5a93bd6b8094e445d5f19f5c9831a9519cac1e2c524516471e3576a6d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
