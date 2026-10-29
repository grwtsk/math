# Verification target: Group Loci Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5bbf164e59ab857e865db2da09ec4db2344f3c4",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupLoci/Variant5eb316734a52f963d310def5b23edd8384f6aede6d107ef009650a4c455b523a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupLociNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupLociNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5bbf164e59ab857e865db2da09ec4db2344f3c4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupLoci/Variant5eb316734a52f963d310def5b23edd8384f6aede6d107ef009650a4c455b523a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupLoci/Variant5eb316734a52f963d310def5b23edd8384f6aede6d107ef009650a4c455b523a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Compression.LatticeLoci` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [InvertibleLocusRewrite](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupLociNamespaced.lean/declarations/invertiblelocusrewrite.md) | 22 | `declaration-track:2a404859bed19bbf5e390b274ab356f121f8125566e11e6d26817bebf6a106ff` |
| 2 | `def` | [SameLocusOrbit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupLociNamespaced.lean/declarations/samelocusorbit.md) | 34 | `declaration-track:b6b6a4352b59e73f7783b3e68ee0f630f3242048632ffff166028793ea393862` |
| 3 | `theorem` | [sameLocusOrbit_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupLociNamespaced.lean/declarations/samelocusorbit-refl.md) | 38 | `result-track:43509d39af3722b3e3bcd9694d153bebcf653378518989f207ff11e5dc704b2d` |
| 4 | `theorem` | [sameLocusOrbit_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupLociNamespaced.lean/declarations/samelocusorbit-symm.md) | 43 | `result-track:f7caeeba8b0f47f62b223ea71885c9d74155e018715b1b039224c97db7f9b297` |
| 5 | `theorem` | [sameLocusOrbit_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupLociNamespaced.lean/declarations/samelocusorbit-trans.md) | 50 | `result-track:cdc83f46b5d69fdd3a3733488061a415f8a66dba3af1cde706362f295acefbb4` |
| 6 | `inductive` | [LocusMoveKind](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupLociNamespaced.lean/declarations/locusmovekind.md) | 59 | `declaration-track:459fb7c0b3cd3ebce6de2b0bdddc3d6b3ada0e5ec58c61b57fd7e7abc39a70b8` |
| 7 | `inductive` | [LocusMoveClass](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupLociNamespaced.lean/declarations/locusmoveclass.md) | 75 | `declaration-track:c8e1ac1f2d8889b29dab37482f00dea753cd9220b6e3cf9e34097c0ef033433e` |
| 8 | `def` | [classifyLocusMove](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupLociNamespaced.lean/declarations/classifylocusmove.md) | 81 | `declaration-track:be16403f06c1b1ae85f9de41a3aa3d1478e0ff11444fdfb30a36fb4786d72434` |
| 9 | `theorem` | [identity_locus_move_invertible](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupLociNamespaced.lean/declarations/identity-locus-move-invertible.md) | 96 | `result-track:5d8cf842b91dcf0c2736d715801ea0e41f6f6b345c03c253416d32431c0975bb` |
| 10 | `theorem` | [braid_locus_move_invertible](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupLociNamespaced.lean/declarations/braid-locus-move-invertible.md) | 99 | `result-track:903129e5a0bbc2f76a91eb9f59bd856ae84836177d2476ce476935e0dca6c331` |
| 11 | `theorem` | [quotient_locus_move_reducing](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupLociNamespaced.lean/declarations/quotient-locus-move-reducing.md) | 102 | `result-track:83dcbc54d5792692494e4cf70c7353740ac554ba09ddc2bdb085d4d22183ca48` |
| 12 | `theorem` | [canonicalize_locus_move_reducing](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupLociNamespaced.lean/declarations/canonicalize-locus-move-reducing.md) | 105 | `result-track:4c32f390b59d597bb4e72cf3d7807222fe426af730f077682ef8b0e009e4ceed` |
| 13 | `theorem` | [normalize_locus_move_reducing](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupLociNamespaced.lean/declarations/normalize-locus-move-reducing.md) | 108 | `result-track:926b68eb2881e73449317b088b5ee08f07b0c5744c5617283c5af42f8fbe919d` |
| 14 | `theorem` | [macroPlaceholder_locus_move_residue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupLociNamespaced.lean/declarations/macroplaceholder-locus-move-residue.md) | 111 | `result-track:39b3c576f616da2df9f6a8aa12d8df52bce32bad45fd9707424329f6faa8bf43` |
| 15 | `structure` | [LocusAction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupLociNamespaced.lean/declarations/locusaction.md) | 121 | `declaration-track:7569de406ccbebd59436fe82979f02497803f411d374bef681ebd0be24d628ed` |
| 16 | `def` | [groupLocus_refl_action](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupLociNamespaced.lean/declarations/grouplocus-refl-action.md) | 141 | `declaration-track:b41a017bc1f00754ec96e1812927c8a428f654cac558faf361b44172aae308ae` |
| 17 | `theorem` | [preserves_semantics_and_lookup_symm_for_loci](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupLociNamespaced.lean/declarations/preserves-semantics-and-lookup-symm-for-loci.md) | 162 | `result-track:98286acc5c51c2d0d45614184c1b1eca7def28eb6fe5ebe16fd74bf82f69b327` |
| 18 | `theorem` | [invertible_locus_rewrite_preserves_lookup](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupLociNamespaced.lean/declarations/invertible-locus-rewrite-preserves-lookup.md) | 169 | `result-track:cb3c8884353cdb68a58cb560cb67d2387205b17ee3cb28be369af7ac68246039` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c16c056b5bfff4ac08f53b1b03c489619eb8c3c6fc74c260c0387aa0a4d51781 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupLoci/Variant5eb316734a52f963d310def5b23edd8384f6aede6d107ef009650a4c455b523a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupLoci/Variant5eb316734a52f963d310def5b23edd8384f6aede6d107ef009650a4c455b523a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
