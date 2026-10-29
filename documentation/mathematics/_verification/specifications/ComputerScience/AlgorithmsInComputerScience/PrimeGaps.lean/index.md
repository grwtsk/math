# Verification target: Prime Gaps

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6aa23691388ee7dd8a579a4486223531c2d6375d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f5072696d65476170732e6c65616e/Variante78a810689bffebbd56a9dd1418959be1df785bf46ae20e424bfc2cd8b86f731.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6aa23691388ee7dd8a579a4486223531c2d6375d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f5072696d65476170732e6c65616e/Variante78a810689bffebbd56a9dd1418959be1df785bf46ae20e424bfc2cd8b86f731.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f5072696d65476170732e6c65616e/Variante78a810689bffebbd56a9dd1418959be1df785bf46ae20e424bfc2cd8b86f731.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit0.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.M4b65726e656c2f436865636b65642e6c65616e` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/declarations/context.md) | 22 | `declaration-track:00461b30ae8790bc8786c8c3d4ab69be78683c21f5f6e0d289af9026ca04c27e` |
| 2 | `inductive` | [Atom](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/declarations/atom.md) | 35 | `declaration-track:2bf1a4ca5b08396410241a5b49e9cfb10c87a2b4a9647f71040d24c262cfc638` |
| 3 | `def` | [Atom.id](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/declarations/atom-id.md) | 53 | `declaration-track:e4076cb37c5ccdfb17479def19ab45da602263111b0e14d02c422efd069a783c` |
| 4 | `def` | [finalClaim](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/declarations/finalclaim.md) | 70 | `declaration-track:0eb841acfc73df6466b48c4bbe9eec170776c17598672be37587e9a97147a64f` |
| 5 | `def` | [Atom.claim](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/declarations/atom-claim.md) | 73 | `declaration-track:390901ca356e714baf42df05e2d68c96946cd51a815c249e86ce936ff8a379f9` |
| 6 | `def` | [Atom.kind](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/declarations/atom-kind.md) | 91 | `declaration-track:4656cbc91da35786e426402e366f9a6783a49decef2cfa4d0d481ac3b05405ad` |
| 7 | `def` | [Atom.blocks](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/declarations/atom-blocks.md) | 108 | `declaration-track:49e820d0a3850f94c82513480dc9db7ab07c8de77f81e50521d1d7a205c7d4c1` |
| 8 | `def` | [Atom.clearsBy](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/declarations/atom-clearsby.md) | 125 | `declaration-track:04432fb570d15b3203a55494cd89fcbecfda288517bc37ef07f40df4a3d9cba4` |
| 9 | `def` | [allAtoms](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/declarations/allatoms.md) | 142 | `declaration-track:a83a3832299e835515bada91d6a6f501950d75851ee735ae257cb2f37ba7913b` |
| 10 | `def` | [atomResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/declarations/atomresidue.md) | 160 | `declaration-track:f64bdbca60b4401cf93aa2209a23ecc421a9a20d0fd6f8f7dce6520db1a43c93` |
| 11 | `theorem` | [atomResidue_target](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/declarations/atomresidue-target.md) | 167 | `result-track:f9a694bf56629889652cb58e76fc0f1a0fc3603227484c103044bd065f49fcf8` |
| 12 | `def` | [ledger](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/declarations/ledger.md) | 171 | `declaration-track:0736257297bc551766c493751d6298dfd0394a13f04e5c1ad858b9a6e972ac8a` |
| 13 | `def` | [finalResidues](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/declarations/finalresidues.md) | 176 | `declaration-track:e3eb21a5e6d58f5f04836657df0517dfdfa91acf7aed85c17bc22aaf4f7ee895` |
| 14 | `theorem` | [finalResidues_match_allAtoms](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/declarations/finalresidues-match-allatoms.md) | 179 | `result-track:b1599cd08cc182768f68f8dd370b8a07306853615b8eeddaea7d4e3a7780084e` |
| 15 | `theorem` | [finalResidues_match_ledger](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/declarations/finalresidues-match-ledger.md) | 183 | `result-track:3c55b45d1ac641f64f8d60a7f4101eaca7210950ad41b81d444ce980e18c6062` |
| 16 | `theorem` | [allAtoms_complete](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/declarations/allatoms-complete.md) | 187 | `result-track:b2d97c3970b21d4bf3b097b1ab0379565849e9785ed7a4844406255361465bdf` |
| 17 | `theorem` | [allAtoms_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/declarations/allatoms-nodup.md) | 191 | `result-track:d5f393a9e59b0ad5cf123d8790c3994c858f50b03a0304733df9519d1483942f` |
| 18 | `theorem` | [atomId_injective](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/declarations/atomid-injective.md) | 195 | `result-track:55f67909be204979af1b509433a2c1102c21dea2ead8310d1418ad0169a7afff` |
| 19 | `theorem` | [finalResidues_atomIds_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/declarations/finalresidues-atomids-nodup.md) | 200 | `result-track:975cdf3ee46b951dff737186171b90ba9ce6a4df77b44336db12527bf1518465` |
| 20 | `theorem` | [finalResidues_targets_correct](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/declarations/finalresidues-targets-correct.md) | 204 | `result-track:2094c1928d7788df48adcb1aae5a55803ba4fe07206acab7547edcaa2c1e9a8d` |
| 21 | `def` | [finalWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/declarations/finalwitness.md) | 211 | `declaration-track:65422c5da5a0c583698d75a9b42fd681df81474487b6059386fa2d3c9b25237a` |
| 22 | `theorem` | [finalWitness_hasResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/declarations/finalwitness-hasresidue.md) | 214 | `result-track:6e33980089fbc23b0010fb0fe45b76cb9ed04ee7841da13e385f9f19ac72afd0` |
| 23 | `theorem` | [finalResidue_count](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeGaps.lean/declarations/finalresidue-count.md) | 218 | `result-track:f57d4e5bccd060dca7b33f09d4055afcfa84c608aaa9c35aae875532572f533a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2b98924245ecc364a3c1ea74f5317b1f35a6a941af81b774d569b85dcda708e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f5072696d65476170732e6c65616e/Variante78a810689bffebbd56a9dd1418959be1df785bf46ae20e424bfc2cd8b86f731.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f5072696d65476170732e6c65616e/Variante78a810689bffebbd56a9dd1418959be1df785bf46ae20e424bfc2cd8b86f731.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
