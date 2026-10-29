# Verification target: Prime Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e2da935b2caad5627282f5f62757b272e91bf3e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Prime/Variant05e6c6e995282d211c72406e915e7d47b804996d41e8c94ca04b3d6e77e108ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrimeNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrimeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e2da935b2caad5627282f5f62757b272e91bf3e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Prime/Variant05e6c6e995282d211c72406e915e7d47b804996d41e8c94ca04b3d6e77e108ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Prime/Variant05e6c6e995282d211c72406e915e7d47b804996d41e8c94ca04b3d6e77e108ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Num.ZNum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [minFacAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrimeNamespaced.lean/declarations/minfacaux.md) | 43 | `declaration-track:332538a177cc2eaba2b0763fdb6157c26e5e1e7e71dceb312c77332ca4d47352` |
| 2 | `theorem` | [minFacAux_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrimeNamespaced.lean/declarations/minfacaux-to-nat.md) | 48 | `result-track:08197e7d1cd87a0d15fe9af199f9e9ac9357fab3fc9dc249e312dd6f2f310399` |
| 3 | `def` | [minFac](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrimeNamespaced.lean/declarations/minfac.md) | 61 | `declaration-track:5e8e52889dbc879165173f4a6c7a73b705859d118dbc4f98d73d17824a4de990` |
| 4 | `theorem` | [minFac_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrimeNamespaced.lean/declarations/minfac-to-nat-source-edition-2.md) | 67 | `result-track:ea3e5423669855b3a33fab0d67b37192565b1530f2245f1766b34526213fe130` |
| 5 | `def` | [Prime](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrimeNamespaced.lean/declarations/prime-source-edition-2.md) | 88 | `declaration-track:d3170b60865ceb4306aa9931be07f7a8ddd46a5c93d3c859304f43ee22adc5dd` |
| 6 | `instance` | [decidablePrime](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrimeNamespaced.lean/declarations/decidableprime.md) | 91 | `declaration-track:34dbebe73a75257e9fb877ddfbcfebdb5505595d3a6230c4903dede7b2d24902` |
| 7 | `def` | [minFac](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrimeNamespaced.lean/declarations/minfac-source-edition-2.md) | 113 | `declaration-track:642c90496b45f190f855236ee2b095fb6c652f1c83ba64ff45bd0978d1ee1911` |
| 8 | `theorem` | [minFac_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrimeNamespaced.lean/declarations/minfac-to-nat.md) | 118 | `result-track:7b8b192f284ad6bd8422611b0ed782e3a0c20037b363a5a209d4b8062047fef2` |
| 9 | `def` | [Prime](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrimeNamespaced.lean/declarations/prime.md) | 124 | `declaration-track:5f396fc3f3f543676ec3a81df26646497f0a93d6a16c90dd110f812d55b42f84` |
| 10 | `instance` | [decidablePrime](../../../../../../ComputerScience/TheoryOfData/DataStructures/PrimeNamespaced.lean/declarations/decidableprime-source-edition-2.md) | 127 | `declaration-track:384b87c5813a8e3575a73b6143b0dc3d67c10fa9bc0516ec6a9c759f3210bad8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aadfd635d4b1e5c8c966c291da7fe8e31d1298f5eef034aa301e85c4ddced0ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Prime/Variant05e6c6e995282d211c72406e915e7d47b804996d41e8c94ca04b3d6e77e108ec.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Prime/Variant05e6c6e995282d211c72406e915e7d47b804996d41e8c94ca04b3d6e77e108ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
