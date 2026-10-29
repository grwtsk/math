# Verification target: Positive Pair Reindexing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3fadeb44f84271d94dbefc61af6a2c3703452b9",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant31a912f7c67e0d3f8b21dcf2dea57910f20275a81c5471ddc9ab1a112e5ab9ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/PositivePairReindexing.lean/index.md) · [Full source](../../../../Combinatorics/PositivePairReindexing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3fadeb44f84271d94dbefc61af6a2c3703452b9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant31a912f7c67e0d3f8b21dcf2dea57910f20275a81c5471ddc9ab1a112e5ab9ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant31a912f7c67e0d3f8b21dcf2dea57910f20275a81c5471ddc9ab1a112e5ab9ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.ComplexDirichletSeries` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NatDivisors` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveFactorPair](../../../../Combinatorics/PositivePairReindexing.lean/declarations/positivefactorpair.md) | 22 | `declaration-track:730fac707222afeb3d0d7c138a33142cfca9b1be98da0c84c2c86e4c2b449359` |
| 2 | `instance` | [(anonymous)](../../../../Combinatorics/PositivePairReindexing.lean/declarations/instance.md) | 30 | `declaration-track:996184a5499b047533cacf20dcf5c81ff9f8549df45d636b079f3b3e911d4cea` |
| 3 | `def` | [left](../../../../Combinatorics/PositivePairReindexing.lean/declarations/left.md) | 45 | `declaration-track:3fd96f5d7c511182674dfb74a0eeb48ead0457f8f638b842ca73ff9d4790c761` |
| 4 | `def` | [right](../../../../Combinatorics/PositivePairReindexing.lean/declarations/right.md) | 50 | `declaration-track:79457a582d3fc7d26cc539bea70a856d5a0c7bc4400c86c9a37844b6ee2e5547` |
| 5 | `theorem` | [left_pos](../../../../Combinatorics/PositivePairReindexing.lean/declarations/left-pos.md) | 55 | `result-track:72b68dbaad1135250d27c61ce8f96b87133692d050ff0118cbec868a35a3db32` |
| 6 | `theorem` | [right_pos](../../../../Combinatorics/PositivePairReindexing.lean/declarations/right-pos.md) | 61 | `result-track:a4a5938ec563de4693da5fcc43d586c1bb59d991b5b56414f75ccfe056724c7f` |
| 7 | `theorem` | [mul_eq](../../../../Combinatorics/PositivePairReindexing.lean/declarations/mul-eq.md) | 70 | `result-track:da9ae6e61909ff35af27acee51dec8e168422a1760818e351068836df141db3a` |
| 8 | `def` | [productFiberSum](../../../../Combinatorics/PositivePairReindexing.lean/declarations/productfibersum.md) | 78 | `declaration-track:9b7050db459b9cda2dbb2e49af1ecaa76045a230eefe665dcd61bcf47ef2fe46` |
| 9 | `theorem` | [productFiberSum_eq_sum_positive_pairs](../../../../Combinatorics/PositivePairReindexing.lean/declarations/productfibersum-eq-sum-positive-pairs.md) | 89 | `result-track:d91bd6953d309bc944b6b9430cec25638c1f1b78f5c9fde13ea0bc9b0232079a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d19f98d94833b0cb578aa1a76f920aaedaef2fa4671cf64671198cf725dfb389 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant31a912f7c67e0d3f8b21dcf2dea57910f20275a81c5471ddc9ab1a112e5ab9ea.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant31a912f7c67e0d3f8b21dcf2dea57910f20275a81c5471ddc9ab1a112e5ab9ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
