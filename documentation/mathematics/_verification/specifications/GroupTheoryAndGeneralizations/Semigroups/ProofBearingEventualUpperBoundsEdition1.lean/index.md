# Verification target: Proof Bearing Eventual Upper Bounds Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0c00c96f7f632f10073786428c9d6169c937067",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbcf5d93e7ce82dc735d3d4a636cf8fa8023cf85f1d8b05a3aa28a8934648e7ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0c00c96f7f632f10073786428c9d6169c937067`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbcf5d93e7ce82dc735d3d4a636cf8fa8023cf85f1d8b05a3aa28a8934648e7ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbcf5d93e7ce82dc735d3d4a636cf8fa8023cf85f1d8b05a3aa28a8934648e7ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.List.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ext` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundCertificate](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/boundcertificate.md) | 18 | `declaration-track:e8e2a8806ff703b571d0d7fc287a509466362de8b76c2ed22e958d13bee71a0f` |
| 2 | `constant` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/constant.md) | 22 | `declaration-track:5a38ef0e1a49254e8da5f7e3ca54061e1b0864dd76d750640af8f86a39d16f60` |
| 3 | `theorem` | [ext](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/ext.md) | 32 | `result-track:251dbcc1462b42a66d461de3ccf94af1e7505f828b5b7f764e83f0bcd9c5bf98` |
| 4 | `def` | [unit](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/unit.md) | 39 | `declaration-track:43470ce4aac96cd27c96277466b82b58d14d836e2feb0691f67ee28d56453468` |
| 5 | `def` | [compose](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/compose.md) | 42 | `declaration-track:f128a404d3ca6c1f7448a7836aa91f312797ea6cac42e04ee3ac613b5fcd21a5` |
| 6 | `constant` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/constant-source-edition-2.md) | 44 | `declaration-track:607d45f29940071a65b09a69b936bfad3cba64dfec112010cafb8ac465c41e3b` |
| 7 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/instance.md) | 52 | `declaration-track:fc731e1b98a83b56da1d8e85ef85d559ec0eb2cfaa86c87f6229a8ace8b3202b` |
| 8 | `theorem` | [compose_function](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/compose-function.md) | 80 | `result-track:a5608c38909e9dffd3f7ee6e2f95c988f09d160525d9a43557cf69ee33952480` |
| 9 | `theorem` | [compose_constant](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/compose-constant.md) | 82 | `result-track:e2c4bf76ddbb908238c1b7aea26c9e6da3121c246a15c5695d65bb3edb3d2afa` |
| 10 | `theorem` | [compose_radius](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/compose-radius.md) | 84 | `result-track:dc11975ab7aadd558d2b56b7501ddc007e41598c5ba7a7b1b6455248a9775798` |
| 11 | `theorem` | [unit_function](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/unit-function.md) | 86 | `result-track:47c38f69f538ea5992d5a507037a27429e24b2f309d79f4d7e45c2cf252a14e6` |
| 12 | `theorem` | [unit_constant](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/unit-constant.md) | 87 | `result-track:db28431d94e69ca9f8fc6fedd7cf2220a8706dfc3c2f63c962d510ec54e96fff` |
| 13 | `theorem` | [unit_radius](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/unit-radius.md) | 88 | `result-track:71ad12e2edfbc1e8152b16bacb675227412c48bc8c4787de3d85aac5ef7116c8` |
| 14 | `def` | [constantAdd](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/constantadd.md) | 91 | `declaration-track:0db785bc1ea318b878062dfaeb76afb9d2ceba137529913df079384ac0f707e4` |
| 15 | `theorem` | [prod_function](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/prod-function.md) | 94 | `result-track:e45aa2f4c5cf3ee5d6fbe997644a3b257264b33b7e716dbc7dd123b9912be254` |
| 16 | `theorem` | [prod_constant](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/prod-constant.md) | 100 | `result-track:8e27a9c3cac10810077c0186902a868f16e6b7cc58e280885870b01b123c885f` |
| 17 | `theorem` | [prod_radius](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/prod-radius.md) | 107 | `result-track:fedef05c41aa78253ff00e8316dab8e927b50455e707c8c562ce5b0d5ac92e88` |
| 18 | `theorem` | [prod_bound](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/prod-bound.md) | 115 | `result-track:7524b38326a3f3f7e992cdaca877ce731b0fdb696c5838dcef6685251c996b60` |
| 19 | `theorem` | [flatten_prod](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/flatten-prod.md) | 120 | `result-track:ba98838fa803e1339cb50e5b5ee7ca7aaeb182ab3ee92b3b51ceeeb92a2520c5` |
| 20 | `def` | [radiusOnly](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/radiusonly.md) | 127 | `declaration-track:2125b8d5fe581a35e9568ee9209e66a65cd037fe0aaaf733f1b6386f617e838e` |
| 21 | `theorem` | [radiusOnly_idempotent](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/radiusonly-idempotent.md) | 130 | `result-track:9e1392ce7417dca38e954361744303c75dfe3e5c351df65f095f2df7fe1267c2` |
| 22 | `def` | [canceled](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/canceled.md) | 139 | `declaration-track:7114e8cd2b41f3926020c4c5dd66118315eb0e3e269f841bea698320e7cbe664` |
| 23 | `constant` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/constant-source-edition-3.md) | 141 | `declaration-track:c13ea3f67076de192aeed7412a35a46f8d07220a1b0bc3d97b179a251edd2663` |
| 24 | `theorem` | [canceled_eq_unit](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/canceled-eq-unit.md) | 147 | `result-track:229ff4aaf669a918bf42b9e36cd7fd35754838f5b0084f68eef7e133fedcac34` |
| 25 | `theorem` | [unbounded_positive_member](../../../../../GroupTheoryAndGeneralizations/Semigroups/ProofBearingEventualUpperBoundsEdition1.lean/declarations/unbounded-positive-member.md) | 156 | `result-track:4e903e3d35b8a0aa9ac871ca63c380765714046afad4f3d62a935faf2d05bd70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc29a95b099682b92b7d078ce0dd239b12d087636347904a9f1d4cf53c52bfdc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbcf5d93e7ce82dc735d3d4a636cf8fa8023cf85f1d8b05a3aa28a8934648e7ad.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbcf5d93e7ce82dc735d3d4a636cf8fa8023cf85f1d8b05a3aa28a8934648e7ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
