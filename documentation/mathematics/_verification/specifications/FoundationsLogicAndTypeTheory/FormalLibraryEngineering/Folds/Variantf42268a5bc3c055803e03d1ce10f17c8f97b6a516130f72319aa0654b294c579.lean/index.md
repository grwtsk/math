# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Folds.Variantf42268a5bc3c055803e03d1ce10f17c8f97b6a516130f72319aa0654b294c579

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e23a6264858745dbc3124ff4a04d979bb370b32f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantf42268a5bc3c055803e03d1ce10f17c8f97b6a516130f72319aa0654b294c579.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantf42268a5bc3c055803e03d1ce10f17c8f97b6a516130f72319aa0654b294c579.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantf42268a5bc3c055803e03d1ce10f17c8f97b6a516130f72319aa0654b294c579.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e23a6264858745dbc3124ff4a04d979bb370b32f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantf42268a5bc3c055803e03d1ce10f17c8f97b6a516130f72319aa0654b294c579.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantf42268a5bc3c055803e03d1ce10f17c8f97b6a516130f72319aa0654b294c579.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.BitVec.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Fin.Iterate` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iunfoldr](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantf42268a5bc3c055803e03d1ce10f17c8f97b6a516130f72319aa0654b294c579.lean/declarations/iunfoldr--a935053c91c46726a71fdfa7.md) | 41 | `declaration-track:a935053c91c46726a71fdfa736bfcd01a4c96713a1176732abaed537ad9f3c82` |
| 2 | `theorem` | [iunfoldr.fst_eq](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantf42268a5bc3c055803e03d1ce10f17c8f97b6a516130f72319aa0654b294c579.lean/declarations/iunfoldr-fst-eq--b159e198ec7db1854f43ebed.md) | 45 | `result-track:b159e198ec7db1854f43ebeda80dccb835d4172905a1be07f213980cbd554b27` |
| 3 | `theorem` | [iunfoldr.eq_test](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantf42268a5bc3c055803e03d1ce10f17c8f97b6a516130f72319aa0654b294c579.lean/declarations/iunfoldr-eq-test--7bae5129f1894812f8e6f27e.md) | 58 | `result-track:7bae5129f1894812f8e6f27ea4f17e9941d8c80038b3078dee7872c3e9e25287` |
| 4 | `theorem` | [iunfoldr_getLsbD'](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantf42268a5bc3c055803e03d1ce10f17c8f97b6a516130f72319aa0654b294c579.lean/declarations/iunfoldr-getlsbd--b0bd63c87f2553b93be49963.md) | 70 | `result-track:b0bd63c87f2553b93be49963813198fd1fd9c92bab81a85dac4323081a2a14de` |
| 5 | `theorem` | [iunfoldr_getLsbD](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantf42268a5bc3c055803e03d1ce10f17c8f97b6a516130f72319aa0654b294c579.lean/declarations/iunfoldr-getlsbd--11e813300d4dc1b7a5872544.md) | 110 | `result-track:11e813300d4dc1b7a587254448819ef15b7e305db9dfae20a6f275cde080adde` |
| 6 | `theorem` | [iunfoldr_replace](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantf42268a5bc3c055803e03d1ce10f17c8f97b6a516130f72319aa0654b294c579.lean/declarations/iunfoldr-replace--f1312539ca488fb599e672e1.md) | 123 | `result-track:f1312539ca488fb599e672e16f5ad8ef9c2bf465c1b9c4b11bf995ce75a6a16e` |
| 7 | `theorem` | [iunfoldr_replace_snd](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantf42268a5bc3c055803e03d1ce10f17c8f97b6a516130f72319aa0654b294c579.lean/declarations/iunfoldr-replace-snd--0f3aa70353575e256571ec84.md) | 130 | `result-track:0f3aa70353575e256571ec845148d836d5226c42a7b17bfd819bf7f71ed7ccf6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d6c93275cd6c7b28407d467f2d6980f2e06a22464097461a2a24efeea6e595f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantf42268a5bc3c055803e03d1ce10f17c8f97b6a516130f72319aa0654b294c579.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantf42268a5bc3c055803e03d1ce10f17c8f97b6a516130f72319aa0654b294c579.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
